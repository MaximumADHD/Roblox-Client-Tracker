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
	FoundationFixScrollViewTags = SafeFlags.createGetFFlag("FoundationFixScrollViewTags")(),
	FoundationWarnOnMultipleStyleLinks = SafeFlags.createGetFFlag("DebugFoundationWarnOnMultipleStyleLinks")(),
	FoundationMigrateIconNames = SafeFlags.createGetFFlag("FoundationMigrateIconNames")(),
	FoundationDisableDragPositionAdjustmentForGuiInsets = SafeFlags.createGetFFlag(
		"FoundationDisableDragPositionAdjustmentForGuiInsets"
	)(),
	FoundationUpdateBadgeDesign = SafeFlags.createGetFFlag("FoundationUpdateBadgeDesign")(),
	FoundationFixDropdownValueTuncation = SafeFlags.createGetFFlag("FoundationFixDropdownValueTuncation")(),
	FoundationStyleTagsStyleSheetAttributes = SafeFlags.createGetFFlag("FoundationStyleTagsStyleSheetAttributes")(),
	FoundationSliderDirectionalInputSupport = SafeFlags.createGetFFlag("FoundationSliderDirectionalInputSupport2")(),
	FoundationUpdateIconButtonSizes = SafeFlags.createGetFFlag("FoundationUpdateIconButtonSizes")(),
	FoundationFallbackCoreGuiSelectionCursor = SafeFlags.createGetFFlag("FoundationFallbackCoreGuiSelectionCursor")(),
	FoundationNumberInputIncrementClamp = SafeFlags.createGetFFlag("FoundationNumberInputIncrementClamp")(),
	FoundationCheckCoreGuiAccessCursorProvider = SafeFlags.createGetFFlag("FoundationCheckCoreGuiAccessCursorProvider")(),
	FoundationShowErrorAboutFoundationProvider = SafeFlags.createGetFFlag("FoundationShowErrorAboutFoundationProvider")(),
	FoundationChipSelectable = SafeFlags.createGetFFlag("FoundationChipSelectable")(),
	FoundationFixImageSlice = SafeFlags.createGetFFlag("FoundationFixImageSlice")(),
	FoundationRemoveSelectionCursorHeartbeat = SafeFlags.createGetFFlag("FoundationRemoveSelectionCursorHeartbeat")(),
	FoundationFixKnobStroke = SafeFlags.createGetFFlag("FoundationFixKnobStroke")(),
	FoundationPseudoChildSelectors = SafeFlags.createGetFFlag("FoundationPseudoChildSelectors")(),
}
