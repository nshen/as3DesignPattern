package net.nshen.designpatterns.factoryMethod
{
	public class ConcreteCreatorA extends AbstractCreator
	{
      override public function createProduct() : IProduct
	  {
	     return new ConcreteProductA()
	  }
	}
}