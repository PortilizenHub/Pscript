package;

import flixel.FlxState;
import flixel.FlxG;

// pscript
import pscript.Pscript;
import pscript.PscriptPaths;
import pscript.math.P_math;

class PlayState extends FlxState
{
	// var no:Int = 2;
	// var yes:Int = 6;

	override public function create()
	{
		// all functions

		// Pscript.terminalMessage();
		// Pscript.terminalMessage(Pscript.windowInfo('width: ' + FlxG.width));
		// Pscript.terminalMessage(Pscript.windowInfo('heigt: ' +  FlxG.height));
		// Pscript.terminalMessage(Pscript.windowInfo('drawFramrate: ' + FlxG.drawFramerate));
		// Pscript.terminalMessage(Pscript.windowInfo('updateFramerate: ' +  FlxG.updateFramerate));
		// Pscript.playSound();
		// Pscript.terminalMessage(Pscript.getVersion());
		// Pscript.terminalMessage(Pscript.getAssetPath('data'));
		// Pscript.playMusic('Love-Tutorial');
		// Pscript.terminalMessage(P_math.add(189, 32));
		// Pscript.terminalMessage(P_math.subtract(20, 40));
		// Pscript.terminalMessage(P_math.multiply(20, 64));
		// Pscript.terminalMessage(P_math.divide(120, 2));
		// Pscript.terminalMessage(P_math.checkValue(no, yes));
		// yes = no;
		// Pscript.terminalMessage(P_math.checkValue(no, yes));

		super.create();
	}

	override public function update(elapsed:Float)
	{
		super.update(elapsed);
	}
}
