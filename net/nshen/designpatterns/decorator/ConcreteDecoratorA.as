package net.nshen.designpatterns.decorator
{
	public class ConcreteDecoratorA extends Decorator
	{
		public function ConcreteDecoratorA(p_component:Component)
		{
			super(p_component);
		}
	    //装饰现有的行为
		override public function operation():void{
		 super.operation()
		 trace("经过ConcreteDecoratorA装饰！")
		}
	}
}