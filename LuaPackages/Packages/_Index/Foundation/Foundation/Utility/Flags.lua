--!nolint ImportUnused
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local SafeFlags = require(Packages.SafeFlags)

-- Define all flags within this Flags table
-- Example:
-- 	MyFastFlag = SafeFlags.createGetFFlag("MyFastFlag")(), <-- Make sure to call the function to get the value
return {
	FoundationDisableStylingPolyfill = SafeFlags.createGetFFlag("FoundationDisableStylingPolyfill")(),
	FoundationWarnOnMultipleStyleLinks = SafeFlags.createGetFFlag("DebugFoundationWarnOnMultipleStyleLinks")(),
	FoundationMigrateIconNames = SafeFlags.createGetFFlag("FoundationMigrateIconNames")(),
	FoundationUpdateBadgeDesign = SafeFlags.createGetFFlag("FoundationUpdateBadgeDesign")(),
	FoundationUsePath2DSpinner = SafeFlags.createGetFFlag("FoundationUsePath2DSpinner")(),
	FoundationPopoverOnScreenKeyboard = SafeFlags.createGetFFlag("FoundationPopoverOnScreenKeyboard")(),
	FoundationBaseMenuBorderFix = SafeFlags.createGetFFlag("FoundationBaseMenuBorderFix2")(),
	FoundationScrollViewMoveClipOutside = SafeFlags.createGetFFlag("FoundationScrollViewMoveClipOutside")(),
	FoundationMenuWidthGrowth = SafeFlags.createGetFFlag("FoundationMenuWidthGrowth")(),
	FoundationDialogBodyUpdate = SafeFlags.createGetFFlag("FoundationDialogBodyUpdate1")(),
	FoundationDialogHeroMediaGradientFix = SafeFlags.createGetFFlag("FoundationDialogHeroMediaGradientFix")(),
	FoundationTooltipTextAutosize = SafeFlags.createGetFFlag("FoundationTooltipTextAutosize")(),
	FoundationStatusIndicatorVariantExperiment = SafeFlags.createGetFFlag("FoundationStatusIndicatorVariantExperiment")(),
	FoundationBaseMenuScroll = SafeFlags.createGetFFlag("FoundationBaseMenuScroll")(),
	FoundationMigrateCryoToDash = SafeFlags.createGetFFlag("FoundationMigrateCryoToDash")(),
	FoundationDropdownGroups = SafeFlags.createGetFFlag("FoundationDropdownGroups")(),
	FoundationDialogBackdropColorUpdate = SafeFlags.createGetFFlag("FoundationDialogBackdropColorUpdate")(),
	FoundationIconButtonBiggerBuilderIcons = SafeFlags.createGetFFlag("FoundationIconButtonBiggerBuilderIcons")(),
	FoundationOverlayProviderFrameTiming = SafeFlags.createGetFFlag("FoundationOverlayProviderFrameTiming")(),
	FoundationDialogRootZIndex = SafeFlags.createGetFFlag("FoundationDialogRootZIndex2")(),
	FoundationDialogOversizedBackdrop = SafeFlags.createGetFFlag("FoundationDialogOversizedBackdrop")(),
	FoundationDialogUpdateZIndex = SafeFlags.createGetFFlag("FoundationDialogUpdateZIndex")(),
	FoundationPopoverOversizedBackdrop = SafeFlags.createGetFFlag("FoundationPopoverOversizedBackdrop")(),
	FoundationOverlayLuaAppInsetsFix = SafeFlags.createGetFFlag("FoundationOverlayLuaAppInsetsFix2")(),
	FoundationMenuItemStyles = SafeFlags.createGetFFlag("FoundationMenuItemStyles")(),
	FoundationElevationSystem = SafeFlags.createGetFFlag("FoundationElevationSystem")(),
	FoundationInternalInputSelectedStylesAndSpacing = SafeFlags.createGetFFlag(
		"FoundationInternalInputSelectedStylesAndSpacing"
	)(),
	FoundationSheetNoCenterSheetSmallScreens = SafeFlags.createGetFFlag("FoundationSheetNoCenterSheetSmallScreens2")(),
	FoundationSheetCenterSheetNoShrink = SafeFlags.createGetFFlag("FoundationSheetCenterSheetNoShrink")(),
	FoundationSheetBottomSheetAutoSize = SafeFlags.createGetFFlag("FoundationSheetBottomSheetAutoSize")(),
	FoundationSheetFixLandscapeFlicker = SafeFlags.createGetFFlag("FoundationSheetFixLandscapeFlicker")(),
	FoundationSheetSideSheetTopBarFix = SafeFlags.createGetFFlag("FoundationSheetSideSheetTopBarFix")(),
	FoundationPopoverRootZIndex = SafeFlags.createGetFFlag("FoundationPopoverRootZIndex")(),
	FoundationDialogUpdateSelection = SafeFlags.createGetFFlag("FoundationDialogUpdateSelection")(),
	FoundationInternalTextInputScrolling = SafeFlags.createGetFFlag("FoundationInternalTextInputScrolling")(),
	FoundationToggleVisualUpdate = SafeFlags.createGetFFlag("FoundationToggleVisualUpdate")(),
	FoundationPopoverOverflow = SafeFlags.createGetFFlag("FoundationPopoverOverflow")(),
	FoundationPopoverNegateAlignOffsetOnFlip = SafeFlags.createGetFFlag("FoundationPopoverNegateAlignOffsetOnFlip")(),
	FoundationFixBadgeAndIndicatorTextAlignment = SafeFlags.createGetFFlag(
		"FoundationFixBadgeAndIndicatorTextAlignment"
	)(),
	FoundationIconButtonNoListLayout = SafeFlags.createGetFFlag("FoundationIconButtonNoListLayout")(),
	FoundationPopoverFocusTrap = SafeFlags.createGetFFlag("FoundationPopoverFocusTrap")(),
	FoundationDateTimePickerTimeVariantEnabled = SafeFlags.createGetFFlag("FoundationDateTimePickerTimeVariantEnabled")(),
	FoundationInputInnerRadiusFix = SafeFlags.createGetFFlag("FoundationInputInnerRadiusFix")(),
	FoundationUseAlphaCompositingForStateLayer = SafeFlags.createGetFFlag("FoundationUseAlphaCompositingForStateLayer")(),
	FoundationDateTimePickerAnchorBugFixEnabled = SafeFlags.createGetFFlag(
		"FoundationDateTimePickerAnchorBugFixEnabled"
	)(),
	FoundationAnimateAccordion = SafeFlags.createGetFFlag("FoundationAnimateAccordion")(),
	FoundationToggleDefaultPlacement = SafeFlags.createGetFFlag("FoundationToggleDefaultPlacement")(),
	FoundationToggleEndPlacementJustifyContent = SafeFlags.createGetFFlag("FoundationToggleEndPlacementJustifyContent")(),
	FoundationCursorScaledSliceFix = SafeFlags.createGetFFlag("FoundationCursorScaledSliceFix")(),
	FoundationFixOptionSelectorGroupItemSize = SafeFlags.createGetFFlag("FoundationFixOptionSelectorGroupItemSize")(),
	FoundationPopoverFixArrowPositioning = SafeFlags.createGetFFlag("FoundationPopoverFixArrowPositioning")(),
	FoundationNumberInputDraggingDeltaFix = SafeFlags.createGetFFlag("FoundationNumberInputDraggingDeltaFix")(),
	FoundationOverlayMountReorder = SafeFlags.createGetFFlag("FoundationOverlayMountReorder")(),
	FoundationCheckboxIndeterminate = SafeFlags.createGetFFlag("FoundationCheckboxIndeterminate")(),
	FoundationOverlayDisplayOrder = SafeFlags.createGetFFlag("FoundationOverlayDisplayOrder")(),
}
