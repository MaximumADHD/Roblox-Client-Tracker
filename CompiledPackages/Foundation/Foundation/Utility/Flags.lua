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
	FoundationCheckCoreGuiAccessCursorProvider = SafeFlags.createGetFFlag("FoundationCheckCoreGuiAccessCursorProvider")(),
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
	FoundationInputLabelBoldTypography = SafeFlags.createGetFFlag("FoundationInputLabelBoldTypography")(),
	FoundationInternalTextInputAutoSize = SafeFlags.createGetFFlag("FoundationInternalTextInputAutoSize")(),
	FoundationSupportCloudAssetsImage = SafeFlags.createGetFFlag("FoundationSupportCloudAssetsImage2")(),
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
}
