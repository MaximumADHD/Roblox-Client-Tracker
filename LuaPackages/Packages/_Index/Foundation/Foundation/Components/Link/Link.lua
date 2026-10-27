local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local LinkVariant = require(Foundation.Enums.LinkVariant)
type LinkVariant = LinkVariant.LinkVariant

local StateLayerAffordance = require(Foundation.Enums.StateLayerAffordance)
local TextOverflow = require(Foundation.Enums.TextOverflow)
type TextOverflow = TextOverflow.TextOverflow

local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local escapeRichText = require(Foundation.Utility.escapeRichText)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useLinkVariants = require(script.Parent.useLinkVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)

type StateChangedCallback = Types.StateChangedCallback

local EMPHASIZED_STATES: { [string]: boolean } = {
	[ControlState.Hover] = true,
	[ControlState.Pressed] = true,
	[ControlState.Selected] = true,
	[ControlState.SelectedPressed] = true,
}

export type LinkProps = {
	-- Label shown for the link.
	text: string,
	-- Called when the link is activated.
	onActivated: () -> (),
	-- Visual style of the link. Defaults to `LinkVariant.Standard`.
	variant: LinkVariant?,
	-- Size of the link text. Defaults to `InputSize.Medium`.
	size: InputSize?,
	-- When true, the label is always underlined. Defaults to `false`.
	hasUnderline: boolean?,
	textOverflow: TextOverflow?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	variant = LinkVariant.Standard,
	size = InputSize.Medium,
	hasUnderline = false,
	textOverflow = TextOverflow.None,
	testId = "--foundation-link",
}

local function Link(linkProps: LinkProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(linkProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useLinkVariants(tokens, props.size, props.variant, props.textOverflow)

	local contentStyle = variantProps.content.style

	local isEmphasized, setIsEmphasized = React.useState(false)
	local onStateChanged = React.useCallback(function(state: ControlState)
		setIsEmphasized(EMPHASIZED_STATES[state] == true)
	end, {})

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, tokens.Radius.XSmall),
			offset = tokens.Size.Size_50,
			borderWidth = tokens.Stroke.Standard,
		}
	end, { tokens })

	local isUnderlined = props.hasUnderline or isEmphasized

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			cursor = cursor,
			stateLayer = { affordance = StateLayerAffordance.None },
			onActivated = props.onActivated,
			onStateChanged = onStateChanged :: StateChangedCallback,
			selection = {
				Selectable = props.Selectable,
				NextSelectionUp = props.NextSelectionUp,
				NextSelectionDown = props.NextSelectionDown,
				NextSelectionLeft = props.NextSelectionLeft,
				NextSelectionRight = props.NextSelectionRight,
			},
			ref = ref,
		}),
		{
			Text = React.createElement(Text, {
				Text = if isUnderlined then `<u>{escapeRichText(props.text)}</u>` else props.text,
				RichText = isUnderlined,
				tag = variantProps.text.tag,
				textStyle = {
					Color3 = contentStyle.Color3,
					Transparency = contentStyle.Transparency,
				},
				LayoutOrder = 1,
				testId = `{props.testId}--text`,
			}),
		}
	)
end

return React.memo(React.forwardRef(Link))
