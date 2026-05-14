local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local Constants = require(Foundation.Constants)

local Components = Foundation.Components
local Input = require(Components.InternalInput)
local Text = require(Components.Text)
local Types = require(Components.Types)
local useUncontrolledState = require(Components.InternalInput.useUncontrolledState)

local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useCheckboxVariants = require(script.Parent.useCheckboxVariants)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputPlacement = require(Foundation.Enums.InputPlacement)
type InputPlacement = InputPlacement.InputPlacement

export type CheckboxProps = {
	-- Whether the checkbox is currently checked. If it is left `nil`,
	-- the checkbox will be considered uncontrolled.
	isChecked: boolean?,
	-- Whether the checkbox is disabled. When `true`, the `onActivated` callback
	-- will not be invoked, even if the user interacts with the checkbox.
	isDisabled: boolean?,
	-- A visual property that, if true, will show an indeterminate state
	-- over the checkbox
	isIndeterminate: boolean?,
	-- A function that will be called whenever the checkbox is activated.
	-- Returns the new value of the checkbox when uncontrolled.
	onActivated: (boolean) -> (),
	-- A label for the checkbox. To omit, set it to an empty string.
	label: string,
	size: InputSize?,
	placement: InputPlacement?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	placement = InputPlacement.Start,
	Selectable = true,
	testId = "--foundation-checkbox",
}

local function Checkbox(checkboxProps: CheckboxProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(checkboxProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useCheckboxVariants(tokens, props.size)

	local isChecked, onActivated = useUncontrolledState(props.isChecked, props.onActivated)
	local isIndeterminate = props.isIndeterminate or false

	return React.createElement(
		Input,
		withCommonProps(props, {
			isChecked = isChecked,
			isIndeterminate = isIndeterminate,
			isDisabled = props.isDisabled,
			onActivated = onActivated,
			label = {
				text = props.label,
				position = Constants.INPUT_PLACEMENT_TO_LABEL_ALIGNMENT[props.placement],
			},
			customVariantProps = variantProps.input,
			size = props.size,
			Selectable = props.Selectable,
			NextSelectionUp = props.NextSelectionUp,
			NextSelectionDown = props.NextSelectionDown,
			NextSelectionLeft = props.NextSelectionLeft,
			NextSelectionRight = props.NextSelectionRight,
			ref = ref,
		}),
		{
			Checkmark = if isChecked or isIndeterminate
				then React.createElement(Text, {
					Text = if isIndeterminate then BuilderIcons.Icon.Minus else BuilderIcons.Icon.Check,
					fontStyle = {
						Font = BuilderIcons.Font[BuilderIcons.IconVariant.Filled],
					},
					TextScaled = true,
					tag = variantProps.checkmark.tag,
					testId = `{props.testId}--checkmark`,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(Checkbox))
