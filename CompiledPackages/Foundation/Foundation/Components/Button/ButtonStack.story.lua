local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Button = require(Foundation.Components.Button)
local View = require(Foundation.Components.View)
local InputSize = require(Foundation.Enums.InputSize)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local function Story(props)
	return React.createElement(View, {
		tag = {
			["row gap-small wrap auto-y size-full-0"] = true,
			["fill-x"] = props.fillBehavior == FillBehavior.Fill,
		},
	}, {
		Button1 = React.createElement(Button, {
			icon = "icons/common/robux",
			text = "BUT WAIT NO CLICK ME!!!",
			variant = ButtonVariant.Emphasis,
			onActivated = function()
				print("PrimaryButton clicked!")
			end,
			fillBehavior = props.fillBehavior,
			size = props.size,
		}),
		Button2 = React.createElement(Button, {
			text = props.text,
			variant = ButtonVariant.Standard,
			onActivated = function()
				print("SecondaryButton clicked!")
			end,
			fillBehavior = props.fillBehavior,
			size = props.size,
		}),
	})
end

return {
	summary = "Button Stack",
	story = function(props)
		return Story({
			text = props.controls.text,
			size = props.controls.size,
			fillBehavior = props.controls.fillBehavior,
		})
	end,
	controls = {
		text = "Click me!",
		size = Dash.values(InputSize),
		fillBehavior = {
			FillBehavior.Fit,
			FillBehavior.Fill,
		} :: { FillBehavior },
	},
}
