local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local SystemBanner = require(Foundation.Components.SystemBanner)

return {
	deprecated = true,
	summary = "Coachmark is deprecated — use EducationalTooltip instead",
	stories = {
		{
			name = "Deprecated",
			story = function()
				return React.createElement(SystemBanner, {
					severity = AlertSeverity.Warning,
					title = "Coachmark is deprecated",
					description = "Use EducationalTooltip instead. Coachmark will be removed in Foundation v2.",
				})
			end :: unknown,
		},
	},
}
