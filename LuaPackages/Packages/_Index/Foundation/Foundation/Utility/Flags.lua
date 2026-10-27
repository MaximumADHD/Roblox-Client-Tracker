--!nolint ImportUnused
local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent
local SafeFlags = require(Packages.SafeFlags)
local FoundationFixColorOnScrubbableNumberInput =
	SafeFlags.createGetFFlag("FoundationFixColorOnScrubbableNumberInput")()
local FoundationAlertLinkWrap = SafeFlags.createGetFFlag("FoundationAlertLinkWrap")()
local FoundationEducationalTooltipRefresh = SafeFlags.createGetFFlag("FoundationEducationalTooltipRefresh2")()
local FoundationEducationalTooltipMinMediaWidth =
	SafeFlags.createGetFFlag("FoundationEducationalTooltipMinMediaWidth3")()

return {
	-- Foundation@1.47.0
	FoundationUsePath2DSpinner = SafeFlags.createGetFFlag("FoundationUsePath2DSpinner")(),

	-- Foundation@1.77.0
	FoundationGuiObjectInputSinkProperty = SafeFlags.createGetFFlag("FoundationGuiObjectInputSinkProperty")(),

	-- Foundation@1.78.0
	FoundationDisableTokenScaling = SafeFlags.createGetFFlag("FoundationDisableTokenScaling2")(),

	-- Foundation@1.93.0
	FoundationBaseMenuContentSizing = SafeFlags.createGetFFlag("FoundationBaseMenuContentSizing")(),
	FoundationNumberInputBeta = SafeFlags.createGetFFlag("FoundationNumberInputBeta")(),

	-- Foundation@1.95.0
	FoundationPopoverPluginOverlayMeasurement = SafeFlags.createGetFFlag("FoundationPopoverPluginOverlayMeasurement2")(),

	-- Foundation@1.97.0
	FoundationBaseMenuSubmenuMaxHeight = SafeFlags.createGetFFlag("FoundationBaseMenuSubmenuMaxHeight")(),
	FoundationViewMemoizationChanges = SafeFlags.createGetFFlag("FoundationViewMemoizationChanges")(),

	-- Foundation@1.98.0
	FoundationWidgetManagerSnapshotFlush = SafeFlags.createGetFFlag("FoundationWidgetManagerSnapshotFlush")(),

	-- Foundation@1.99.0
	FoundationSegmentedControlBeta = SafeFlags.createGetFFlag("FoundationSegmentedControlBeta")(),
	FoundationTooltipPressedOutside = SafeFlags.createGetFFlag("FoundationTooltipPressedOutside")(),

	-- Foundation@1.100.0
	FoundationBadgeBetaUpdate = SafeFlags.createGetFFlag("FoundationBadgeBetaUpdate3")(),
	FoundationListItemDecoupledInput = SafeFlags.createGetFFlag("FoundationListItemDecoupledInput")(),
	FoundationListStableContextValue = SafeFlags.createGetFFlag("FoundationListStableContextValue")(),
	FoundationPopoverPluginAnchorRefresh = SafeFlags.createGetFFlag("FoundationPopoverPluginAnchorRefresh")(),

	-- Foundation@1.101.0
	FoundationListItemTypographySpacing = SafeFlags.createGetFFlag("FoundationListItemTypographySpacing")(),
	FoundationPopoverClickOutsideInGuiShadow = SafeFlags.createGetFFlag("FoundationPopoverClickOutsideInGuiShadow")(),
	FoundationPopoverContentAnchorFix = SafeFlags.createGetFFlag("FoundationPopoverContentAnchorFix")(),
	FoundationPopoverRecomputeContentSize = SafeFlags.createGetFFlag("FoundationPopoverRecomputeContentSize")(),

	-- Foundation@1.102.0
	FoundationAnimatedHighlightSettling = SafeFlags.createGetFFlag("FoundationAnimatedHighlightSettling")(),
	FoundationNumberInputScrubCallbackProps = SafeFlags.createGetFFlag("FoundationNumberInputScrubCallbackProps2")(),
	FoundationPopoverPluginFocusable = SafeFlags.createGetFFlag("FoundationPopoverPluginFocusable")(),
	FoundationTooltipBeta = SafeFlags.createGetFFlag("FoundationTooltipBeta3")(),

	-- Foundation@1.104.0
	FoundationProviderStableEmptyTable = SafeFlags.createGetFFlag("FoundationProviderStableEmptyTable")(),

	-- Foundation@1.109.0
	FoundationKnobRaisedShadow = SafeFlags.createGetFFlag("FoundationKnobRaisedShadow")(),
	FoundationStatusIndicatorMask = SafeFlags.createGetFFlag("FoundationStatusIndicatorMask")(),

	-- Foundation@1.110.0
	FoundationAccordionBeta = SafeFlags.createGetFFlag("FoundationAccordionBeta")(),
	FoundationSystemEmphasisNonActions = SafeFlags.createGetFFlag("FoundationSystemEmphasisNonActions")(),

	-- Foundation@1.111.0
	FoundationPopoverClampMinBound = SafeFlags.createGetFFlag("FoundationPopoverClampMinBound")(),

	-- Foundation@1.112.0
	FoundationFixColorOnScrubbableNumberInput = FoundationFixColorOnScrubbableNumberInput,
	FoundationPluginShadowSize = SafeFlags.createGetFFlag("FoundationPluginShadowSize")(),
	FoundationProgressBarBetaUpdate = SafeFlags.createGetFFlag("FoundationProgressBarBetaUpdate2")(),

	-- Foundation@1.113.0
	FoundationCenterSheetHeightFix = SafeFlags.createGetFFlag("FoundationCenterSheetHeightFix")(),
	FoundationNumberInputScrubbingUsesOffset = FoundationFixColorOnScrubbableNumberInput
		and SafeFlags.createGetFFlag("FoundationNumberInputScrubbingUsesOffset")(),
	FoundationSliderCapture = SafeFlags.createGetFFlag("FoundationSliderCapture")(),

	-- Foundation@1.114.0
	FoundationAlertLinkWrap = SafeFlags.createGetFFlag("FoundationAlertLinkWrap")(),
	FoundationAlertStackTrailingOnOverflow = FoundationAlertLinkWrap
		and SafeFlags.createGetFFlag("FoundationAlertStackTrailingOnOverflow")(),
	FoundationEducationalTooltipRefresh = FoundationEducationalTooltipRefresh,

	-- Foundation@1.114.2
	FoundationEducationalTooltipMinMediaWidth = FoundationEducationalTooltipMinMediaWidth,
	FoundationStudioFontFaceMigration = SafeFlags.createGetFFlag("FoundationStudioFontFaceMigration")(),

	-- Foundation@1.114.3
	FoundationDontParentToFoundationModule = SafeFlags.createGetFFlag("FoundationDontParentToFoundationModule")(),
	FoundationFontFaceMigration = SafeFlags.createGetFFlag("FoundationFontFaceMigration3")(),

	-- Foundation@1.115.0
	FoundationEducationalTooltipBodyOnlyContentLayout = FoundationEducationalTooltipRefresh
		and FoundationEducationalTooltipMinMediaWidth
		and SafeFlags.createGetFFlag("FoundationEducationalTooltipBodyOnlyContentLayout")(),
	FoundationSheetReversedContent = SafeFlags.createGetFFlag("FoundationSheetReversedContent")(),

	-- Foundation@1.116.0
	FoundationStatusIndicatorDesignUpdate = SafeFlags.createGetFFlag("FoundationStatusIndicatorDesignUpdate")(),
	FoundationUnifiedScrimScrolling = SafeFlags.createGetFFlag("FoundationUnifiedScrimScrolling2")(),

	-- Foundation@1.117.0
	FoundationFixChipAccessoryLayout = SafeFlags.createGetFFlag("FoundationFixChipAccessoryLayout")(),
	FoundationRemoveDeprecatedSemanticTokens = SafeFlags.createGetFFlag("FoundationRemoveDeprecatedSemanticTokens")(),

	-- Foundation@1.119.0
	FoundationBottomSheetOverlayShadow = SafeFlags.createGetFFlag("FoundationBottomSheetOverlayShadow")(),
	FoundationCenterSheetOverlayShadow = SafeFlags.createGetFFlag("FoundationCenterSheetOverlayShadow")(),
	FoundationDialogOverlayShadow = SafeFlags.createGetFFlag("FoundationDialogOverlayShadow")(),
	FoundationPopoverOverlayShadow = SafeFlags.createGetFFlag("FoundationPopoverOverlayShadow")(),

	-- Unreleased flags
}
