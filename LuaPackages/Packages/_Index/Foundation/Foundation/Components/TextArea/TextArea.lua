local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local InputField = require(Components.InputField)
local InternalTextInput = require(Components.InternalTextInput)
local Types = require(Foundation.Components.Types)

local Flags = require(Foundation.Utility.Flags)
local getInputTextSize = require(Foundation.Utility.getInputTextSize)
local useTextInputVariants = require(Components.TextInput.useTextInputVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local InputVariant = require(Foundation.Enums.InputVariant)
type InputVariant = InputVariant.InputVariant

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

type TextInputRef = Types.TextInputRef

export type TextAreaProps = {
	-- Number of lines shown at once
	numLines: number?,
} & Types.TextInputCommonProps & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	numLines = 3,
	testId = "--foundation-text-area",
}

local function TextArea(textAreaProps: TextAreaProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(textAreaProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useTextInputVariants(tokens, props.size, props.variant)

	return React.createElement(
		InputField,
		withCommonProps(props, {
			width = if props.width then props.width else nil,
			label = props.label,
			size = if Flags.FoundationTextInputsBetaUpdate then getInputTextSize(props.size) else nil,
			hint = props.hint,
			hasError = props.hasError,
			isDisabled = props.isDisabled,
			isRequired = props.isRequired,
			input = function(inputRef)
				return React.createElement(InternalTextInput, {
					size = props.size,
					variant = props.variant,
					numLines = props.numLines,
					focusBehavior = props.focusBehavior,
					onFocus = props.onFocusGained,
					onFocusLost = props.onFocusLost,
					onChanged = props.onChanged,
					text = props.text,
					hasError = props.hasError,
					isDisabled = props.isDisabled,
					hasClearButton = props.hasClearButton,
					placeholder = props.placeholder,
					horizontalPadding = {
						left = variantProps.container.horizontalPadding,
						-- UIBLOX-2919: Share token used for scrollbar thickness with ScrollView
						right = variantProps.container.horizontalPadding - UDim.new(0, tokens.Size.Size_150),
					},
					LayoutOrder = 2,
					ref = inputRef,
					testId = `{props.testId}--input`,
				})
			end,
			textBoxRef = props.textBoxRef,
			ref = ref,
		})
	)
end

return React.memo(React.forwardRef(TextArea))
