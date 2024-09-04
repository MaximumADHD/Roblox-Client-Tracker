local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local RbxDesignFoundations = require(Packages.RbxDesignFoundations)

local Theme = require(Foundation.Enums.Theme)
local Device = require(Foundation.Enums.Device)
type Theme = Theme.Theme
type Device = Device.Device

local function getPlatformScale(device: Device)
	-- Platform scale will be from engine API as soon as it's ready.
	-- For now scale values are hard-coded, and only console uses 1.5
	-- differently according to design specs.
	if device == Device.Console then
		return 1.5
	end
	return 1
end

local function getTokens(device: Device, theme: Theme, useFoundationColors: boolean?)
	local generators = RbxDesignFoundations.Tokens
	local scale = getPlatformScale(device)
	local themeTokens: typeof(generators.UIBloxDark) = if theme == Theme.Dark
		then if useFoundationColors then generators.FoundationDark else generators.UIBloxDark
		else if useFoundationColors then generators.FoundationLight else generators.UIBloxLight

	local tokens = themeTokens(scale)

	local filteredTokens = {
		Color = tokens.Color,
		Config = tokens.Config,
		DarkMode = tokens.DarkMode,
		LightMode = tokens.LightMode,
		Inverse = tokens.Inverse,
		Semantic = tokens.Semantic, -- TODO(tokens): Remove once icon sizes are moved
		Size = tokens.Size,
		Padding = tokens.Padding,
		Margin = tokens.Margin,
		Gap = tokens.Gap,
		Radius = tokens.Radius,
		Stroke = tokens.Stroke,
		LineHeight = tokens.LineHeight,
		FontSize = tokens.FontSize,
		FontWeight = tokens.FontWeight,
		Typography = tokens.Typography,
	}
	return filteredTokens
end

export type Tokens = typeof(getTokens(Device.Desktop, Theme.Dark, false))

return {
	getTokens = getTokens,
}
