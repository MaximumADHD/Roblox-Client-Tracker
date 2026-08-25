--!nolint ImportUnused
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local SafeFlags = require(Packages.SafeFlags)
local FoundationBottomSheetFixHeightCap = SafeFlags.createGetFFlag("FoundationBottomSheetFixHeightCap")()
local FoundationFixTabsFitBorderWidth = SafeFlags.createGetFFlag("FoundationFixTabsFitBorderWidth2")()
local FoundationInternalInputBeta = SafeFlags.createGetFFlag("FoundationInternalInputBeta2")()
local FoundationToggleBetaUpdate = SafeFlags.createGetFFlag("FoundationToggleBetaUpdate")()
local FoundationCheckboxBeta = SafeFlags.createGetFFlag("FoundationCheckboxBeta")()
local FoundationInputGroup = SafeFlags.createGetFFlag("FoundationInputGroup")()
local FoundationStyleSheetRefCounting = SafeFlags.createGetFFlag("FoundationStyleSheetRefCounting")()
local FoundationThemeName = SafeFlags.createGetFFlag("FoundationThemeName")()
local FoundationRadioBeta = SafeFlags.createGetFFlag("FoundationRadioBeta")()

return {
	-- Foundation@1.47.0
	FoundationUsePath2DSpinner = SafeFlags.createGetFFlag("FoundationUsePath2DSpinner")(),

	-- Foundation@1.77.0
	FoundationGuiObjectInputSinkProperty = SafeFlags.createGetFFlag("FoundationGuiObjectInputSinkProperty")(),

	-- Foundation@1.78.0
	FoundationDisableTokenScaling = SafeFlags.createGetFFlag("FoundationDisableTokenScaling2")(),

	-- Foundation@1.84.0
	FoundationActionEmphasisStatusIndicator = SafeFlags.createGetFFlag("FoundationActionEmphasisStatusIndicator")(),

	-- Foundation@1.86.0
	FoundationTokenOverrides = SafeFlags.createGetFFlag("FoundationTokenOverrides2")(),

	-- Foundation@1.87.0
	FoundationButtonLabelTypography = SafeFlags.createGetFFlag("FoundationButtonLabelTypography")(),

	-- Foundation@1.89.0
	FoundationDropdownSizeGap = SafeFlags.createGetFFlag("FoundationDropdownSizeGap")(),

	-- Foundation@1.90.0
	FoundationDropdownSelectionProps = SafeFlags.createGetFFlag("FoundationDropdownSelectionProps")(),

	-- Foundation@1.93.0
	FoundationBaseMenuContentSizing = SafeFlags.createGetFFlag("FoundationBaseMenuContentSizing")(),
	FoundationBottomSheetOnSnapPointChanged = SafeFlags.createGetFFlag("FoundationBottomSheetOnSnapPointChanged")(),
	FoundationBottomSheetScrollAtMaxTolerance = SafeFlags.createGetFFlag("FoundationBottomSheetScrollAtMaxTolerance")(),
	FoundationNumberInputBeta = SafeFlags.createGetFFlag("FoundationNumberInputBeta")(),

	-- Foundation@1.95.0
	FoundationAvatarBindableUserId = SafeFlags.createGetFFlag("FoundationAvatarBindableUserId")(),
	FoundationBottomSheetFixHeightCap = FoundationBottomSheetFixHeightCap,
	FoundationPopoverPluginOverlayMeasurement = SafeFlags.createGetFFlag("FoundationPopoverPluginOverlayMeasurement2")(),

	-- Foundation@1.96.0
	FoundationBottomSheetGestureInteractionSink = SafeFlags.createGetFFlag(
		"FoundationBottomSheetGestureInteractionSink"
	)(),
	FoundationNumberInputOnTextChanged = SafeFlags.createGetFFlag("FoundationNumberInputOnTextChanged")(),

	-- Foundation@1.97.0
	FoundationAvatarBeta = SafeFlags.createGetFFlag("FoundationAvatarBeta3")(),
	FoundationBaseMenuSubmenuMaxHeight = SafeFlags.createGetFFlag("FoundationBaseMenuSubmenuMaxHeight")(),
	FoundationImageContentSupport = SafeFlags.createGetFFlag("FoundationImageContentSupport")(),
	FoundationInteractableSecondaryActivated = SafeFlags.createGetFFlag("FoundationInteractableSecondaryActivated")(),
	FoundationSliderOffloadDraggingMath = SafeFlags.createGetFFlag("FoundationSliderOffloadDraggingMath")(),
	FoundationViewMemoizationChanges = SafeFlags.createGetFFlag("FoundationViewMemoizationChanges")(),

	-- Foundation@1.98.0
	FoundationAvatarIncludeProfileFrame = SafeFlags.createGetFFlag("FoundationAvatarIncludeProfileFrame")(),
	FoundationOptionSelectorGroupFixes = SafeFlags.createGetFFlag("FoundationOptionSelectorGroupFixes")(),
	FoundationOverlayResilientMainGui = SafeFlags.createGetFFlag("FoundationOverlayResilientMainGui")(),
	FoundationRemoveSecondUIDDFromScrubbableTextboxes = SafeFlags.createGetFFlag(
		"FoundationRemoveSecondUIDDFromScrubbableTextboxes"
	)(),
	FoundationSliderAsSeenOnTV = SafeFlags.createGetFFlag("FoundationSliderAsSeenOnTV")(),
	FoundationStatusIndicatorVariantExperiment = SafeFlags.createGetFFlag(
		"FoundationStatusIndicatorVariantExperiment2"
	)(),
	FoundationWidgetManagerSnapshotFlush = SafeFlags.createGetFFlag("FoundationWidgetManagerSnapshotFlush")(),

	-- Foundation@1.99.0
	FoundationFixTabsBorderPosition = SafeFlags.createGetFFlag("FoundationFixTabsBorderPosition")(),
	FoundationSegmentedControlBeta = SafeFlags.createGetFFlag("FoundationSegmentedControlBeta")(),
	FoundationTooltipPressedOutside = SafeFlags.createGetFFlag("FoundationTooltipPressedOutside")(),

	-- Foundation@1.100.0
	FoundationBadgeBetaUpdate = SafeFlags.createGetFFlag("FoundationBadgeBetaUpdate3")(),
	FoundationCoachmarkPressedOutside = SafeFlags.createGetFFlag("FoundationCoachmarkPressedOutside")(),
	FoundationListItemDecoupledInput = SafeFlags.createGetFFlag("FoundationListItemDecoupledInput")(),
	FoundationListStableContextValue = SafeFlags.createGetFFlag("FoundationListStableContextValue")(),
	FoundationNumberInputScrubCallbackProps = SafeFlags.createGetFFlag("FoundationNumberInputScrubCallbackProps")(),
	FoundationPopoverPluginAnchorRefresh = SafeFlags.createGetFFlag("FoundationPopoverPluginAnchorRefresh")(),
	FoundationSkeletonCommonShimmerToken = SafeFlags.createGetFFlag("FoundationSkeletonCommonShimmerToken")(),
	FoundationStyleSheetRefCounting = FoundationStyleSheetRefCounting,
	FoundationThemeName = FoundationStyleSheetRefCounting and FoundationThemeName,

	-- Foundation@1.101.0
	FoundationCheckboxBeta = FoundationInternalInputBeta and FoundationCheckboxBeta,
	FoundationInternalInputBeta = FoundationInternalInputBeta,
	FoundationRadioBeta = FoundationInternalInputBeta and FoundationRadioBeta,
	FoundationToggleBetaUpdate = FoundationInternalInputBeta and FoundationToggleBetaUpdate,
	FoundationDateTimePickerBetaUpdate = SafeFlags.createGetFFlag("FoundationDateTimePickerBetaUpdate")(),
	FoundationDialogBetaUpdate = SafeFlags.createGetFFlag("FoundationDialogBetaUpdate")(),
	FoundationFixTabsFitBorderWidth = FoundationFixTabsFitBorderWidth,
	FoundationIncludeSpaceRequiredLabel = SafeFlags.createGetFFlag("FoundationIncludeSpaceRequiredLabel")(),
	FoundationInputGroup = FoundationInputGroup,
	FoundationListItemTypographySpacing = SafeFlags.createGetFFlag("FoundationListItemTypographySpacing")(),
	FoundationOptionSelectorGroupBeta = SafeFlags.createGetFFlag("FoundationOptionSelectorGroupBeta")(),
	FoundationPopoverClickOutsideInGuiShadow = SafeFlags.createGetFFlag("FoundationPopoverClickOutsideInGuiShadow")(),
	FoundationPopoverContentAnchorFix = SafeFlags.createGetFFlag("FoundationPopoverContentAnchorFix")(),
	FoundationPopoverRecomputeContentSize = SafeFlags.createGetFFlag("FoundationPopoverRecomputeContentSize")(),
	FoundationProgressBarBetaUpdate = SafeFlags.createGetFFlag("FoundationProgressBarBetaUpdate")(),
	FoundationProgressCircleRoundCaps = SafeFlags.createGetFFlag("FoundationProgressCircleRoundCaps")(),
	FoundationStableContextValues = SafeFlags.createGetFFlag("FoundationStableContextValues")(),
	FoundationTooltipBeta = SafeFlags.createGetFFlag("FoundationTooltipBeta")(),
	FoundationUnifiedScrimScrolling = SafeFlags.createGetFFlag("FoundationUnifiedScrimScrolling")(),

	-- Unreleased flags
}
