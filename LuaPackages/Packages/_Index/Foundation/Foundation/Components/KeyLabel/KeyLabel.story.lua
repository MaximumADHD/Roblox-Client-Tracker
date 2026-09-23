local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local React = require(Packages.React)

local Alert = require(Foundation.Components.Alert)
local AlertSeverity = require(Foundation.Enums.AlertSeverity)
local AlertVariant = require(Foundation.Enums.AlertVariant)

local function Playground()
	return React.createElement(Alert, {
		variant = AlertVariant.System,
		severity = AlertSeverity.Warning,
		text = "KeyLabel is deprecated. Use Shortcut instead.",
	})
end

return {
	deprecated = true,
	summary = "KeyLabel is deprecated — use Shortcut instead",
	stories = {
		{
			name = "Playground",
			story = Playground,
		},
	},
}
