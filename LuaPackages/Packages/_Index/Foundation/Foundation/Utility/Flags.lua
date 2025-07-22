--!nolint ImportUnused
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local SafeFlags = require(Packages.SafeFlags)

-- Define all flags within this Flags table
-- Example:
-- 	MyFastFlag = SafeFlags.createGetFFlag("MyFastFlag")(), <-- Make sure to call the function to get the value
return {
	FoundationDisableStylingPolyfill = SafeFlags.createGetFFlag("FoundationDisableStylingPolyfill")(),
	FoundationDisableBadgeTruncation = SafeFlags.createGetFFlag("FoundationDisableBadgeTruncation")(),
	FoundationFixScrollViewBackgroundForStylingV2 = SafeFlags.createGetFFlag(
		"FoundationFixScrollViewBackgroundForStylingV2"
	)(),
	FoundationStandardizeInputLabelSizes = SafeFlags.createGetFFlag("FoundationStandardizeInputLabelSizes")(),
	FoundationWarnOnMultipleStyleLinks = SafeFlags.createGetFFlag("FoundationWarnOnMultipleStyleLinks")(),
	FoundationMigrateIconNames = SafeFlags.createGetFFlag("FoundationMigrateIconNames")(),
	FoundationDisableDragPositionAdjustmentForGuiInsets = SafeFlags.createGetFFlag(
		"FoundationDisableDragPositionAdjustmentForGuiInsets"
	)(),
	FoundationChipDesignUpdate = SafeFlags.createGetFFlag("FoundationChipDesignUpdate")(),
	FoundationUpdateBadgeDesign = SafeFlags.createGetFFlag("FoundationUpdateBadgeDesign")(),
	FoundationSkipPopoverOnPressedOutsideWhenClickingAnchor = SafeFlags.createGetFFlag(
		"FoundationSkipPopoverOnPressedOutsideWhenClickingAnchor"
	)(),
	FoundationSliderOrientationImprovement = SafeFlags.createGetFFlag("FoundationSliderOrientationImprovement")(),
	FoundationFixVisibleNoneScrollBarThickness = SafeFlags.createGetFFlag("FoundationFixVisibleNoneScrollBarThickness")(),
	FoundationFixInputFieldWidth = SafeFlags.createGetFFlag("FoundationFixInputFieldWidth")(),
	FoundationSelectionCursorMigration = SafeFlags.createGetFFlag("FoundationSelectionCursorMigration")(),
	FoundationFixCursorStyling = SafeFlags.createGetFFlag("FoundationFixCursorStyling")(),
}
