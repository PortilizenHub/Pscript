package pscript.math;

class P_math
{
	public static inline function add(num1:Int, num2:Int)
	{
        // add values

		var total:Int = num1 += num2;

		return total;
	}

	public static inline function subtract(num1:Int, num2:Int)
	{
        // subtract values

		var total:Int = num1 -= num2;

		return total;
	}

	public static inline function multiply(num1:Int, num2:Int)
	{
        // multiply values

		var total:Int = num1 * num2;

		return total;
	}

	public static inline function divide(num1:Int, num2:Int)
	{
        // divide values

		var total:Int = Std.int(num1 / num2);

		return total;
	}

    public static inline function checkValue(num:Dynamic, isIt:Dynamic)
    {
        var equals:Bool = false;

        if (num == isIt)
            equals = true;

        return equals;
    }
}