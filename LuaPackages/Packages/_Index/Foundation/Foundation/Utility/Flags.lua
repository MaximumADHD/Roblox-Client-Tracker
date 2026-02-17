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

local FoundationInputFieldTokenBasedWidth = SafeFlags.createGetFFlag("FoundationInputFieldTokenBasedWidth")()
local FoundationTextInputTokenBasedWidth = SafeFlags.createGetFFlag("FoundationTextInputTokenBasedWidth")()
local FoundationTextAreaTokenBasedWidth = SafeFlags.createGetFFlag("FoundationTextAreaTokenBasedWidth")()
local FoundationFixPopoverShadowSizing = SafeFlags.createGetFFlag("FoundationFixPopoverShadowSizing")()
local FoundationUIStrokeInner = SafeFlags.createGetFFlag("FoundationUIStrokeInner2")()
local FoundationNumberInputFixScrubbableBG = SafeFlags.createGetFFlag("FoundationNumberInputFixScrubbableBG")()

return {
	-- Foundation@1.33.0
	FoundationDisableStylingPolyfill = SafeFlags.createGetFFlag("FoundationDisableStylingPolyfill")(),

	-- Foundation@1.47.0
	FoundationPopoverOnScreenKeyboard = SafeFlags.createGetFFlag("FoundationPopoverOnScreenKeyboard")(),
	FoundationUsePath2DSpinner = SafeFlags.createGetFFlag("FoundationUsePath2DSpinner")(),

	-- Foundation@1.50.0
	FoundationScrollViewMoveClipOutside = SafeFlags.createGetFFlag("FoundationScrollViewMoveClipOutside")(),

	-- Foundation@1.54.0
	FoundationStatusIndicatorVariantExperiment = SafeFlags.createGetFFlag("FoundationStatusIndicatorVariantExperiment")(),

	-- Foundation@1.58.0
	FoundationPopoverOverflow = SafeFlags.createGetFFlag("FoundationPopoverOverflow")(),

	-- Foundation@1.60.0
	FoundationToggleVisualUpdate = SafeFlags.createGetFFlag("FoundationToggleVisualUpdate")(),

	-- Foundation@1.62.0
	FoundationOverlayLuaAppInsetsFix = SafeFlags.createGetFFlag("FoundationOverlayLuaAppInsetsFix2")(),
	FoundationSheetBottomSheetAutoSize = SafeFlags.createGetFFlag("FoundationSheetBottomSheetAutoSize")(),

	-- Foundation@1.63.2
	FoundationDialogBodyUpdate = SafeFlags.createGetFFlag("FoundationDialogBodyUpdate1")(),
	FoundationFixOptionSelectorGroupItemSize = SafeFlags.createGetFFlag("FoundationFixOptionSelectorGroupItemSize")(),

	-- Foundation@1.64.0
	FoundationOverlayMountReorder = SafeFlags.createGetFFlag("FoundationOverlayMountReorder")(),
	FoundationPopoverFixArrowPositioning = SafeFlags.createGetFFlag("FoundationPopoverFixArrowPositioning")(),
	FoundationSheetFixLandscapeFlicker = SafeFlags.createGetFFlag("FoundationSheetFixLandscapeFlicker")(),
	FoundationSheetNoCenterSheetSmallScreens = SafeFlags.createGetFFlag("FoundationSheetNoCenterSheetSmallScreens2")(),
	FoundationSheetSideSheetTopBarFix = SafeFlags.createGetFFlag("FoundationSheetSideSheetTopBarFix")(),

	-- Foundation@1.65.0
	FoundationNumberInputDraggingDeltaFix = SafeFlags.createGetFFlag("FoundationNumberInputDraggingDeltaFix")(),
	FoundationOverlayDisplayOrder = SafeFlags.createGetFFlag("FoundationOverlayDisplayOrder")(),

	-- Foundation@1.66.0
	FoundationFixedHeightDateTimePicker = SafeFlags.createGetFFlag("FoundationFixedHeightDateTimePicker")(),
	FoundationKnobRemoveGroupTransparency = SafeFlags.createGetFFlag("FoundationKnobRemoveGroupTransparency")(),
	FoundationTabsDisableScrollSelection = SafeFlags.createGetFFlag("FoundationTabsDisableScrollSelection")(),

	-- Foundation@1.67.0
	FoundationButtonLoadingHideTextWithIcon = SafeFlags.createGetFFlag("FoundationButtonLoadingHideTextWithIcon")(),
	FoundationDateTimePickerDefaultInputText = SafeFlags.createGetFFlag("FoundationDateTimePickerDefaultInputText")(),
	FoundationDateTimePickerDualBugFix = SafeFlags.createGetFFlag("FoundationDateTimePickerDualBugFix")(),

	-- Foundation@1.67.1
	FoundationCheckboxIndeterminate = SafeFlags.createGetFFlag("FoundationCheckboxIndeterminate2")(),
	FoundationSliderClampValue = SafeFlags.createGetFFlag("FoundationSliderClampValue")(),
	FoundationSliderFixValueOnDrag = SafeFlags.createGetFFlag("FoundationSliderFixValueOnDrag")(),

	-- Foundation@1.67.2
	FoundationDialogContentSelectable = SafeFlags.createGetFFlag("FoundationDialogContentSelectable")(),
	FoundationDontCreateUIDDForNumberInput = SafeFlags.createGetFFlag("FoundationDontCreateUIDDForNumberInput")(),
	FoundationFixOptionSelectorThickness = SafeFlags.createGetFFlag("FoundationFixOptionSelectorThickness")(),
	FoundationImageFixAspectRatioMemo = SafeFlags.createGetFFlag("FoundationImageFixAspectRatioMemo")(),

	-- Foundation@1.67.3
	FoundationAddHeightPropToCenterSheet = SafeFlags.createGetFFlag("FoundationAddHeightPropToCenterSheet2")(),
	FoundationSheetActionsSinkInput = SafeFlags.createGetFFlag("FoundationSheetActionsSinkInput")(),
	FoundationSheetFixClosingSwipe = SafeFlags.createGetFFlag("FoundationSheetFixClosingSwipe")(),
	FoundationSheetHeaderSmallerPadding = SafeFlags.createGetFFlag("FoundationSheetHeaderSmallerPadding")(),

	-- Foundation@1.67.4
	FoundationFixAspectRatioBindingHandling = SafeFlags.createGetFFlag("FoundationFixAspectRatioBindingHandling")(),
	FoundationLoadingWrapInView = SafeFlags.createGetFFlag("FoundationLoadingWrapInView")(),

	-- Foundation@1.68.0
	FoundationAddUtilityVariantToChip = SafeFlags.createGetFFlag("FoundationAddUtilityVariantToChip")(),
	FoundationBaseMenuDelayVisible = SafeFlags.createGetFFlag("FoundationBaseMenuDelayVisible")(),
	FoundationIconButtonFillBehavior = SafeFlags.createGetFFlag("FoundationIconButtonFillBehavior")(),
	FoundationTruncateBadgeText = SafeFlags.createGetFFlag("FoundationTruncateBadgeText")(),

	-- Foundation@1.69.0
	FoundationProgressBindableValue = SafeFlags.createGetFFlag("FoundationProgressBindableValue")(),
	FoundationSideSheetNewWidthCalculation = SafeFlags.createGetFFlag("FoundationSideSheetNewWidthCalculation")(),

	-- Foundation@1.69.1
	FoundationNumberInputTokenBasedWidth = SafeFlags.createGetFFlag("FoundationNumberInputTokenBasedWidth2")(),

	-- Foundation@1.70.0
	FoundationElevationKeepSiblingZIndex = SafeFlags.createGetFFlag("FoundationElevationKeepSiblingZIndex")(),
	FoundationFixPopoverShadowSizing = FoundationFixPopoverShadowSizing,
	FoundationIconButtonWidth = SafeFlags.createGetFFlag("FoundationIconButtonWidth")(),
	FoundationInputFieldTokenBasedWidth = FoundationInputFieldTokenBasedWidth,
	FoundationNumberInputFixScrubbableBG = FoundationUIStrokeInner and FoundationNumberInputFixScrubbableBG,
	FoundationPopoverConditionalRender = SafeFlags.createGetFFlag("FoundationPopoverConditionalRender")()
		and FoundationFixPopoverShadowSizing,
	FoundationTextAreaTokenBasedWidth = FoundationInputFieldTokenBasedWidth and FoundationTextAreaTokenBasedWidth,
	FoundationTextInputTokenBasedWidth = FoundationInputFieldTokenBasedWidth and FoundationTextInputTokenBasedWidth,
	FoundationUIStrokeInner = FoundationUIStrokeInner,
}
