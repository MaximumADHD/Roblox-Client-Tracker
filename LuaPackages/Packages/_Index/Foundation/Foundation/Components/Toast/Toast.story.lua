local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local SystemBanner = require(Foundation.Components.SystemBanner)

return {
	deprecated = true,
	summary = "Toast is deprecated — replace with Notification when available",
	stories = {
		{
			name = "Deprecated",
			story = function()
				return React.createElement(SystemBanner, {
					severity = AlertSeverity.Warning,
					title = "Toast is deprecated",
					description = "Toast is deprecated and should be replaced with Notification whenever it becomes available (see Components [Planned]).",
				})
			end :: unknown,
		},
	},
}
