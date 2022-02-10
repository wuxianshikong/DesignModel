/*
    解释器 行为型模式
    给定一种语言，定义它的文法表示，并定义一个揭示器
    当有一个语言需要解释执行，并且你可将该该语言中的句子表示为一个抽象语法树，可使用解释器模式
    文法简单，文法的层次变得庞大而无法管理
    效率不是一个关键问题，而是首先将他们转换成另一种形式。
    易于改变和扩展文法，易于实现文法
    复杂的文法难以维护
    增加了新的解释表达式的方式


*/
#include <memory>
#include <iostream>
#include <map>
using namespace std;

class Context;
//接口
class BoolExp;

typedef shared_ptr<BoolExp> BoolExpPtr;

class BoolExp
{
    public:
        virtual ~BoolExp()=default;

        virtual bool Evalute(Context &)=0;
        virtual BoolExpPtr Replace (const string &,BoolExp&)=0;
        virtual BoolExpPtr Copy() const=0;
    protected:
        BoolExp()=default;
};
// typedef shared_ptr<BoolExp> BoolExpPtr;

class Context
{
    public:
        bool Lookup(BoolExpPtr name)
        {
            auto iter=pool.find(name);
            return iter->second;
        }
        void Assign(BoolExpPtr name,bool v)
        {
            pool.insert(make_pair(name,v));
        }
    private:
        map<BoolExpPtr,bool> pool;
        

};

class VariableExp:public BoolExp,public enable_shared_from_this<VariableExp>
{
    public:
        VariableExp(const string & name):_name(name){}
        virtual ~VariableExp()=default;

        virtual bool Evalute(Context & context)
        {
            return context.Lookup(shared_from_this());
        }

        virtual BoolExpPtr Replace (const string &name,BoolExp& exp)
        {
            if(name==_name){return exp.Copy();}
            else{ return BoolExpPtr(new VariableExp(_name));}
        }

        virtual BoolExpPtr Copy() const
        {
            return BoolExpPtr(new VariableExp(_name));
        }

    private:
        string _name;
};

class AndExp:public BoolExp
{
    public:
        AndExp(BoolExpPtr andr,BoolExpPtr andl):_operand1(andr),_operand2(andl)
        {

        }
        virtual ~AndExp()=default;

        virtual bool Evalute(Context & context)
        {
            return _operand1->Evalute(context) && _operand2->Evalute(context);
        }

        virtual BoolExpPtr Replace (const string &name,BoolExp& exp)
        {
            return BoolExpPtr(new AndExp(_operand1->Replace(name,exp),_operand2->Replace(name,exp)));
        }

        virtual BoolExpPtr Copy() const
        {
            return BoolExpPtr(new AndExp(_operand1,_operand2));
        }
    private:
        BoolExpPtr _operand1;
        BoolExpPtr _operand2;
};

class OrExp:public BoolExp
{
    public:
        OrExp(BoolExpPtr andr,BoolExpPtr andl):_operand1(andr),_operand2(andl)
        {

        }
        virtual ~OrExp()=default;

        virtual bool Evalute(Context & context)
        {
            return _operand1->Evalute(context) || _operand2->Evalute(context);
        }

        virtual BoolExpPtr Replace (const string &name,BoolExp& exp)
        {
            return BoolExpPtr(new OrExp(_operand1->Replace(name,exp),_operand2->Replace(name,exp)));
        }

        virtual BoolExpPtr Copy() const
        {
            return BoolExpPtr(new OrExp(_operand1,_operand2));
        }
    private:
        BoolExpPtr _operand1;
        BoolExpPtr _operand2;
};
