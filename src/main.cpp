#include <iostream>
#include <string>
#include <memory>
#include <boost/smart_ptr.hpp>
#include <functional>
#include <map>
#include <vector>
#include <type_traits>
#include <random>

#include "AbstractFactory.h"
#include "Builder.h"
#include "FactoryMethod.h"
#include "Prototype.h"
#include "Singleton.h"
#include "Adapter.h"
#include "Bridge.h"
#include "Composite.h"
#include "Decorator.h"
#include "Flyweight.h"
#include "ChainOfResponsibility.h"
#include "Command.h"
#include "Interpreter.h"
#include "Iterator.h"
#include "Mediator.h"
#include "Memento.h"
#include "Observer.h"
#include "State.h"
#include "Strategy.h"
#include "Template.h"
#include "Visitor.h"

void Execute()
{

}
int main()
{
    /*
        抽象工厂
    */
    // EMazeFactory factory;
    // MazeGame_AbstractFactory g;
    // MazePtr p=g.CreateMaze(factory);
    // p->Enter();
    /*
        建造模式
    */
    // MazePtr maze;
    // MazeGame_BUILDER gb;
    // StandardMazeBulider builder;
    // maze=gb.CreateMaze(builder);
    // maze->Enter();
    /*
        工厂方法模式
    */

    // MazePtr maze_2;
    // MazeGame_FactoryMethod<BMazeFactory> mgf;
    // maze_2= mgf.CreatMaze();
    // maze_2->Enter();

    /*
        原型模式
    */
    // MazePtr maze_3;
    // MazePrototypeFactory m(MazePtr(new Maze),WallPtr(new Wall),RoomPtr(new Room(0)),
    //                         DoorPtr(new EDoor(RoomPtr(new Room(0)),RoomPtr(new Room(1)))));
    // MazeGame_AbstractFactory g;
    // maze_3=g.CreateMaze(m);
    // maze_3->Enter();

    /*
        单例模式
    */

    // SingleBasePtr p = MazeFactory_Single::Instance<EMazeFactory_Single>();
    // MazeGame_Single<SingleBasePtr> g;
    // MazePtr maze_4=g.CreateMaze(p);
    // maze_4->Enter();

    /*
        适配器(WindowWall)利用原型测试 原型模式
    */
    // MazePtr maze_3;
    // MazePrototypeFactory m(MazePtr(new Maze),WallPtr(new WindowWall),RoomPtr(new Room(0)),
    //                         DoorPtr(new EDoor(RoomPtr(new Room(0)),RoomPtr(new Room(1)))));
    // MazeGame_AbstractFactory g;
    // maze_3=g.CreateMaze(m);
    // maze_3->Enter();
    /*
        桥接模式
    */
    // typedef MazeFact<BMazeFactory_Single> MF;
    // MF mf;
    // MazeGame_Single<MF> g;
    // MazePtr maze_4=g.CreateMaze(mf);
    // maze_4->Enter();
    /*
        组合模式
    */
    // shared_ptr<Cabinet> cabinet(new Cabinet("PC Cabinet"));
    // shared_ptr<Chassis> chassis(new Chassis("PC Chassis"));

    // cabinet->Add(chassis);
    // shared_ptr<Bus> bus(new Bus("pc bus"));

    // chassis->Add(bus);
    // chassis->Add(shared_ptr<FloppyDisk>(new FloppyDisk("PC floppyDist")));
    // cout<<cabinet->NetPrice()<<endl;
    /*
        装饰模式
    */
    // RoomPtr rm(new Room(1));
    // auto p=WallPtr(new Paint(WallPtr(new Wall)));
    // rm->SetSides(North,MapSitePtr(new Paint(p)));
    // rm->Enter();
    /*
        享元模式
    */
    // RoomPtr rm(new Room(1));
    // FlyFactory ff;
    // rm->SetSides(North,ff.CreatWall<Wall>());
    // rm->SetSides(South,ff.CreatWall<Wall>());
    // rm->SetSides(East,ff.CreatWall<WindowWall>());
    // rm->Enter();
    /*
        责任连模式
    */
    // Request r(1);
    // ExtendedHandler_1 eh;
    // ExtendedHandler_2 eh2(make_shared<ExtendedHandler_1>(eh));
    // eh2.HandleRequest(make_shared<Request>(r));

    /*
        命令模式
    */
    // shared_ptr<Window10> receiver(new Window10);
    // shared_ptr<Liunx> receiver2(new Liunx);
    // shared_ptr<Command>  aCommand(new Github<Window10>(receiver,make_shared<Github<Window10>::Action>(&Window10::Action)));
    // shared_ptr<Command>  aCommand2(new Github<Liunx>(receiver2,make_shared<Github<Liunx>::Action>(&Liunx::Action)));
    // CommandPool pool;
    // pool.Add(aCommand);
    // pool.Add(aCommand2);
    // pool.Execute();
    /*
        解释器模式
    */
    // Context Context;
    // shared_ptr<VariableExp> x(new VariableExp(string("x")));
    // shared_ptr<VariableExp> y(new VariableExp(string("y")));
    // shared_ptr<OrExp> exprssion(new OrExp(BoolExpPtr(new AndExp(x,y)),BoolExpPtr(new AndExp(x,x))));
    // Context.Assign(x,true);
    // Context.Assign(y,false);
    // cout<<exprssion->Evalute(Context)<<endl;
    /*
        迭代器模式
    */
    // shared_ptr<MList<int>> p(new MList<int>());
    // p->push(1);
    // p->push(2);
    // p->push(3);
    // p->push(4);
    // shared_ptr<Iterator<int>> f=p->CreateIterator();
    // for(f->First();!f->IsDone();f->Next())
    // {
    //     cout<<f->currentItem()<<endl;
    // }
    // cout<<"ok"<<endl;
    /*
        中介者模式
    */
    // shared_ptr<Virus> virus(new Virus);

    // shared_ptr<Profession> p(new Profession("Doctor"));
    // shared_ptr<Profession> p2(new Profession("policeman"));
    // p->Subtopic(virus);
    // //virus->Adduser(p);
    // p2->Subtopic(virus);
    // p->Send("bu hao le");
    // p2->Send("you qing kuang");
    // return 0;
    /*
        备忘录模式
    */
    // Originator p;
    // shared_ptr<Memento> me=p.CreateMemento();
    // p.ChangeState();
    // p.ChangeState();
    // p.print();
    // p.SetMemento(me);
    // p.print();
    /*
        访问者模式
    */
    // shared_ptr<Clock> clock(new Clock);
    // shared_ptr<Modeclock> a(new Modeclock("D"));
    // a->add(clock);
    // shared_ptr<Modeclock> b(new Modeclock("A"));
    // b->add(clock);
    // clock->Tick();
    /*
        状态模式
    */
    // shared_ptr<TCPConnection> connect(new TCPConnection);
    // connect->print();
    // connect->ActiveOpen();
    // connect->print();
    // connect->Send();
    // connect->print();
    // connect->Close();
    // connect->print();
    /*
        策略模式
    */
    // Contexts<MyStrategy> aContext;
    // aContext.Operation();
    /*
        模板方法模式
    */
    // Base p;
    // p.Display();
    // Con1 p2;
    // p2.Display();
    /*  
        访问者模式
    */
    shared_ptr<Rooms> r1(new Rooms("room",20));
    r1->Add(shared_ptr<Doors>(new Doors("door",1)));
    r1->Add(shared_ptr<Walls>(new Walls("wall",2)));
    r1->Add(shared_ptr<Walls>(new Walls("wall2",3)));
    NumVisitor numv;
    NameVisitor namev;
    r1->Accept(numv);
    r1->Accept(namev);


}