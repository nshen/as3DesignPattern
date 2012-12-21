package net.nshen.designpatterns.strategy
{
	public class Context
	{
		private var _strategy:IStrategy
		
		public function set strategy(p_strategy:IStrategy):void{
		 this._strategy=p_strategy;
		}
		public function ContextInterface():void{
		 this._strategy.AlgorithmInterface()
		}
	}
}