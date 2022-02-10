/*

    单体模式-对象创建型模式
    保证一个类仅有一个实例，并提供一个访问的全局访问点


*/
#ifndef _SINGLETION_H_
#define _SINGLETION_H_

#include "AbstractFactory.h"
#include <utility>
#include <list>
#include <boost/type_index.hpp>

class MazeFactory_Single;
typedef shared_ptr<MazeFactory> SingleBasePtr;

class MazeFactory_Single:public MazeFactory
{
    /* data */
public:
    typedef pair<string,SingleBasePtr> NamSinglePair;

    static void Register(const string &name,SingleBasePtr sbp);

    template<typename T>
    static SingleBasePtr Instance();
    // virtual MazePtr makeMaze() const {return MazePtr(new Maze);}
    // virtual WallPtr makeWall() const {return WallPtr(new Wall);}
    // virtual RoomPtr makeRoom(int n) const {return RoomPtr(new Room(n));}
    // virtual DoorPtr makeDoor(RoomPtr r1,RoomPtr r2) const {return DoorPtr(new Door(r1,r2));}
    virtual ~MazeFactory_Single()=default;
protected:
    MazeFactory_Single(){}
    static SingleBasePtr Lookup(const string &name);
private:
    static SingleBasePtr _instance;
    static shared_ptr<list<NamSinglePair>> _registry;
};
class BMazeFactory_Single:public MazeFactory_Single
{
    friend MazeFactory_Single;
    public:
        //virtual MazePtr makeMaze() const {return MazePtr(new Maze);}
        virtual WallPtr makeWall() const {return WallPtr(new BWall);}
        virtual RoomPtr makeRoom(int n) const {return RoomPtr(new BRoom(n));}
        //virtual DoorPtr makeDoor(RoomPtr r1,RoomPtr r2) const {return DoorPtr(new Door(r1,r2));}
        ~BMazeFactory_Single()=default;
    protected:
        BMazeFactory_Single(){}
};
class EMazeFactory_Single:public MazeFactory_Single
{
    friend MazeFactory_Single;
    public:
        //virtual MazePtr makeMaze() const {return MazePtr(new Maze);}
        //virtual WallPtr makeWall() const {return WallPtr(new BWall);}
        virtual RoomPtr makeRoom(int n) const {return RoomPtr(new ERoom(n));}
        virtual DoorPtr makeDoor(RoomPtr r1,RoomPtr r2) const {return DoorPtr(new EDoor(r1,r2));}
        ~EMazeFactory_Single()=default;
    protected:
        EMazeFactory_Single(){}
};
template<typename T>
SingleBasePtr MazeFactory_Single::Instance()
{
    auto name=boost::typeindex::type_id<T>().pretty_name();
    _instance =Lookup(name);
    if(_instance==nullptr)
    {
        MazeFactory_Single::Register(name,SingleBasePtr(new T));
        _instance =Lookup(name);
    }
    return _instance;
}
template<class T>
class MazeGame_Single
{
private:
    /* data */
public:
    MazePtr CreateMaze(T factory)
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
};
template<class T>
class MazeGame_Single<shared_ptr<T>>
{
private:
    /* data */
public:
    MazePtr CreateMaze(shared_ptr<T> factory)
    {
        MazePtr aMaze=factory->makeMaze();
        RoomPtr r1=factory->makeRoom(1);
        RoomPtr r2=factory->makeRoom(2);
        aMaze->AddRoom(r1);
        aMaze->AddRoom(r2);
        RoomPtr ar1=aMaze->RoomNo(1);
        RoomPtr ar2=aMaze->RoomNo(2);
        DoorPtr aDoor=factory->makeDoor(ar1,ar2);
        r1->SetSides(North,factory->makeWall());
        r1->SetSides(East,aDoor);
        r1->SetSides(West,factory->makeWall());
        r1->SetSides(South,factory->makeWall());
        r2->SetSides(North,factory->makeWall());
        r2->SetSides(East,factory->makeWall());
        r2->SetSides(West,aDoor);
        r2->SetSides(South,factory->makeWall());
        return aMaze;
    }
};

#endif