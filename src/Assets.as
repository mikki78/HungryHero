package
{
	import flash.display.Bitmap;
	import flash.utils.Dictionary;
	
	import starling.textures.Texture;

	public class Assets
	{
		[Embed(source="..{media/graphics/bgWelcome.jpg")]
		public static const BgWelcome:Class;
		
		[Embed(source="..{media/graphics/welcome_hero.jpg")]
		public static const WelcomeHero:Class;
		
		[Embed(source="..{media/graphics/welcome_title.jpg")]
		public static const WelcomeTitle:Class;
		
		[Embed(source="..{media/graphics/welcome_playButton.jpg")]
		public static const WelcomePlayBtn:Class;
		
		[Embed(source="..{media/graphics/welcome_aboutButton.jpg")]
		public static const WelcomeAboutBtn:Class;
		
		private static var gameTextures:Dictionary = new Dictionary();
		
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
}