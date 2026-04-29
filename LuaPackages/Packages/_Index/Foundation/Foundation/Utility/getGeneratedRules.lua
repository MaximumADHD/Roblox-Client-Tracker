local Foundation = script:FindFirstAncestor("Foundation")

local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)
local StyleTagFormat = require(Foundation.Enums.StyleTagFormat)
local Theme = require(Foundation.Enums.Theme)

type Theme = Theme.Theme
type Device = Device.Device
type StyleTagFormat = StyleTagFormat.StyleTagFormat

local requirePaths: { [StyleTagFormat]: { [typeof("Common") | Theme | Device]: () -> any } } = {
	[StyleTagFormat.Static] = {
		Common = function()
			return require(Foundation.Generated.StyleRules.CommonStatic)
		end,
		Dark = function()
			return require(Foundation.Generated.StyleRules.DarkStatic)
		end,
		Light = function()
			return require(Foundation.Generated.StyleRules.LightStatic)
		end,
		Console = function()
			return require(Foundation.Generated.StyleRules.ConsoleStatic)
		end,
		Desktop = function()
			return require(Foundation.Generated.StyleRules.DesktopStatic)
		end,
	},
	[StyleTagFormat.Attribute] = {
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
	},
}

local function getGeneratedRules(theme: Theme, device: Device): any
	local format: StyleTagFormat = StyleTagFormat.Attribute
	local themeRules, sizeRules, commonRules

	if Flags.FoundationUseAttributeTokens then
		commonRules = requirePaths[StyleTagFormat.Attribute]["Common"]()
	else
		commonRules = requirePaths[StyleTagFormat.Static]["Common"]()
	end

	if theme == Theme.Dark then
		if Flags.FoundationUseAttributeTokens then
			themeRules = requirePaths[StyleTagFormat.Attribute]["Dark" :: Theme]()
		else
			themeRules = requirePaths[StyleTagFormat.Static]["Dark" :: Theme]()
		end
	elseif theme == Theme.Light then
		if Flags.FoundationUseAttributeTokens then
			themeRules = requirePaths[StyleTagFormat.Attribute]["Light" :: Theme]()
		else
			themeRules = requirePaths[StyleTagFormat.Static]["Light" :: Theme]()
		end
	end

	if device == Device.Console and not Flags.FoundationDisableTokenScaling then
		sizeRules = requirePaths[format]["Console" :: Device]()
	else
		sizeRules = requirePaths[format]["Desktop" :: Device]()
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
