local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Alert = require(Foundation.Components.Alert)
local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local AlertVariant = require(Foundation.Enums.AlertVariant)

return {
	deprecated = true,
	summary = "SystemBanner is deprecated — use Alert instead",
	stories = {
		{
			name = "Deprecated",
			story = function()
				return React.createElement(Alert, {
					variant = AlertVariant.System,
					severity = AlertSeverity.Warning,
					text = "SystemBanner is deprecated. Use Alert with AlertVariant.System instead.",
				})
			end :: unknown,
		},
	},
}
