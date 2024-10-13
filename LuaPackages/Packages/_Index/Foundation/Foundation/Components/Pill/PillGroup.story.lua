local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Pill = require(Foundation.Components.Pill)
local View = require(Foundation.Components.View)
local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

return {
	summary = "Pill",
	story = function(props)
		local pill1Text = "I'm a pill"
		local pill2Text = "I'm a hard pill to swallow :("

		local value, setValue = React.useState(pill1Text)

		return React.createElement(View, {
			tag = "row gap-small wrap auto-y size-full-0",
		}, {
			Pill1 = React.createElement(Pill, {
				icon = "icons/common/robux",
				text = pill1Text,
				onActivated = function()
					setValue(pill1Text)
				end,
				isChecked = value == pill1Text,
			}),
			Pill2 = React.createElement(Pill, {
				text = pill2Text,
				onActivated = function()
					setValue(pill2Text)
				end,
				isChecked = value == pill2Text,
			}),
		})
	end,
}
