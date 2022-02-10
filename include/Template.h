/*
    模板方法模式-类的行为模式
    定义一个操作中的算法骨架，将一些步骤延迟到子类中。模板方法模式使得子类可以不改变一个算法的结构
    重新定义该算法的摹写特定步骤。
*/
#include <iostream>
using namespace std;

class Base
{
    public:
        virtual void Display(){DoDisplay();}
    protected:
        virtual void DoDisplay(){cout<<"Base"<<endl;}
};

class Con1:public Base
{
    virtual void DoDisplay(){cout<<"Con1"<<endl;}
};