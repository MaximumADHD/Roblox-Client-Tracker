local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Flags = require(Foundation.Utility.Flags)

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

local getTokens = Tokens.getTokens

export type StyleProviderProps = {
	theme: Theme,
	device: Device?,
	derives: { StyleSheet }?,
	DONOTUSE_colorUpdate: boolean?,
	children: React.ReactNode,
}

type Theme = Theme.Theme
type Device = Device.Device
type Tokens = Tokens.Tokens

-- After join, there are no optional values

local defaultStyle = {
	theme = Theme.Dark :: Theme,
	device = Device.Desktop :: Device,
}

local function StyleProvider(styleProviderProps: StyleProviderProps)
	local props = withDefaults({
		theme = styleProviderProps.theme,
		device = styleProviderProps.device,
	}, defaultStyle)

	local tags, addTags = useTagsState()
	local useVariants = VariantsContext.useVariantsState()

	local tokens: Tokens = React.useMemo(function()
		return getTokens(props.device, props.theme, styleProviderProps.DONOTUSE_colorUpdate)
	end, { props.device :: any, props.theme, styleProviderProps.DONOTUSE_colorUpdate })

	local rules = if Flags.FoundationStylingPolyfill
		then useGeneratedRules(props.theme, props.device, styleProviderProps.DONOTUSE_colorUpdate == true)
		else nil

	return React.createElement(TokensContext.Provider, {
		value = tokens,
	}, {
		VariantsContext = React.createElement(
			VariantsContext.Provider,
			{
				value = useVariants,
			},
			if Flags.FoundationStylingPolyfill
				then {
					RulesContext = React.createElement(RulesContext.Provider, {
						value = rules,
					}, styleProviderProps.children),
				}
				else {
					TagsContext = React.createElement(TagsContext.Provider, {
						value = addTags,
					}, styleProviderProps.children),
					StyleSheet = React.createElement(StyleSheet, {
						theme = props.theme :: Theme,
						device = props.device :: Device,
						tags = tags,
						derives = styleProviderProps.derives,
						DONOTUSE_colorUpdate = styleProviderProps.DONOTUSE_colorUpdate,
					}),
				}
		),
	})
end

return StyleProvider
