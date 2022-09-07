local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ArgCheck = require(CorePackages.ArgCheck)

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
local GetFFlagUIBloxSliderUpdateOnDismiss = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxSliderUpdateOnDismiss
)
local GetFFlagUIBloxFixDropdownMenuCellTextSize = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxFixDropdownMenuCellTextSize
)
local GetFFlagUIBloxEnableActionBarLayoutFix = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxEnableActionBarLayoutFix
)
local GetFFlagUIBloxDisableTooltipAnimation = require(
	CorePackages.UIBloxFlags.GetFFlagUIBloxDisableTooltipAnimation
)

local EnableInGameMenuV3 = require(RobloxGui.Modules.InGameMenuV3.Flags.GetFFlagEnableInGameMenuV3)

return {
	useUpdatedCheckbox = true,
	fixDropdownMenuListPositionAndSize = GetFFlagUIBloxFixDropdownMenuListPositionAndSize(),
	fixDropdownMenuCellTextSize = GetFFlagUIBloxFixDropdownMenuCellTextSize(),
	useNewGenericTextLabelProps = GetFFlagUIBloxUseNewGenericTextLabelProps(),
	useAnimatedXboxCursors = true,
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

	devMode = ArgCheck.isEnabled(),
	enableActionBarLayoutFix = GetFFlagUIBloxEnableActionBarLayoutFix(),

	disableTooltipAnimation = GetFFlagUIBloxDisableTooltipAnimation(),
}
