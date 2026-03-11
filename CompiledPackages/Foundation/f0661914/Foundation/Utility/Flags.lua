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
local FoundationTextAreaTokenBasedWidth = SafeFlags.createGetFFlag("FoundationTextAreaTokenBasedWidth2")()
local FoundationTextInputAlignStrokeBehavior = SafeFlags.createGetFFlag("FoundationTextInputAlignStrokeBehavior")()

return {
	-- Foundation@1.47.0
	FoundationPopoverOnScreenKeyboard = SafeFlags.createGetFFlag("FoundationPopoverOnScreenKeyboard")(),
	FoundationUsePath2DSpinner = SafeFlags.createGetFFlag("FoundationUsePath2DSpinner")(),

	-- Foundation@1.54.0
	FoundationStatusIndicatorVariantExperiment = SafeFlags.createGetFFlag("FoundationStatusIndicatorVariantExperiment")(),

	-- Foundation@1.60.0
	FoundationToggleVisualUpdate = SafeFlags.createGetFFlag("FoundationToggleVisualUpdate")(),

	-- Foundation@1.62.0
	FoundationOverlayLuaAppInsetsFix = SafeFlags.createGetFFlag("FoundationOverlayLuaAppInsetsFix2")(),

	-- Foundation@1.63.2
	FoundationDialogBodyUpdate = SafeFlags.createGetFFlag("FoundationDialogBodyUpdate1")(),

	-- Foundation@1.64.0
	FoundationSheetSideSheetTopBarFix = SafeFlags.createGetFFlag("FoundationSheetSideSheetTopBarFix")(),

	-- Foundation@1.65.0
	FoundationOverlayDisplayOrder = SafeFlags.createGetFFlag("FoundationOverlayDisplayOrder")(),

	-- Foundation@1.66.0
	FoundationTabsDisableScrollSelection = SafeFlags.createGetFFlag("FoundationTabsDisableScrollSelection")(),

	-- Foundation@1.67.2
	FoundationDontCreateUIDDForNumberInput = SafeFlags.createGetFFlag("FoundationDontCreateUIDDForNumberInput")(),
	FoundationFixOptionSelectorThickness = SafeFlags.createGetFFlag("FoundationFixOptionSelectorThickness")(),

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
	FoundationInputFieldTokenBasedWidth = FoundationInputFieldTokenBasedWidth,
	FoundationPopoverConditionalRender = SafeFlags.createGetFFlag("FoundationPopoverConditionalRender")(),
	FoundationTruncateBadgeText = SafeFlags.createGetFFlag("FoundationTruncateBadgeText")(),

	-- Foundation@1.69.0
	FoundationProgressBindableValue = SafeFlags.createGetFFlag("FoundationProgressBindableValue")(),
	FoundationSideSheetNewWidthCalculation = SafeFlags.createGetFFlag("FoundationSideSheetNewWidthCalculation")(),
	FoundationTextInputTokenBasedWidth = FoundationInputFieldTokenBasedWidth and FoundationTextInputTokenBasedWidth,

	-- Foundation@1.69.1
	FoundationNumberInputTokenBasedWidth = SafeFlags.createGetFFlag("FoundationNumberInputTokenBasedWidth2")(),

	-- Foundation@1.70.0
	FoundationElevationKeepSiblingZIndex = SafeFlags.createGetFFlag("FoundationElevationKeepSiblingZIndex")(),
	FoundationIconButtonWidth = SafeFlags.createGetFFlag("FoundationIconButtonWidth")(),

	-- Foundation@1.71.0
	FoundationBottomSheetImproveSpring = SafeFlags.createGetFFlag("FoundationBottomSheetImproveSpring")(),
	FoundationButtonWidthAutoSize = SafeFlags.createGetFFlag("FoundationButtonWidthAutoSize")(),
	FoundationNumberInputFixControlSizes = SafeFlags.createGetFFlag("FoundationNumberInputFixControlSizes")(),
	FoundationSideSheetFixNewWidth = SafeFlags.createGetFFlag("FoundationSideSheetFixNewWidth")(),
	FoundationSupportPresentationContextInSelectionCursor = SafeFlags.createGetFFlag(
		"FoundationSupportPresentationContextInSelectionCursor"
	)(),

	-- Foundation@1.72.0
	FoundationColorPickerPartialHSV = SafeFlags.createGetFFlag("FoundationColorPickerPartialHSV")(),

	-- Foundation@1.72.1
	FoundationBaseMenuItemImageRadius = SafeFlags.createGetFFlag("FoundationBaseMenuItemImageRadius")(),
	FoundationDialogFixResponsiveSize = SafeFlags.createGetFFlag("FoundationDialogFixResponsiveSize")(),
	FoundationUseGetInsetArea = SafeFlags.createGetFFlag("FoundationUseGetInsetArea")(),

	-- Foundation@1.73.0
	FoundationTextAreaTokenBasedWidth = FoundationInputFieldTokenBasedWidth and FoundationTextAreaTokenBasedWidth,
	FoundationAllowMockDataModel = SafeFlags.createGetFFlag("FoundationAllowMockDataModel")(),
	FoundationBuildingBlocksRemoveDashUnion = SafeFlags.createGetFFlag("FoundationBuildingBlocksRemoveDashUnion")(),
	FoundationCleanupTextInputPolyfill = SafeFlags.createGetFFlag("FoundationCleanupTextInputPolyfill")(),
	FoundationDropdownControlIconFix = SafeFlags.createGetFFlag("FoundationDropdownControlIconFix")(),
	FoundationInternalTextInputCornerRadius = SafeFlags.createGetFFlag("FoundationInternalTextInputCornerRadius")(),
	FoundationOverlayKeyboardAwareness = SafeFlags.createGetFFlag("FoundationOverlayKeyboardAwareness")(),
	FoundationSheetActionsNotSelectable = SafeFlags.createGetFFlag("FoundationSheetActionsNotSelectable")(),
	FoundationSheetContentSelectable = SafeFlags.createGetFFlag("FoundationSheetContentSelectable")(),
	FoundationSheetPreventCloseOnResize = SafeFlags.createGetFFlag("FoundationSheetPreventCloseOnResize")(),
	FoundationSheetReducedMotion = SafeFlags.createGetFFlag("FoundationSheetReducedMotion")(),
	FoundationTextInputAlignStrokeBehavior = FoundationTextInputAlignStrokeBehavior,
	FoundationViewRemoveDashUnion = SafeFlags.createGetFFlag("FoundationViewRemoveDashUnion")(),
}
