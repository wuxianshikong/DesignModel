/*
    策略模式-对象行为模式
    定义一系列的算法，把他们一个个封装起来，并且使他们可以相互替换
*/
#include <iostream>
#include <memory>

using namespace std;

template<typename T>
class Contexts
{
    public:
        Contexts():_s(new T){}
        ~Contexts()=default;
        void Operation()
        {
            _s->DoAlgorithm();
        }
    private:
        shared_ptr<T> _s;
};

class MyStrategy
{   
    public:
        void DoAlgorithm()
        {
            cout<<"MyStrategy"<<endl;
        }
};