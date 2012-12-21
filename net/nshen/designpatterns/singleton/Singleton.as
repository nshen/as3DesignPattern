package net.nshen.designpatterns.singleton
{
	public class Singleton
	{
	  private static var _instance:Singleton;

      public function Singleton(singletonEnforcer:SingletonEnforcer) {
       if(singletonEnforcer==null)throw new Error("singletonEnforcer")
      }

      public static function getInstance():Singleton {
         if(Singleton._instance == null) {
            Singleton._instance = new Singleton(new SingletonEnforcer());
         }
         return Singleton._instance;
      }

      public function doSomething():void {
         trace("SOMETHING!");
      }

	}
}
class SingletonEnforcer {}