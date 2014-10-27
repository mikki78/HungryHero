package objects
{
	import flash.events.Event;
	
	import starling.display.Sprite;
	
	public class GameBackground extends Sprite
	{
		private var bgLayer1:Bglayer;
		private var bgLayer2:Bglayer;
		private var bgLayer3:Bglayer;
		private var bgLayer4:Bglayer;
		
		private var _speed:Number = 0;
		
		public function GameBackground()
		{
			super();
			this.addEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage():void
		{
			// TODO Auto Generated method stub
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			
			bgLayer1 = new Bglayer(1);
			bgLayer1.parallax = 0.02;
			this.addChild(bgLayer1);
			
			bgLayer2 = new Bglayer(2);
			bgLayer2.parallax = 0.2;
			this.addChild(bgLayer2);
			
			bgLayer3 = new Bglayer(3);
			bgLayer3.parallax = 0.5;
			this.addChild(bgLayer3);
			
			bgLayer4 = new Bglayer(4);
			bgLayer4.parallax = 1;
			this.addChild(bgLayer4);
			
			this.addEventListener(Event.ENTER_FRAME, onEnterFrame);
			
		}
		
		private function onEnterFrame():void
		{
			// TODO Auto Generated method stub
			bgLayer1.x -= Math.ceil(_speed * bgLayer1.parallax);
			if(bgLayer1.x < -stage.stageWidth)bgLayer1.x = 0;
			
			bgLayer2.x -= Math.ceil(_speed * bgLayer2.parallax);
			if(bgLayer2.x < -stage.stageWidth)bgLayer2.x = 0;
			
			bgLayer3.x -= Math.ceil(_speed * bgLayer3.parallax);
			if(bgLayer3.x < -stage.stageWidth)bgLayer3.x = 0;
			
			bgLayer4.x -= Math.ceil(_speed * bgLayer4.parallax);
			if(bgLayer4.x < -stage.stageWidth)bgLayer4.x = 0;
		}
		
		public function get speed():Number
		{
			return _speed;
		}

		public function set speed(value:Number):void
		{
			_speed = value;
		}

	}
}