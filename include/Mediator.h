/*
    中介者模式-对象行为模式
    用一个中介对象来封装一些列的对象交互。中介者使对象不需要显示的相互引用。
    减少了子类的生成
    简化了对象协议
    它对对象哪个协议进行了抽象
    它使控制集中化

*/
#include <vector>
#include <memory>
#include <iostream>

using namespace std;

class User;

class Topic
{
    public:
        virtual void Adduser(weak_ptr<User> user)=0;
        virtual void Sendmsgs(shared_ptr<User> user,const string & msgs)=0;
    protected:
        Topic()=default;

};
class User
{
    public:
        virtual void Send(const string & info)=0;
        virtual void Subtopic(shared_ptr<Topic> topic)=0;
        virtual void Receive(const string & info)=0;
        virtual string Getname()const =0;
    protected:
        User()=default;
};

class Virus:public Topic
{
    public:
        Virus():_pool(){}
        virtual void Adduser(weak_ptr<User> user)
        {
            _pool.push_back(user);
        }
        virtual void Sendmsgs(shared_ptr<User> user,const string & msgs)
        {
            for(auto e:_pool)
            {
                if(e.lock()!=user)
                {
                    e.lock()->Receive(user->Getname()+":"+msgs);
                }
            }
        }
        ~Virus()=default;
    private:
        vector<weak_ptr<User>> _pool;
};

class Profession:public User,public enable_shared_from_this<Profession>
{
    public:
        Profession(const string & name):_name(name){}
        virtual void Send(const string & info)
        {
            if(_topic.lock())
            {
                _topic.lock()->Sendmsgs(this->shared_from_this(),info);
            }
        }
        virtual void Subtopic(shared_ptr<Topic> topic)
        {
            _topic=topic;
            _topic.lock()->Adduser(this->shared_from_this());
        }
        virtual void Receive(const string & info)
        {
            cout<<_name<<"_recevie:"<<info<<endl;
        }
        virtual string Getname() const
        {
            return _name;
        }
        ~Profession()=default;
    private:
        string _name;
        weak_ptr<Topic> _topic;
};