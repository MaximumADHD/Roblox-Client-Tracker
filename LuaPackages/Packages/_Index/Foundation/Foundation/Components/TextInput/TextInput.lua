local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local Icon = require(Components.Icon)
local IconButton = require(Components.IconButton)
local InputField = require(Components.InputField)
local InternalTextInput = require(Components.InternalTextInput)
local Types = require(Foundation.Components.Types)
local View = require(Components.View)

local useTextInputVariants = require(Foundation.Components.TextInput.useTextInputVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local getInputTextSize = require(Foundation.Utility.getInputTextSize)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

type TextInputRef = Types.TextInputRef

export type TextInputProps = {
	-- Image before the input
	leadingIcon: string?,
	-- Image after the input, can be pressed
	iconTrailing: string? | {
		name: string,
		onActivated: () -> (),
	}?,
	-- Type of text input. Only available for use in descendants of CoreGui.
	textInputType: Enum.TextInputType?,
	-- Ran when return is pressed within the TextInput
	onReturnPressed: (() -> ())?,
} & Types.TextInputCommonProps & Types.CommonProps

local defaultProps = {
	size = InputSize.Large,
	width = UDim.new(0, 400),
	testId = "--foundation-text-input",
}

local function TextInput(textInputProps: TextInputProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(textInputProps, defaultProps)

	local tokens = useTokens()
	local variantProps = useTextInputVariants(tokens, props.size :: InputSize)

	return React.createElement(
		InputField,
		withCommonProps(props, {
			width = props.width,
			ref = ref,
			label = props.label,
			size = getInputTextSize(props.size),
			isRequired = props.isRequired,
			hasError = props.hasError,
			hint = props.hint,
			textBoxRef = props.textBoxRef,
			input = function(inputRef)
				return React.createElement(InternalTextInput, {
					ref = inputRef,
					hasError = props.hasError,
					isDisabled = props.isDisabled,
					text = props.text,
					textInputType = props.textInputType,
					size = props.size,
					horizontalPadding = {
						left = variantProps.innerContainer.horizontalPadding,
						right = variantProps.innerContainer.horizontalPadding,
					},
					onChanged = props.onChanged,
					onFocus = props.onFocusGained,
					onFocusLost = props.onFocusLost,
					onReturnPressed = props.onReturnPressed,
					placeholder = props.placeholder,
					leadingElement = if props.leadingIcon
						then React.createElement(
							View,
							{ tag = "size-0-full auto-x row align-y-center" },
							React.createElement(Icon, {
								name = props.leadingIcon,
								style = variantProps.icon.style,
								size = variantProps.icon.size,
							})
						)
						else nil,
					trailingElement = if props.iconTrailing
						then React.createElement(
							View,
							{ tag = "size-0-full auto-x row align-y-center" },
							if type(props.iconTrailing) == "table" and props.iconTrailing.onActivated
								then React.createElement(IconButton, {
									onActivated = props.iconTrailing.onActivated,
									isDisabled = props.isDisabled,
									size = variantProps.icon.size,
									icon = props.iconTrailing.name,
								})
								else React.createElement(Icon, {
									name = if type(props.iconTrailing) == "table"
										then props.iconTrailing.name
										else props.iconTrailing,
									style = variantProps.icon.style,
									size = variantProps.icon.size,
								})
						)
						else nil,
					testId = `{props.testId}--internal-text-input`,
				})
			end,
		})
	)
end

return React.memo(React.forwardRef(TextInput))
