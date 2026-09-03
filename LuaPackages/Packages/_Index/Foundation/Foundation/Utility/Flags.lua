--!nolint ImportUnused
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local SafeFlags = require(Packages.SafeFlags)
local FoundationBottomSheetFixHeightCap = SafeFlags.createGetFFlag("FoundationBottomSheetFixHeightCap")()
local FoundationFixTabsFitBorderWidth = SafeFlags.createGetFFlag("FoundationFixTabsFitBorderWidth2")()
local FoundationSliderAsSeenOnTV = SafeFlags.createGetFFlag("FoundationSliderAsSeenOnTV")()
local FoundationSliderKnobSelection = SafeFlags.createGetFFlag("FoundationSliderKnobSelection")()
local FoundationInternalInputBeta = SafeFlags.createGetFFlag("FoundationInternalInputBeta2")()
local FoundationToggleBetaUpdate = SafeFlags.createGetFFlag("FoundationToggleBetaUpdate")()
local FoundationCheckboxBeta = SafeFlags.createGetFFlag("FoundationCheckboxBeta")()
local FoundationInputGroup = SafeFlags.createGetFFlag("FoundationInputGroup")()
local FoundationStyleSheetRefCounting = SafeFlags.createGetFFlag("FoundationStyleSheetRefCounting")()
local FoundationThemeName = SafeFlags.createGetFFlag("FoundationThemeName")()
local FoundationThemedTypography = SafeFlags.createGetFFlag("FoundationThemedTypography")()
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
	FoundationViewMemoizationChanges = SafeFlags.createGetFFlag("FoundationViewMemoizationChanges")(),

	-- Foundation@1.98.0
	FoundationAvatarIncludeProfileFrame = SafeFlags.createGetFFlag("FoundationAvatarIncludeProfileFrame")(),
	FoundationOptionSelectorGroupFixes = SafeFlags.createGetFFlag("FoundationOptionSelectorGroupFixes")(),
	FoundationOverlayResilientMainGui = SafeFlags.createGetFFlag("FoundationOverlayResilientMainGui")(),
	FoundationRemoveSecondUIDDFromScrubbableTextboxes = SafeFlags.createGetFFlag(
		"FoundationRemoveSecondUIDDFromScrubbableTextboxes"
	)(),
	FoundationSliderAsSeenOnTV = FoundationSliderAsSeenOnTV,
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
	FoundationPopoverPluginAnchorRefresh = SafeFlags.createGetFFlag("FoundationPopoverPluginAnchorRefresh")(),
	FoundationSkeletonCommonShimmerToken = SafeFlags.createGetFFlag("FoundationSkeletonCommonShimmerToken")(),
	FoundationStyleSheetRefCounting = FoundationStyleSheetRefCounting,
	FoundationThemeName = FoundationStyleSheetRefCounting and FoundationThemeName,

	-- Foundation@1.101.0
	FoundationCheckboxBeta = FoundationInternalInputBeta and FoundationCheckboxBeta,
	FoundationDateTimePickerBetaUpdate = SafeFlags.createGetFFlag("FoundationDateTimePickerBetaUpdate")(),
	FoundationDialogBetaUpdate = SafeFlags.createGetFFlag("FoundationDialogBetaUpdate")(),
	FoundationFixTabsFitBorderWidth = FoundationFixTabsFitBorderWidth,
	FoundationIncludeSpaceRequiredLabel = SafeFlags.createGetFFlag("FoundationIncludeSpaceRequiredLabel")(),
	FoundationInputGroup = FoundationInputGroup,
	FoundationInternalInputBeta = FoundationInternalInputBeta,
	FoundationListItemTypographySpacing = SafeFlags.createGetFFlag("FoundationListItemTypographySpacing")(),
	FoundationOptionSelectorGroupBeta = SafeFlags.createGetFFlag("FoundationOptionSelectorGroupBeta")(),
	FoundationPopoverClickOutsideInGuiShadow = SafeFlags.createGetFFlag("FoundationPopoverClickOutsideInGuiShadow")(),
	FoundationPopoverContentAnchorFix = SafeFlags.createGetFFlag("FoundationPopoverContentAnchorFix")(),
	FoundationPopoverRecomputeContentSize = SafeFlags.createGetFFlag("FoundationPopoverRecomputeContentSize")(),
	FoundationProgressBarBetaUpdate = SafeFlags.createGetFFlag("FoundationProgressBarBetaUpdate")(),
	FoundationProgressCircleRoundCaps = SafeFlags.createGetFFlag("FoundationProgressCircleRoundCaps")(),
	FoundationRadioBeta = FoundationInternalInputBeta and FoundationRadioBeta,
	FoundationStableContextValues = SafeFlags.createGetFFlag("FoundationStableContextValues")(),
	FoundationToggleBetaUpdate = FoundationInternalInputBeta and FoundationToggleBetaUpdate,
	FoundationUnifiedScrimScrolling = SafeFlags.createGetFFlag("FoundationUnifiedScrimScrolling")(),

	-- Foundation@1.102.0
	FoundationAnimatedHighlightSettling = SafeFlags.createGetFFlag("FoundationAnimatedHighlightSettling")(),
	FoundationEducationalTooltipRefresh = SafeFlags.createGetFFlag("FoundationEducationalTooltipRefresh")(),
	FoundationNumberInputScrubCallbackProps = SafeFlags.createGetFFlag("FoundationNumberInputScrubCallbackProps2")(),
	FoundationPopoverPluginFocusable = SafeFlags.createGetFFlag("FoundationPopoverPluginFocusable")(),
	FoundationSliderKnobSelection = FoundationSliderAsSeenOnTV and FoundationSliderKnobSelection,
	FoundationTooltipBeta = SafeFlags.createGetFFlag("FoundationTooltipBeta3")(),

	-- Foundation@1.104.0
	FoundationProviderStableEmptyTable = SafeFlags.createGetFFlag("FoundationProviderStableEmptyTable")(),
	FoundationSliderBeta = SafeFlags.createGetFFlag("FoundationSliderBeta")(),
	FoundationStyleRulePseudoName = SafeFlags.createGetFFlag("FoundationStyleRulePseudoName")(),
	FoundationThemedTypography = FoundationStyleSheetRefCounting and FoundationThemeName and FoundationThemedTypography,

	-- Foundation@1.107.0
	FoundationSliderOffloadDraggingMath = SafeFlags.createGetFFlag("FoundationSliderOffloadDraggingMath2")(),

	-- Unreleased flags
}
