package creational.abstractFactory
{
	public class ConcreteCreatorB extends AbstractCreator
	{
		public function ConcreteCreatorB()
		{
			super();
		}
		
		override public function createProduct_one():AbstractProductOne
		{
			return new ConcreteProductOne_B()
		}
		override public function createProduct_two():AbstractProductTwo
		{
			return new ConcreteProductTwo_B()
		}
	}
}