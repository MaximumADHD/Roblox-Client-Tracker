local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Button = require(Foundation.Components.Button)
local View = require(Foundation.Components.View)
local InputSize = require(Foundation.Enums.InputSize)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant
local FillBehavior = require(Foundation.Enums.FillBehavior)
type FillBehavior = FillBehavior.FillBehavior

local function BasicStory(props)
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

local buttonProps: { { text: string, variant: ButtonVariant } } = {
	{ text = "Cancel", variant = ButtonVariant.Standard :: ButtonVariant },
	{ text = "Continue without accepting", variant = ButtonVariant.SoftEmphasis },
	{ text = "Accept", variant = ButtonVariant.Emphasis },
}

local function EqualWidthsStory()
	return React.createElement(
		View,
		{
			tag = "row gap-small auto-y size-full-0 fill-x",
		},
		Dash.map(buttonProps, function(props)
			return React.createElement(Button, {
				text = props.text,
				variant = props.variant,
				onActivated = function()
					print(props.text .. " clicked!")
				end,
				fillBehavior = FillBehavior.Fill,
				size = InputSize.Medium,
				width = UDim.new(1, 0),
			})
		end)
	)
end

return {
	summary = "Button Stack",
	stories = {
		{
			name = "Basic",
			summary = "Button size based on their content, either filling the container or fitting the content.",
			story = function(props)
				return BasicStory({
					text = props.controls.text,
					size = props.controls.size,
					fillBehavior = props.controls.fillBehavior,
				})
			end,
		},
		{
			name = "Evenly sized buttons",
			summary = "All buttons are the same width, regardless of their content.",
			story = EqualWidthsStory,
		},
	},
	controls = {
		text = "Click me!",
		size = Dash.values(InputSize),
		fillBehavior = {
			FillBehavior.Fit,
			FillBehavior.Fill,
		} :: { FillBehavior },
	},
}
