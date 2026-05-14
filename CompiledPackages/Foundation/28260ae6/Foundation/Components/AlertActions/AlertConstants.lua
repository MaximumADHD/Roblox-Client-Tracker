local Foundation = script:FindFirstAncestor("Foundation")

local AlertSeverity = require(Foundation.Enums.AlertSeverity)
type AlertSeverity = AlertSeverity.AlertSeverity

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

-- Mapping from AlertSeverity to icon names
local SEVERITY_TO_ICON: { [AlertSeverity]: string } = {
	[AlertSeverity.Info] = "circle-i",
	[AlertSeverity.Warning] = "triangle-exclamation",
	[AlertSeverity.Success] = "circle-check",
	[AlertSeverity.Error] = "circle-x",
}

-- Maximum number of actions supported by alert components
local MAX_ACTION_COUNT = 3

-- Shared action type for alert components (only Standard and Utility variants supported)
export type AlertAction = {
	onActivated: () -> (),
	-- Only `Standard` and `Utility` variants are supported
	variant: (typeof(ButtonVariant.Standard) | typeof(ButtonVariant.Utility))?,
	text: string,
}

return {
	MAX_ACTION_COUNT = MAX_ACTION_COUNT,
	SEVERITY_TO_ICON = SEVERITY_TO_ICON,
}
