package net.nshen.designpatterns.decorator
{
	public class ConcreteDecoratorB extends Decorator
	{
		public function ConcreteDecoratorB(p_component:Component)
		{
			super(p_component);
		}
		//装饰新行为
		public function newOperation():void{
		  trace("被装饰的新行为 newOperation()方法")
		}
		
	}
}