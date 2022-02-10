/*
    工厂方法模式-对象创建模式
    框架使用抽象定义和维护对象之间的关系。
    1 当一个类不知道它所创建对象的类的时候
    2 当一个类希望由它的子类所创建的对象的时候
    3 当类创建对吸纳更的职责委托给多个帮助子类中的某一个，
        并且你希望将哪个帮助子类是代理者这一信息局部化的时候。
*/
#include "AbstractFactory.h"

class MazeGame
{
    public:
        MazePtr CreatMaze();

        virtual MazePtr MakeMaze() const {return MazePtr(new Maze);}

        virtual RoomPtr MakeRoom(int n) const {return RoomPtr(new Room(n));}

        virtual WallPtr MakeWall() const {return WallPtr(new Wall());}

        virtual DoorPtr MakeDoor(RoomPtr r1,RoomPtr r2) const {return DoorPtr(new Door(r1,r2));}

        virtual ~MazeGame()=default;
    protected:
        MazeGame(){};
};

class BMaeGame:public MazeGame
{
    public:
        BMaeGame():MazeGame(){}

        virtual WallPtr MakeWall() const {return  WallPtr(new BWall());}

        virtual RoomPtr MakeRoom(int n) const {return RoomPtr(new BRoom(n));}
};

class EMaeGame:public MazeGame
{
    public:
        EMaeGame():MazeGame(){}

        virtual DoorPtr MakeDoor(RoomPtr r1,RoomPtr r2) const {return DoorPtr(new EDoor(r1,r2));}

        virtual RoomPtr MakeRoom(int n) const {return RoomPtr(new ERoom(n));}
};


template<class Product=BMazeFactory>
class MazeGame_FactoryMethod:public MazeGame
{
    public:
        MazeGame_FactoryMethod():MazeGame(),pdt(new Product())
        {}

        virtual MazePtr MakeMaze() const {return pdt->makeMaze();}

        virtual RoomPtr MakeRoom(int n) const {return pdt->makeRoom(n);}

        virtual WallPtr MakeWall() const {return pdt->makeWall();}

        virtual DoorPtr MakeDoor(RoomPtr r1,RoomPtr r2) const {return pdt->makeDoor(r1,r2);}
    private:
        shared_ptr<Product> pdt;
};