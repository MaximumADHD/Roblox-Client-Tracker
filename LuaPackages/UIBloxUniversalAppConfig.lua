-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local CorePackages = game:GetService("CorePackages")

local ArgCheck = require(CorePackages.ArgCheck)

local GetFFlagUIBloxFixDropdownMenuListPositionAndSize =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxFixDropdownMenuListPositionAndSize)
local GetFFlagUIBloxEnableSubtitleOnTile = require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableSubtitleOnTile)
local GetFFlagUIBloxUseNewGenericTextLabelProps =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps)
local GetFFlagUIBloxEnableRadioButtonGamepadSupport =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableRadioButtonGamepadSupport)
local GetFFlagUIBloxEnableActionBarLayoutFix = require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableActionBarLayoutFix)
local GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix)
local GetFFlagUIBloxEnableStandardButtonSizes =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableStandardButtonSizes)
local GetFFlagUIBloxSliderUpdateOnDismiss = require(CorePackages.UIBloxFlags.GetFFlagUIBloxSliderUpdateOnDismiss)

local GetFFlagUIBloxFixDropdownMenuCellTextSize =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxFixDropdownMenuCellTextSize)

local GetFFlagUIBloxEnableVirtualizedListForCarousel =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableVirtualizedListForCarousel)
local GetFFlagUIBloxEnableDynamicHeadIcon = require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableDynamicHeadIcon)
local GetFFlagUIBloxEnableReactTag = require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableReactTag)

local GetFFlagUIBloxSystemBarBottomAlignedItems =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxSystemBarBottomAlignedItems)

local GetFFlagUIBloxFixHorizontalCarouselLayout =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxFixHorizontalCarouselLayout)

local GetFFlagUIBloxEnableImageSetResolutionScaleFix =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableImageSetResolutionScaleFix)

local GetFFlagUIBloxAddViewabilityConfigCallbackPairs =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxAddViewabilityConfigCallbackPairs)

local GetFFlagUIBloxEnableActionBarButtonTypeOverride =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableActionBarButtonTypeOverride)

return {
	useNewUICornerRoundedCorners = true,
	genericSliderFilterOldTouchInputs = true,
	allowSystemBarToAcceptString = true,
	emptyStateControllerSupport = true,
	useTileThumbnailV2 = true,
	useAnimatedXboxCursors = true,
	useUpdatedCheckbox = true,
	fixDropdownMenuListPositionAndSize = GetFFlagUIBloxFixDropdownMenuListPositionAndSize(),
	enableSubtitleOnTile = GetFFlagUIBloxEnableSubtitleOnTile(),
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
	enableVirtualizedListForCarousel = GetFFlagUIBloxEnableVirtualizedListForCarousel(),

	fixDropdownMenuCellTextSize = GetFFlagUIBloxFixDropdownMenuCellTextSize(),
	useDynamicHeadIcon = GetFFlagUIBloxEnableDynamicHeadIcon(),

	systemBarBottomAlignedItems = GetFFlagUIBloxSystemBarBottomAlignedItems(),
	devMode = ArgCheck.isEnabled(),

	fixHorizontalCarouselLayout = GetFFlagUIBloxFixHorizontalCarouselLayout(),

	enableImageSetResolutionScaleFix = GetFFlagUIBloxEnableImageSetResolutionScaleFix(),

	addViewabilityConfigCallbackPairs = GetFFlagUIBloxAddViewabilityConfigCallbackPairs(),

	enableActionBarButtonTypeOverride = GetFFlagUIBloxEnableActionBarButtonTypeOverride()
}
