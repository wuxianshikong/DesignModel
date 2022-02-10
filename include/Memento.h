/*
    备忘录模式-对象行为模式
    在不破坏封装性的前提下，捕获一个对象的内部状态，并在该状态之外保存这个状态
*/
#include <memory>
#include <iostream>

using namespace std;

class State
{
    public:
        State(const int& anum):_num(anum){}
        ~State()=default;

        int GetNum() const
        {
            return _num;
        }
        void SetNum(const int& anum)
        {
            _num=anum;
        }
    private:
        int _num;
};

class Originator;

//备忘录
class Memento
{
    friend Originator;
    public:
        virtual ~Memento()=default;
    private:
        shared_ptr<State> GetState() const
        {
            return _state;
        }     
        void SetState(shared_ptr<State> state)
        {
            _state=state;
        }
        Memento(shared_ptr<State> state):_state(state){}
        shared_ptr<State> _state;
};

class Originator
{
    public:
        Originator():_state(new State(0)){}
        shared_ptr<Memento> CreateMemento()
        {
            shared_ptr<State> state(new State(*_state));
            return shared_ptr<Memento>(new Memento(state));
        }
        void SetMemento(const shared_ptr<Memento> me)
        {
            _state=me->GetState();
        }
        void ChangeState()
        {
            _state->SetNum(_state->GetNum()+1);
        }
        void print()
        {
            cout<<_state->GetNum()<<endl;
        }
    private:
        shared_ptr<State> _state;

};