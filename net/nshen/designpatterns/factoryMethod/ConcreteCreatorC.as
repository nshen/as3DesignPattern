package net.nshen.designpatterns.factoryMethod
{
	public class ConcreteCreatorC extends AbstractCreator
	{
      override public function createProduct() : IProduct
	  {
	     return new ConcreteProductC()
	  }
	}
}