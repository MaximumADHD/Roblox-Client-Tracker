local Foundation = script:FindFirstAncestor("Foundation")

local StatusIndicatorVariant = require(Foundation.Enums.StatusIndicatorVariant)
type StatusIndicatorVariant = StatusIndicatorVariant.StatusIndicatorVariant

local Flags = require(Foundation.Utility.Flags)

local numericVariants: { [StatusIndicatorVariant]: boolean } = {
	[StatusIndicatorVariant.Emphasis] = true,
	[StatusIndicatorVariant.Standard] = true,
	-- Remove below with FoundationStatusIndicatorVariantExperiment; these are only supported for migration experiment purposes
	[StatusIndicatorVariant.Contrast_Experiment] = if Flags.FoundationStatusIndicatorVariantExperiment
		then true
		else false,
	[StatusIndicatorVariant.Alert] = if Flags.FoundationStatusIndicatorVariantExperiment then true else false,
}

return numericVariants
