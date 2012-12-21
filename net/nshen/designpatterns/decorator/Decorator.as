package net.nshen.designpatterns.decorator
{
	public class Decorator extends Component
	{
		//被装饰者
		private var _component:Component
		
		public function Decorator(p_component:Component):void{
		 this._component=p_component;
		}
		
		override public function operation():void{
		  this._component.operation()
		}
	}
}