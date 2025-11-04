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
	FoundationUpdateBadgeDesign = SafeFlags.createGetFFlag("FoundationUpdateBadgeDesign")(),
	FoundationShowErrorAboutFoundationProvider = SafeFlags.createGetFFlag("FoundationShowErrorAboutFoundationProvider")(),
	FoundationUsePath2DSpinner = SafeFlags.createGetFFlag("FoundationUsePath2DSpinner")(),
	FoundationPseudoChildSelectors = SafeFlags.createGetFFlag("FoundationPseudoChildSelectors")(),
	FoundationPopoverOnScreenKeyboard = SafeFlags.createGetFFlag("FoundationPopoverOnScreenKeyboard")(),
	FoundationPopoverContentToggleOnAnchorClick = SafeFlags.createGetFFlag(
		"FoundationPopoverContentToggleOnAnchorClick"
	)(),
	FoundationNoArrowOnVirtualRef = SafeFlags.createGetFFlag("FoundationNoArrowOnVirtualRef")(),
	FoundationScrollingFrameBarSmaller = SafeFlags.createGetFFlag("FoundationScrollingFrameBarSmaller")(),
	FoundationScrollViewMoveClipOutside = SafeFlags.createGetFFlag("FoundationScrollViewMoveClipOutside")(),
	FoundationInternalTextInputAutoSize = SafeFlags.createGetFFlag("FoundationInternalTextInputAutoSize")(),
	FoundationOverlayNoClip = SafeFlags.createGetFFlag("FoundationOverlayNoClip")(),
	FoundationNumberInputSpinboxRespectSnap = SafeFlags.createGetFFlag("FoundationNumberInputSpinboxRespectSnap")(),
	FoundationDialogHeroImageOnlyFix = SafeFlags.createGetFFlag("FoundationDialogHeroImageOnlyFix")(),
	FoundationNumberInputDisabledStackedVisual = SafeFlags.createGetFFlag("FoundationNumberInputDisabledStackedVisual")(),
	FoundationDialogActionsUpdate = SafeFlags.createGetFFlag("FoundationDialogActionsUpdate")(),
	FoundationMenuWidthGrowth = SafeFlags.createGetFFlag("FoundationMenuWidthGrowth")(),
	FoundationDialogBodyUpdate = SafeFlags.createGetFFlag("FoundationDialogBodyUpdate")(),
	FoundationDialogHeroMediaGradientFix = SafeFlags.createGetFFlag("FoundationDialogHeroMediaGradientFix")(),
	FoundationRemoveCursorProviderTestOutput = SafeFlags.createGetFFlag("FoundationRemoveCursorProviderTestOutput")(),
	FoundationTooltipTextAutosize = SafeFlags.createGetFFlag("FoundationTooltipTextAutosize")(),
	FoundationNumberInputInvalidError = SafeFlags.createGetFFlag("FoundationNumberInputInvalidError")(),
	FoundationStatusIndicatorVariantExperiment = SafeFlags.createGetFFlag("FoundationStatusIndicatorVariantExperiment")(),
	FoundationBaseMenuScroll = SafeFlags.createGetFFlag("FoundationBaseMenuScroll")(),
	FoundationFixUseScaledValueWarning = SafeFlags.createGetFFlag("FoundationFixUseScaledValueWarning")(),
	FoundationNumberInputRefAndCallbacks = SafeFlags.createGetFFlag("FoundationNumberInputRefAndCallbacks")(),
	FoundationDropdownGroups = SafeFlags.createGetFFlag("FoundationDropdownGroups")(),
	FoundationDialogBackdropColorUpdate = SafeFlags.createGetFFlag("FoundationDialogBackdropColorUpdate")(),
	FoundationLazyOverlayLoading = SafeFlags.createGetFFlag("FoundationLazyOverlayLoading")(),
	FoundationIconButtonBiggerBuilderIcons = SafeFlags.createGetFFlag("FoundationIconButtonBiggerBuilderIcons")(),
	FoundationOverlayProviderFrameTiming = SafeFlags.createGetFFlag("FoundationOverlayProviderFrameTiming")(),
	FoundationDialogRootZIndex = SafeFlags.createGetFFlag("FoundationDialogRootZIndex2")(),
	FoundationDialogUpdateZIndex = SafeFlags.createGetFFlag("FoundationDialogUpdateZIndex")(),
	FoundationPopoverContentStateFix = SafeFlags.createGetFFlag("FoundationPopoverContentStateFix")(),
	FoundationOverlayLuaAppInsetsFix = SafeFlags.createGetFFlag("FoundationOverlayLuaAppInsetsFix")(),
	FoundationMenuItemStyles = SafeFlags.createGetFFlag("FoundationMenuItemStyles")(),
	FoundationInternalInputSelectedStylesAndSpacing = SafeFlags.createGetFFlag(
		"FoundationInternalInputSelectedStylesAndSpacing"
	)(),
	FoundationDialogUpdateSelection = SafeFlags.createGetFFlag("FoundationDialogUpdateSelection")(),
	FoundationUpdateKnobComponent = SafeFlags.createGetFFlag("FoundationUpdateKnobComponent")(),
	FoundationPopoverOverflow = SafeFlags.createGetFFlag("FoundationPopoverOverflow")(),
	FoundationPopoverNegateAlignOffsetOnFlip = SafeFlags.createGetFFlag("FoundationPopoverNegateAlignOffsetOnFlip")(),
	FoundationFixBadgeAndIndicatorTextAlignment = SafeFlags.createGetFFlag(
		"FoundationFixBadgeAndIndicatorTextAlignment"
	)(),
}
