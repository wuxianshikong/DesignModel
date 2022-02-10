/*
    迭代器模式-对象行为模式
    提供一种方法顺序访问一个聚合对象哪个中各个元素，而不需要暴露对象的内部表示。
    支持对聚合对象的多种遍历
    为遍历不同的聚合对象提供一个统一的接口

*/
#include <memory>
#include <iostream>
#include <vector>
//#include <Iterator.h>
using namespace std;
//接口

template <class Item>
class Iterator;

template<class Item>
class MListIterator;

template <class Item>
class MList:public enable_shared_from_this<MList<Item>>
{
    public:
        MList(long size=5)
        {

        }
        long Count() const 
        {
            return _vector.size();
        }
        Item &Get(long index)
        {
            //加保护
            return _vector[index];
        }
        void push(const Item& item)
        {
            _vector.push_back(item);
        }
        shared_ptr<Iterator<Item>> CreateIterator()
        {

            return shared_ptr<Iterator<Item>>(new MListIterator<Item>(shared_ptr<MList<Item>>(this->shared_from_this())));
        }
    private:
        vector<Item> _vector;
};
//接口
template <class Item>
class Iterator
{
    public:
        virtual void First()=0;
        virtual void Next()=0;
        virtual bool IsDone() const=0;
        virtual Item& currentItem()=0;
        //virtual ~Iterator();
    protected:
        Iterator()=default;
};
//子类
template<class Item>
class MListIterator:public Iterator<Item>
{
    public:
        MListIterator(shared_ptr<MList<Item>> alist):_list(alist),_current(0)
        {

        }
        virtual void First()
        {
            _current=0;
        }
        virtual void Next()
        {
            _current++;
        }
        virtual bool IsDone() const
        {
            return _current >=_list->Count();
        }
        virtual Item& currentItem()
        {
            if(IsDone())
            {
                throw "IteratorOutofBounds";
            }
            return _list->Get(_current);
        }
    private:
        const shared_ptr<MList<Item>> _list;
        long _current;
};

