local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local GetFFlagUIBloxFixDropdownMenuListPositionAndSize = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxFixDropdownMenuListPositionAndSize
)
local GetFFlagUIBloxGenericButtonInputChangesInGame = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxGenericButtonInputChangesInGame
)
local GetFFlagUIBloxUseNewGenericTextLabelProps = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps
)
local GetFFlagUIBloxEnableRadioButtonGamepadSupport = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxEnableRadioButtonGamepadSupport
)
local GetFFlagUIBloxEnableIconButtonGamepadSupport = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxEnableIconButtonGamepadSupport
)
local GetFFlagUIBloxSliderUpdateOnDismiss = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxSliderUpdateOnDismiss
)

local EnableInGameMenuV3 = require(RobloxGui.Modules.InGameMenuV3.Flags.GetFFlagEnableInGameMenuV3)

return {
	useUpdatedCheckbox = true,
	fixDropdownMenuListPositionAndSize = GetFFlagUIBloxFixDropdownMenuListPositionAndSize(),
	useNewGenericTextLabelProps = GetFFlagUIBloxUseNewGenericTextLabelProps(),
	useAnimatedXboxCursors = game:DefineFastFlag("GamepadAnimatedCursor", false),
	genericButtonInputChanges = GetFFlagUIBloxGenericButtonInputChangesInGame(),
	enableGamepadKeyCodeSupportForKeyLabel = true,
	enableAnimatedCursorForNonRoactGamepadComponent = game:DefineFastFlag(
		"UIBloxEnableAnimatedCursorForNonRoactGamepad",
		false
	),
	enableRadioButtonGamepadSupport = GetFFlagUIBloxEnableRadioButtonGamepadSupport(),

	useNewVerticalScrollView = false, -- TODO: https://jira.rbx.com/browse/UIBLOX-225
	enableRightSideGadgetView = EnableInGameMenuV3(),

	sliderUpdateOnDismiss = GetFFlagUIBloxSliderUpdateOnDismiss(),
	enableIconButtonGamepadSupport = GetFFlagUIBloxEnableIconButtonGamepadSupport(),
}
