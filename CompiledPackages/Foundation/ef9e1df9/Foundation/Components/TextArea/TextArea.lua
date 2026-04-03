local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local InputField = require(Components.InputField)
local InternalTextInput = require(Components.InternalTextInput)
local Types = require(Foundation.Components.Types)

local Flags = require(Foundation.Utility.Flags)
local useTextInputVariants = require(Components.TextInput.useTextInputVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

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
	width = if Flags.FoundationTextAreaTokenBasedWidth then nil else UDim.new(0, 400),
	testId = "--foundation-text-area",
}

local function TextArea(textAreaProps: TextAreaProps, ref: React.Ref<GuiObject>?)
	-- TODO: Delete this BLOCK with FFlagFoundationTextAreaTokenBasedWidth cleanup
	-- We're required to set this here because defaultProps is only set on module-require, causes issues in Storybook
	if Flags.FoundationTextAreaTokenBasedWidth then
		defaultProps.width = nil
	else
		defaultProps.width = UDim.new(0, 400)
	end

	local props = withDefaults(textAreaProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useTextInputVariants(tokens, props.size)

	return React.createElement(
		InputField,
		withCommonProps(props, {
			width = if not Flags.FoundationTextAreaTokenBasedWidth or props.width then props.width :: UDim? else nil,
			label = props.label,
			hint = props.hint,
			hasError = props.hasError,
			isDisabled = props.isDisabled,
			isRequired = props.isRequired,
			input = function(inputRef)
				return React.createElement(InternalTextInput, {
					size = props.size,
					numLines = props.numLines,
					onFocus = props.onFocusGained,
					onFocusLost = props.onFocusLost,
					onChanged = props.onChanged,
					text = props.text,
					hasError = props.hasError,
					isDisabled = props.isDisabled,
					placeholder = props.placeholder,
					horizontalPadding = {
						left = variantProps.innerContainer.horizontalPadding,
						-- UIBLOX-2919: Share token used for scrollbar thickness with ScrollView
						right = variantProps.innerContainer.horizontalPadding - UDim.new(0, tokens.Size.Size_150),
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
