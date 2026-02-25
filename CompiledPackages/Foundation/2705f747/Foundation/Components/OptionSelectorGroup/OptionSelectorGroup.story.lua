local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Dash = require(Packages.Dash)

local InputSize = require(Foundation.Enums.InputSize)
local Orientation = require(Foundation.Enums.Orientation)

local OptionSelectorGroup = require(Foundation.Components.OptionSelectorGroup)

local values = { "A", "B", "C", "D", "E", "F" }
local icons = { "arm-left", "hat-fedora", "chart-pie", "lipstick", "moon", "star" }

local longText = " With A Lot Of Extra Text To See How It Behaves When It Might Need To Be Wrapped"
	.. "To Multiple Lines Because It's Just So Long We Simply Cannot Fit It On One Line"

local function BasicStory(props)
	local controls = props.controls
	local optionLabel: string = controls.optionLabel
	local optionDescription: string = controls.optionDescription
	local items = {}
	Dash.forEach(values, function(value)
		local extraText = if value == "C" then longText else ""
		table.insert(
			items,
			React.createElement(OptionSelectorGroup.Item, {
				value = value,
				icon = icons[math.random(1, #icons)],
				label = if #optionLabel > 0 then `{optionLabel}{extraText} {value}` else "",
				description = if #optionDescription > 0 then `{optionDescription}{extraText} {value}` else nil,
				size = controls.size,
			})
		)
	end)

	return React.createElement(OptionSelectorGroup.Root, {
		value = controls.value,
		onValueChanged = function(value: string)
			print("Checking value", value)
		end,
		orientation = controls.orientation,
	}, items)
end

return {
	summary = "OptionSelectorGroup component",
	stories = {
		{
			name = "Basic",
			story = BasicStory :: any,
		},
	},
	controls = {
		optionLabel = "Option",
		optionDescription = "Description",
		orientation = Dash.values(Orientation),
		size = Dash.values(InputSize),
		value = Dash.values(values),
	},
}
