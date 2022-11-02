local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ArgCheck = require(CorePackages.ArgCheck)

local GetFFlagUIBloxGenericButtonInputChangesInGame =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxGenericButtonInputChangesInGame
local GetFFlagUIBloxUseNewGenericTextLabelProps =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxUseNewGenericTextLabelProps
local GetFFlagUIBloxEnableRadioButtonGamepadSupport =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableRadioButtonGamepadSupport
local GetFFlagUIBloxSliderUpdateOnDismiss = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxSliderUpdateOnDismiss
local GetFFlagUIBloxFixDropdownMenuCellTextSize =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxFixDropdownMenuCellTextSize
local GetFFlagUIBloxEnableActionBarLayoutFix = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableActionBarLayoutFix
local GetFFlagUIBloxDisableTooltipAnimation = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxDisableTooltipAnimation

local GetFFlagUIBloxSystemBarBottomAlignedItems =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxSystemBarBottomAlignedItems

local EnableInGameMenuV3 = require(RobloxGui.Modules.InGameMenuV3.Flags.GetFFlagEnableInGameMenuV3)
local GetFFlagUIBloxEnableReactTag = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableReactTag

local GetFFlagUIBloxEnableImageSetResolutionScaleFix =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableImageSetResolutionScaleFix

local GetFFlagLuaAppUseUIBloxColorPalettes =
	require(CorePackages.AppTempCommon.LuaApp.Flags.GetFFlagLuaAppUseUIBloxColorPalettes)
local GetUIBloxUseNewThemeColorPalettes =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetUIBloxUseNewThemeColorPalettes

local GetFFlagUIBloxUseTagGroupArrows =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxUseTagGroupArrows)

return {
	useUpdatedCheckbox = true,
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
	enableReactTag = GetFFlagUIBloxEnableReactTag(),

	useNewVerticalScrollView = false, -- TODO: https://jira.rbx.com/browse/UIBLOX-225
	enableRightSideGadgetView = EnableInGameMenuV3(),

	sliderUpdateOnDismiss = GetFFlagUIBloxSliderUpdateOnDismiss(),

	devMode = ArgCheck.isEnabled(),
	enableActionBarLayoutFix = GetFFlagUIBloxEnableActionBarLayoutFix(),

	disableTooltipAnimation = GetFFlagUIBloxDisableTooltipAnimation(),

	systemBarBottomAlignedItems = GetFFlagUIBloxSystemBarBottomAlignedItems(),

	enableImageSetResolutionScaleFix = GetFFlagUIBloxEnableImageSetResolutionScaleFix(),

	enableStandardButtonSizes = true,

	useNewThemeColorPalettes = GetFFlagLuaAppUseUIBloxColorPalettes() and GetUIBloxUseNewThemeColorPalettes(),

	arrowsOnTagGroup = GetFFlagUIBloxUseTagGroupArrows(),
}
