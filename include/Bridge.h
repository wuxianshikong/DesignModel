/*
    桥接模式-对象结构型模式
    1 将抽象部分与它的实现部分分离，使他们都可以独立的变化
*/
#include "Singleton.h"
template<class T>
class MazeFact 
{
    public:
        MazeFact():_sbp(MazeFactory_Single::Instance<T>()){}
        
        virtual bool Isempty()
        {
            return _sbp==nullptr ? true:false; 
        }

        virtual MazePtr makeMaze() const {return GetFactory()->makeMaze();}
        virtual WallPtr makeWall() const {return GetFactory()->makeWall();}
        virtual RoomPtr makeRoom(int n) const {return GetFactory()->makeRoom(n);}
        virtual DoorPtr makeDoor(RoomPtr r1,RoomPtr r2) const {return GetFactory()->makeDoor(r1,r2);}

    protected:
        SingleBasePtr GetFactory() const
        {
            return _sbp;
        }
    private:
        SingleBasePtr _sbp;
};
