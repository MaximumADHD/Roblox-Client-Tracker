local UtilityRoot = script.Parent
local UIBlox = UtilityRoot.Parent
local Packages = UIBlox.Parent
local Foundation = require(Packages.Foundation)
local FoundationFlags = Foundation.Utility.Flags
local StatusIndicatorVariant = Foundation.Enums.StatusIndicatorVariant
local BadgeVariant = require(UIBlox.App.Indicator.Enum.BadgeVariant)

local function migrateBadgeVariantToStatusIndicatorVariant(badgeVariant)
	if FoundationFlags.FoundationStatusIndicatorVariantExperiment then
		return if badgeVariant == BadgeVariant.Alert
			then StatusIndicatorVariant.Alert
			else StatusIndicatorVariant.Contrast_Experiment
	else
		return StatusIndicatorVariant.Emphasis
	end
end

return migrateBadgeVariantToStatusIndicatorVariant
