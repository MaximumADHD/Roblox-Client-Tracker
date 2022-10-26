local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local ArgCheck = require(CorePackages.ArgCheck)

local GetFFlagUIBloxGenericButtonInputChangesInGame =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxGenericButtonInputChangesInGame)
local GetFFlagUIBloxUseNewGenericTextLabelProps =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps)
local GetFFlagUIBloxEnableRadioButtonGamepadSupport =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableRadioButtonGamepadSupport)
local GetFFlagUIBloxSliderUpdateOnDismiss = require(CorePackages.UIBloxFlags.GetFFlagUIBloxSliderUpdateOnDismiss)
local GetFFlagUIBloxFixDropdownMenuCellTextSize =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxFixDropdownMenuCellTextSize)
local GetFFlagUIBloxEnableActionBarLayoutFix = require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableActionBarLayoutFix)
local GetFFlagUIBloxDisableTooltipAnimation = require(CorePackages.UIBloxFlags.GetFFlagUIBloxDisableTooltipAnimation)

local GetFFlagUIBloxSystemBarBottomAlignedItems =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxSystemBarBottomAlignedItems)

local EnableInGameMenuV3 = require(RobloxGui.Modules.InGameMenuV3.Flags.GetFFlagEnableInGameMenuV3)
local GetFFlagUIBloxEnableReactTag = require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableReactTag)

local GetFFlagUIBloxEnableImageSetResolutionScaleFix =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxEnableImageSetResolutionScaleFix)

local GetFFlagLuaAppUseUIBloxColorPalettes =
	require(CorePackages.AppTempCommon.LuaApp.Flags.GetFFlagLuaAppUseUIBloxColorPalettes)
local GetUIBloxUseNewThemeColorPalettes =
	require(CorePackages.UIBloxFlags.GetUIBloxUseNewThemeColorPalettes)

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
}
