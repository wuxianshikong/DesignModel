/*
    状态-对象行为模式
    允许一个对象在其内部状态时改变它的行为。对象看起来似乎修改了它的类
*/
#include <memory>
#include <iostream>

using namespace std;

class TCPConnection;

class TCPState
{
    public:
        typedef shared_ptr<TCPConnection> TCPConnectionPtr;
        virtual void ActiveOpen(TCPConnectionPtr tcp){}
        virtual void Close(TCPConnectionPtr tcp){}
        virtual void Acknowledge(TCPConnectionPtr tcp){}
        virtual void Send(TCPConnectionPtr tcp){}
        virtual void print(){}
    protected:
        void ChangeState(TCPConnectionPtr tcp,shared_ptr<TCPState> state);
};

// class TCPListen;

class TCPEstablished:public TCPState
{
    public:
        static shared_ptr<TCPState> Instance();
        virtual void Close(TCPConnectionPtr tcp);
        virtual void print(){cout<<"TCPEstablished"<<endl;}
};

class TCPListen:public TCPState
{
    public:
        static shared_ptr<TCPState> Instance();
        virtual void Send(TCPConnectionPtr tcp){ChangeState(tcp,TCPEstablished::Instance());}
        virtual void print(){cout<<"TCPListen"<<endl;}
};
class TCPClosed:public TCPState
{
    public:
        static shared_ptr<TCPState> Instance();
        virtual void ActiveOpen(TCPConnectionPtr tcp){ChangeState(tcp,TCPListen::Instance());}
        virtual void print(){cout<<"TCPClosed"<<endl;}
};
class TCPConnection:public enable_shared_from_this<TCPConnection>
{
    friend class TCPState;
    public:
        TCPConnection(){
            _state=TCPClosed::Instance();
        }
        void ActiveOpen(){_state->ActiveOpen(shared_from_this());}
        void Close(){_state->Close(shared_from_this());}
        void Send(){_state->Send(shared_from_this());}
        void Acknowledge(){_state->Acknowledge(shared_from_this());}
        void print(){_state->print();}
        ~TCPConnection()=default;

    private:
        void ChangeState(shared_ptr<TCPState> state){_state=state;}
        shared_ptr<TCPState> _state;

};