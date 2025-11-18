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
	FoundationNoArrowOnVirtualRef = SafeFlags.createGetFFlag("FoundationNoArrowOnVirtualRef")(),
	FoundationScrollingFrameBarSmaller = SafeFlags.createGetFFlag("FoundationScrollingFrameBarSmaller")(),
	FoundationScrollViewMoveClipOutside = SafeFlags.createGetFFlag("FoundationScrollViewMoveClipOutside")(),
	FoundationOverlayNoClip = SafeFlags.createGetFFlag("FoundationOverlayNoClip")(),
	FoundationNumberInputSpinboxRespectSnap = SafeFlags.createGetFFlag("FoundationNumberInputSpinboxRespectSnap")(),
	FoundationMenuWidthGrowth = SafeFlags.createGetFFlag("FoundationMenuWidthGrowth")(),
	FoundationDialogBodyUpdate = SafeFlags.createGetFFlag("FoundationDialogBodyUpdate")(),
	FoundationDialogHeroMediaGradientFix = SafeFlags.createGetFFlag("FoundationDialogHeroMediaGradientFix")(),
	FoundationTooltipTextAutosize = SafeFlags.createGetFFlag("FoundationTooltipTextAutosize")(),
	FoundationNumberInputInvalidError = SafeFlags.createGetFFlag("FoundationNumberInputInvalidError")(),
	FoundationStatusIndicatorVariantExperiment = SafeFlags.createGetFFlag("FoundationStatusIndicatorVariantExperiment")(),
	FoundationBaseMenuScroll = SafeFlags.createGetFFlag("FoundationBaseMenuScroll")(),
	FoundationFixUseScaledValueWarning = SafeFlags.createGetFFlag("FoundationFixUseScaledValueWarning")(),
	FoundationMigrateCryoToDash = SafeFlags.createGetFFlag("FoundationMigrateCryoToDash")(),
	FoundationNumberInputRefAndCallbacks = SafeFlags.createGetFFlag("FoundationNumberInputRefAndCallbacks")(),
	FoundationDropdownGroups = SafeFlags.createGetFFlag("FoundationDropdownGroups")(),
	FoundationDialogBackdropColorUpdate = SafeFlags.createGetFFlag("FoundationDialogBackdropColorUpdate")(),
	FoundationLazyOverlayLoading = SafeFlags.createGetFFlag("FoundationLazyOverlayLoading")(),
	FoundationIconButtonBiggerBuilderIcons = SafeFlags.createGetFFlag("FoundationIconButtonBiggerBuilderIcons")(),
	FoundationOverlayProviderFrameTiming = SafeFlags.createGetFFlag("FoundationOverlayProviderFrameTiming")(),
	FoundationDialogRootZIndex = SafeFlags.createGetFFlag("FoundationDialogRootZIndex2")(),
	FoundationDialogOversizedBackdrop = SafeFlags.createGetFFlag("FoundationDialogOversizedBackdrop")(),
	FoundationDialogUpdateZIndex = SafeFlags.createGetFFlag("FoundationDialogUpdateZIndex")(),
	FoundationPopoverContentStateFix = SafeFlags.createGetFFlag("FoundationPopoverContentStateFix")(),
	FoundationPopoverOversizedBackdrop = SafeFlags.createGetFFlag("FoundationPopoverOversizedBackdrop")(),
	FoundationOverlayLuaAppInsetsFix = SafeFlags.createGetFFlag("FoundationOverlayLuaAppInsetsFix2")(),
	FoundationMenuItemStyles = SafeFlags.createGetFFlag("FoundationMenuItemStyles")(),
	FoundationElevationSystem = SafeFlags.createGetFFlag("FoundationElevationSystem")(),
	FoundationInternalInputSelectedStylesAndSpacing = SafeFlags.createGetFFlag(
		"FoundationInternalInputSelectedStylesAndSpacing"
	)(),
	FoundationSheetNoCenterSheetSmallScreens = SafeFlags.createGetFFlag("FoundationSheetNoCenterSheetSmallScreens")(),
	FoundationSheetCenterSheetNoShrink = SafeFlags.createGetFFlag("FoundationSheetCenterSheetNoShrink")(),
	FoundationSheetBottomSheetAutoSize = SafeFlags.createGetFFlag("FoundationSheetBottomSheetAutoSize")(),
	FoundationPopoverRootZIndex = SafeFlags.createGetFFlag("FoundationPopoverRootZIndex")(),
	FoundationDialogUpdateSelection = SafeFlags.createGetFFlag("FoundationDialogUpdateSelection")(),
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
}
