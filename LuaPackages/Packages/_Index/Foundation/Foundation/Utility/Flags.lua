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

local FoundationDropdownVariant = SafeFlags.createGetFFlag("FoundationDropdownVariant")()
local FoundationBottomSheetCapToOverlayHeight = SafeFlags.createGetFFlag("FoundationBottomSheetCapToOverlayHeight")()
local FoundationBottomSheetFixHeightCap = SafeFlags.createGetFFlag("FoundationBottomSheetFixHeightCap")()
local FoundationTabsInlineSizeFull = SafeFlags.createGetFFlag("FoundationTabsInlineSizeFull")()
local FoundationFixTabsFitBorderWidth = SafeFlags.createGetFFlag("FoundationFixTabsFitBorderWidth")()

return {
	-- Foundation@1.47.0
	FoundationUsePath2DSpinner = SafeFlags.createGetFFlag("FoundationUsePath2DSpinner")(),

	-- Foundation@1.60.0
	FoundationToggleVisualUpdate = SafeFlags.createGetFFlag("FoundationToggleVisualUpdate")(),

	-- Foundation@1.73.0
	FoundationOverlayKeyboardAwareness = SafeFlags.createGetFFlag("FoundationOverlayKeyboardAwareness")(),
	FoundationSheetPreventCloseOnResize = SafeFlags.createGetFFlag("FoundationSheetPreventCloseOnResize")(),

	-- Foundation@1.74.0
	FoundationCenterSheetUseStableContainer = SafeFlags.createGetFFlag("FoundationCenterSheetUseStableContainer")(),

	-- Foundation@1.77.0
	FoundationBottomSheetImproveSpring = SafeFlags.createGetFFlag("FoundationBottomSheetImproveSpring2")(),
	FoundationGuiObjectInputSinkProperty = SafeFlags.createGetFFlag("FoundationGuiObjectInputSinkProperty")(),

	-- Foundation@1.78.0
	FoundationDisableTokenScaling = SafeFlags.createGetFFlag("FoundationDisableTokenScaling2")(),
	FoundationTranslatorLocalizationRecovery = SafeFlags.createGetFFlag("FoundationTranslatorLocalizationRecovery")(),

	-- Foundation@1.79.0
	FoundationOverlayKeyboardAwarenessHardened = SafeFlags.createGetFFlag("FoundationOverlayKeyboardAwarenessHardened")(),
	FoundationTranslatorUseScript = SafeFlags.createGetFFlag("FoundationTranslatorUseScript")(),
	FoundationUseMainGuiUtility = SafeFlags.createGetFFlag("FoundationUseMainGuiUtility2")(),

	-- Foundation@1.82.0
	FoundationSheetFullBleed = SafeFlags.createGetFFlag("FoundationSheetFullBleed")(),

	-- Foundation@1.84.0
	FoundationActionEmphasisStatusIndicator = SafeFlags.createGetFFlag("FoundationActionEmphasisStatusIndicator")(),

	-- Foundation@1.85.0
	FoundationInputSelectionProps = SafeFlags.createGetFFlag("FoundationInputSelectionProps")(),

	-- Foundation@1.86.0
	FoundationTokenOverrides = SafeFlags.createGetFFlag("FoundationTokenOverrides2")(),

	-- Foundation@1.87.0
	FoundationButtonFillBehaviorEqualSize = SafeFlags.createGetFFlag("FoundationButtonFillBehaviorEqualSize")(),
	FoundationButtonLabelTypography = SafeFlags.createGetFFlag("FoundationButtonLabelTypography")(),
	FoundationDropdownVariant = FoundationDropdownVariant,
	FoundationTextAreaDelayMobileFocus = SafeFlags.createGetFFlag("FoundationTextAreaDelayMobileFocus")(),

	-- Foundation@1.88.1
	FoundationBottomSheetCapToOverlayHeight = FoundationBottomSheetCapToOverlayHeight,

	-- Foundation@1.89.0
	FoundationDropdownSizeGap = SafeFlags.createGetFFlag("FoundationDropdownSizeGap")(),
	FoundationFullBleedSheetContent = SafeFlags.createGetFFlag("FoundationFullBleedSheetContent")(),

	-- Foundation@1.89.1
	FoundationPopoverClipAwareVisibility = SafeFlags.createGetFFlag("FoundationPopoverClipAwareVisibility")(),
	FoundationTabsInlineSizeFull = FoundationTabsInlineSizeFull,

	-- Foundation@1.90.0
	FoundationBaseMenuAutoYCanvasSizing = SafeFlags.createGetFFlag("FoundationBaseMenuAutoYCanvasSizing")(),
	FoundationBaseMenuBeta = SafeFlags.createGetFFlag("FoundationBaseMenuBeta")(),
	FoundationBottomSheetInnerScrollingSync = SafeFlags.createGetFFlag("FoundationBottomSheetInnerScrollingSync")(),
	FoundationDialogAnimation = SafeFlags.createGetFFlag("FoundationDialogAnimation2")(),
	FoundationDropdownSelectionProps = SafeFlags.createGetFFlag("FoundationDropdownSelectionProps")(),

	-- Foundation@1.91.0
	FoundationCoachmarkInteractionFixes = SafeFlags.createGetFFlag("FoundationCoachmarkInteractionFixes")(),

	-- Foundation@1.92.0
	FoundationPopoverPluginUriAnchor = SafeFlags.createGetFFlag("FoundationPopoverPluginUriAnchor")(),
	FoundationSystemBannerWrapActionsOnXSmall = SafeFlags.createGetFFlag("FoundationSystemBannerWrapActionsOnXSmall")(),

	-- Foundation@1.93.0
	FoundationBaseMenuContentSizing = SafeFlags.createGetFFlag("FoundationBaseMenuContentSizing")(),
	FoundationBottomSheetOnSnapPointChanged = SafeFlags.createGetFFlag("FoundationBottomSheetOnSnapPointChanged")(),
	FoundationBottomSheetScrollAtMaxTolerance = SafeFlags.createGetFFlag("FoundationBottomSheetScrollAtMaxTolerance")(),
	FoundationNumberInputBeta = SafeFlags.createGetFFlag("FoundationNumberInputBeta")(),

	-- Foundation@1.94.0
	FoundationSegmentedControlAutoXFix = SafeFlags.createGetFFlag("FoundationSegmentedControlAutoXFix")(),

	-- Foundation@1.95.0
	FoundationAvatarBindableUserId = SafeFlags.createGetFFlag("FoundationAvatarBindableUserId")(),
	FoundationBottomSheetFixHeightCap = FoundationBottomSheetCapToOverlayHeight and FoundationBottomSheetFixHeightCap,
	FoundationCornerRadiusPerCorner = SafeFlags.createGetFFlag("FoundationCornerRadiusPerCorner")(),
	FoundationFixTabsFitBorderWidth = FoundationTabsInlineSizeFull and FoundationFixTabsFitBorderWidth,
	FoundationHeaderBarDualPaneBreakpointsStaySynced = SafeFlags.createGetFFlag(
		"FoundationHeaderBarDualPaneBreakpointsStaySynced"
	)(),
	FoundationMediaRoundedCornerTags = SafeFlags.createGetFFlag("FoundationMediaRoundedCornerTags")(),
	FoundationPopoverPluginOverlayMeasurement = SafeFlags.createGetFFlag("FoundationPopoverPluginOverlayMeasurement2")(),

	-- Foundation@1.96.0
	FoundationBottomSheetGestureInteractionSink = SafeFlags.createGetFFlag(
		"FoundationBottomSheetGestureInteractionSink"
	)(),
	FoundationNumberInputOnTextChanged = SafeFlags.createGetFFlag("FoundationNumberInputOnTextChanged")(),

	-- Foundation@1.97.0
	FoundationAvatarBeta = SafeFlags.createGetFFlag("FoundationAvatarBeta3")(),
	FoundationBadgeBetaUpdate = SafeFlags.createGetFFlag("FoundationBadgeBetaUpdate2")(),
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

	-- Unreleased flags
}
