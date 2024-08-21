local Style = script.Parent
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Theme = require(Foundation.Enums.Theme)
local Device = require(Foundation.Enums.Device)
local StyleSheet = require(Foundation.StyleSheet)
local TokensContext = require(Style.TokensContext)
local Tokens = require(Style.Tokens)
local TagsContext = require(Style.TagsContext)
local useTagsState = require(Style.useTagsState)
local VariantsContext = require(Style.VariantsContext)
local withDefaults = require(Foundation.Utility.withDefaults)

local getTokens = Tokens.getTokens

export type StyleProviderProps = {
	theme: Theme,
	device: Device?,
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
}

local function StyleProvider(styleProviderProps: StyleProviderProps)
	local props = withDefaults({
		theme = styleProviderProps.theme,
		device = styleProviderProps.device,
	}, defaultStyle)

	local tags, addTags = useTagsState()
	local useVariants = VariantsContext.useVariantsState()

	local tokens: Tokens = React.useMemo(function()
		return getTokens(props.device, props.theme)
	end, { props.device :: any, props.theme })

	return React.createElement(TokensContext.Provider, {
		value = tokens,
	}, {
		VariantsContext = React.createElement(VariantsContext.Provider, {
			value = useVariants,
		}, {
			TagsContext = React.createElement(TagsContext.Provider, {
				value = addTags,
			}, styleProviderProps.children),
			StyleSheet = React.createElement(StyleSheet, {
				theme = props.theme :: Theme,
				device = props.device :: Device,
				tags = tags,
				derives = styleProviderProps.derives,
			}),
		}),
	})
end

return StyleProvider
