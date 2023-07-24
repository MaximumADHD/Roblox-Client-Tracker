local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

return {
	fixLoadableImageLoadingFailed = UIBloxFlags.GetFFlagFixLoadableImageLoadingFailed(),
	useNewGenericTextLabelProps = UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps(),
	enableRightSideGadgetView = UIBloxFlags.GetFFlagUIBloxUseRightSideGadget(),
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	pillGroupAutomaticSize = UIBloxFlags.GetFFlagUIBloxPillGroupAutomaticSize(),
	vrAlignPanel3DUnderInGamePanel = UIBloxFlags.GetFFlagUIBloxVRAlignPanel3DUnderInGamePanel(),
	vrFixUIJitter = UIBloxFlags.GetFFlagUIBloxVRFixUIJitter(),
	dualVRLaserPointers = UIBloxFlags.GetFFlagUIBloxVRDualLaserPointers(),
	useNewPlayerCount = UIBloxFlags.GetFFlagUIBloxUseNewPlayerCount(),
	enableToastButton = UIBloxFlags.GetFFlagUIBloxEnableToastButton(),
	usePlatformContentKeyLabels = UIBloxFlags.GetFFlagUIBloxUsePlatformContentKeyLabels(),
	enableNewMenuLayout = UIBloxFlags.GetFFlagUIBloxEnableNewMenuLayout(),
}
