package creational.factoryMethod
{
	public class ConcreteCreatorA extends AbstractCreator
	{
      override public function createProduct() : IProduct
	  {
	     return new ConcreteProductA()
	  }
	}
}