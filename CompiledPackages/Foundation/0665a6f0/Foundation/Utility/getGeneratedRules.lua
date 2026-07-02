local Foundation = script:FindFirstAncestor("Foundation")

local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)
local Theme = require(Foundation.Enums.Theme)

type Theme = Theme.Theme
type Device = Device.Device

local requirePaths: { [typeof("Common") | Theme | Device]: () -> any } = {
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

local function getGeneratedRules(theme: Theme, device: Device): any
	local themeRules, sizeRules, commonRules
	commonRules = requirePaths["Common"]()

	if theme == Theme.Dark then
		themeRules = requirePaths["Dark" :: Theme]()
	elseif theme == Theme.Light then
		themeRules = requirePaths["Light" :: Theme]()
	end

	if device == Device.Console and not Flags.FoundationDisableTokenScaling then
		sizeRules = requirePaths["Console" :: Device]()
	else
		sizeRules = requirePaths["Desktop" :: Device]()
	end

	if not themeRules or not sizeRules or not commonRules then
		return {}
	end

	local combinedRules = table.clone(sizeRules)

	for key, value in commonRules do
		combinedRules[key] = value
	end

	for key, value in themeRules do
		combinedRules[key] = value
	end

	return combinedRules
end

return getGeneratedRules
