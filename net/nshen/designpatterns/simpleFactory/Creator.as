package net.nshen.designpatterns.simpleFactory {

	public class Creator {

 
		public static function createProduct(p_type:String):IProduct {
			switch (p_type) {
				case "A":
					return new ConcreteProductA();
					break;
				
				case "B":
					return new ConcreteProductB();
					break;
				
				case "C":
					return new ConcreteProductC();
					break;
				
				default:
					throw new Error("the type " + p_type + " is not recognized.");
			}

		}

	}  
}  