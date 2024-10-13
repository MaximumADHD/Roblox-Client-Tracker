local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local InputField = require(Foundation.Components.InputField)
local InternalTextInput = require(Foundation.Components.InternalTextInput)
local View = require(Foundation.Components.View)

local function Story(props)
	local controls = props.controls

	local text, setText = React.useState("")

	local function handleChange(newText: string)
		setText(newText)
	end

	return React.createElement(View, {
		tag = "col-order-by-name gap-large auto-xy padding-larger",
	}, {
		React.createElement(InputField, {
			label = controls.label,
			hint = controls.hint,
			input = function(ref)
				return React.createElement(InternalTextInput, {
					ref = ref,
					text = text,
					hasError = controls.hasError,
					isDisabled = controls.isDisabled,
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
		placeholder = "Placeholder text",
	},
}
