package net.nshen.designpatterns.decorator
{
	//被装饰者
	public class ConcreteComponent extends Component
	{
		override public function operation():void{
		  trace("原始行为")
		}
	}
}