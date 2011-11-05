package creational.abstractFactory
{
	public class AbstractCreator
	{
		
		public function createProduct_one():AbstractProductOne
		{
			throw new Error("AbstractMethod!")
		}
		public function createProduct_two():AbstractProductTwo
		{
			throw new Error("AbstractMethod!")
		}
	}
}