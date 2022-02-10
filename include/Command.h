/*
    命令模式-对象行为模式
    将一个请求封装为一个对象，从而使你可以用不同的请求对客户进行参数化
    1 可以用过程语言回调函数表达这种参数化机制
    2 支持取消操作，添加一个取消操作的接口，和一个历史
    3 支持修改日志
    4 构建在操作上的高层操作构造一个系统

*/
#include <memory>
#include <iostream>
#include <list>
#include <vector>
#include <algorithm>
using namespace std;

class Receiver
{
    public:
        virtual ~Receiver()=default;
        virtual void Action()=0;
    protected:
        Receiver()=default;
};

class Window10:public Receiver
{
    public:
        void Action()
        {
            cout<<"Window10 Receiver"<<endl;
        }
};
class Liunx:public Receiver
{
    public:
        void Action()
        {
            cout<<"Liunx Receiver"<<endl;
        }
};
class Command
{
    public:
        virtual ~Command()=default;

        virtual void Execute()=0;
    protected:
        Command()=default;
};

template <class T>
class Github:public Command
{
    public:
        typedef void(T::*Action)();
        Github(shared_ptr<T> r,shared_ptr<Action> a):_action(a),_receiver(r){}
        virtual void Execute()
        {
            //*_receiver 为T类型对象,*_action 为类成员函数指针
            ((*_receiver).*(*_action))();
        }
    private:
        shared_ptr<Action> _action;
        shared_ptr<T> _receiver;
};

class CommandPool:public Command
{
    public:
        typedef shared_ptr<Command> CmdPtr;
        CommandPool():_cmds(){};
        virtual ~CommandPool()=default;
        virtual void Add(CmdPtr acmd)
        {
            _cmds.push_back(acmd);
        }
        virtual void Remove(CmdPtr acmd)
        {
            _cmds.erase(remove(_cmds.begin(),_cmds.end(),acmd),_cmds.end());
        }
        virtual void Execute()
        {
            for(auto e:_cmds)
            {
                e->Execute();
            }
        }
    private:
        vector<CmdPtr> _cmds;

};
