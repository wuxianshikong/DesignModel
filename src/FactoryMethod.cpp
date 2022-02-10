#include "FactoryMethod.h"
MazePtr MazeGame::CreatMaze()
{
    MazePtr aMaze=MakeMaze();

    RoomPtr r1=MakeRoom(2);
    RoomPtr r2=MakeRoom(1);

    DoorPtr theDoor= MakeDoor(r1,r2);

    aMaze->AddRoom(r1);
    aMaze->AddRoom(r2);

    r1->SetSides(North,MakeWall());
    r1->SetSides(West,theDoor);
    r1->SetSides(East,MakeWall());
    r1->SetSides(South,MakeWall());

    r2->SetSides(North,MakeWall());
    r2->SetSides(East,theDoor);
    r2->SetSides(West,MakeWall());
    r2->SetSides(South,MakeWall());

    return aMaze;

}