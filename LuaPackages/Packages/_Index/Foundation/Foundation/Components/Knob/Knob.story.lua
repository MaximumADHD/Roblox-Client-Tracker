local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)

local View = require(Foundation.Components.View)
local Types = require(Foundation.Components.Types)
local useTokens = require(Foundation.Providers.Style.useTokens)
local Flags = require(Foundation.Utility.Flags)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local Knob = require(script.Parent.Knob)

type StoryProps = {
	style: Types.ColorStyleValue,
	stroke: Types.Stroke?,
}

local function Story(props: StoryProps)
	return React.createElement(
		View,
		{
			tag = "row gap-medium auto-y size-full-0 align-y-center",
		},
		Dash.map(
			{ InputSize.Large, InputSize.Medium, InputSize.Small, InputSize.XSmall } :: { InputSize },
			function(size)
				return React.createElement(Knob, {
					size = size,
					style = props.style,
					stroke = props.stroke,
				})
			end
		)
	)
end

return {
	summary = "Knob component",
	stories = {
		{
			name = "Basic",
			story = Story,
		} :: unknown,
		{
			name = "With Stroke",
			story = function(props)
				Flags.FoundationFixKnobStroke = props.controls.fixKnobStroke
				local tokens = useTokens()

				return Story({
					style = tokens.Color.None,
					stroke = {
						Color = tokens.Color.Content.Emphasis.Color3,
						Thickness = tokens.Stroke.Thicker,
						Transparency = tokens.Color.Content.Emphasis.Transparency,
					},
				})
			end,
		},
	},
	controls = {
		fixKnobStroke = Flags.FoundationFixKnobStroke,
	},
}
