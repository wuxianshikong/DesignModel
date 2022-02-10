/*

    原型模式-对象创建类型模式
    1 用与阿尼西嗯实例制定创建对吸纳更的种类，并通过拷贝这些原型常见新的对象
    2 当一个系统应该独立于它的产品创建构成和表示时，药用prototype模式，
    3 当实例化的类是在运行时刻指定是
    4 为了壁间创建一个与产品类层次平行的工厂类层次时


*/

#include "AbstractFactory.h"
class MazePrototypeFactory:public MazeFactory
{
    public:
        MazePrototypeFactory(MazePtr maze,WallPtr wall,RoomPtr room,DoorPtr door):_prototypeMaze(maze),_prototypeRoom(room),
        _prototypeWall(wall),_prototypeDoor(door){}
        virtual WallPtr makeWall()const{return _prototypeWall->Clone();}
        virtual DoorPtr makeDoor(RoomPtr r1,RoomPtr r2)const
        {
            DoorPtr door=_prototypeDoor->Clone();
            door->Initialize(r1,r2);
            return door;
        }
        ~MazePrototypeFactory(){}
    private:
        MazePtr _prototypeMaze;
        RoomPtr _prototypeRoom;
        WallPtr _prototypeWall;
        DoorPtr _prototypeDoor;
};