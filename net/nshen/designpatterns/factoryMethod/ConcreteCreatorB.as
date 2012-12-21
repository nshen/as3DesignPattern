package net.nshen.designpatterns.factoryMethod
{
	public class ConcreteCreatorB extends AbstractCreator
	{
      override public function createProduct() : IProduct
	  {
	     return new ConcreteProductB()
	  }
	}
}