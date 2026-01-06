local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(Foundation.Constants)

local Components = Foundation.Components
local View = require(Components.View)
local Types = require(Components.Types)
local Input = require(Components.InternalInput)

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useRadioGroupItemVariants = require(script.Parent.useRadioGroupItemVariants)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputPlacement = require(Foundation.Enums.InputPlacement)
type InputPlacement = InputPlacement.InputPlacement

local useRadioGroup = require(script.Parent.Parent.useRadioGroup)

export type RadioGroupItemProps = {
	-- A unique value for the radio item.
	value: string,
	-- Whether the radio item is disabled. When `true`, the `setValue` method
	-- will not be invoked, even if the user interacts with the radio item.
	isDisabled: boolean?,
	-- A label for the radio item. To omit, set it to an empty string.
	-- When nil, defaults to `value`.
	label: string | React.ReactNode?,
	-- Size of the radio item
	size: InputSize?,
	placement: InputPlacement?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	isDisabled = false,
	placement = InputPlacement.Start,
}

local function RadioGroupItem(radioGroupItemProps: RadioGroupItemProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(radioGroupItemProps, defaultProps)
	local isDisabled = props.isDisabled
	local radioGroupContext = useRadioGroup()

	local isChecked = radioGroupContext.value == props.value
	local label = props.label or props.value

	local tokens = useTokens()

	local onActivated = React.useCallback(function()
		radioGroupContext.onValueChanged(props.value)
	end, { isDisabled, props.value, radioGroupContext.onValueChanged } :: { unknown })

	-- Have to keep variantProps here for checkmark tag
	local variantProps = useRadioGroupItemVariants(tokens, props.size)

	props.testId = `{radioGroupContext.testId}--item-{props.value}`

	return React.createElement(
		Input,
		withCommonProps(props, {
			isChecked = isChecked,
			isDisabled = isDisabled,
			onActivated = onActivated,
			label = {
				text = label,
				position = Constants.INPUT_PLACEMENT_TO_LABEL_ALIGNMENT[props.placement],
			},
			customVariantProps = variantProps.input,
			size = props.size,
			Selectable = radioGroupContext.Selectable,
			ref = ref,
		}),
		{
			Center = if isChecked
				then React.createElement(View, {
					tag = variantProps.checkmark.tag,
					backgroundStyle = variantProps.checkmark.style,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(RadioGroupItem))
