package
{
	import flash.display.Sprite;
	
	import net.nshen.designpatterns.adapter.*;
	import net.nshen.designpatterns.command.*;
	import net.nshen.designpatterns.decorator.*;
	import net.nshen.designpatterns.factoryMethod.*;
	import net.nshen.designpatterns.proxy.*;
	import net.nshen.designpatterns.simpleFactory.*;
	import net.nshen.designpatterns.singleton.*;
	import net.nshen.designpatterns.strategy.*;
	public class as3designpatterns extends Sprite
	{
		public function as3designpatterns()
		{
			//Test_Strategy()
			//Test_Decorator()
			//Test_Singleton()
			//Test_Command()
			//Test_Proxy()
			//Test_Adapter()
			//Test_SimpleFactory()
			Test_FactoryMethod()
		}
		
		public function Test_Strategy():void
		{
			var context:Context=new Context();
			//设置策略
			context.strategy=new ConcreteStrategyA()
			context.ContextInterface()
			//runtime 更改策略B
			context.strategy=new ConcreteStrategyB()
			context.ContextInterface()
			//runtime 更改策略C
			context.strategy=new ConcreteStrategyC()
			context.ContextInterface()
		}
		
		public function Test_Decorator():void
		{
			var concreteComponent:ConcreteComponent=new ConcreteComponent();
			concreteComponent.operation()
			//扩展原始的行为
			var concreteDecoratorA:ConcreteDecoratorA= new ConcreteDecoratorA(concreteComponent)
			concreteDecoratorA.operation()
			//装饰新行为
			var concreteDecoratorB:ConcreteDecoratorB=new ConcreteDecoratorB(concreteComponent)
			concreteDecoratorB.newOperation()
		}
		
		public function Test_Singleton():void
		{
			var s:Singleton=Singleton.getInstance()
			s.doSomething();
			/*
			使用构造函数创建实例会报错
			var s1:Singleton=new Singleton()
			s1.doSomething()
			*/
		}
		
		public function Test_Command():void
		{
			//接收者
			var receiver:Receiver=new Receiver();
			//一个具体命令，与接收者有弱耦合
			var command:ICommand=new ConcreteCommand(receiver);
			//调用者
			var invoker:Invoker=new Invoker()
			//装载命令
			invoker.command=command
			//执行命令
			invoker.executeCommand()
		}
		
		public function Test_Proxy():void
		{
			// proxy不是真正的subject他会将请求代理给RealSubject
			var subject:ISubject =  new Proxy();
			subject.doAction()
		}
		
		public function Test_Adapter():void
		{
			//ITarget是用户期待的接口，调用target.request()实际是适配到真实target的另一接口
			var target:ITarget = new Adapter()
			target.request();
		}		
		
		public function Test_SimpleFactory():void
		{ 
			//静态简单工厂创建3个Iproduct
			var aProduct:net.nshen.designpatterns.simpleFactory.IProduct = Creator.createProduct("A");
			var bProduct:net.nshen.designpatterns.simpleFactory.IProduct = Creator.createProduct("B");
			var cProduct:net.nshen.designpatterns.simpleFactory.IProduct = Creator.createProduct("C");
		}
		public function Test_FactoryMethod():void
		{ 
			/*
			工厂方法把简单工厂的内部逻辑判断移到客户端代码来进行。
			你想要加功能，本来是改工厂类的，而现在是修改客户端。
			*/
			var aFactory:AbstractCreator = new ConcreteCreatorA()			
			var aProduct:net.nshen.designpatterns.factoryMethod.IProduct = aFactory.createProduct()
			var bFactory:AbstractCreator = new ConcreteCreatorB()	
			var bProduct:net.nshen.designpatterns.factoryMethod.IProduct = bFactory.createProduct()
			var cFactory:AbstractCreator = new ConcreteCreatorC()	
			var cProduct:net.nshen.designpatterns.factoryMethod.IProduct = cFactory.createProduct()
		}		
	}
}