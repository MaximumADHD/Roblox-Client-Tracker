local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Flags = require(Foundation.Utility.Flags)

local React = require(Packages.React)

local Dash = require(Packages.Dash)

local StatusIndicator = require(Foundation.Components.StatusIndicator)
local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant

return {
	summary = "StatusIndicator",
	stories = {
		{
			name = "Default",
			summary = "Standard status indicator",
			story = function()
				return React.createElement(
					View,
					{
						tag = "size-full-0 auto-y row align-x-left align-y-center gap-xxlarge",
					},
					Dash.map(StatusIndicatorVariant, function(variant)
						if
							not Flags.FoundationStatusIndicatorVariantExperiment
							and variant == StatusIndicatorVariant.Contrast_Experiment
						then
							return React.createElement(React.Fragment)
						end
						return React.createElement(View, {
							tag = "size-0-0 auto-xy col align-x-center gap-small",
						}, {
							Label = React.createElement(Text, {
								tag = "auto-xy text-align-x-center text-caption-small",
								Text = variant,
							}),
							Indicator = React.createElement(StatusIndicator, {
								variant = variant :: StatusIndicatorVariant,
							}),
						})
					end)
				)
			end,
		} :: unknown,
		{
			name = "Numeric",
			summary = "Indicator with a numeric value",
			story = function(props)
				return React.createElement(
					View,
					{
						tag = "size-full-0 auto-y row align-x-left align-y-center gap-xxlarge",
					},
					Dash.map({
						StatusIndicatorVariant.Standard :: StatusIndicatorVariant,
						StatusIndicatorVariant.Emphasis,
						StatusIndicatorVariant.Alert,
						StatusIndicatorVariant.Contrast_Experiment,
					}, function(variant)
						if
							not Flags.FoundationStatusIndicatorVariantExperiment
							and (
								variant == StatusIndicatorVariant.Contrast_Experiment
								or variant == StatusIndicatorVariant.Alert
							)
						then
							return {}
						end
						return React.createElement(View, {
							tag = "size-0-0 auto-xy col align-x-center gap-small",
						}, {
							Label = React.createElement(Text, {
								tag = "auto-xy text-align-x-center text-caption-small",
								Text = variant,
							}),
							Indicator = React.createElement(StatusIndicator, {
								value = props.controls.value,
								variant = variant :: StatusIndicatorVariant,
								max = props.controls.max,
							}),
						})
					end)
				)
			end,
		},
	},
	controls = {
		value = 5,
		max = 99,
	},
}
