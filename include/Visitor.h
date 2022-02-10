/*  
    访问者模式-对象行为模式
    表示一个作用于某对象结构中的各个元素操作。它使你可以在不改变各元素类的前提下定义这些元素的新操作

*/
#include <string>
#include <iostream>
#include <vector>
#include <memory>

using namespace std;

class Visitor;
class Equipments
{
    public:
        virtual ~Equipments()=default;
        const string Name() const {return _name;}
        const int Num() const {return _num;}
        virtual void Accept(Visitor & visitor)=0;
    protected:
        Equipments(const string &name,const int &num):_name(name),_num(num){}
    private:
        string _name;
        int _num;
};

class Rooms:public Equipments,public enable_shared_from_this<Rooms>
{
    public:
        Rooms(const string &name,const int &num):Equipments(name,num){}
        virtual void Accept(Visitor &visitor);
        void Add(shared_ptr<Equipments> eptr)
        {
            _list.push_back(eptr);
        }
    private:
        vector<shared_ptr<Equipments>> _list;
};
class Walls:public Equipments,public enable_shared_from_this<Walls>
{
    public:
        Walls(const string &name,const int &num):Equipments(name,num){}
        virtual void Accept(Visitor &visitor);
};
class Doors:public Equipments,public enable_shared_from_this<Doors>
{
    public:
        Doors(const string &name,const int &num):Equipments(name,num){}
        virtual void Accept(Visitor &visitor);
};

class Visitor
{
    public:
        ~Visitor()=default;
        
        virtual void VisitorRooms(shared_ptr<Rooms> rptr){}
        virtual void VisitorWalls(shared_ptr<Walls> wptr){}
        virtual void VisitorDoors(shared_ptr<Doors> dptr){}
    protected:
        Visitor()=default;

};
class NumVisitor:public Visitor
{
    public:
        ~NumVisitor()=default;
        NumVisitor():Visitor(){}
        virtual void VisitorRooms(shared_ptr<Rooms> rptr){
            cout<<rptr->Num()<<endl;
        }
        virtual void VisitorWalls(shared_ptr<Walls> wptr){
            cout<<wptr->Num()<<endl;
        }
        virtual void VisitorDoors(shared_ptr<Doors> dptr)
        {
            cout<<dptr->Num()<<endl;
        }

};
class NameVisitor:public Visitor
{
    public:
        ~NameVisitor()=default;
        NameVisitor():Visitor(){}
        virtual void VisitorRooms(shared_ptr<Rooms> rptr){
            cout<<rptr->Name()<<endl;
        }
        virtual void VisitorWalls(shared_ptr<Walls> wptr){
            cout<<wptr->Name()<<endl;
        }
        virtual void VisitorDoors(shared_ptr<Doors> dptr)
        {
            cout<<dptr->Name()<<endl;
        }

};