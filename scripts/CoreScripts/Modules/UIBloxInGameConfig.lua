local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ArgCheck = require(CorePackages.Workspace.Packages.ArgCheck)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

local EnableInGameMenuV3 = require(RobloxGui.Modules.InGameMenuV3.Flags.GetFFlagEnableInGameMenuV3)

return {
	loadableImageResponsiveThumbnails = UIBloxFlags.GetFFlagUIBloxLoadableImageResponsiveThumbnails(),
	useUpdatedCheckbox = true,
	fixDropdownMenuCellTextSize = UIBloxFlags.GetFFlagUIBloxFixDropdownMenuCellTextSize(),
	useNewGenericTextLabelProps = UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps(),
	useAnimatedXboxCursors = true,
	genericButtonInputChanges = UIBloxFlags.GetFFlagUIBloxGenericButtonInputChangesInGame(),
	enableGamepadKeyCodeSupportForKeyLabel = true,
	enableAnimatedCursorForNonRoactGamepadComponent = game:DefineFastFlag(
		"UIBloxEnableAnimatedCursorForNonRoactGamepad",
		false
	),
	enableRadioButtonGamepadSupport = UIBloxFlags.GetFFlagUIBloxEnableRadioButtonGamepadSupport(),
	useNewVerticalScrollView = false, -- TODO: https://jira.rbx.com/browse/UIBLOX-225
	enableRightSideGadgetView = UIBloxFlags.GetFFlagUIBloxUseRightSideGadget() or EnableInGameMenuV3(),
	sliderUpdateOnDismiss = UIBloxFlags.GetFFlagUIBloxSliderUpdateOnDismiss(),
	devMode = ArgCheck.isEnabled(),
	enableActionBarLayoutFix = UIBloxFlags.GetFFlagUIBloxEnableActionBarLayoutFix(),
	disableTooltipAnimation = UIBloxFlags.GetFFlagUIBloxDisableTooltipAnimation(),
	systemBarBottomAlignedItems = UIBloxFlags.GetFFlagUIBloxSystemBarBottomAlignedItems(),
	enableImageSetResolutionScaleFix = UIBloxFlags.GetFFlagUIBloxEnableImageSetResolutionScaleFix(),
	enableStandardButtonSizes = true,
	vrApplyHeadScale = UIBloxFlags.GetFFlagUIBloxVRApplyHeadScale(),
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	pillGroupAutomaticSize = UIBloxFlags.GetFFlagUIBloxPillGroupAutomaticSize(),
	vrAlignPanel3DUnderInGamePanel = UIBloxFlags.GetFFlagUIBloxVRAlignPanel3DUnderInGamePanel(),
}
