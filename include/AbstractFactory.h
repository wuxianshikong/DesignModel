#ifndef _ABSTRACT_FACTORY_H
#define _ABSTRACT_FACTORY_H

//抽象工厂模式
#include <iostream>
#include <memory>
#include <vector>
#include <array>

using namespace std;

enum SIDES {North,South,East,West};

class MapSite;
class Wall;
class Room;
class Door;
class Maze;

typedef shared_ptr<MapSite> MapSitePtr;
typedef shared_ptr<Wall> WallPtr;
typedef shared_ptr<Room> RoomPtr;
typedef weak_ptr<Room> wk_RoomPtr;
typedef shared_ptr<Maze> MazePtr;
typedef shared_ptr<Door> DoorPtr;

class MapSite
{
private:
    /* data */
public:
    virtual void Enter();
    virtual ~MapSite()=default;
};


class Wall:virtual public MapSite
{
private:
    /* data */
public:
    virtual void Enter();
    virtual ~Wall()=default;
    virtual WallPtr Clone() const{return WallPtr(new Wall(*this));}
};

class BWall:virtual public Wall
{
public:
    BWall()=default;
    BWall(const BWall& bw)=default;
    virtual void Enter();
    virtual WallPtr Clone() const{ return WallPtr(new BWall(*this));}
};

class Room:virtual public MapSite
{
private:
protected:
    /* data */
    array<MapSitePtr,4> _sides;
    int _roomNumber;
    virtual void print();
public:
    Room(int roomNo):_roomNumber(roomNo){}
    void SetSides(SIDES,MapSitePtr);
    int GetRoomID() const {return _roomNumber;}
    virtual void Enter();
    virtual ~Room()=default;
};


class Maze
{
public:
    void AddRoom(RoomPtr r);
    RoomPtr RoomNo(int i) const;
    void Enter();
private:
    /* data */
    vector<RoomPtr> _rooms;
};

class BRoom:public Room
{
public:
    BRoom(int roomNo):Room(roomNo){};
    virtual void Enter();
};
class ERoom:public Room
{
public:
    ERoom(int roomNo):Room(roomNo){};
    virtual void Enter();
};

class Door:virtual public MapSite
{
private:
    /* data */
public:
    Door(wk_RoomPtr r1,wk_RoomPtr r2 ):_room1(r1),_room2(r2){};
    Door(const Door & door)
    {
        _room1=door._room1.lock();
        _room2=door._room2.lock();
        _isOpen=door._isOpen;
    }
    RoomPtr OtherSideFrom(RoomPtr r);
    virtual void Initialize(RoomPtr r1,RoomPtr r2)
    {
        _room1=r1;
        _room2=r2;
    }
    virtual void Enter();
    virtual ~Door()=default;
    virtual DoorPtr Clone()const {return DoorPtr(new Door(*this));}
protected:
    wk_RoomPtr _room1;
    wk_RoomPtr _room2;
    bool _isOpen;
};


class EDoor:public Door
{
public:
    EDoor(wk_RoomPtr r1,wk_RoomPtr r2 ):Door(r1,r2){};
    virtual DoorPtr Clone()const {return DoorPtr(new EDoor(*this));}
    virtual void Enter();
    ~EDoor()=default;
};
class MazeFactory
{
private:
    /* data */
public:
    
    virtual MazePtr makeMaze() const {return MazePtr(new Maze);}
    virtual WallPtr makeWall() const {return WallPtr(new Wall);}
    virtual RoomPtr makeRoom(int n) const {return RoomPtr(new Room(n));}
    virtual DoorPtr makeDoor(RoomPtr r1,RoomPtr r2) const {return DoorPtr(new Door(r1,r2));}
    virtual ~MazeFactory()=default;
};


class EMazeFactory:public MazeFactory
{
private:
    /* data */
public:
    virtual RoomPtr makeRoom(int n) const {return RoomPtr(new ERoom(n));}
    virtual DoorPtr makeDoor(RoomPtr r1,RoomPtr r2) const {return DoorPtr(new EDoor(r1,r2));}
};

class BMazeFactory:public MazeFactory
{
private:
    /* data */
protected:

public:
    virtual WallPtr makeWall() const {return WallPtr(new BWall);}
    virtual RoomPtr makeRoom(int n) const {return RoomPtr(new BRoom(n));}
};

//迷宫创建类
class MazeGame_AbstractFactory
{
private:
    /* data */
public:
    MazePtr CreateMaze(MazeFactory &factory);
};

#endif