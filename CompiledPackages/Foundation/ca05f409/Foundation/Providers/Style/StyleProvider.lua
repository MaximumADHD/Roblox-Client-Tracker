local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Device = require(Foundation.Enums.Device)
local StyleSheet = require(Foundation.StyleSheet)
local StyleSheetContext = require(Style.StyleSheetContext)
local TagsContext = require(Style.TagsContext)
local TextSizeOffsetContext = require(Style.TextSizeOffsetContext)
local Theme = require(Foundation.Enums.Theme)
local Tokens = require(Style.Tokens)
local TokensContext = require(Style.TokensContext)
local VariantsContext = require(Style.VariantsContext)
local getTextSizeOffset = require(Foundation.Utility.getTextSizeOffset)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local useTagsState = require(Style.useTagsState)
local withDefaults = require(Foundation.Utility.withDefaults)

local getTokens = Tokens.getTokens

export type StyleProviderProps = {
	theme: Theme,
	device: Device?,
	scale: number?,
	-- **Deprecated**. Use useStyleSheet hook insteads to derive the Foundation styles.
	derives: { StyleSheet }?,
	children: React.ReactNode,
}

type Theme = Theme.Theme
type Device = Device.Device
type Tokens = Tokens.Tokens

-- After join, there are no optional values

local defaultStyle = {
	theme = Theme.Dark :: Theme,
	device = Device.Desktop :: Device,
	scale = 1,
}

function StyleSheetContextWrapper(props: {
	setStyleSheetRef: { current: ((StyleSheet?) -> ()) | nil }?,
	children: React.ReactNode,
})
	local styleSheet, setStyleSheet = React.useState(nil :: StyleSheet?)
	if props.setStyleSheetRef and props.setStyleSheetRef.current ~= setStyleSheet then
		props.setStyleSheetRef.current = setStyleSheet
	end

	return React.createElement(StyleSheetContext.Provider, {
		value = styleSheet or Dash.None,
	}, props.children)
end

local function StyleProvider(styleProviderProps: StyleProviderProps)
	local props = withDefaults({
		theme = styleProviderProps.theme,
		device = styleProviderProps.device,
		scale = styleProviderProps.scale,
	}, defaultStyle)

	-- Hack to update the sibling node, without rerendering the parent
	local setStyleSheetRef = React.useRef(nil :: ((StyleSheet?) -> ())?)
	local tags, addTags = useTagsState()
	local useVariants = VariantsContext.useVariantsState()

	local tokens: Tokens = React.useMemo(function()
		return getTokens(props.device, props.theme, props.scale)
	end, { props.device, props.theme, props.scale } :: { unknown })

	local preferences = usePreferences()
	local preferredTextSize = preferences.preferredTextSize

	local textSizeOffset = React.useMemo(function()
		return getTextSizeOffset() or 0
	end, { preferredTextSize })

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
						value = addTags,
					},
					React.createElement(StyleSheetContextWrapper, {
						setStyleSheetRef = setStyleSheetRef,
					}, styleProviderProps.children)
				),
				StyleSheet = React.createElement(StyleSheet, {
					theme = props.theme :: Theme,
					device = props.device :: Device,
					scale = props.scale,
					tags = tags,
					derives = styleProviderProps.derives,
					setStyleSheetRef = setStyleSheetRef,
				}),
			}),
		}),
	})
end

return StyleProvider
