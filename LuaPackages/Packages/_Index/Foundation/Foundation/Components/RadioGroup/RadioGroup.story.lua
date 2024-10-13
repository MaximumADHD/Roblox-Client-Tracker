local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Dash = require(Packages.Dash)

local RadioGroup = require(Foundation.Components.RadioGroup)

local values = { "A", "B", "C", "D", "E" }

local function Story(props)
	local items = {}
	Dash.forEach(values, function(value)
		table.insert(
			items,
			React.createElement(RadioGroup.Item, {
				value = value,
				label = "Label " .. value,
				isDisabled = value == "D",
			})
		)
	end)

	return React.createElement(RadioGroup.Root, {
		onValueChanged = function(value: string)
			print("Checking value", value)
		end,
	}, items)
end

return {
	summary = "Radio Group component",
	story = Story,
}
