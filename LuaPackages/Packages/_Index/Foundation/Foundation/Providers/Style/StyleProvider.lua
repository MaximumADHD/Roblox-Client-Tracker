local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Flags = require(Foundation.Utility.Flags)
local Cryo = require(Packages.Cryo)

local Theme = require(Foundation.Enums.Theme)
local Device = require(Foundation.Enums.Device)
local StyleSheet = require(Foundation.StyleSheet)
local TokensContext = require(Style.TokensContext)
local Tokens = require(Style.Tokens)
local TagsContext = require(Style.TagsContext)
local RulesContext = require(Style.RulesContext)
local useTagsState = require(Style.useTagsState)
local VariantsContext = require(Style.VariantsContext)
local withDefaults = require(Foundation.Utility.withDefaults)
local useGeneratedRules = require(Foundation.Utility.useGeneratedRules)
local StyleSheetContext = require(Style.StyleSheetContext)
local TextSizeOffsetContext = require(Style.TextSizeOffsetContext)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local getTextSizeOffset = require(Foundation.Utility.getTextSizeOffset)

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
		value = styleSheet or Cryo.None,
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
	end, { props.device :: any, props.theme, props.scale })

	local rules = if not Flags.FoundationDisableStylingPolyfill
		then useGeneratedRules(props.theme, props.device)
		else nil

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
			VariantsContext = React.createElement(
				VariantsContext.Provider,
				{
					value = useVariants,
				},
				if not Flags.FoundationDisableStylingPolyfill
					then {
						RulesContext = React.createElement(RulesContext.Provider, {
							value = {
								rules = rules,
								scale = props.scale,
							},
						}, styleProviderProps.children),
						StyleLink = if Flags.FoundationWarnOnMultipleStyleLinks
							then React.createElement("StyleLink")
							else nil,
					}
					else {
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
					}
			),
		}),
	})
end

return StyleProvider
