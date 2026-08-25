local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local RbxDesignFoundations = require(Packages.RbxDesignFoundations)

local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local Flags = require(Foundation.Utility.Flags)
local ThemeName = require(Foundation.Enums.ThemeName)
local TokenProcessingUtilities = require(script.TokenProcessingUtilities)
local Types = require(Foundation.Components.Types)
local themeGenerators = require(script.themeGenerators)

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type ThemeName = ThemeName.ThemeName
type ColorStyleValue = Types.ColorStyleValue

export type Tokens = RbxDesignFoundations.Tokens
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

local function buildTokens(generator: (number) -> Tokens, scale: number, tokenOverrides: TokenOverrides?)
	local tokens = generator(scale)

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

local function getTokens(
	colorMode: ColorMode,
	deviceInput: Device?,
	scaleFactor: number?,
	tokenOverrides: TokenOverrides?,
	themeName: ThemeName?
)
	local device: Device = deviceInput or Device.Desktop
	local scale = getPlatformScale(device, scaleFactor)
	local generator: (number) -> Tokens = if Flags.FoundationThemeName
		then themeGenerators.getGenerator(themeName or ThemeName.Default, colorMode)
		else themeGenerators.getLegacyGenerator(colorMode) :: never

	return buildTokens(generator, scale, tokenOverrides)
end

-- Flag-independent token resolvers used ONLY by offline rule generation
-- (`scripts/generate-rules.lua`), never on the runtime render path.
--
-- `getThemedTokens` always resolves the v4 themed token set so baked per-theme
-- color rules reflect each theme even while `FoundationThemeName` is still off at
-- runtime. `getLegacyTokens` always resolves the v3 flat token set so the legacy
-- (flag-off) generated rules stay byte-identical regardless of flag state.
local function getThemedTokens(
	themeName: ThemeName?,
	colorMode: ColorMode,
	deviceInput: Device?,
	scaleFactor: number?,
	tokenOverrides: TokenOverrides?
)
	local device: Device = deviceInput or Device.Desktop
	local scale = getPlatformScale(device, scaleFactor)
	local generator: (number) -> Tokens = themeGenerators.getGenerator(themeName or ThemeName.Default, colorMode)
	return buildTokens(generator, scale, tokenOverrides)
end

local function getLegacyTokens(colorMode: ColorMode, deviceInput: Device?, scaleFactor: number?)
	local device: Device = deviceInput or Device.Desktop
	local scale = getPlatformScale(device, scaleFactor)
	local generator: (number) -> Tokens = themeGenerators.getLegacyGenerator(colorMode) :: never
	return buildTokens(generator, scale, nil)
end

local defaultTokens = getTokens(ColorMode.Dark, Device.Desktop)

return {
	getTokens = getTokens,
	getThemedTokens = getThemedTokens,
	getLegacyTokens = getLegacyTokens,
	defaultTokens = defaultTokens,
}
