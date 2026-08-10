local Foundation = script:FindFirstAncestor("Foundation")

local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device

local requirePaths: { [typeof("Common") | ColorMode | Device]: () -> any } = {
	Common = function()
		return require(Foundation.Generated.StyleRules.CommonAttribute)
	end,
	Dark = function()
		return require(Foundation.Generated.StyleRules.DarkAttribute)
	end,
	Light = function()
		return require(Foundation.Generated.StyleRules.LightAttribute)
	end,
	Console = function()
		return require(Foundation.Generated.StyleRules.ConsoleAttribute)
	end,
	Desktop = function()
		return require(Foundation.Generated.StyleRules.DesktopAttribute)
	end,
}

local function getGeneratedRules(colorMode: ColorMode, device: Device): any
	local colorModeRules, sizeRules, commonRules
	commonRules = requirePaths["Common"]()

	if colorMode == ColorMode.Dark then
		colorModeRules = requirePaths["Dark" :: ColorMode]()
	elseif colorMode == ColorMode.Light then
		colorModeRules = requirePaths["Light" :: ColorMode]()
	end

	if device == Device.Console and not Flags.FoundationDisableTokenScaling then
		sizeRules = requirePaths["Console" :: Device]()
	else
		sizeRules = requirePaths["Desktop" :: Device]()
	end

	if not colorModeRules or not sizeRules or not commonRules then
		return {}
	end

	local combinedRules = table.clone(sizeRules)

	for key, value in commonRules do
		combinedRules[key] = value
	end

	for key, value in colorModeRules do
		combinedRules[key] = value
	end

	return combinedRules
end

return getGeneratedRules
