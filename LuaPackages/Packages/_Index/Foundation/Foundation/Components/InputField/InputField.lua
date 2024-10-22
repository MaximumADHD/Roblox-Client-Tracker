local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Components = Foundation.Components
local InputLabel = require(Components.InputLabel)
local HintText = require(Components.HintText)
local View = require(Components.View)
local Types = require(Components.Types)
type InternalTextInputRef = Types.InternalTextInputRef
type TextInputRef = Types.TextInputRef

local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local InputLabelSize = require(Foundation.Enums.InputLabelSize)
type InputLabelSize = InputLabelSize.InputLabelSize

type InputFieldProps = {
	size: InputLabelSize?,
	hasError: boolean?,
	-- Whether the input is disabled
	isDisabled: boolean?,
	-- Whether the input is required, true for "*", false for " (optional)", nil for nothing
	isRequired: boolean?,
	-- Input label text. To omit, set to an empty string
	label: string,
	input: (ref: React.Ref<InternalTextInputRef?>) -> React.ReactElement,
	-- Partial TextBox ref exposed via imperative handle
	textBoxRef: React.Ref<TextInputRef>?,
	-- Hint text below the input, is red on error
	hint: string?,
} & Types.CommonProps

local defaultProps = {
	width = UDim.new(0, 400),
	size = InputLabelSize.Small,
}

local function InputField(inputFieldProps: InputFieldProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(inputFieldProps, defaultProps)
	local textBoxRef = React.useRef(nil :: InternalTextInputRef?)

	local focusTextBox = React.useCallback(function()
		if textBoxRef.current and not textBoxRef.current.getIsFocused() then
			textBoxRef.current.focus()
		end
	end, {})

	local onLabelHover = React.useCallback(function(isHovered)
		if textBoxRef.current then
			textBoxRef.current.setHover(isHovered)
		end
	end, {})

	React.useImperativeHandle(props.textBoxRef, function(): TextInputRef?
		if not textBoxRef.current then
			return nil
		end

		return {
			focus = textBoxRef.current.focus,
			getIsFocused = textBoxRef.current.getIsFocused,
		}
	end, {})

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = UDim2.new(props.width, UDim.new(0, 0)),

			tag = "col gap-xsmall auto-y",
			ref = ref,
		}),
		{
			Label = if #props.label > 0
				then React.createElement(InputLabel, {
					Text = props.label,
					size = props.size,
					isRequired = props.isRequired,
					onActivated = focusTextBox,
					onHover = onLabelHover,
					LayoutOrder = 1,
				})
				else nil,
			InputWrapper = React.createElement(
				View,
				{ tag = "size-full-0 auto-y", LayoutOrder = 2 },
				{ Input = props.input(textBoxRef) }
			),
			Hint = if props.hint
				then React.createElement(HintText, {
					text = props.hint,
					hasError = props.hasError,
					LayoutOrder = 3,
				})
				else nil,
		}
	)
end

return React.forwardRef(InputField)
