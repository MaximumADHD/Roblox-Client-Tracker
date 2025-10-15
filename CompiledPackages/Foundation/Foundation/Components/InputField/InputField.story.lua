local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local InputSize = require(Foundation.Enums.InputSize)
local InputLabelSize = require(Foundation.Enums.InputLabelSize)
local InternalTextInput = require(Foundation.Components.InternalTextInput)
local View = require(Foundation.Components.View)

local InputField = require(Foundation.Components.InputField)

local function Story(props)
	local controls = props.controls

	local text, setText = React.useState("")

	local function handleChange(newText: string)
		setText(newText)
	end

	return React.createElement(View, {
		tag = "gap-large auto-xy padding-xlarge",
	}, {
		React.createElement(InputField, {
			label = controls.label,
			size = controls.labelSize,
			hint = controls.hint,
			input = function(ref)
				return React.createElement(InternalTextInput, {
					ref = ref,
					text = text,
					hasError = controls.hasError,
					isDisabled = controls.isDisabled,
					size = controls.size,
					onChanged = handleChange,
					placeholder = controls.placeholder,
				})
			end,
		}),
	})
end

return {
	summary = "Input field",
	story = Story,
	controls = {
		label = "Field label",
		hint = "Hint",
		hasError = false,
		isDisabled = false,
		size = Dash.values(InputSize),
		labelSize = Dash.values(InputLabelSize),
		placeholder = "Placeholder text",
	},
}
