local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local InternalTextInput = require(Components.InternalTextInput)
local InputField = require(Components.InputField)
local Icon = require(Components.Icon)
local View = require(Components.View)
local IconButton = require(Components.IconButton)
local IconSize = require(Foundation.Enums.IconSize)
local Types = require(Foundation.Components.Types)

local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

type TextInputRef = Types.TextInputRef

type TextInputProps = {
	-- Input text value
	text: string,
	-- Type of text input. Only available for use in descendants of `CoreGui`.
	textInputType: Enum.TextInputType?,
	-- Whether the input is in an error state
	hasError: boolean?,
	-- Whether the input is disabled
	isDisabled: boolean?,
	-- Whether the input is required, true for "*", false for " (optional)", nil for nothing
	isRequired: boolean?,
	-- On input text change
	onChanged: (text: string) -> (),
	-- Input label text. To omit, set to an empty string
	label: string,
	-- Hint text below the input, is red on error
	hint: string?,
	-- Placeholder text for input
	placeholder: string?,
	-- Width of the component
	width: UDim?,
	-- Image before the input
	iconLeading: string?,
	-- Image after the input, can be pressed
	iconTrailing: string? | {
		name: string,
		onActivated: () -> (),
	}?,
	-- Partial TextBox ref exposed via imperative handle
	textBoxRef: React.Ref<TextInputRef>?,
} & Types.CommonProps

local defaultProps = {
	width = UDim.new(0, 400),
}

local function TextInput(TextInputProps: TextInputProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(TextInputProps, defaultProps)

	local tokens = useTokens()

	local width = if props.width ~= nil then props.width else defaultProps.width

	return React.createElement(
		InputField,
		withCommonProps(props, {
			Size = UDim2.new(width, UDim.new(0, 0)),
			ref = ref,
			label = props.label,
			size = InputLabelSize.Small,
			isRequired = props.isRequired,
			hint = props.hint,
			textBoxRef = props.textBoxRef,
			input = function(inputRef)
				return React.createElement(InternalTextInput, {
					ref = inputRef,
					hasError = props.hasError,
					isDisabled = props.isDisabled,
					text = props.text,
					textInputType = props.textInputType,
					onChanged = props.onChanged,
					placeholder = props.placeholder,
					leadingElement = if props.iconLeading
						then React.createElement(
							View,
							{ tag = "size-0-full auto-x padding-x-medium row align-y-center" },
							React.createElement(Icon, {
								name = props.iconLeading,
								style = tokens.Color.Content.Muted,
								size = IconSize.Small,
							})
						)
						else nil,
					trailingElement = if props.iconTrailing
						then React.createElement(
							View,
							{ tag = "size-0-full auto-x padding-x-medium row align-y-center" },
							if type(props.iconTrailing) == "table" and props.iconTrailing.onActivated
								then React.createElement(IconButton, {
									onActivated = props.iconTrailing.onActivated,
									isDisabled = props.isDisabled,
									size = IconSize.Small,
									icon = props.iconTrailing.name,
								})
								else React.createElement(Icon, {
									name = if type(props.iconTrailing) == "table"
										then props.iconTrailing.name
										else props.iconTrailing,
									style = tokens.Color.Content.Muted,
									size = IconSize.Small,
								})
						)
						else nil,
					tag = "padding-x-xsmall",
				})
			end,
		})
	)
end

return React.memo(React.forwardRef(TextInput))
