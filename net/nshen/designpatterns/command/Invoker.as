package net.nshen.designpatterns.command
{
	public class Invoker
	{
		private var _command:ICommand
		
		public function set command(p_command:ICommand):void{
		 this._command=p_command;
		}
		public function executeCommand():void{
		 this._command.execute()
		}
	}
}