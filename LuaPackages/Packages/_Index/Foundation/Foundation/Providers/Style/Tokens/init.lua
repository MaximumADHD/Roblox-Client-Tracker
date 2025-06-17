local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local RbxDesignFoundations = require(Packages.RbxDesignFoundations)

local Theme = require(Foundation.Enums.Theme)
local Device = require(Foundation.Enums.Device)
type Theme = Theme.Theme
type Device = Device.Device

local function getPlatformScale(device: Device, scaleFactor: number?)
	scaleFactor = if scaleFactor ~= nil then scaleFactor else 1
	scaleFactor = math.clamp(scaleFactor :: number, 0, math.huge)
	-- Platform scale will be from engine API as soon as it's ready.
	-- For now scale values are hard-coded, and only console uses 1.5
	-- differently according to design specs.
	local baseScale = if device == Device.Console then 1.5 else 1

	return baseScale * scaleFactor :: number
end

local function getTokens(device: Device, theme: Theme, scaleFactor: number?)
	local generators = RbxDesignFoundations.Tokens
	local scale = getPlatformScale(device, scaleFactor)
	local themeTokens: typeof(generators.UIBloxDark) = if theme == Theme.Dark
		then generators.FoundationDark
		else generators.FoundationLight

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
		Gutter = tokens.Gutter,
		Radius = tokens.Radius,
		Stroke = tokens.Stroke,
		LineHeight = tokens.LineHeight,
		FontSize = tokens.FontSize,
		FontWeight = tokens.FontWeight,
		Typography = tokens.Typography,
	}

	-- For some reason, this is not exported from Tokens accurately.
	-- We need an accurate way to reference this for useScaledValue.
	-- This token should not be used outside of this function.
	filteredTokens.Config.UI.Scale = scale
	return filteredTokens
end

export type Tokens = typeof(getTokens(Device.Desktop, Theme.Dark))

return {
	getTokens = getTokens,
}
