local CorePackages = game:GetService("CorePackages")

local GetFFlagUIBloxFixDropdownMenuListPositionAndSize = require(CorePackages.UIBloxFlags.GetFFlagUIBloxFixDropdownMenuListPositionAndSize)
local GetFFlagUIBloxGenericButtonInputChangesInGame= require(CorePackages.UIBloxFlags.GetFFlagUIBloxGenericButtonInputChangesInGame)
local GetFFlagUIBloxUseNewGenericTextLabelProps =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps)
local FFlagFixThumbnailTileInconsistency = require(CorePackages.UIBloxFlags.FFlagFixThumbnailTileInconsistency)
local GetFFlagUIBloxEnableRadioButtonGamepadSupport = require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableRadioButtonGamepadSupport)
local FFlagGridViewUseFunctionalSetStateInDidMount = require(CorePackages.UIBloxFlags.FFlagGridViewUseFunctionalSetStateInDidMount)

return {
	gridViewUseFunctionalSetStateInDidMount = FFlagGridViewUseFunctionalSetStateInDidMount,
	useUpdatedCheckbox = true,
	fixDropdownMenuListPositionAndSize = GetFFlagUIBloxFixDropdownMenuListPositionAndSize(),
	useNewGenericTextLabelProps = GetFFlagUIBloxUseNewGenericTextLabelProps(),
	useAnimatedXboxCursors = game:DefineFastFlag("GamepadAnimatedCursor", false),
	genericButtonInputChanges = GetFFlagUIBloxGenericButtonInputChangesInGame(),
	enableGamepadKeyCodeSupportForKeyLabel = true,
	enableAnimatedCursorForNonRoactGamepadComponent = game:DefineFastFlag("UIBloxEnableAnimatedCursorForNonRoactGamepad", false),
	enableRadioButtonGamepadSupport = GetFFlagUIBloxEnableRadioButtonGamepadSupport(),
	fixTileThumbnailColorInconsistency = FFlagFixThumbnailTileInconsistency,

	useNewVerticalScrollView = false, -- TODO: https://jira.rbx.com/browse/UIBLOX-225
}
