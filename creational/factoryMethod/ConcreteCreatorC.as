package creational.factoryMethod
{
	public class ConcreteCreatorC extends AbstractCreator
	{
      override public function createProduct() : IProduct
	  {
	     return new ConcreteProductC()
	  }
	}
}