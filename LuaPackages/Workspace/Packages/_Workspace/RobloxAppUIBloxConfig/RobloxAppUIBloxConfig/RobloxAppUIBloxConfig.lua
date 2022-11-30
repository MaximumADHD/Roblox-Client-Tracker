-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local RobloxAppUIBloxConfig = script.Parent
local Packages = RobloxAppUIBloxConfig.Parent

local ArgCheck = require(Packages.ArgCheck)

local GetFFlagUIBloxUseNewGenericTextLabelProps =
	require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxUseNewGenericTextLabelProps
local GetFFlagUIBloxEnableRadioButtonGamepadSupport =
	require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableRadioButtonGamepadSupport
local GetFFlagUIBloxEnableActionBarLayoutFix =
	require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableActionBarLayoutFix
local GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix =
	require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix
local GetFFlagUIBloxEnableStandardButtonSizes =
	require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableStandardButtonSizes
local GetFFlagUIBloxSliderUpdateOnDismiss = require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxSliderUpdateOnDismiss

local GetFFlagUIBloxFixDropdownMenuCellTextSize =
	require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxFixDropdownMenuCellTextSize

local GetFFlagUIBloxEnableReactTag = require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableReactTag

local GetFFlagUIBloxSystemBarBottomAlignedItems =
	require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxSystemBarBottomAlignedItems

local GetFFlagUIBloxEnableImageSetResolutionScaleFix =
	require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableImageSetResolutionScaleFix

local GetFFlagLuaAppUseUIBloxColorPalettes = require(Packages.SharedFlags).GetFFlagLuaAppUseUIBloxColorPalettes
local GetUIBloxUseNewThemeColorPalettes = require(Packages.SharedFlags).UIBlox.GetUIBloxUseNewThemeColorPalettes

local GetFFlagUIBloxMoveBindActivate = require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxMoveBindActivate

local GetFFlagUIBloxEnableAutoHidingPointerOverlay =
	require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableAutoHidingPointerOverlay

local GetFFlagUIBloxHorizontalCarouselSetState =
	require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxHorizontalCarouselSetState

local GetFFlagUIBloxRemovePreviewAnchor = require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxRemovePreviewAnchor

local GetUIBloxEnableMediaGalleryUpdate = require(Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableMediaGalleryUpdate

return {
	useNewUICornerRoundedCorners = true,
	genericSliderFilterOldTouchInputs = true,
	allowSystemBarToAcceptString = true,
	emptyStateControllerSupport = true,
	useTileThumbnailV2 = true,
	useAnimatedXboxCursors = true,
	useUpdatedCheckbox = true,
	enableSubtitleOnTile = true,
	enableGamepadKeyCodeSupportForKeyLabel = true,
	useNewGenericTextLabelProps = GetFFlagUIBloxUseNewGenericTextLabelProps(),
	enableCustomMinPaddingForLinkButton = game:DefineFastFlag("UIBloxEnableCustomMinPaddingForLinkButton", false),
	enableRadioButtonGamepadSupport = GetFFlagUIBloxEnableRadioButtonGamepadSupport(),
	enableReactTag = GetFFlagUIBloxEnableReactTag(),

	useNewVerticalScrollView = false, -- TODO: https://jira.rbx.com/browse/UIBLOX-225
	enableActionBarLayoutFix = GetFFlagUIBloxEnableActionBarLayoutFix(),

	-- Config to enable new icon sizes
	enableNewIconSizes = game:DefineFastFlag("UIBloxUseNewIconSizes", false),
	enableGenericButtonHoverBackgroundFix = GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix(),
	enableStandardButtonSizes = GetFFlagUIBloxEnableStandardButtonSizes(),

	sliderUpdateOnDismiss = GetFFlagUIBloxSliderUpdateOnDismiss(),

	fixDropdownMenuCellTextSize = GetFFlagUIBloxFixDropdownMenuCellTextSize(),
	useDynamicHeadIcon = true,

	systemBarBottomAlignedItems = GetFFlagUIBloxSystemBarBottomAlignedItems(),
	devMode = ArgCheck.isEnabled(),

	enableImageSetResolutionScaleFix = GetFFlagUIBloxEnableImageSetResolutionScaleFix(),

	moveBindActivate = GetFFlagUIBloxMoveBindActivate(),

	useNewThemeColorPalettes = GetFFlagLuaAppUseUIBloxColorPalettes() and GetUIBloxUseNewThemeColorPalettes(),

	detailsTemplateUseNewGradientHeader = game:DefineFastFlag("UIBloxDetailsTemplateUseNewGradient", false),

	enableAutoHidingPointerOverlay = GetFFlagUIBloxEnableAutoHidingPointerOverlay(),

	useFunctionalSetStateHorizontalCarousel = GetFFlagUIBloxHorizontalCarouselSetState(),

	removePreviewAnchor = GetFFlagUIBloxRemovePreviewAnchor(),

	enableMediaGalleryUpdate = GetUIBloxEnableMediaGalleryUpdate(),
}
