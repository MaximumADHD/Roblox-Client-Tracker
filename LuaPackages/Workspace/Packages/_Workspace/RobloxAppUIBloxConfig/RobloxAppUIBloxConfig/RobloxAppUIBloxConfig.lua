-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local RobloxAppUIBloxConfig = script.Parent
local Packages = RobloxAppUIBloxConfig.Parent

local ArgCheck = require(Packages.ArgCheck)
local SharedFlags = require(Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

return {
	loadableImageResponsiveThumbnails = UIBloxFlags.GetFFlagUIBloxLoadableImageResponsiveThumbnails(),
	useNewUICornerRoundedCorners = true,
	genericSliderFilterOldTouchInputs = true,
	allowSystemBarToAcceptString = true,
	emptyStateControllerSupport = true,
	useTileThumbnailV2 = true,
	useAnimatedXboxCursors = true,
	useUpdatedCheckbox = true,
	enableSubtitleOnTile = true,
	enableGamepadKeyCodeSupportForKeyLabel = true,
	useNewGenericTextLabelProps = UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps(),
	enableCustomMinPaddingForLinkButton = game:DefineFastFlag("UIBloxEnableCustomMinPaddingForLinkButton", false),
	enableRadioButtonGamepadSupport = UIBloxFlags.GetFFlagUIBloxEnableRadioButtonGamepadSupport(),
	useNewVerticalScrollView = false, -- TODO: https://jira.rbx.com/browse/UIBLOX-225
	enableActionBarLayoutFix = UIBloxFlags.GetFFlagUIBloxEnableActionBarLayoutFix(),
	enableNewIconSizes = game:DefineFastFlag("UIBloxUseNewIconSizes", false),
	enableGenericButtonHoverBackgroundFix = UIBloxFlags.GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix(),
	enableStandardButtonSizes = true,
	sliderUpdateOnDismiss = UIBloxFlags.GetFFlagUIBloxSliderUpdateOnDismiss(),
	fixDropdownMenuCellTextSize = UIBloxFlags.GetFFlagUIBloxFixDropdownMenuCellTextSize(),
	useDynamicHeadIcon = true,
	systemBarBottomAlignedItems = UIBloxFlags.GetFFlagUIBloxSystemBarBottomAlignedItems(),
	devMode = ArgCheck.isEnabled(),
	enableImageSetResolutionScaleFix = UIBloxFlags.GetFFlagUIBloxEnableImageSetResolutionScaleFix(),
	moveBindActivate = UIBloxFlags.GetFFlagUIBloxMoveBindActivate(),
	vrApplyHeadScale = UIBloxFlags.GetFFlagUIBloxVRApplyHeadScale(),
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
	dropDownMenuUseUniqueKeys = UIBloxFlags.GetFFlagUIBloxDropDownMenuUseUniqueKeys(),
}
