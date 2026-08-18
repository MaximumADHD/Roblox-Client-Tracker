local Foundation = script:FindFirstAncestor("Foundation")

local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)
local ThemeName = require(Foundation.Enums.ThemeName)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type ThemeName = ThemeName.ThemeName

local requirePaths: { [typeof("Common") | ColorMode | Device]: () -> any } = {
	Common = function()
		return require(Foundation.Generated.StyleRules.CommonAttribute)
	end,
	-- TODO start: Remove when FoundationThemeName flag is cleaned up
	Dark = function()
		return require(Foundation.Generated.StyleRules.DarkAttribute)
	end,
	Light = function()
		return require(Foundation.Generated.StyleRules.LightAttribute)
	end,
	-- TODO end: Remove when FoundationThemeName flag is cleaned up
	Console = function()
		return require(Foundation.Generated.StyleRules.ConsoleAttribute)
	end,
	Desktop = function()
		return require(Foundation.Generated.StyleRules.DesktopAttribute)
	end,
}

-- Color rules are baked per theme, so they are keyed by ThemeName then ColorMode.
local colorRulePaths: { [ThemeName]: { [ColorMode]: () -> any } } = {
	[ThemeName.Default] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.Default.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.Default.LightAttribute)
		end,
	},
	[ThemeName.Kids] = {
		Dark = function()
			return require(Foundation.Generated.StyleRules.Kids.DarkAttribute)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.Kids.LightAttribute)
		end,
	},
}

local function getGeneratedRules(themeNameInput: ThemeName?, colorMode: ColorMode, device: Device): any
	local themeName: ThemeName = themeNameInput or ThemeName.Default
	local colorModeRules, sizeRules, commonRules
	commonRules = requirePaths["Common"]()

	if Flags.FoundationThemeName then
		local themeColorPaths = colorRulePaths[themeName] or colorRulePaths[ThemeName.Default]
		colorModeRules = themeColorPaths[colorMode]()
	else
		if colorMode == ColorMode.Dark then
			colorModeRules = requirePaths["Dark" :: ColorMode]()
		elseif colorMode == ColorMode.Light then
			colorModeRules = requirePaths["Light" :: ColorMode]()
		end
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
