local UserInputService = game:GetService("UserInputService")

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local GetFFlagSelfieViewV4 = require(RobloxGui.Modules.Flags.GetFFlagSelfieViewV4)

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
local WIDTH_TO_HEIGHT_RATIO = if GetFFlagSelfieViewV4() then 188 / 285 else 86 / 185
local SMALL_TO_LARGE_RATIO = 130 / 285
local MAX_HEIGHT = 285
local MAX_RATIO = 0.7
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
	if GetFFlagSelfieViewV4() then
		local height: number = math.min(math.round(screenSize.Y * MAX_RATIO), MAX_HEIGHT)
		local width: number = getWidth(height)

		if not large then
			height *= SMALL_TO_LARGE_RATIO
		end

		return Vector2.new(width, height)
	else
		local sizingRule: { ratio: number, max: number } =
			SIZING_RULES[getSizingKey(screenSize)][large and KEYS.LARGE or KEYS.SMALL]

		local height: number = math.min(math.round(screenSize.Y * sizingRule.ratio), sizingRule.max)
		local width: number = getWidth(height)

		return Vector2.new(width, height)
	end
end

return {
	getSize = getSize,
}
