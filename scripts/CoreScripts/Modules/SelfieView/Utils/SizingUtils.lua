local UserInputService = game:GetService("UserInputService")
local KEYS = {
	DESKTOP = "Desktop",
	MOBILE_PORTRAIT = "Portrait",
	MOBILE_LANDSCAPE = "Landscape",
	LARGE = "Large",
	SMALL = "Small",
}

local SIZING_RULES = {
	[KEYS.MOBILE_PORTRAIT] = {
		[KEYS.SMALL] = {
			ratio = 0.24,
			max = 185,
		},
		[KEYS.LARGE] = {
			ratio = 0.35,
			max = 324,
		},
	},
	[KEYS.MOBILE_LANDSCAPE] = {
		[KEYS.SMALL] = {
			ratio = 0.43,
			max = 185,
		},
		[KEYS.LARGE] = {
			ratio = 0.56,
			max = 240,
		},
	},
	[KEYS.DESKTOP] = {
		[KEYS.SMALL] = {
			ratio = 0.33,
			max = 600,
		},
		[KEYS.LARGE] = {
			ratio = 0.44,
			max = 760,
		},
	},
}
local WIDTH_TO_HEIGHT_RATIO = 86 / 185
local PLATFORM = UserInputService:GetPlatform()

local function getWidth(height: number): number
	return height * WIDTH_TO_HEIGHT_RATIO
end

local function getSizingKey(screenSize: Vector2): string
	if PLATFORM == Enum.Platform.Android or PLATFORM == Enum.Platform.IOS then
		return screenSize.X > screenSize.Y and KEYS.MOBILE_LANDSCAPE or KEYS.MOBILE_PORTRAIT
	end
	return KEYS.DESKTOP
end

local function getSize(screenSize: Vector2, large: boolean): Vector2
	local sizingRule: { ratio: number, max: number } =
		SIZING_RULES[getSizingKey(screenSize)][large and KEYS.LARGE or KEYS.SMALL]

	local height: number = math.min(math.round(screenSize.Y * sizingRule.ratio), sizingRule.max)
	local width: number = getWidth(height)

	return Vector2.new(width, height)
end

return {
	getSize = getSize,
}
