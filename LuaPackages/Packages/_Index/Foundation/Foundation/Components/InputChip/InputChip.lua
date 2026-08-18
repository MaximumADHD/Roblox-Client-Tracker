local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local CloseAffordance = require(Foundation.Components.CloseAffordance)
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local Constants = require(Foundation.Constants)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useInputChipVariants = require(script.Parent.useInputChipVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

export type InputChipProps = {
	text: string,
	onClose: () -> (),
	size: InputSize?,
	isDisabled: boolean?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	isDisabled = false,
	testId = "--foundation-input-chip",
}

local function InputChip(inputChipProps: InputChipProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(inputChipProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useInputChipVariants(tokens, props.size)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else nil,
			ref = ref,
		}),
		{
			Text = React.createElement(Text, {
				Text = props.text,
				textStyle = variantProps.text.contentStyle,
				tag = variantProps.text.tag,
				padding = variantProps.text.padding,
				LayoutOrder = 1,
				testId = `{props.testId}--text`,
			}),
			Close = React.createElement(View, {
				tag = variantProps.close.tag,
				padding = variantProps.close.padding,
				LayoutOrder = 2,
				testId = `{props.testId}--close-container`,
			}, {
				CloseAffordance = React.createElement(CloseAffordance, {
					onActivated = (if props.isDisabled then nil else props.onClose) :: () -> (),
					size = InputSize.XSmall,
					variant = CloseAffordanceVariant.Utility,
					hasPadding = false,
					Selectable = if props.isDisabled then false else nil,
					LayoutOrder = 1,
					testId = `{props.testId}--close`,
				}),
			}),
		}
	)
end

return React.memo(React.forwardRef(InputChip))
