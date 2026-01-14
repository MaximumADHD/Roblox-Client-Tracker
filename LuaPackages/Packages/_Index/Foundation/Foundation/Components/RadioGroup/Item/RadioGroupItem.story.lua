local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local Dash = require(Packages.Dash)
local React = require(Packages.React)

local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)
local RadioGroup = require(Foundation.Components.RadioGroup)
local RadioGroupContext = require(script.Parent.Parent.RadioGroupContext)
type InputSize = InputSize.InputSize

local function Story(props)
	local controls = props.controls
	local value, setValue = React.useState(nil)

	return React.createElement(RadioGroupContext.Provider, {
		value = { value = value, onValueChanged = setValue, Selectable = true },
	}, {
		React.createElement(RadioGroup.Item, {
			value = controls.value,
			label = if #controls.label > 0 then `{controls.label} {controls.value}` else "",
			isDisabled = controls.isDisabled,
			size = controls.size,
			placement = controls.placement,
		}),
	})
end

return {
	summary = "Checkbox component",
	story = Story,
	controls = {
		isDisabled = false,
		label = "Label",
		value = "A",
		size = Dash.values(InputSize),
		placement = Dash.values(InputPlacement),
	},
}
