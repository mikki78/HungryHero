package objects
{
	import starling.display.Sprite;
	
	public class Obstacles extends Sprite
	{
		public function Obstacles()
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage():void
		{
			// TODO Auto Generated method stub
			
		}
	}
}