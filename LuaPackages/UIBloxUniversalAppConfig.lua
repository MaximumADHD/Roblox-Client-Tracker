-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local CorePackages = game:GetService("CorePackages")

local GetFFlagLuaAppUseNewUIBloxRoundedCorners = require(CorePackages.UIBloxFlags.GetFFlagLuaAppUseNewUIBloxRoundedCorners)
local GetFFlagUIBloxHideHorizontalCarouselScrollButtonFix = require(CorePackages.UIBloxFlags.GetFFlagUIBloxHideHorizontalCarouselScrollButtonFix)
local FFlagUIBloxSlidersFilterOldTouchInputs = require(CorePackages.UIBloxFlags.FFlagUIBloxSlidersFilterOldTouchInputs)
local FFlagUIBloxEmptyStateControllerSupport = require(CorePackages.UIBloxFlags.FFlagUIBloxEmptyStateControllerSupport)
local FFlagUIBloxUseTileThumbnailV2 = require(CorePackages.UIBloxFlags.FFlagUIBloxUseTileThumbnailV2)

return {
	useNewUICornerRoundedCorners = GetFFlagLuaAppUseNewUIBloxRoundedCorners(),
	enableExperimentalGamepadSupport = true,
	genericSliderFilterOldTouchInputs = FFlagUIBloxSlidersFilterOldTouchInputs,
	allowSystemBarToAcceptString = game:DefineFastFlag("UIBloxAllowSystemBarToAcceptString", false),
	emptyStateControllerSupport = FFlagUIBloxEmptyStateControllerSupport,
	useHeaderBarV2 = game:DefineFastFlag("UIBloxUseHeaderBarV2_0", false),
	useTileThumbnailV2 = FFlagUIBloxUseTileThumbnailV2,
	tooltipWidthUsesHeaderToo = game:DefineFastFlag("UIBloxTooltipWidthUsesHeaderToo", false),
	useAnimatedXboxCursors = game:DefineFastFlag("GamepadAnimatedCursor", false),
	enableAlertCustomTitleFooterConfig = game:DefineFastFlag("UIBloxEnableAlertCustomTitleFooterConfig", false),
	hideHorizontalCarouselScrollButtonFix = GetFFlagUIBloxHideHorizontalCarouselScrollButtonFix(),
}
