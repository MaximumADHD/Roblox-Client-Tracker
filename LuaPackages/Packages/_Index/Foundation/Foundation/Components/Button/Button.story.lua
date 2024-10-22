local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Button = require(Foundation.Components.Button)
local ButtonSize = require(Foundation.Enums.ButtonSize)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

return {
	summary = "Button",
	stories = Dash.map(ButtonVariant, function(variant)
		return {
			name = variant,
			story = function(props)
				local controls = props.controls

				return React.createElement(Button, {
					icon = if controls.icon == "" then nil else props.controls.icon,
					text = controls.text,
					variant = variant,
					onActivated = function()
						print(`{variant}Button activated`)
					end,
					isDisabled = controls.isDisabled,
					size = controls.size,
					fillBehavior = if controls.fillBehavior == React.None then nil else controls.fillBehavior,
					inputDelay = controls.inputDelay,
				})
			end,
		}
	end),
	controls = {
		icon = {
			"icons/common/search",
			"icons/common/robux",
			"icons/common/play",
			"",
		},
		text = "Click me!",
		size = Dash.values(ButtonSize),
		isDisabled = false,
		fillBehavior = {
			React.None,
			FillBehavior.Fit,
			FillBehavior.Fill,
		} :: { FillBehavior },
		inputDelay = 0,
	},
}
