local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local NumberInput = require(Foundation.Components.NumberInput)

local function DefaultStory(props)
	local controls = props.controls

	local value, setValue = React.useState(0)

	local function handleChange(newValue: number)
		print("newValue", newValue)
		setValue(newValue)
	end

	return React.createElement(NumberInput, {
		value = value,
		isDisabled = controls.isDisabled,
		isRequired = controls.isRequired,
		onChanged = handleChange,
		formatAsString = function(value)
			return `{value}px`
		end,
		label = controls.label,
		maximum = controls.maximum,
		minimum = controls.minimum,
		step = controls.step,
		hint = controls.hint,
		precision = controls.precision,
	})
end

local function DisabledStory(props)
	local value, setValue = React.useState(0)

	local function handleChange(newValue: number)
		print("newValue", newValue)
		setValue(newValue)
	end

	return React.createElement(NumberInput, {
		value = value,
		isDisabled = true,
		onChanged = handleChange,
		formatAsString = function(value)
			return `{value}px`
		end,
		label = "",
	})
end

return {
	summary = "Spinbox",
	stories = {
		{ name = "Default", story = DefaultStory :: any },
		{ name = "Disabled", story = DisabledStory },
	},
	controls = {
		label = "Label",
		hint = "Number from -5 to 100",
		isRequired = { React.None, false, true },
		isDisabled = false,
		maximum = 100,
		minimum = -5,
		step = 0.2,
		precision = 2,
	},
}
