#include "Visitor.h"

void Rooms::Accept(Visitor &visitor)
{
    for(auto e:_list)
    {
        e->Accept(visitor);
    }
    visitor.VisitorRooms(shared_from_this());
}
void Walls::Accept(Visitor &visitor)
{
    visitor.VisitorWalls(shared_from_this());
}
void Doors::Accept(Visitor &visitor)
{
    visitor.VisitorDoors(shared_from_this());
}