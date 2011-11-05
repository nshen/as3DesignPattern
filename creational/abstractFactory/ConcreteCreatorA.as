package creational.abstractFactory
{
	public class ConcreteCreatorA extends AbstractCreator
	{
		public function ConcreteCreatorA()
		{
			super();
		}
	
		override public function createProduct_one():AbstractProductOne
		{
			return new ConcreteProductOne_A()
		}
		
		override public function createProduct_two():AbstractProductTwo
		{
			return new ConcreteProductTwo_B()
		}
	}
}