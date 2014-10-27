package screens
{
	import flash.utils.getTimer;
	
	import objects.GameBackground;
	import objects.Hero;
	
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class InGame extends Sprite
	{
		private var bg:GameBackground;
		private var hero:Hero;
		
		private var timePrevious:Number;
		private var timeCurrent:Number;
		private var elapsed:Number;
		
		private var gameStage:String;
		
		public function InGame()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			this.removeEventListener(Event.ADDED_TO_STAGE, onAddedToStage);
			drawGame();
		}
		
		private function drawGame():void
		{
			// TODO Auto Generated method stub
			bg = new GameBackground();
			bg.speed = 50;
			this.addChild(bg);
			
			hero = new Hero();
			hero.x = stage.stageWidth/2;
			hero.y = stage.stageHeight/2;
			this.addChild(hero);
		}
		public function disposeTemporarily():void
		{
			this.visible = false;
		}
		public function initialize():void
		{
			this.visible = true;
			
			this.addEventListener(Event.ENTER_FRAME, checkElapsed);
			
			hero.x = -stage.stageWidth;
			hero.y = stage.stageHeight * 0.5;
			
			gameState = "idle";
		}
		
		private function checkElapsed(event.Event):void
		{
			timePrevious =timeCurrent;
			timerCurrent = getTimer();
			elapsed = (timeCurrent - timePrevious) * 0.001;
			// TODO Auto Generated method stub
			
		}
	}
}