-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local CorePackages = game:GetService("CorePackages")

local GetFFlagLuaAppUseNewUIBloxRoundedCorners = require(
	CorePackages.UIBloxFlags.GetFFlagLuaAppUseNewUIBloxRoundedCorners
)
local FFlagUIBloxUseTileThumbnailV2 = require(CorePackages.UIBloxFlags.FFlagUIBloxUseTileThumbnailV2)
local FFlagTempFixEmptyGridView = require(CorePackages.UIBloxFlags.FFlagTempFixEmptyGridView)
local FFlagTempFixGridViewLayoutWithSpawn = require(CorePackages.UIBloxFlags.FFlagTempFixGridViewLayoutWithSpawn)
local GetFFlagUIBloxFixDropdownMenuListPositionAndSize = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxFixDropdownMenuListPositionAndSize
)
local GetFFlagUIBloxEnableSubtitleOnTile = require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableSubtitleOnTile)
local GetFFlagUIBloxEnableGamepadKeyCodeSupportForKeyLabel = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxEnableGamepadKeyCodeSupportForKeyLabel
)
local GetFFlagUIBloxUseNewGenericTextLabelProps = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps
)
local FFlagImprovementsToGridView = require(CorePackages.UIBloxFlags.FFlagImprovementsToGridView)

local FFlagFixThumbnailTileInconsistency = require(CorePackages.UIBloxFlags.FFlagFixThumbnailTileInconsistency)
local GetFFlagUIBloxEnableRadioButtonGamepadSupport = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxEnableRadioButtonGamepadSupport
)

return {
	improvementsToGridView = FFlagImprovementsToGridView,
	tempFixEmptyGridView = FFlagTempFixEmptyGridView,
	tempFixGridViewLayoutWithSpawn = FFlagTempFixGridViewLayoutWithSpawn,
	useNewUICornerRoundedCorners = GetFFlagLuaAppUseNewUIBloxRoundedCorners(),
	genericSliderFilterOldTouchInputs = true,
	allowSystemBarToAcceptString = game:DefineFastFlag("UIBloxAllowSystemBarToAcceptString", false),
	emptyStateControllerSupport = true,
	useTileThumbnailV2 = FFlagUIBloxUseTileThumbnailV2,
	useAnimatedXboxCursors = game:DefineFastFlag("GamepadAnimatedCursor", false),
	useUpdatedCheckbox = true,
	fixDropdownMenuListPositionAndSize = GetFFlagUIBloxFixDropdownMenuListPositionAndSize(),
	enableSubtitleOnTile = GetFFlagUIBloxEnableSubtitleOnTile(),
	enableGamepadKeyCodeSupportForKeyLabel = GetFFlagUIBloxEnableGamepadKeyCodeSupportForKeyLabel(),
	useNewGenericTextLabelProps = GetFFlagUIBloxUseNewGenericTextLabelProps(),
	enableCustomMinPaddingForLinkButton = game:DefineFastFlag("UIBloxEnableCustomMinPaddingForLinkButton", false),
	fixTileThumbnailColorInconsistency = FFlagFixThumbnailTileInconsistency,
	enableRadioButtonGamepadSupport = GetFFlagUIBloxEnableRadioButtonGamepadSupport(),
}
