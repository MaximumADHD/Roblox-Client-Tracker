local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Button = require(Foundation.Components.Button)

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local InputSize = require(Foundation.Enums.InputSize)

local TextArea = require(Foundation.Components.TextArea)

local function Story(props)
	local controls = props.controls
	local tokens = useTokens()
	local text, setText = React.useState("")
	local textBoxRef = React.useRef(nil)

	local handleChange = React.useCallback(function(newText: string)
		setText(newText)
	end)

	local gainFocus = React.useCallback(function()
		if textBoxRef.current then
			textBoxRef.current.focus()
		end
	end, {})

	return React.createElement(View, {
		tag = "col gap-large auto-xy padding-xlarge",
	}, {
		TextArea = React.createElement(TextArea, {
			LayoutOrder = 1,
			hasError = controls.hasError,
			isDisabled = controls.isDisabled,
			isRequired = controls.isRequired,
			resizable = controls.resizable,
			onChanged = handleChange,
			label = controls.label,
			hint = controls.hint,
			size = controls.size,
			width = UDim.new(0, controls.width),
			numLines = controls.numLines,
			placeholder = controls.placeholder,
			text = text,
			textBoxRef = textBoxRef,
		}),

		Output = React.createElement(Text, {
			LayoutOrder = 2,
			Text = text,
			textStyle = tokens.Color.System.Alert,
			tag = "auto-y size-full-0 text-wrap text-align-x-left",
		}),

		FocusButton = React.createElement(Button, {
			LayoutOrder = 3,
			text = "Focus TextArea",
			onActivated = gainFocus,
			variant = ButtonVariant.Standard,
		}),
	})
end

return {
	summary = "TextArea",
	story = Story,
	controls = {
		hasError = false,
		isDisabled = false,
		numLines = 4,
		width = 400,
		size = Dash.values(InputSize),
		label = "Biography",
		hint = "1000 characters maximum",
		placeholder = "Tell us your life story!",
		isRequired = { React.None, false, true },
	},
}
