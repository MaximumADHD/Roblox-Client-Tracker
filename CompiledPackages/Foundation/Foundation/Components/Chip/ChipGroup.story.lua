local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Chip = require(Foundation.Components.Chip)
local View = require(Foundation.Components.View)
local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

return {
	summary = "Chip",
	story = function()
		local chip1Text = "I'm a chip"
		local chip2Text = "I'm a dale"

		local value, setValue = React.useState(chip1Text)

		return React.createElement(View, {
			tag = "row gap-small wrap auto-y size-full-0",
		}, {
			Chip1 = React.createElement(Chip, {
				icon = "icons/common/robux",
				text = chip1Text,
				onActivated = function()
					setValue(chip1Text)
				end,
				isChecked = value == chip1Text,
			}),
			Chip2 = React.createElement(Chip, {
				text = chip2Text,
				onActivated = function()
					setValue(chip2Text)
				end,
				isChecked = value == chip2Text,
			}),
		})
	end,
}
