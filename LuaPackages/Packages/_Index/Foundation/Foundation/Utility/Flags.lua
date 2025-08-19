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
}
