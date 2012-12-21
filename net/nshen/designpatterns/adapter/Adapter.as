package net.nshen.designpatterns.adapter {
    /**
	 * 适配器实现用户期待的接口
	 */
	public class Adapter implements ITarget {

		public var _adaptee:Adaptee = new Adaptee();


		public function request():void {
			_adaptee.specificRequest()
		}

	} 
} 