local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Pill = require(Foundation.Components.Pill)
local IconPosition = require(Foundation.Enums.IconPosition)

local function Story(props)
	return React.createElement(Pill, {
		icon = props.icon,
		text = props.text,
		onActivated = props.onActivated,
		isDisabled = props.isDisabled,
		isChecked = props.isChecked,
	})
end

return {
	summary = "Pill",
	story = function(props)
		return Story({
			icon = if props.controls.icon ~= ""
				then {
					name = props.controls.icon,
					position = props.controls.iconPosition,
				}
				else nil,
			text = props.controls.text,
			onActivated = function()
				print(`Pill activated`)
			end,
			isDisabled = props.controls.isDisabled,
			isChecked = props.controls.isChecked,
		})
	end,
	controls = {
		icon = {
			"icons/actions/filter",
			"icons/common/robux",
			"icons/common/play",
			"",
		},
		iconPosition = Dash.values(IconPosition),
		text = "Filter",
		isDisabled = false,
		isChecked = false,
	},
}
