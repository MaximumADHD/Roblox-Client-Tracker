local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

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
	usePlatformContentKeyLabels = UIBloxFlags.GetFFlagUIBloxUsePlatformContentKeyLabels(),
	enableNewMenuLayout = UIBloxFlags.GetFFlagUIBloxEnableNewMenuLayout(),
	useTokensInPlayerTile = UIBloxFlags.GetFFlagUIBloxUseTokensInPlayerTile(),
}
