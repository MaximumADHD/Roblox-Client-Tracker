--[[
    NOTE: Instead of using the old Studio ColorSystem this module will
	now return the REAL FOUNDATION COLORS in its place! If you are looking for a color in here, please consider
	using a foundation tag for your React component instead!
]]
local Framework = script.Parent.Parent
local Packages = Framework.Parent

local ok, RbxDesignFoundations = pcall(function()
	return require(Packages.RbxDesignFoundations)
end)

local FoundationDark
if ok then
	FoundationDark = RbxDesignFoundations.Tokens.Dark
else
	--[[
	local url = "https://github.com/Roblox/rbx-design-foundations/blob/main/modules/foundation/rblx-rods-style-lua/src/tokens/FoundationDark.lua"
	warn("RbxDesignFoundations not found. Using hardcoded file instead.", `This should be kept up to date with {url}`)
	]]
	FoundationDark = require(script.Parent.Themes.FoundationDark)
end

-- Dark and light currently share the same extended color palette
local Tokens = FoundationDark(1)
local FoundationColors = Tokens.Color.Extended

return {
	Black = {
		[0] = FoundationColors.Black.Black_100.Color3,
	},
	White = {
		[0] = FoundationColors.White.White_100.Color3,
	},
	Gray = {
		[10] = FoundationColors.Gray.Gray_100.Color3,
		[20] = FoundationColors.Gray.Gray_200.Color3,
		[30] = FoundationColors.Gray.Gray_300.Color3,
		[40] = FoundationColors.Gray.Gray_400.Color3,
		[50] = FoundationColors.Gray.Gray_500.Color3,
		[60] = FoundationColors.Gray.Gray_600.Color3,
		[70] = FoundationColors.Gray.Gray_700.Color3,
		[80] = FoundationColors.Gray.Gray_800.Color3,
		[90] = FoundationColors.Gray.Gray_900.Color3,
		[100] = FoundationColors.Gray.Gray_1000.Color3,
		[110] = FoundationColors.Gray.Gray_1100.Color3,
		[120] = FoundationColors.Gray.Gray_1200.Color3,
	},
	Blue = {
		[10] = FoundationColors.Blue.Blue_100.Color3,
		[20] = FoundationColors.Blue.Blue_200.Color3,
		[30] = FoundationColors.Blue.Blue_300.Color3,
		[40] = FoundationColors.Blue.Blue_400.Color3,
		[50] = FoundationColors.Blue.Blue_500.Color3,
		[60] = FoundationColors.Blue.Blue_600.Color3,
		[70] = FoundationColors.Blue.Blue_700.Color3,
		[80] = FoundationColors.Blue.Blue_800.Color3,
		[90] = FoundationColors.Blue.Blue_900.Color3,
		[100] = FoundationColors.Blue.Blue_1000.Color3,
		[110] = FoundationColors.Blue.Blue_1100.Color3,
		[120] = FoundationColors.Blue.Blue_1200.Color3,
	},
	Green = {
		[10] = FoundationColors.Green.Green_100.Color3,
		[20] = FoundationColors.Green.Green_200.Color3,
		[30] = FoundationColors.Green.Green_300.Color3,
		[40] = FoundationColors.Green.Green_400.Color3,
		[50] = FoundationColors.Green.Green_500.Color3,
		[60] = FoundationColors.Green.Green_600.Color3,
		[70] = FoundationColors.Green.Green_700.Color3,
		[80] = FoundationColors.Green.Green_800.Color3,
		[90] = FoundationColors.Green.Green_900.Color3,
		[100] = FoundationColors.Green.Green_1000.Color3,
		[110] = FoundationColors.Green.Green_1100.Color3,
		[120] = FoundationColors.Green.Green_1200.Color3,
	},
	Purple = {
		[10] = FoundationColors.Purple.Purple_100.Color3,
		[20] = FoundationColors.Purple.Purple_200.Color3,
		[30] = FoundationColors.Purple.Purple_300.Color3,
		[40] = FoundationColors.Purple.Purple_400.Color3,
		[50] = FoundationColors.Purple.Purple_500.Color3,
		[60] = FoundationColors.Purple.Purple_600.Color3,
		[70] = FoundationColors.Purple.Purple_700.Color3,
		[80] = FoundationColors.Purple.Purple_800.Color3,
		[90] = FoundationColors.Purple.Purple_900.Color3,
		[100] = FoundationColors.Purple.Purple_1000.Color3,
		[110] = FoundationColors.Purple.Purple_1100.Color3,
		[120] = FoundationColors.Purple.Purple_1200.Color3,
	},
	Yellow = {
		[10] = FoundationColors.Yellow.Yellow_100.Color3,
		[20] = FoundationColors.Yellow.Yellow_200.Color3,
		[30] = FoundationColors.Yellow.Yellow_300.Color3,
		[40] = FoundationColors.Yellow.Yellow_400.Color3,
		[50] = FoundationColors.Yellow.Yellow_500.Color3,
		[60] = FoundationColors.Yellow.Yellow_600.Color3,
		[65] = FoundationColors.Yellow.Yellow_600.Color3:Lerp(FoundationColors.Yellow.Yellow_700.Color3, 0.5),
		[70] = FoundationColors.Yellow.Yellow_700.Color3,
		[80] = FoundationColors.Yellow.Yellow_800.Color3,
		[90] = FoundationColors.Yellow.Yellow_900.Color3,
		[100] = FoundationColors.Yellow.Yellow_1000.Color3,
		[110] = FoundationColors.Yellow.Yellow_1100.Color3,
		[120] = FoundationColors.Yellow.Yellow_1200.Color3,
	},
	Orange = {
		[10] = FoundationColors.Orange.Orange_100.Color3,
		[20] = FoundationColors.Orange.Orange_200.Color3,
		[30] = FoundationColors.Orange.Orange_300.Color3,
		[40] = FoundationColors.Orange.Orange_400.Color3,
		[50] = FoundationColors.Orange.Orange_500.Color3,
		[60] = FoundationColors.Orange.Orange_600.Color3,
		[70] = FoundationColors.Orange.Orange_700.Color3,
		[80] = FoundationColors.Orange.Orange_800.Color3,
		[90] = FoundationColors.Orange.Orange_900.Color3,
		[100] = FoundationColors.Orange.Orange_1000.Color3,
		[110] = FoundationColors.Orange.Orange_1100.Color3,
		[120] = FoundationColors.Orange.Orange_1200.Color3,
	},
	Red = {
		[10] = FoundationColors.Red.Red_100.Color3,
		[20] = FoundationColors.Red.Red_200.Color3,
		[30] = FoundationColors.Red.Red_300.Color3,
		[40] = FoundationColors.Red.Red_400.Color3,
		[50] = FoundationColors.Red.Red_500.Color3,
		[60] = FoundationColors.Red.Red_600.Color3,
		[70] = FoundationColors.Red.Red_700.Color3,
		[80] = FoundationColors.Red.Red_800.Color3,
		[90] = FoundationColors.Red.Red_900.Color3,
		[100] = FoundationColors.Red.Red_1000.Color3,
		[110] = FoundationColors.Red.Red_1100.Color3,
		[120] = FoundationColors.Red.Red_1200.Color3,
	},
	Pink = {
		[10] = FoundationColors.Pink.Pink_100.Color3,
		[20] = FoundationColors.Pink.Pink_200.Color3,
		[30] = FoundationColors.Pink.Pink_300.Color3,
		[40] = FoundationColors.Pink.Pink_400.Color3,
		[50] = FoundationColors.Pink.Pink_500.Color3,
		[60] = FoundationColors.Pink.Pink_600.Color3,
		[70] = FoundationColors.Pink.Pink_700.Color3,
		[80] = FoundationColors.Pink.Pink_800.Color3,
		[90] = FoundationColors.Pink.Pink_900.Color3,
		[100] = FoundationColors.Pink.Pink_1000.Color3,
		[110] = FoundationColors.Pink.Pink_1100.Color3,
		[120] = FoundationColors.Pink.Pink_1200.Color3,
	},
	Magenta = {
		[10] = FoundationColors.Magenta.Magenta_100.Color3,
		[20] = FoundationColors.Magenta.Magenta_200.Color3,
		[30] = FoundationColors.Magenta.Magenta_300.Color3,
		[40] = FoundationColors.Magenta.Magenta_400.Color3,
		[50] = FoundationColors.Magenta.Magenta_500.Color3,
		[60] = FoundationColors.Magenta.Magenta_600.Color3,
		[70] = FoundationColors.Magenta.Magenta_700.Color3,
		[80] = FoundationColors.Magenta.Magenta_800.Color3,
		[90] = FoundationColors.Magenta.Magenta_900.Color3,
		[100] = FoundationColors.Magenta.Magenta_1000.Color3,
		[110] = FoundationColors.Magenta.Magenta_1100.Color3,
		[120] = FoundationColors.Magenta.Magenta_1200.Color3,
	},
	Turquoise = {
		[10] = FoundationColors.Turquoise.Turquoise_100.Color3,
		[20] = FoundationColors.Turquoise.Turquoise_200.Color3,
		[30] = FoundationColors.Turquoise.Turquoise_300.Color3,
		[40] = FoundationColors.Turquoise.Turquoise_400.Color3,
		[50] = FoundationColors.Turquoise.Turquoise_500.Color3,
		[60] = FoundationColors.Turquoise.Turquoise_600.Color3,
		[70] = FoundationColors.Turquoise.Turquoise_700.Color3,
		[80] = FoundationColors.Turquoise.Turquoise_800.Color3,
		[90] = FoundationColors.Turquoise.Turquoise_900.Color3,
		[100] = FoundationColors.Turquoise.Turquoise_1000.Color3,
		[110] = FoundationColors.Turquoise.Turquoise_1100.Color3,
		[120] = FoundationColors.Turquoise.Turquoise_1200.Color3,
	},
}
