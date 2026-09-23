--!nolint ImportUnused
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local SafeFlags = require(Packages.SafeFlags)
local FoundationSliderAsSeenOnTV = SafeFlags.createGetFFlag("FoundationSliderAsSeenOnTV")()
local FoundationSliderKnobSelection = SafeFlags.createGetFFlag("FoundationSliderKnobSelection")()
local FoundationSliderOffloadDraggingMath = SafeFlags.createGetFFlag("FoundationSliderOffloadDraggingMath2")()
local FoundationInternalInputBeta = SafeFlags.createGetFFlag("FoundationInternalInputBeta2")()
local FoundationToggleBetaUpdate = SafeFlags.createGetFFlag("FoundationToggleBetaUpdate")()
local FoundationCheckboxBeta = SafeFlags.createGetFFlag("FoundationCheckboxBeta")()
local FoundationInputGroup = SafeFlags.createGetFFlag("FoundationInputGroup")()
local FoundationStyleRulePseudoName = SafeFlags.createGetFFlag("FoundationStyleRulePseudoName")()
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
	FoundationNumberInputBeta = SafeFlags.createGetFFlag("FoundationNumberInputBeta")(),

	-- Foundation@1.95.0
	FoundationPopoverPluginOverlayMeasurement = SafeFlags.createGetFFlag("FoundationPopoverPluginOverlayMeasurement2")(),

	-- Foundation@1.97.0
	FoundationBaseMenuSubmenuMaxHeight = SafeFlags.createGetFFlag("FoundationBaseMenuSubmenuMaxHeight")(),
	FoundationViewMemoizationChanges = SafeFlags.createGetFFlag("FoundationViewMemoizationChanges")(),

	-- Foundation@1.98.0
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
	FoundationSegmentedControlBeta = SafeFlags.createGetFFlag("FoundationSegmentedControlBeta")(),
	FoundationTooltipPressedOutside = SafeFlags.createGetFFlag("FoundationTooltipPressedOutside")(),

	-- Foundation@1.100.0
	FoundationBadgeBetaUpdate = SafeFlags.createGetFFlag("FoundationBadgeBetaUpdate3")(),
	FoundationCoachmarkPressedOutside = SafeFlags.createGetFFlag("FoundationCoachmarkPressedOutside")(),
	FoundationListItemDecoupledInput = SafeFlags.createGetFFlag("FoundationListItemDecoupledInput")(),
	FoundationListStableContextValue = SafeFlags.createGetFFlag("FoundationListStableContextValue")(),
	FoundationPopoverPluginAnchorRefresh = SafeFlags.createGetFFlag("FoundationPopoverPluginAnchorRefresh")(),
	FoundationSkeletonCommonShimmerToken = SafeFlags.createGetFFlag("FoundationSkeletonCommonShimmerToken")(),

	-- Foundation@1.101.0
	FoundationCheckboxBeta = FoundationInternalInputBeta and FoundationCheckboxBeta,
	FoundationDateTimePickerBetaUpdate = SafeFlags.createGetFFlag("FoundationDateTimePickerBetaUpdate")(),
	FoundationDialogBetaUpdate = SafeFlags.createGetFFlag("FoundationDialogBetaUpdate")(),
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
	FoundationStyleRulePseudoName = FoundationStyleRulePseudoName,

	-- Foundation@1.107.0
	FoundationSliderOffloadDraggingMath = FoundationSliderOffloadDraggingMath,

	-- Foundation@1.109.0
	FoundationKnobRaisedShadow = FoundationStyleRulePseudoName
		and SafeFlags.createGetFFlag("FoundationKnobRaisedShadow")(),
	FoundationStatusIndicatorMask = SafeFlags.createGetFFlag("FoundationStatusIndicatorMask")(),

	-- Foundation@1.110.0
	FoundationAccordionBeta = SafeFlags.createGetFFlag("FoundationAccordionBeta")(),
	FoundationSliderBeta = FoundationSliderOffloadDraggingMath and SafeFlags.createGetFFlag("FoundationSliderBeta3")(),
	FoundationSystemEmphasisNonActions = SafeFlags.createGetFFlag("FoundationSystemEmphasisNonActions")(),

	-- Foundation@1.111.0
	FoundationFontFaceMigration = SafeFlags.createGetFFlag("FoundationFontFaceMigration")(),
	FoundationPopoverClampMinBound = SafeFlags.createGetFFlag("FoundationPopoverClampMinBound")(),

	-- Unreleased flags
}
