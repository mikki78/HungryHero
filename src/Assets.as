package
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;

	public class Assets
	{
		[Embed(source="../media/graphics/bgWelcome.jpg")]
		public static const BgWelcome:Class;
		
		[Embed(source="../media/graphics/welcome_hero.png")]
		public static const WelcomeHero:Class;
		
		[Embed(source="../media/graphics/welcome_title.png")]
		public static const WelcomeTitle:Class;
		
		[Embed(source="../media/graphics/Welcome_playButton.png")]
		public static const WelcomePlayBtn:Class;
		
		[Embed(source="../media/graphics/welcome_aboutButton.png")]
		public static const WelcomeAboutBtn:Class;
		
		private static var gameTextures:Dictionary = new Dictionary();
		
		public static function getAtlas():TextureAtlas
		{
			
		}
		
		public static function getTexture(name:String):Texture
		{	
			if (gameTextures[name] == undefined)
			{
				var bitmap:Bitmap = new Assets[name]();
				gameTextures[name] = Texture.fromBitmap(bitmap);
			}
			return gameTextures[name];
			}
		}
	}
