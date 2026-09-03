local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local IconName = BuilderIcons.Icon

local AlertSeverity = require(Foundation.Enums.AlertSeverity)
type AlertSeverity = AlertSeverity.AlertSeverity

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
type ButtonVariant = ButtonVariant.ButtonVariant

-- Mapping from AlertSeverity to icon names
local SEVERITY_TO_ICON: { [AlertSeverity]: string } = {
	[AlertSeverity.Info] = IconName.CircleI,
	[AlertSeverity.Warning] = IconName.TriangleExclamation,
	[AlertSeverity.Success] = IconName.CircleCheck,
	[AlertSeverity.Error] = IconName.CircleX,
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
