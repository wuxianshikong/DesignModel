/*
    适配器模式-类对象结构模式
    1 将一个类的结构转换成客户希望的另一个接口。别名：包装器
    2 要使用一个已经存在的类，他的接口不符合要求
    3 创建一个可服用的类，给类可以与其他不相关的类或不可见的类协调工作
    4 要用到一些已经存在的子类，但是不能对每一个都进行子类华以匹配他们的接口，对象适配器可以适配父类接口

*/
#include "AbstractFactory.h"
// class Wall:public MapSite
// {
// private:
//     /* data */
// public:
//     virtual void Enter();
//     virtual ~Wall()=default;
//     virtual WallPtr Clone() const{return WallPtr(new Wall(*this));}
// };
class Window:public MapSite
{
    public:
        virtual void install()
        {
            cout<<"Window"<<":"<<"\t"<<endl;
        }
        virtual ~Window()=default;
};

class WindowWall: public Wall,public Window
{
    public:
        virtual void Enter()
        {
            cout<<"WindowWall"<<":";
            install();
        }
        ~WindowWall()=default;
        virtual WallPtr Clone() const{return WallPtr(new WindowWall(*this));}
};