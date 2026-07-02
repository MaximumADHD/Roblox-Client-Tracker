local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local RbxDesignFoundations = require(Packages.RbxDesignFoundations)

local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)
local Theme = require(Foundation.Enums.Theme)
local TokenProcessingUtilities = require(script.TokenProcessingUtilities)
local Types = require(Foundation.Components.Types)

type Theme = Theme.Theme
type Device = Device.Device
type ColorStyleValue = Types.ColorStyleValue

export type TokenPath = RbxDesignFoundations.TokenPath
-- Non-string values are literals. With FoundationTokenOverrides, literals and path remaps must match the target (typeof or table keys/values).
export type TokenOverrideValue = TokenPath | Color3 | ColorStyleValue | number | UDim | UDim2
export type TokenOverrides = { [TokenPath]: TokenOverrideValue }

local function getPlatformScale(device: Device, scaleFactor: number?)
	if Flags.FoundationDisableTokenScaling then
		return 1
	end

	scaleFactor = if scaleFactor ~= nil then scaleFactor else 1
	scaleFactor = math.clamp(scaleFactor :: number, 0, math.huge)
	-- Platform scale will be from engine API as soon as it's ready.
	-- For now scale values are hard-coded, and only console uses 1.5
	-- differently according to design specs.
	local baseScale = if device == Device.Console then 1.5 else 1

	return baseScale * scaleFactor :: number
end

local function applyTokenOverrides(tokens: any, overrides: TokenOverrides): any
	if not Flags.FoundationTokenOverrides then
		return tokens
	end

	for targetPath, source in overrides do
		local sourceValue = TokenProcessingUtilities.resolveTokenOverride(tokens, targetPath, source)
		if sourceValue ~= nil then
			TokenProcessingUtilities.setTokenValue(tokens, targetPath, sourceValue)
		end
	end

	return tokens
end

local function getTokens(theme: Theme, deviceInput: Device?, scaleFactor: number?, tokenOverrides: TokenOverrides?)
	local generators = RbxDesignFoundations.Tokens
	local device: Device = deviceInput or Device.Desktop
	local scale = getPlatformScale(device, scaleFactor)
	local themeTokens: typeof(generators.Dark) = if theme == Theme.Dark then generators.Dark else generators.Light

	local tokens = themeTokens(scale)

	local filteredTokens = {
		Color = tokens.Color,
		Config = tokens.Config,
		DarkMode = tokens.DarkMode,
		Ease = tokens.Ease,
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
		Time = tokens.Time,
		Typography = tokens.Typography,
	}

	if tokenOverrides then
		applyTokenOverrides(filteredTokens, tokenOverrides)
	end

	return filteredTokens
end

local defaultTokens = getTokens(Theme.Dark, Device.Desktop)
export type Tokens = typeof(defaultTokens)

return {
	getTokens = getTokens,
	defaultTokens = defaultTokens,
}
