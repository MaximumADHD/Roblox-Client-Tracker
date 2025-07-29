local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

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

local useRadioGroupValues = require(script.Parent.Parent.useRadioGroupValues)

type Props = {
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
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	isDisabled = false,
}

local function RadioGroupItem(radioGroupItemProps: Props, ref: React.Ref<GuiObject>?)
	local props = withDefaults(radioGroupItemProps, defaultProps)
	local isDisabled = props.isDisabled
	local value, setValue, selectable = useRadioGroupValues()

	local isChecked = value == props.value
	local label = props.label or props.value

	local tokens = useTokens()

	local onActivated = React.useCallback(function()
		setValue(props.value)
	end, { isDisabled :: any, props.value, setValue })

	-- Have to keep variantProps here for checkmark tag
	local variantProps = useRadioGroupItemVariants(tokens, props.size)

	return React.createElement(
		Input,
		withCommonProps(props, {
			isChecked = isChecked,
			isDisabled = isDisabled,
			onActivated = onActivated,
			label = {
				text = label,
			},
			customVariantProps = variantProps.input,
			size = props.size,
			Selectable = selectable,
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
