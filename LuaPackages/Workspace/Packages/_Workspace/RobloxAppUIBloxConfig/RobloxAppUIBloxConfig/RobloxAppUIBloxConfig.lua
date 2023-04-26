-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local RobloxAppUIBloxConfig = script.Parent
local Packages = RobloxAppUIBloxConfig.Parent

local SharedFlags = require(Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

return {
	loadableImageResponsiveThumbnails = UIBloxFlags.GetFFlagUIBloxLoadableImageResponsiveThumbnails(),
	useNewUICornerRoundedCorners = true,
	genericSliderFilterOldTouchInputs = true,
	allowSystemBarToAcceptString = true,
	emptyStateControllerSupport = true,
	useTileThumbnailV2 = true,
	enableSubtitleOnTile = true,
	useNewGenericTextLabelProps = UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps(),
	enableCustomMinPaddingForLinkButton = game:DefineFastFlag("UIBloxEnableCustomMinPaddingForLinkButton", false),
	enableRadioButtonGamepadSupport = UIBloxFlags.GetFFlagUIBloxEnableRadioButtonGamepadSupport(),
	useNewVerticalScrollView = false, -- TODO: https://jira.rbx.com/browse/UIBLOX-225
	enableActionBarLayoutFix = UIBloxFlags.GetFFlagUIBloxEnableActionBarLayoutFix(),
	enableNewIconSizes = game:DefineFastFlag("UIBloxUseNewIconSizes", false),
	enableGenericButtonHoverBackgroundFix = UIBloxFlags.GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix(),
	sliderUpdateOnDismiss = UIBloxFlags.GetFFlagUIBloxSliderUpdateOnDismiss(),
	fixDropdownMenuCellTextSize = UIBloxFlags.GetFFlagUIBloxFixDropdownMenuCellTextSize(),
	systemBarBottomAlignedItems = UIBloxFlags.GetFFlagUIBloxSystemBarBottomAlignedItems(),
	enableImageSetResolutionScaleFix = UIBloxFlags.GetFFlagUIBloxEnableImageSetResolutionScaleFix(),
	bindAllLaserPointerButtons = UIBloxFlags.GetFFlagUIBloxBindAllLaserPointerButtons(),
	vrApplyHeadScale = true,
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	detailsTemplateUseNewGradientHeader = game:DefineFastFlag("UIBloxDetailsTemplateUseNewGradient", false),
	enableAutoHidingPointerOverlay = true,
	removePreviewAnchor = UIBloxFlags.GetFFlagUIBloxRemovePreviewAnchor(),
	enableMediaGalleryUpdate = UIBloxFlags.GetFFlagUIBloxEnableMediaGalleryUpdate(),
	enableDropdownMenuUpdateSelectedValueFromPlaceholder = UIBloxFlags.GetFFlagUIBloxEnableDropdownMenuUpdateSelectedValueFromPlaceholder(),
	useCurvedPanel3D = true,
	pillGroupAutomaticSize = UIBloxFlags.GetFFlagUIBloxPillGroupAutomaticSize(),
	enableCollectibleItemRestriction = UIBloxFlags.GetFFlagUIBloxEnableCollectibleItemRestriction(),
	fixGameDetailsAutomaticSize = SharedFlags.GetFFlagFixGameDetailsAutomaticSize(),
	emptyStateTitleAndIconSize = SharedFlags.getFFlagSocialOnboardingExperimentEnabled(),
	headerBarInjectMargin = true,
	headerBarInjectContentPaddingRight = true,
	updateVerticalTile = true,
	useDetailsPageTemplateConfig = UIBloxFlags.GetFFlagUIBloxUseDetailsPageTemplateConfig(),
	dropDownMenuUseUniqueKeys = true,
	vrAlignPanel3DUnderInGamePanel = UIBloxFlags.GetFFlagUIBloxVRAlignPanel3DUnderInGamePanel(),
	enableRoDSDesignTokenSupport = UIBloxFlags.GetFFlagUIBloxEnableRoDSDesignTokenSupport(),
}
