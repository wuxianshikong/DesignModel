#include "Singleton.h"

SingleBasePtr MazeFactory_Single::_instance=nullptr;

shared_ptr<list<MazeFactory_Single::NamSinglePair>>
MazeFactory_Single::_registry=shared_ptr<list<MazeFactory_Single::NamSinglePair>>(new list<MazeFactory_Single::NamSinglePair>());

SingleBasePtr  MazeFactory_Single::Lookup(const string &name)
{
    for(auto inser=_registry->begin();inser!=_registry->end();inser++)
    {
        if(inser->first==name)
        {
            return inser->second;
        }
    }
    return nullptr;
}
void MazeFactory_Single::Register(const string &name,SingleBasePtr sbp)
{
    NamSinglePair p(name,sbp);
    _registry->push_front(p);
}
