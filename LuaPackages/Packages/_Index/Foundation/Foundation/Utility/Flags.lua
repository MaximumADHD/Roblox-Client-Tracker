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

local FoundationDisableStyleProviderDerives = SafeFlags.createGetFFlag("FoundationDisableStyleProviderDerives")()
local FoundationUseAttributeTokens = SafeFlags.createGetFFlag("FoundationUseAttributeTokens")()
local FoundationPopoverPluginDepthPool = SafeFlags.createGetFFlag("FoundationPopoverPluginDepthPool")()
local FoundationPopoverPluginPrewarmDepthPool = SafeFlags.createGetFFlag("FoundationPopoverPluginPrewarmDepthPool")()
local FoundationDropdownVariant = SafeFlags.createGetFFlag("FoundationDropdownVariant")()

return {
	-- Foundation@1.47.0
	FoundationUsePath2DSpinner = SafeFlags.createGetFFlag("FoundationUsePath2DSpinner")(),

	-- Foundation@1.54.0
	FoundationStatusIndicatorVariantExperiment = SafeFlags.createGetFFlag("FoundationStatusIndicatorVariantExperiment")(),

	-- Foundation@1.60.0
	FoundationToggleVisualUpdate = SafeFlags.createGetFFlag("FoundationToggleVisualUpdate")(),

	-- Foundation@1.62.0
	FoundationOverlayLuaAppInsetsFix = SafeFlags.createGetFFlag("FoundationOverlayLuaAppInsetsFix2")(),

	-- Foundation@1.68.0
	FoundationPopoverConditionalRender = SafeFlags.createGetFFlag("FoundationPopoverConditionalRender")(),

	-- Foundation@1.69.0
	FoundationSideSheetNewWidthCalculation = SafeFlags.createGetFFlag("FoundationSideSheetNewWidthCalculation")(),

	-- Foundation@1.72.1
	FoundationUseGetInsetArea = SafeFlags.createGetFFlag("FoundationUseGetInsetArea")(),

	-- Foundation@1.73.0
	FoundationAllowMockDataModel = SafeFlags.createGetFFlag("FoundationAllowMockDataModel")(),
	FoundationOverlayKeyboardAwareness = SafeFlags.createGetFFlag("FoundationOverlayKeyboardAwareness")(),
	FoundationSheetPreventCloseOnResize = SafeFlags.createGetFFlag("FoundationSheetPreventCloseOnResize")(),

	-- Foundation@1.74.0
	FoundationCenterSheetUseStableContainer = SafeFlags.createGetFFlag("FoundationCenterSheetUseStableContainer")(),
	FoundationTruncateBadgeText = SafeFlags.createGetFFlag("FoundationTruncateBadgeText2")(),

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
	FoundationPopoverPluginSupport = SafeFlags.createGetFFlag("FoundationPopoverPluginSupport")(),
	FoundationTranslatorLocalizationRecovery = SafeFlags.createGetFFlag("FoundationTranslatorLocalizationRecovery")(),
	FoundationUseStyleSheetRegistry = FoundationDisableStyleProviderDerives
		and SafeFlags.createGetFFlag("FoundationUseStyleSheetRegistry")(),

	-- Foundation@1.79.0
	FoundationOverlayKeyboardAwarenessHardened = SafeFlags.createGetFFlag("FoundationOverlayKeyboardAwarenessHardened")(),
	FoundationTranslatorUseScript = SafeFlags.createGetFFlag("FoundationTranslatorUseScript")(),
	FoundationUseMainGuiUtility = SafeFlags.createGetFFlag("FoundationUseMainGuiUtility2")(),

	-- Foundation@1.80.0
	FoundationFixUserLevelPlugins = SafeFlags.createGetFFlag("FoundationFixUserLevelPlugins")(),

	-- Foundation@1.82.0
	FoundationPopoverPluginDepthPool = FoundationPopoverPluginDepthPool,
	FoundationSheetFullBleed = SafeFlags.createGetFFlag("FoundationSheetFullBleed")(),
	FoundationTabsNavArrowsOnlyOnHover = SafeFlags.createGetFFlag("FoundationTabsNavArrowsOnlyOnHover")(),

	-- Foundation@1.83.0
	FoundationPopoverPluginSecurityGate = SafeFlags.createGetFFlag("FoundationPopoverPluginSecurityGate")(),
	FoundationSegmentedControlIconSupport = SafeFlags.createGetFFlag("FoundationSegmentedControlIconSupport")(),
	FoundationTokenOverrides = FoundationUseAttributeTokens and SafeFlags.createGetFFlag("FoundationTokenOverrides2")(),
	FoundationUseAttributeTokens = FoundationUseAttributeTokens,

	-- Foundation@1.84.0
	FoundationActionEmphasisStatusIndicator = SafeFlags.createGetFFlag("FoundationActionEmphasisStatusIndicator")(),
	FoundationPopoverPluginPrewarmDepthPool = FoundationPopoverPluginPrewarmDepthPool
		and FoundationPopoverPluginDepthPool,

	-- Foundation@1.85.0
	FoundationInputSelectionProps = SafeFlags.createGetFFlag("FoundationInputSelectionProps")(),
	FoundationMigrateDeprecatedApis = SafeFlags.createGetFFlag("FoundationMigrateDeprecatedApis")(),
	FoundationSystemBannerOptionalTitle = SafeFlags.createGetFFlag("FoundationSystemBannerOptionalTitle")(),

	-- Foundation@1.86.0
	FoundationFixNoCommonPropsOnComponentParents = SafeFlags.createGetFFlag(
		"FoundationFixNoCommonPropsOnComponentParents"
	)(),
	FoundationPopoverPluginVirtualAnchor = SafeFlags.createGetFFlag("FoundationPopoverPluginVirtualAnchor")(),
	FoundationTextInputHighlightFix = SafeFlags.createGetFFlag("FoundationTextInputHighlightFix")(),

	-- Foundation@1.87.0
	FoundationButtonFillBehaviorEqualSize = SafeFlags.createGetFFlag("FoundationButtonFillBehaviorEqualSize")(),
	FoundationButtonLabelTypography = SafeFlags.createGetFFlag("FoundationButtonLabelTypography")(),
	FoundationDropdownVariant = FoundationDropdownVariant,
	FoundationTextAreaDelayMobileFocus = SafeFlags.createGetFFlag("FoundationTextAreaDelayMobileFocus")(),
	FoundationTextInputRemoveBackgroundStyle = SafeFlags.createGetFFlag("FoundationTextInputRemoveBackgroundStyle")(),

	-- Foundation@1.88.0
	FoundationSegmentedControlSizePaddingUpdate = SafeFlags.createGetFFlag(
		"FoundationSegmentedControlSizePaddingUpdate"
	)(),

	-- Foundation@1.88.1
	FoundationBottomSheetCapToOverlayHeight = SafeFlags.createGetFFlag("FoundationBottomSheetCapToOverlayHeight")(),

	-- Foundation@1.89.0
	FoundationDropdownSizeGap = SafeFlags.createGetFFlag("FoundationDropdownSizeGap")(),
	FoundationFullBleedSheetContent = SafeFlags.createGetFFlag("FoundationFullBleedSheetContent")(),
	FoundationTextInputsBetaUpdate = SafeFlags.createGetFFlag("FoundationTextInputsBetaUpdate")(),

	-- Foundation@1.89.1
	FoundationFixStaleAnimatedHighlightRefs = SafeFlags.createGetFFlag("FoundationFixStaleAnimatedHighlightRefs")(),
	FoundationPopoverClipAwareVisibility = SafeFlags.createGetFFlag("FoundationPopoverClipAwareVisibility")(),
	FoundationTabsInlineSizeFull = SafeFlags.createGetFFlag("FoundationTabsInlineSizeFull")(),

	-- Unreleased flags
}
