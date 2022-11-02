-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local CorePackages = game:GetService("CorePackages")

local ArgCheck = require(CorePackages.ArgCheck)

local GetFFlagUIBloxUseNewGenericTextLabelProps =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxUseNewGenericTextLabelProps
local GetFFlagUIBloxEnableRadioButtonGamepadSupport =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableRadioButtonGamepadSupport
local GetFFlagUIBloxEnableActionBarLayoutFix = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableActionBarLayoutFix
local GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix
local GetFFlagUIBloxEnableStandardButtonSizes =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableStandardButtonSizes
local GetFFlagUIBloxSliderUpdateOnDismiss = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxSliderUpdateOnDismiss

local GetFFlagUIBloxFixDropdownMenuCellTextSize =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxFixDropdownMenuCellTextSize

local GetFFlagUIBloxEnableReactTag = require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableReactTag

local GetFFlagUIBloxSystemBarBottomAlignedItems =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxSystemBarBottomAlignedItems

local GetFFlagUIBloxEnableImageSetResolutionScaleFix =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableImageSetResolutionScaleFix

local GetFFlagUIBloxEnableActionBarButtonTypeOverride =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetFFlagUIBloxEnableActionBarButtonTypeOverride

local GetFFlagLuaAppUseUIBloxColorPalettes =
	require(CorePackages.AppTempCommon.LuaApp.Flags.GetFFlagLuaAppUseUIBloxColorPalettes)
local GetUIBloxUseNewThemeColorPalettes =
	require(CorePackages.Workspace.Packages.SharedFlags).UIBlox.GetUIBloxUseNewThemeColorPalettes

local GetFFlagUIBloxUseTagGroupArrows =
	require(CorePackages.UIBloxFlags.GetFFlagUIBloxUseTagGroupArrows)

return {
	useNewUICornerRoundedCorners = true,
	genericSliderFilterOldTouchInputs = true,
	allowSystemBarToAcceptString = true,
	emptyStateControllerSupport = true,
	useTileThumbnailV2 = true,
	useAnimatedXboxCursors = true,
	useUpdatedCheckbox = true,
	enableSubtitleOnTile = true,
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

	fixDropdownMenuCellTextSize = GetFFlagUIBloxFixDropdownMenuCellTextSize(),
	useDynamicHeadIcon = true,

	systemBarBottomAlignedItems = GetFFlagUIBloxSystemBarBottomAlignedItems(),
	devMode = ArgCheck.isEnabled(),

	enableImageSetResolutionScaleFix = GetFFlagUIBloxEnableImageSetResolutionScaleFix(),

	enableActionBarButtonTypeOverride = GetFFlagUIBloxEnableActionBarButtonTypeOverride(),

	useNewThemeColorPalettes = GetFFlagLuaAppUseUIBloxColorPalettes() and GetUIBloxUseNewThemeColorPalettes(),

	detailsTemplateUseNewGradientHeader = game:DefineFastFlag("UIBloxDetailsTemplateUseNewGradient", false),

	arrowsOnTagGroup = GetFFlagUIBloxUseTagGroupArrows(),
}
