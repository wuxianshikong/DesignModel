/*
    享元模式-对象结构型模式
    运用共吸纳更技术有向的支持大量细粒度对象
    1 一个程序使用了大量的对象
    2 完全由于大量的对象，造成了很大的存储开销
    3 如果删除对象的外部状态，那么可以用相对较小的共享对象取代很多组对象
*/
#include "AbstractFactory.h"
#include <boost/type_index.hpp>
#include <map>

class FlyFactory
{
    public:
        FlyFactory():m_vectorWall(new map<string,WallPtr>()){};
        template<class T>
        WallPtr CreatWall()
        {
            string name=boost::typeindex::type_id<T>().pretty_name();
            auto iter=m_vectorWall->find(name);
            if(iter==m_vectorWall->end())
            {
                auto wall=WallPtr(new T);
                m_vectorWall->insert(make_pair(name,wall));
                return wall;
            }
            return iter->second;
        }
        ~FlyFactory()=default;
    private:
        shared_ptr<map<string,WallPtr>> m_vectorWall;
};