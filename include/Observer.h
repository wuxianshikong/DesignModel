/*
    观察者模式-对象行为模式
    定义对象哪个间的一种一对多的依赖关系，当一个对象的状态发生变化，所有依赖与它的对象都得到同志并自动更新
    支持广播通信
    意外更新
*/
#include <memory>
#include <iostream>
#include <vector>
#include <algorithm>
#include <string>

using namespace std;

class Subject;

class Observer
{
    public:
        virtual~Observer()=default;
        virtual void Update(shared_ptr<Subject> asubject)=0;
        virtual void add(weak_ptr<Subject> aSubject)=0;
    protected:
        Observer()=default;

};

class Subject:public enable_shared_from_this<Subject>
{
    public:
        virtual ~Subject()=default;
        virtual void Attach(weak_ptr<Observer> aobserver)
        {
            _list.push_back(aobserver);
        }
        // virtual void Detach(weak_ptr<Observer> aobserver)
        // {
        //     _list.erase(remove(_list.begin(),_list.end(),aobserver),_list.end());
        // }
        virtual void Notify()
        {
            for(auto e:_list)
            {
                e.lock()->Update(this->shared_from_this());
            }
        }
    protected:
        Subject()=default;
    private:
        vector<weak_ptr<Observer>> _list;
        
};
class Clock:public Subject
{
    public:
        Clock():Subject(){}
        void Tick(){ Notify(); }
};
class Modeclock:public Observer,public enable_shared_from_this<Modeclock>
{
    public:
        Modeclock(const string &name):Observer(),_name(name){}
        virtual ~Modeclock()=default;
        virtual void Update(shared_ptr<Subject> asubject)
        {
            if(asubject==_asubject.lock())
            {
                cout<<_name<<":"<<"Draw"<<endl;
            }
        }
        virtual void add(weak_ptr<Subject> asubject)
        {
            _asubject=asubject;
            _asubject.lock()->Attach(this->shared_from_this());
        }
    private:
        string _name;
        weak_ptr<Subject> _asubject;
};