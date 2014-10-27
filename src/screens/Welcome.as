package screens
{
	import com.greensock.TweenLite;
	
	import events.NavigationEvent;
	
	import starling.display.Button;
	import starling.display.Image;
	import starling.display.Sprite;
	import starling.events.Event;
	
	public class Welcome extends Sprite
	{
		private var bg:Image;
		private var title:Image;
		private var hero:Image;
		
		private var playBtn:Button;
		private var aboutBtn:Button;
	
		
		public function Welcome()
		{
			super();
			this.addEventListener(starling.events.Event.ADDED_TO_STAGE, onAddedToStage);
		}
		
		private function onAddedToStage(event:Event):void
		{
			trace("welcome screen initialized");
			// TODO Auto Generated method stub
			drawScreen();
		}
		
		private function drawScreen():void
		{
			// TODO Auto Generated method stub
			
			bg = new Image(Assets.getTexture("BgWelcome"));
			this.addChild(bg);

			title = new Image(Assets.getAtlas().getTexture("welcome_title"));
			title.x = 440;
			title.y = 20;
			this.addChild(title);
			
			hero = new Image(Assets.getAtlas().getTexture("welcome_hero"));
			hero.x = -hero.width;
			hero.y = 100;
			this.addChild(hero);
			
			playBtn = new Button(Assets.getAtlas().getTexture("welcome_playButton"));
			playBtn.x = 500;
			playBtn.y = 260;
			this.addChild(playBtn);
			
			aboutBtn = new Button(Assets.getAtlas().getTexture("welcome_aboutButton"));
			aboutBtn.x = 410;
			aboutBtn.y = 380;
			this.addChild(aboutBtn);
			
			this.addEventListener(Event.TRIGGERED, onMainMenuClick);
		}
		
		private function onMainMenuClick(event:Event):void	
		{
			var buttonClicked:Button = event.target as Button;
			if((buttonClicked as Button) == playBtn)
			{
				this.dispatchEvent(new NavigationEvent(NavigationEvent.CHANGE_SCREEN, {id:"play"}, true));
			}
		}
		public function disposeTemporarily():void
		{
			this.visible = false;
			
			if(this.hasEventListener(Event.ENTER_FRAME)) this.removeEventListener(Event.ENTER_FRAME, heroAnimation);
		}
		public function initialized():void
		{
			this.visible = true;
			
			hero.x = -hero.width;
			hero.y = 100;
			
			TweenLite.to(hero, 2, {x: 80});
			
			this.addEventListener(Event.ENTER_FRAME,heroAnimation);
		}
		
		private function heroAnimation(event:Event):void
		{
			// TODO Auto Generated method stub
			var currentDate:Date = new Date();
			hero.y = 100 + (Math.cos(currentDate.getTime() * 0.002) * 25);
			playBtn.y = 260 + (Math.cos(currentDate.getTime() * 0.002) * 10);
			aboutBtn.y = 380 + (Math.cos(currentDate.getTime() * 0.002) * 10);
		}
	}
}