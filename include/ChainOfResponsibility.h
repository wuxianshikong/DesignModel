/*
    责任连模式-对象行为模式
    使对个对象都有机会处理请求，从而避免请求的发送者和接受者之间的耦合关系
    有多个对象可以处理一个请求，哪个对象昂处理请求运行时刻自动区确定。
    你想在不明确指定接受者的情况下，向多个对象中的一个提交一个请求
    可处理一个请求的对象哪个集合应被动态指定
*/
#include <memory>
#include <iostream>
using namespace std;

class Request
{
    public:
        Request(const int &request):m_request(request){}
        int GetKind()
        {
            return m_request;
        }
    private:
        int m_request;
};
class HelpHandler
{
    public:
        virtual void HandleRequest(shared_ptr<Request> theRequest)
        {
            if(_successor)
            {
                _successor->HandleRequest(theRequest);
            }
            else
            {
                cout<<"error"<<endl;
            }
        }
        virtual ~HelpHandler()=default;
    protected:
        HelpHandler()=default;
        HelpHandler(shared_ptr<HelpHandler> s):_successor(s){}

    private:
        shared_ptr<HelpHandler> _successor;
};
class ExtendedHandler_1:public HelpHandler
{
    public:
        ExtendedHandler_1()=default;
        ExtendedHandler_1(shared_ptr<HelpHandler> s):HelpHandler(s){}
        virtual void HandleRequest(shared_ptr<Request> theRequest)
        {
            switch (theRequest->GetKind())
            {
            case 1:
                cout<<"1"<<endl;
                break;
            default:
                HelpHandler::HandleRequest(theRequest);
            }
        }
};
class ExtendedHandler_2:public HelpHandler
{
    public:
        ExtendedHandler_2()=default;
        ExtendedHandler_2(shared_ptr<HelpHandler> s):HelpHandler(s){}
        virtual void HandleRequest(shared_ptr<Request> theRequest)
        {
            switch (theRequest->GetKind())
            {
            case 2:
                cout<<"2"<<endl;
                break;
            default:
                HelpHandler::HandleRequest(theRequest);
            }
        }
};