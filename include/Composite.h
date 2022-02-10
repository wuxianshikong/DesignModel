/*
    组合和哦是-对象结构型模式
    1 意图将对象那个组合成树形结构表示部分和整体的层次结构
    2 表示对象部分整体的层次结构
    3 希望用户忽略组合对象与但个对象的不同，用户将统一的使用组合结构中的所有对象。

*/
#include <memory>
#include <iostream>
#include <list>
using namespace std;

class Equipment
{
    public:
        shared_ptr<string> Name() const  {return _name;}
        virtual void Add(shared_ptr<Equipment> Eq)
        {

        }
        virtual void Remove(shared_ptr<Equipment> Eq)
        {

        }
        virtual int NetPrice()
        {
            return 0;
        }
        virtual ~Equipment()=default;
    protected:
        Equipment(const string &name)
        {
            _name=make_shared<string>(name);//?
        }
    private:
        shared_ptr<string> _name;

};

class FloppyDisk:public Equipment
{
    public:
        FloppyDisk(const string &name):Equipment(name)
        {

        }
        virtual int NetPrice()
        {
            return 50;
        }

        virtual ~FloppyDisk()=default;
};
class Bus:public Equipment
{
    public:
        Bus(const string &name):Equipment(name)
        {

        }
        virtual int NetPrice()
        {
            return 10;
        }

        virtual ~Bus()=default;
};
class CompositeEquipment:public Equipment
{
    public:
        virtual ~CompositeEquipment()=default;
        virtual void Add(shared_ptr<Equipment> Eq)
        {
            _equipment->push_back(Eq);
        }
        virtual void Remove(shared_ptr<Equipment> Eq)
        {
            _equipment->remove(Eq);
        }
        virtual int NetPrice()
        {
            auto begin=_equipment->begin();
            auto end=_equipment->end();
            int sum=0;
            for (begin; begin!=end; begin++)
            {
                sum+=(*begin)->NetPrice();
            }
            
            return sum;
        }
    protected:
        CompositeEquipment(const string &name):Equipment(name),_equipment(new list<shared_ptr<Equipment>>())
        {

        }
    private:
        shared_ptr<list<shared_ptr<Equipment>>> _equipment;
};

class Chassis:public CompositeEquipment
{   
    public:
        Chassis(const string &name):CompositeEquipment(name)
        {

        }
        virtual int NetPrice()
        {
            return 60+CompositeEquipment::NetPrice();
        }
        virtual ~Chassis()=default;

};
class Cabinet:public CompositeEquipment
{   
    public:
        Cabinet(const string &name):CompositeEquipment(name)
        {

        }
        virtual int NetPrice()
        {
            return 70+CompositeEquipment::NetPrice();
        }
        virtual ~Cabinet()=default;

};