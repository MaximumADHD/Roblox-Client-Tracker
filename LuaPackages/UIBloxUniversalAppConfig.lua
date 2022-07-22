-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local CorePackages = game:GetService("CorePackages")

local GetFFlagLuaAppUseNewUIBloxRoundedCorners = require(
	CorePackages.UIBloxFlags.GetFFlagLuaAppUseNewUIBloxRoundedCorners
)
local FFlagUIBloxUseTileThumbnailV2 = require(CorePackages.UIBloxFlags.FFlagUIBloxUseTileThumbnailV2)
local GetFFlagUIBloxFixDropdownMenuListPositionAndSize = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxFixDropdownMenuListPositionAndSize
)
local GetFFlagUIBloxEnableSubtitleOnTile = require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableSubtitleOnTile)
local GetFFlagUIBloxUseNewGenericTextLabelProps = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps
)
local GetFFlagUIBloxEnableRadioButtonGamepadSupport = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxEnableRadioButtonGamepadSupport
)
local GetFFlagUIBloxEnableIconButtonGamepadSupport = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxEnableIconButtonGamepadSupport
)
local GetFFlagUIBloxEnableActionBarLayoutFix = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxEnableActionBarLayoutFix
)
local GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix
)
local GetFFlagUIBloxEnableStandardButtonSizes = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxEnableStandardButtonSizes
)
local FFlagUIBloxSliderCustomization = require(CorePackages.UIBloxFlags.FFlagUIBloxSliderCustomization)

local GetFFlagUIBloxSliderUpdateOnDismiss = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxSliderUpdateOnDismiss
)

local GetFFlagAdjustableTextUnderTile = require(CorePackages.UIBloxFlags.GetFFlagAdjustableTextUnderTile)
local GetFFlagUIBloxEnableVirtualizedListForCarousel = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxEnableVirtualizedListForCarousel
)

return {
	enableAdjustableTextUnderTile = GetFFlagAdjustableTextUnderTile(),
	enableSliderCustomization = FFlagUIBloxSliderCustomization,
	useNewUICornerRoundedCorners = GetFFlagLuaAppUseNewUIBloxRoundedCorners(),
	genericSliderFilterOldTouchInputs = true,
	allowSystemBarToAcceptString = game:DefineFastFlag("UIBloxAllowSystemBarToAcceptString", false),
	emptyStateControllerSupport = true,
	useTileThumbnailV2 = FFlagUIBloxUseTileThumbnailV2,
	useAnimatedXboxCursors = game:DefineFastFlag("GamepadAnimatedCursor", false),
	useUpdatedCheckbox = true,
	fixDropdownMenuListPositionAndSize = GetFFlagUIBloxFixDropdownMenuListPositionAndSize(),
	enableSubtitleOnTile = GetFFlagUIBloxEnableSubtitleOnTile(),
	enableGamepadKeyCodeSupportForKeyLabel = true,
	useNewGenericTextLabelProps = GetFFlagUIBloxUseNewGenericTextLabelProps(),
	enableCustomMinPaddingForLinkButton = game:DefineFastFlag("UIBloxEnableCustomMinPaddingForLinkButton", false),
	enableRadioButtonGamepadSupport = GetFFlagUIBloxEnableRadioButtonGamepadSupport(),

	useNewVerticalScrollView = false, -- TODO: https://jira.rbx.com/browse/UIBLOX-225
	enableActionBarLayoutFix = GetFFlagUIBloxEnableActionBarLayoutFix(),

	-- Config to enable new icon sizes
	enableNewIconSizes = game:DefineFastFlag("UIBloxUseNewIconSizes", false),
	enableGenericButtonHoverBackgroundFix = GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix(),
	enableStandardButtonSizes = GetFFlagUIBloxEnableStandardButtonSizes(),

	sliderUpdateOnDismiss = GetFFlagUIBloxSliderUpdateOnDismiss(),
	enableIconButtonGamepadSupport = GetFFlagUIBloxEnableIconButtonGamepadSupport(),
	enableVirtualizedListForCarousel = GetFFlagUIBloxEnableVirtualizedListForCarousel(),
}
