local ColorSystem = require(script.Parent.ColorSystem)

return {
	Gray_Lightest = ColorSystem.Gray[10],
	Gray_Lighter = ColorSystem.Gray[20],
	Gray_Light = ColorSystem.Gray[50],
	Gray_Mid = ColorSystem.Gray[60],
	Gray = ColorSystem.Gray[100],
	Slate = ColorSystem.Gray[110],
	Carbon = ColorSystem.Gray[120],
	Blue = ColorSystem.Blue[50],
	Blue_Dark = ColorSystem.Blue[70],
	Blue_Light = ColorSystem.Blue[30],
	Red = ColorSystem.Red[80],
	White = ColorSystem.White[0],
	Black = ColorSystem.Black[0],

	-- TODO: DEVTOOLS-4869 - If we add lighter/darker functions to Color3, then refactor this to use that.
	lighter = function(color3, alpha)
		return color3:lerp(Color3.new(1, 1, 1), alpha)
	end,

	darker = function(color3, alpha)
		return color3:lerp(Color3.new(0, 0, 0), alpha)
	end,
}
