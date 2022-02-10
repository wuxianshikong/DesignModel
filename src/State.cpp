#include "State.h"

void TCPState::ChangeState(TCPConnectionPtr tcp,shared_ptr<TCPState> state)
{
    tcp->ChangeState(state);
}
shared_ptr<TCPState> TCPClosed::Instance()
{
    return shared_ptr<TCPClosed>(new TCPClosed);
}
shared_ptr<TCPState> TCPListen::Instance()
{
    return shared_ptr<TCPListen>(new TCPListen);
}
shared_ptr<TCPState> TCPEstablished::Instance()
{
    return shared_ptr<TCPEstablished>(new TCPEstablished);
}
void  TCPEstablished::Close(TCPConnectionPtr tcp)
{
    ChangeState(tcp,TCPListen::Instance());
}