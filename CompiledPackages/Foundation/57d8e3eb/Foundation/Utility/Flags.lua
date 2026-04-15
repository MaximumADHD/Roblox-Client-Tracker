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

local FoundationBindableStateLayer = SafeFlags.createGetFFlag("FoundationBindableStateLayer")()
local FoundationNumberInputTextFix = SafeFlags.createGetFFlag("FoundationNumberInputTextFix")()
local FoundationDisableStyleProviderDerives = SafeFlags.createGetFFlag("FoundationDisableStyleProviderDerives")()

return {
	-- Foundation@1.47.0
	FoundationUsePath2DSpinner = SafeFlags.createGetFFlag("FoundationUsePath2DSpinner")(),

	-- Foundation@1.54.0
	FoundationStatusIndicatorVariantExperiment = SafeFlags.createGetFFlag("FoundationStatusIndicatorVariantExperiment")(),

	-- Foundation@1.60.0
	FoundationToggleVisualUpdate = SafeFlags.createGetFFlag("FoundationToggleVisualUpdate")(),

	-- Foundation@1.62.0
	FoundationOverlayLuaAppInsetsFix = SafeFlags.createGetFFlag("FoundationOverlayLuaAppInsetsFix2")(),

	-- Foundation@1.63.2
	FoundationDialogBodyUpdate = SafeFlags.createGetFFlag("FoundationDialogBodyUpdate1")(),

	-- Foundation@1.65.0
	FoundationOverlayDisplayOrder = SafeFlags.createGetFFlag("FoundationOverlayDisplayOrder")(),

	-- Foundation@1.66.0
	FoundationTabsDisableScrollSelection = SafeFlags.createGetFFlag("FoundationTabsDisableScrollSelection")(),

	-- Foundation@1.68.0
	FoundationAddUtilityVariantToChip = SafeFlags.createGetFFlag("FoundationAddUtilityVariantToChip")(),
	FoundationBaseMenuDelayVisible = SafeFlags.createGetFFlag("FoundationBaseMenuDelayVisible")(),
	FoundationPopoverConditionalRender = SafeFlags.createGetFFlag("FoundationPopoverConditionalRender")(),

	-- Foundation@1.69.0
	FoundationSideSheetNewWidthCalculation = SafeFlags.createGetFFlag("FoundationSideSheetNewWidthCalculation")(),

	-- Foundation@1.71.0
	FoundationNumberInputFixControlSizes = SafeFlags.createGetFFlag("FoundationNumberInputFixControlSizes")(),
	FoundationSideSheetFixNewWidth = SafeFlags.createGetFFlag("FoundationSideSheetFixNewWidth")(),

	-- Foundation@1.72.0
	FoundationColorPickerPartialHSV = SafeFlags.createGetFFlag("FoundationColorPickerPartialHSV")(),

	-- Foundation@1.72.1
	FoundationBaseMenuItemImageRadius = SafeFlags.createGetFFlag("FoundationBaseMenuItemImageRadius")(),
	FoundationUseGetInsetArea = SafeFlags.createGetFFlag("FoundationUseGetInsetArea")(),

	-- Foundation@1.73.0
	FoundationAllowMockDataModel = SafeFlags.createGetFFlag("FoundationAllowMockDataModel")(),
	FoundationBuildingBlocksRemoveDashUnion = SafeFlags.createGetFFlag("FoundationBuildingBlocksRemoveDashUnion")(),
	FoundationDropdownControlIconFix = SafeFlags.createGetFFlag("FoundationDropdownControlIconFix")(),
	FoundationOverlayKeyboardAwareness = SafeFlags.createGetFFlag("FoundationOverlayKeyboardAwareness")(),
	FoundationSheetActionsNotSelectable = SafeFlags.createGetFFlag("FoundationSheetActionsNotSelectable")(),
	FoundationSheetContentSelectable = SafeFlags.createGetFFlag("FoundationSheetContentSelectable")(),
	FoundationSheetPreventCloseOnResize = SafeFlags.createGetFFlag("FoundationSheetPreventCloseOnResize")(),
	FoundationViewRemoveDashUnion = SafeFlags.createGetFFlag("FoundationViewRemoveDashUnion")(),

	-- Foundation@1.74.0
	FFlagFoundationDateTimePickerDSTFix = SafeFlags.createGetFFlag("FFlagFoundationDateTimePickerDSTFix")(),
	FoundationBaseMenuSubmenuSupport = SafeFlags.createGetFFlag("FoundationBaseMenuSubmenuSupport")(),
	FoundationCenterSheetUseStableContainer = SafeFlags.createGetFFlag("FoundationCenterSheetUseStableContainer")(),
	FoundationColorPickerDesignUpdate = SafeFlags.createGetFFlag("FoundationColorPickerDesignUpdate")(),
	FoundationElevationKeepSiblingZIndex = SafeFlags.createGetFFlag("FoundationElevationKeepSiblingZIndex2")(),
	FoundationImageSafeLookup = SafeFlags.createGetFFlag("FoundationImageSafeLookup")(),
	FoundationTruncateBadgeText = SafeFlags.createGetFFlag("FoundationTruncateBadgeText2")(),

	-- Foundation@1.75.0
	FoundationBindableStateLayer = FoundationBindableStateLayer,
	FoundationDateTimePickerScreenSize = SafeFlags.createGetFFlag("FoundationDateTimePickerScreenSize")(),
	FoundationImageOnLoadedCallback = SafeFlags.createGetFFlag("FoundationImageOnLoadedCallback")(),

	-- Foundation@1.76.0
	FoundationDateTimePickerDefaultDateFix = SafeFlags.createGetFFlag("FoundationDateTimePickerDefaultDateFix")(),

	-- Foundation@1.77.0
	FoundationBottomSheetImproveSpring = SafeFlags.createGetFFlag("FoundationBottomSheetImproveSpring2")(),
	FoundationDialogTitleEmphasisFix = SafeFlags.createGetFFlag("FoundationDialogTitleEmphasisFix")(),
	FoundationGuiObjectInputSinkProperty = SafeFlags.createGetFFlag("FoundationGuiObjectInputSinkProperty")(),
	FoundationSystemBannerUseSharedAlertActions = SafeFlags.createGetFFlag(
		"FoundationSystemBannerUseSharedAlertActions"
	)(),

	-- Foundation@1.78.0
	FoundationDialogAnimation = SafeFlags.createGetFFlag("FoundationDialogAnimation")(),
	FoundationDisableStyleProviderDerives = FoundationDisableStyleProviderDerives,
	FoundationDisableTokenScaling = SafeFlags.createGetFFlag("FoundationDisableTokenScaling2")(),
	FoundationNumberInputTextFix = FoundationNumberInputTextFix,
	FoundationPopoverPluginSupport = SafeFlags.createGetFFlag("FoundationPopoverPluginSupport")(),
	FoundationTranslatorLocalizationRecovery = SafeFlags.createGetFFlag("FoundationTranslatorLocalizationRecovery")(),
	FoundationUseStyleSheetRegistry = FoundationDisableStyleProviderDerives
		and SafeFlags.createGetFFlag("FoundationUseStyleSheetRegistry")(),

	-- Foundation@1.79.0
	FoundationDialogContentScrollbarFix = SafeFlags.createGetFFlag("FoundationDialogContentScrollbarFix")(),
	FoundationDialogContentScrollbarLayout = SafeFlags.createGetFFlag("FoundationDialogContentScrollbarLayout")(),
	FoundationOverlayKeyboardAwarenessHardened = SafeFlags.createGetFFlag("FoundationOverlayKeyboardAwarenessHardened")(),
	FoundationTranslatorUseScript = SafeFlags.createGetFFlag("FoundationTranslatorUseScript")(),
	FoundationUseMainGuiUtility = SafeFlags.createGetFFlag("FoundationUseMainGuiUtility2")(),

	-- Foundation@1.80.0
	FoundationCleanupTextInputPolyfill = SafeFlags.createGetFFlag("FoundationCleanupTextInputPolyfill3")(),
	FoundationFixUserLevelPlugins = SafeFlags.createGetFFlag("FoundationFixUserLevelPlugins")(),
	FoundationImageFixBindingAspectRatio = SafeFlags.createGetFFlag("FoundationImageFixBindingAspectRatio")(),
	FoundationTextInputFocusBehavior = SafeFlags.createGetFFlag("FoundationTextInputFocusBehavior")(),

	-- Foundation@1.80.1
	FoundationFixNestedSubMenuOnClick = SafeFlags.createGetFFlag("FoundationFixNestedSubMenuOnClick")(),

	-- Unreleased flags
}
