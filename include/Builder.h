/*
    对象创建模式
    意图：
        将一个副在的构造和它的表示分离，
        使得同样的创建过程可以创建出不同的表示


*/
#include "AbstractFactory.h"

class MazeBuilder
{
    public:
        virtual void BuildMaze(){};
        virtual void BuildRoom(int room){};
        virtual void BuildDoor(int roomFrom,
                                int roomTo){};
        virtual MazePtr GetMaze(){return nullptr;}
        virtual ~MazeBuilder()=default;
    protected:
        MazeBuilder(){}
};
class MazeGame_BUILDER
{
    public:
        MazePtr CreateMaze (MazeBuilder & builder)
        {
            builder.BuildMaze();
            builder.BuildRoom(1);
            builder.BuildRoom(2);
            builder.BuildDoor(1,2);

            return builder.GetMaze();
        }
    
};
class StandardMazeBulider:public MazeBuilder
{
    public:
        StandardMazeBulider():_currentMaze(nullptr){}
        virtual void BuildMaze()
        {
            _currentMaze=MazePtr(new Maze);
        }
        virtual void BuildRoom(int room)
        {
            auto ret=_currentMaze->RoomNo(room);
            if(!ret)
            {
                RoomPtr r=RoomPtr(new Room(room));
                _currentMaze->AddRoom(r);

                r->SetSides(North,WallPtr(new Wall));
                r->SetSides(South,WallPtr(new Wall));
                r->SetSides(East,WallPtr(new Wall));
                r->SetSides(West,WallPtr(new Wall));

            }
        }
        virtual void BuildDoor(int roomFrom,
                                int roomTo)
        {
            RoomPtr r1=_currentMaze->RoomNo(roomFrom);
            RoomPtr r2=_currentMaze->RoomNo(roomTo);

            DoorPtr d=DoorPtr(new Door(r1,r2));

            r1->SetSides(CommonWall(r1,r2),d);
            r2->SetSides(CommonWall(r2,r1),d);


        }
        virtual MazePtr GetMaze()
        {
            return _currentMaze;
        }
    private:
        SIDES CommonWall(RoomPtr r1,RoomPtr r2)
        {
            auto id1=r1->GetRoomID();
            auto id2=r2->GetRoomID();
            if(id1-id2==1)
            {
                return West;
            }  
            if(id1-id2==-1)
            {
                return East;
            }
            return North;
                
        }

        MazePtr _currentMaze;
        
};