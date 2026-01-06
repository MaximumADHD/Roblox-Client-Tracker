--!nolint ImportUnused
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local SafeFlags = require(Packages.SafeFlags)

--[[
	Define all flags within this Flags table, like so:

 		MyFastFlag = SafeFlags.createGetFFlag("MyFastFlag")(), <-- Make sure to call the function to get the value

	Flags are automatically annotated + sorted on each release of Foundation.
	Please do not provide any additional information for your flags in this file, as it will likely be wiped.

	If you need to gate a flag on another flag, define them both as local variables above the returned table.
	
		local ConditionalFlag = SafeFlags.createGetFFlag("ConditionalFlag")()
		local MyFastFlag = SafeFlags.createGetFFlag("MyFastFlag")()
		...
		return {
			MyFastFlag = ConditionalFlag and MyFastFlag
		}

	If you are a contributor from a different team, please remember to flip your flags & clean up after two weeks! 😊
	(you will be bugged by us to clean up your flag if you forget 👁️)
]]

return {
	-- Foundation@1.29.0
	FoundationUpdateBadgeDesign = SafeFlags.createGetFFlag("FoundationUpdateBadgeDesign")(),

	-- Foundation@1.30.0
	FoundationMigrateIconNames = SafeFlags.createGetFFlag("FoundationMigrateIconNames")(),

	-- Foundation@1.33.0
	FoundationDisableStylingPolyfill = SafeFlags.createGetFFlag("FoundationDisableStylingPolyfill")(),

	-- Foundation@1.41.2
	FoundationWarnOnMultipleStyleLinks = SafeFlags.createGetFFlag("DebugFoundationWarnOnMultipleStyleLinks")(),

	-- Foundation@1.47.0
	FoundationPopoverOnScreenKeyboard = SafeFlags.createGetFFlag("FoundationPopoverOnScreenKeyboard")(),
	FoundationUsePath2DSpinner = SafeFlags.createGetFFlag("FoundationUsePath2DSpinner")(),

	-- Foundation@1.50.0
	FoundationMenuWidthGrowth = SafeFlags.createGetFFlag("FoundationMenuWidthGrowth")(),
	FoundationScrollViewMoveClipOutside = SafeFlags.createGetFFlag("FoundationScrollViewMoveClipOutside")(),

	-- Foundation@1.52.0
	FoundationDialogHeroMediaGradientFix = SafeFlags.createGetFFlag("FoundationDialogHeroMediaGradientFix")(),
	FoundationTooltipTextAutosize = SafeFlags.createGetFFlag("FoundationTooltipTextAutosize")(),

	-- Foundation@1.54.0
	FoundationStatusIndicatorVariantExperiment = SafeFlags.createGetFFlag("FoundationStatusIndicatorVariantExperiment")(),

	-- Foundation@1.55.0
	FoundationBaseMenuScroll = SafeFlags.createGetFFlag("FoundationBaseMenuScroll")(),

	-- Foundation@1.56.0
	FoundationIconButtonBiggerBuilderIcons = SafeFlags.createGetFFlag("FoundationIconButtonBiggerBuilderIcons")(),
	FoundationInternalInputSelectedStylesAndSpacing = SafeFlags.createGetFFlag(
		"FoundationInternalInputSelectedStylesAndSpacing"
	)(),

	-- Foundation@1.58.0
	FoundationDropdownGroups = SafeFlags.createGetFFlag("FoundationDropdownGroups")(),
	FoundationPopoverNegateAlignOffsetOnFlip = SafeFlags.createGetFFlag("FoundationPopoverNegateAlignOffsetOnFlip")(),
	FoundationPopoverOverflow = SafeFlags.createGetFFlag("FoundationPopoverOverflow")(),

	-- Foundation@1.59.0
	FoundationFixBadgeAndIndicatorTextAlignment = SafeFlags.createGetFFlag(
		"FoundationFixBadgeAndIndicatorTextAlignment"
	)(),

	-- Foundation@1.60.0
	FoundationPopoverRootZIndex = SafeFlags.createGetFFlag("FoundationPopoverRootZIndex")(),
	FoundationToggleVisualUpdate = SafeFlags.createGetFFlag("FoundationToggleVisualUpdate")(),

	-- Foundation@1.61.0
	FoundationBaseMenuBorderFix = SafeFlags.createGetFFlag("FoundationBaseMenuBorderFix2")(),
	FoundationDateTimePickerTimeVariantEnabled = SafeFlags.createGetFFlag("FoundationDateTimePickerTimeVariantEnabled")(),
	FoundationElevationSystem = SafeFlags.createGetFFlag("FoundationElevationSystem")(),
	FoundationPopoverFocusTrap = SafeFlags.createGetFFlag("FoundationPopoverFocusTrap")(),
	FoundationSheetCenterSheetNoShrink = SafeFlags.createGetFFlag("FoundationSheetCenterSheetNoShrink")(),

	-- Foundation@1.62.0
	FoundationDateTimePickerAnchorBugFixEnabled = SafeFlags.createGetFFlag(
		"FoundationDateTimePickerAnchorBugFixEnabled"
	)(),
	FoundationDialogOversizedBackdrop = SafeFlags.createGetFFlag("FoundationDialogOversizedBackdrop")(),
	FoundationIconButtonNoListLayout = SafeFlags.createGetFFlag("FoundationIconButtonNoListLayout")(),
	FoundationOverlayLuaAppInsetsFix = SafeFlags.createGetFFlag("FoundationOverlayLuaAppInsetsFix2")(),
	FoundationPopoverOversizedBackdrop = SafeFlags.createGetFFlag("FoundationPopoverOversizedBackdrop")(),
	FoundationSheetBottomSheetAutoSize = SafeFlags.createGetFFlag("FoundationSheetBottomSheetAutoSize")(),
	FoundationToggleDefaultPlacement = SafeFlags.createGetFFlag("FoundationToggleDefaultPlacement")(),
	FoundationToggleEndPlacementJustifyContent = SafeFlags.createGetFFlag("FoundationToggleEndPlacementJustifyContent")(),
	FoundationUseAlphaCompositingForStateLayer = SafeFlags.createGetFFlag("FoundationUseAlphaCompositingForStateLayer")(),

	-- Foundation@1.63.0
	FoundationCursorScaledSliceFix = SafeFlags.createGetFFlag("FoundationCursorScaledSliceFix")(),

	-- Foundation@1.63.2
	FoundationDialogBodyUpdate = SafeFlags.createGetFFlag("FoundationDialogBodyUpdate1")(),
	FoundationFixOptionSelectorGroupItemSize = SafeFlags.createGetFFlag("FoundationFixOptionSelectorGroupItemSize")(),

	-- Foundation@1.64.0
	FoundationInternalTextInputScrolling = SafeFlags.createGetFFlag("FoundationInternalTextInputScrolling")(),
	FoundationOverlayMountReorder = SafeFlags.createGetFFlag("FoundationOverlayMountReorder")(),
	FoundationPopoverFixArrowPositioning = SafeFlags.createGetFFlag("FoundationPopoverFixArrowPositioning")(),
	FoundationSheetFixLandscapeFlicker = SafeFlags.createGetFFlag("FoundationSheetFixLandscapeFlicker")(),
	FoundationSheetNoCenterSheetSmallScreens = SafeFlags.createGetFFlag("FoundationSheetNoCenterSheetSmallScreens2")(),
	FoundationSheetSideSheetTopBarFix = SafeFlags.createGetFFlag("FoundationSheetSideSheetTopBarFix")(),

	-- Foundation@1.65.0
	FoundationCheckboxIndeterminate = SafeFlags.createGetFFlag("FoundationCheckboxIndeterminate")(),
	FoundationNumberInputDraggingDeltaFix = SafeFlags.createGetFFlag("FoundationNumberInputDraggingDeltaFix")(),
	FoundationOverlayDisplayOrder = SafeFlags.createGetFFlag("FoundationOverlayDisplayOrder")(),

	-- Foundation@1.66.0
	FoundationAnimateTabs = SafeFlags.createGetFFlag("FoundationAnimateTabs2")(),
	FoundationFixedHeightDateTimePicker = SafeFlags.createGetFFlag("FoundationFixedHeightDateTimePicker")(),
	FoundationKnobRemoveGroupTransparency = SafeFlags.createGetFFlag("FoundationKnobRemoveGroupTransparency")(),
	FoundationTabsDisableScrollSelection = SafeFlags.createGetFFlag("FoundationTabsDisableScrollSelection")(),
}
