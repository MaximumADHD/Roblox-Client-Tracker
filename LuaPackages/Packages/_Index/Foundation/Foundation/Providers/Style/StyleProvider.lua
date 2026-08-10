local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local ColorMode = require(Foundation.Enums.ColorMode)
local Device = require(Foundation.Enums.Device)
local StyleSheetContext = require(Style.StyleSheetContext)
local TagsContext = require(Style.TagsContext)
local TextSizeOffsetContext = require(Style.TextSizeOffsetContext)
local Tokens = require(Style.Tokens)
local TokensContext = require(Style.TokensContext)
local VariantsContext = require(Style.VariantsContext)
local getTextSizeOffset = require(Foundation.Utility.getTextSizeOffset)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local withDefaults = require(Foundation.Utility.withDefaults)

local getTokens = Tokens.getTokens

export type StyleProviderProps = {
	-- The color mode (Light/Dark) to resolve tokens and styles for.
	-- Takes precedence over `theme` when both are provided.
	colorMode: ColorMode?,
	-- **Deprecated**. Use `colorMode` instead. Kept for backward compatibility.
	theme: ColorMode?,
	device: Device?,
	scale: number?,
	-- **Deprecated**. Use useStyleSheet hook insteads to derive the Foundation styles.
	-- Ignored when FoundationDisableStyleProviderDerives is enabled.
	derives: { StyleSheet }?,
	-- Partial token overrides to apply on top of the base tokens.
	-- Allows remapping token values (e.g., Color.Surface.Surface_0 to a different color path).
	-- With FoundationTokenOverrides: map values are source paths (strings) or literals; both are validated against the target token shape.
	-- Only available when FoundationTokenOverrides flag is enabled.
	tokenOverrides: Tokens.TokenOverrides?,
	children: React.ReactNode,
}

type ColorMode = ColorMode.ColorMode
type Device = Device.Device
type Tokens = Tokens.Tokens
type TokenOverrides = Tokens.TokenOverrides

local useRegistryStyleSheet = require(Style.useRegistryStyleSheet)

-- After join, there are no optional values
local defaultStyle = {
	colorMode = ColorMode.Dark :: ColorMode,
	device = Device.Desktop :: Device,
	scale = 1,
}

local function StyleProvider(styleProviderProps: StyleProviderProps)
	local props = withDefaults({
		colorMode = styleProviderProps.colorMode or styleProviderProps.theme,
		device = styleProviderProps.device,
		scale = styleProviderProps.scale,
	}, defaultStyle)

	local useVariants = VariantsContext.useVariantsState()

	local tokens: Tokens = React.useMemo(function()
		return getTokens(props.colorMode, props.device, props.scale, styleProviderProps.tokenOverrides)
	end, { props.device, props.colorMode, props.scale, styleProviderProps.tokenOverrides } :: { unknown })

	local preferences = usePreferences()
	local preferredTextSize = preferences.preferredTextSize

	local textSizeOffset = React.useMemo(function()
		return getTextSizeOffset() or 0
	end, { preferredTextSize })

	local registryStyleSheet, addStyleTags =
		useRegistryStyleSheet(props.colorMode, props.device, props.scale, styleProviderProps.tokenOverrides)

	return React.createElement(TokensContext.Provider, {
		value = tokens,
	}, {
		TextSizeOffsetContext = React.createElement(TextSizeOffsetContext.Provider, {
			value = textSizeOffset,
		}, {
			VariantsContext = React.createElement(VariantsContext.Provider, {
				value = useVariants,
			}, {
				TagsContext = React.createElement(
					TagsContext.Provider,
					{
						value = addStyleTags,
					},
					React.createElement(StyleSheetContext.Provider, {
						value = registryStyleSheet,
					}, styleProviderProps.children)
				),
				StyleSheet = React.createElement("StyleLink", {
					StyleSheet = registryStyleSheet,
				}),
			}),
		}),
	})
end

return StyleProvider
