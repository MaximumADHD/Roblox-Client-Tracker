local CorePackages = game:GetService("CorePackages")
local GetFFlagLatestClientThemeColors = require(CorePackages.AppTempCommon.LuaApp.Flags.GetFFlagLatestClientThemeColors)
	
local Colors = {
	--Common colors
	Black = Color3.fromRGB(0, 0, 0),
	White = Color3.fromRGB(255, 255, 255),
	Green = Color3.fromRGB(0, 176, 111),
	Red = Color3.fromRGB(247, 75, 82),
	Blue = Color3.fromRGB(82, 173, 244),
	LightGrey = Color3.fromRGB(212, 212, 212),

	--Dark theme colors
	Carbon = GetFFlagLatestClientThemeColors() and Color3.fromRGB(25, 27, 29) or Color3.fromRGB(31, 33, 35),
	Flint = Color3.fromRGB(57, 59, 61),
	Graphite = Color3.fromRGB(101, 102, 104),
	Obsidian = GetFFlagLatestClientThemeColors() and Color3.fromRGB(17, 18, 20) or Color3.fromRGB(24, 25, 27),
	Pumice = Color3.fromRGB(189, 190, 190),
	Slate = Color3.fromRGB(35, 37, 39),

	--Light theme colors
	Alabaster = Color3.fromRGB(242, 244, 245),
	Ash = GetFFlagLatestClientThemeColors() and Color3.fromRGB(222, 225, 227) or Color3.fromRGB(234, 237, 239),
	Chalk = GetFFlagLatestClientThemeColors() and Color3.fromRGB(199, 203, 206) or Color3.fromRGB(216, 219, 222),
	Smoke = Color3.fromRGB(96, 97, 98),
	XboxBlue = Color3.fromRGB(17, 139, 211),
}

return Colors