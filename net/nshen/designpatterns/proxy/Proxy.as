package net.nshen.designpatterns.proxy {

	public class Proxy implements ISubject {

		private var _realSubject:RealSubject;

		public function doAction():void 
		{
			_realSubject = new RealSubject();
			_realSubject.doAction();
		}

	}  
}  