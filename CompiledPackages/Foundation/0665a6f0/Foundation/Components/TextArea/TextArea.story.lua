local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local Button = require(Foundation.Components.Button)

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local InputFocusBehavior = require(Foundation.Enums.InputFocusBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local InputVariant = require(Foundation.Enums.InputVariant)

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
			variant = controls.variant,
			focusBehavior = if controls.focusBehavior ~= React.None then controls.focusBehavior else nil,
			onChanged = handleChange,
			label = controls.label,
			hint = controls.hint,
			size = controls.size,
			width = if controls.width == 0 then nil else UDim.new(0, controls.width),
			hasClearButton = if controls.hasClearButton == React.None then nil else controls.hasClearButton,
			numLines = controls.numLines,
			placeholder = controls.placeholder,
			text = text,
			textBoxRef = textBoxRef,
		}),

		Output = React.createElement(Text, {
			LayoutOrder = 2,
			Text = text,
			textStyle = tokens.Color.System.Alert,
			tag = "size-full-0 auto-y text-wrap text-align-x-left",
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
		variant = Dash.values(InputVariant),
		focusBehavior = { React.None, unpack(Dash.values(InputFocusBehavior)) },
		hasClearButton = { React.None, false, true },
		width = 0,
		size = Dash.values(InputSize),
		label = "Biography",
		hint = "1000 characters maximum",
		placeholder = "Tell us your life story!",
		isRequired = { React.None, false, true },
	},
}
