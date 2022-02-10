/*
    装饰模式-对象结构型模式
    1 动态的给一个对象增添一些额外的职责。
    2 在不影响其他对象的情况下，以动态，透明的方式给但个对象增加职责
    3 处理那些可以撤销的职责。当不能采用生成子类的方法填充时
*/
#include "AbstractFactory.h"
class Decorator:public Wall
{
    public:
        virtual void Enter(){ _decoratored->Enter(); }
        virtual ~Decorator()=default;
    protected:
        Decorator(WallPtr wp):_decoratored(wp){}
    private:
        WallPtr _decoratored;

};

class Paint:public Decorator
{
    public:
        Paint(WallPtr wp):Decorator(wp){}
        virtual void Enter()
        { 
            cout<<"PaintWall-";
            Decorator::Enter(); 
        }
        ~Paint()=default;

};

class Paste: public Decorator
{
    public:
        Paste(WallPtr wp):Decorator(wp){}
        virtual void Enter()
        { 
            cout<<"PasteWall-";
            Decorator::Enter(); 
        }
        ~Paste()=default;

};