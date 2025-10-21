local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)
local Dash = require(Packages.Dash)
local View = require(Foundation.Components.View)
local Text = require(Foundation.Components.Text)
local ControlState = require(Foundation.Enums.ControlState)
local useTokens = require(Foundation.Providers.Style.useTokens)
type ControlState = ControlState.ControlState

local RbxDesignFoundations = require(Packages.RbxDesignFoundations)
local Tokens = RbxDesignFoundations.Tokens.Dark(1)
local Typography = Tokens.Typography
local NominalScale = Tokens.Config.Text.NominalScale

local function Story(props)
	local typographyName = props.controls.typography
	local tokens = useTokens()
	local typography = tokens.Typography[typographyName] :: typeof(tokens.Typography.CaptionSmall)
	local trueTextSize = typography.FontSize / NominalScale
	local trueLineHeight = typography.LineHeight * NominalScale
	local desiredLineSize = trueTextSize * trueLineHeight
	return React.createElement(View, {
		tag = "auto-y size-full-0 col",
		layout = {
			FillDirection = Enum.FillDirection.Vertical,
			Padding = UDim.new(0, tokens.Margin.Medium),
		},
	}, {
		Metadata = React.createElement(View, {
			LayoutOrder = 1,
			tag = "flex-between row auto-y size-full-0",
		}, {
			Title = React.createElement(Text, {
				Text = `Typography.{typographyName}`,
				tag = "content-default text-label-large auto-xy",
			}),
			Size = React.createElement(Text, {
				Text = string.format(
					"%dpx / %.1f (%dpx)",
					math.round(trueTextSize),
					trueLineHeight,
					math.round(desiredLineSize)
				),
				tag = "content-default text-label-large auto-xy",
			}),
		}),
		Inline = React.createElement(View, {
			LayoutOrder = 2,
			tag = "col gap-small size-full-0 auto-y",
		}, {
			Title = React.createElement(Text, {
				Text = "Inline",
				tag = "content-emphasis text-caption-large auto-xy",
			}),
			Paragraph = React.createElement(Text, {
				Text = props.controls.inline,
				fontStyle = typography,
				tag = "content-emphasis text-truncate-end auto-xy text-align-x-left",
			}),
		}),
		MultiLine = React.createElement(View, {
			LayoutOrder = 3,
			tag = "col gap-small size-full-0 auto-y",
		}, {
			Title = React.createElement(Text, {
				Text = "Multi-line",
				tag = "content-emphasis text-caption-large auto-xy",
			}),
			Paragraph = React.createElement(Text, {
				Text = props.controls.multiline,
				fontStyle = typography,
				tag = "content-emphasis auto-xy text-wrap text-align-x-left",
			}),
		}),
	})
end

return {
	summary = "Text",
	stories = {
		{
			name = "Typography",
			story = Story,
		},
	},
	controls = {
		inline = "Let's prioritize the low-hanging fruit old boys club, performance review. Big data. let's unpack that later, but if you want to motivate these clowns, try less carrot and more stick.",
		multiline = "Innovation is hot right now we need more paper, or please use “solutionise” instead of solution ideas! Imagineer diversify KPIs. Put it on the parking lot we need to socialize the comms with the wider stakeholder community throughput. Let's circle back to that a tentative event rundown is attached for your reference, including other happenings on the day you are most welcome to join us beforehand for a light lunch we would also like to invite you to other activities on the day, including the interim and closing panel discussions on the intersection of businesses and social innovation. In this space make sure to include in your wheelhouse helicopter view. This proposal is a win-win situation which will cause a stellar paradigm shift, and produce a multi-fold increase in deliverables, conversational content; but let's not try to boil the ocean.",
		typography = Dash.keys(Typography),
	},
}
