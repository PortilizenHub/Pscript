package pscript;

// flixel
import flixel.util.FlxColor;
import flixel.FlxG;
import flixel.FlxSprite;

// openfl.utils
import openfl.utils.Assets;

// pscript
import pscript.PscriptPaths;

class Pscript
{
	private static var DEFAULT_TEXT:String = 'Lorem ipsum dolor sit amet';

    private static var ver:String = '0.0.1';

	private static var sound_END:String = #if web ".mp3" #else ".ogg" #end;

    public function create()
    {
        /**

            This function is the base create function

        **/

        create();
	}

	public function update(elapsed:Float)
	{
		/**

			This function is the base update function
				
		**/

		update(elapsed);
	}

	public static inline function terminalMessage(v:Dynamic = "")
	{
		/**

			This function is a function to add trace and FlxG.log.add together to have the message
            be printed out in 2 seperate terminal logs
            the haxeflixel terminal when pressing `, ~, \, or |
            and the terminal you used to run the game
				
		**/

        if (v == '')
			v = DEFAULT_TEXT;

        trace(v);
        FlxG.log.add(v);

        return;
    }

    public static inline function windowInfo(info:Dynamic = '')
	{
        /**

            This function returns out the window info given in the info Dynamic function variable

		**/

		if (info == '')
			info = DEFAULT_TEXT;

		var info:Dynamic = info;

        return info;
    }

    public static inline function playSound(sound:Dynamic = '')
	{
        /**

            This funtion plays a sound depending on the info provided by the function variable 
            'sound'

        **/

		var soundPath:Dynamic = getAssetPath('sounds/$sound');

		if (sound == '')
			sound = DEFAULT_TEXT;

		soundPath = getAssetPath('sounds/$sound');
        
        if (sound != DEFAULT_TEXT)
            // play sound
			FlxG.sound.play(soundPath + sound_END, 1, false);
        else if (sound == DEFAULT_TEXT)
            // return error
            terminalMessage('[ERROR] sound doesnt exist');

        return;
    }

	public static inline function playMusic(music:Dynamic = '', looped:Bool = true)
	{
		/**

			This funtion plays a track depending on the info provided by the function variable 
			'music'

		**/

		var musicPath:Dynamic = getAssetPath('music/$music');

		if (music == '')
			music = DEFAULT_TEXT;

		musicPath = getAssetPath('music/$music');

		if (music != DEFAULT_TEXT)
			// play sound
			FlxG.sound.playMusic(musicPath + sound_END, 1, looped);
		else if (music == DEFAULT_TEXT)
			// return error
			terminalMessage('[ERROR] track doesnt exist');

		return;
	}

    public static inline function getVersion()
    {
        /**

            This function returns the Pscript version

        **/

		var pscript_version:Dynamic = ver;

		return pscript_version;
    }

    public static inline function getAssetPath(path:Dynamic = 'images')
	{
        /**

            This function returns the asset/ folder path using the path function variable
            
            Example:
            Pscript.terminalMessage(Pscript.getAssetPath('data/folder'));

        **/

		var finalPath:Dynamic = 'assets/$path';

		// there is no error cause files could be in the base assets folder

        return finalPath;
    }

    // work in progress functions below

	private function checkAllKeys()
	{
		var pressed:Bool = false;

		if (FlxG.keys.justPressed.ANY)
			pressed = true;

		var wip:String = 'this function is in the works, please come back in a future update';

		return wip;
	}
}