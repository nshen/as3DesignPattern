package net.nshen.designpatterns.command
{
	public class ConcreteCommand implements ICommand
	{
		private var _receiver:*
		
		public function ConcreteCommand(p_receiver:*){
		 this._receiver=p_receiver;
		}
		public function execute():void
		{
			this._receiver.action()
		}
		
	}
}