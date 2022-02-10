#include "AbstractFactory.h"

void MapSite::Enter()
{
    cout<<"MapSite"<<":"<<"\t"<<endl;
}
void Wall::Enter()
{
    cout<<"wall"<<":"<<"\t"<<endl;
}
void BWall::Enter()
{
    cout<<"Bwall"<<":"<<"\t"<<endl;
}
void Room::print()
{
    for(auto e:_sides)
    {
        cout<<"  "<<"  ";
        if(e!=nullptr) e->Enter();
    }
}
void Room::Enter()
{
    cout<<"Room_"<<_roomNumber<<":"<<"\t"<<endl;
    print();
}
void Room::SetSides(SIDES i,MapSitePtr Ma)
{
    _sides[i]=Ma;
}
void Maze::Enter()
{
    cout<<"Maze"<<":"<<"\t"<<endl;
    for(auto e:_rooms)
    {
        cout<<"  ";
        e->Enter();
    }
}
void Maze::AddRoom(RoomPtr r)
{
    _rooms.push_back(r);
}
RoomPtr Maze::RoomNo(int i) const
{
    for(auto e:_rooms)
    {
        if(i==e->GetRoomID())
            return e;

    }
    return nullptr;
}
void BRoom::Enter()
{
    cout<<"BRoom_"<<_roomNumber<<":"<<"\t"<<endl;
    print();
}
void ERoom::Enter()
{
    cout<<"ERoom_"<<_roomNumber<<":"<<"\t"<<endl;
    print();
}

RoomPtr Door::OtherSideFrom(RoomPtr r)
{
    auto _r2=_room2.lock();
    auto _r1=_room1.lock();
    if(r==_r1) return RoomPtr(_r2);
    if(r==_r2) return RoomPtr(_r1);

    return nullptr;
}
void Door::Enter()
{
    cout<<"Door"<<":"<<"\t"<<_room1.lock()->GetRoomID()<<" and "
    <<_room2.lock()->GetRoomID()<<endl;
}
void EDoor::Enter()
{
    cout<<"EDoor"<<":"<<"\t"<<_room1.lock()->GetRoomID()<<" and "
    <<_room2.lock()->GetRoomID()<<endl;
}
MazePtr MazeGame_AbstractFactory::CreateMaze(MazeFactory &factory)
{
    MazePtr aMaze=factory.makeMaze();
    RoomPtr r1=factory.makeRoom(1);
    RoomPtr r2=factory.makeRoom(2);
    aMaze->AddRoom(r1);
    aMaze->AddRoom(r2);
    RoomPtr ar1=aMaze->RoomNo(1);
    RoomPtr ar2=aMaze->RoomNo(2);
    DoorPtr aDoor=factory.makeDoor(ar1,ar2);
    r1->SetSides(North,factory.makeWall());
    r1->SetSides(East,aDoor);
    r1->SetSides(West,factory.makeWall());
    r1->SetSides(South,factory.makeWall());
    r2->SetSides(North,factory.makeWall());
    r2->SetSides(East,factory.makeWall());
    r2->SetSides(West,aDoor);
    r2->SetSides(South,factory.makeWall());
    return aMaze;

}
// int main()
// {

// }