local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Alert = require(Foundation.Components.Alert)
local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local AlertVariant = require(Foundation.Enums.AlertVariant)

return {
	deprecated = true,
	summary = "FeedbackAlert is deprecated — use Alert instead",
	stories = {
		{
			name = "Deprecated",
			story = function()
				return React.createElement(Alert, {
					variant = AlertVariant.Feedback,
					severity = AlertSeverity.Warning,
					text = "FeedbackAlert is deprecated. Use Alert with AlertVariant.Feedback instead.",
				})
			end :: unknown,
		},
	},
}
