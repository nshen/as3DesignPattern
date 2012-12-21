package net.nshen.designpatterns.factoryMethod
{
	public class AbstractCreator
	{
		public function createProduct():IProduct
		{
		  throw new Error("AbstractMethod!")
		}
	}
}