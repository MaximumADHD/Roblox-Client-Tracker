-- See https://confluence.rbx.com/display/MOBAPP/UIBlox+Flagging
-- for more info on how to add values here
local RobloxAppUIBloxConfig = script.Parent
local Packages = RobloxAppUIBloxConfig.Parent

local SharedFlags = require(Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

return {
	loadableImageResponsiveThumbnails = UIBloxFlags.GetFFlagUIBloxLoadableImageResponsiveThumbnails(),
	useNewGenericTextLabelProps = UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps(),
	useNewVerticalScrollView = false, -- TODO: https://jira.rbx.com/browse/UIBLOX-225
	enableNewIconSizes = game:DefineFastFlag("UIBloxUseNewIconSizes", false),
	enableGenericButtonHoverBackgroundFix = UIBloxFlags.GetFFlagUIBloxEnableGenericButtonHoverBackgroundFix(),
	bindAllLaserPointerButtons = UIBloxFlags.GetFFlagUIBloxBindAllLaserPointerButtons(),
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	enableAutoHidingPointerOverlay = true,
	removePreviewAnchor = UIBloxFlags.GetFFlagUIBloxRemovePreviewAnchor(),
	enableMediaGalleryUpdate = UIBloxFlags.GetFFlagUIBloxEnableMediaGalleryUpdate(),
	useCurvedPanel3D = true,
	pillGroupAutomaticSize = UIBloxFlags.GetFFlagUIBloxPillGroupAutomaticSize(),
	enableCollectibleItemRestriction = UIBloxFlags.GetFFlagUIBloxEnableCollectibleItemRestriction(),
	vrAlignPanel3DUnderInGamePanel = UIBloxFlags.GetFFlagUIBloxVRAlignPanel3DUnderInGamePanel(),
	enableRoDSDesignTokenSupport = UIBloxFlags.GetFFlagUIBloxEnableRoDSDesignTokenSupport(),
	enableTileOverlayFix = UIBloxFlags.GetFFlagUIBloxEnableTileOverlayFix(),
	usePillGroupSelectedPills = UIBloxFlags.GetFFlagUIBloxPillGroupUseSelectedPills(),
}
