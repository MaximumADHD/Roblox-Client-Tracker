local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

return {
	loadableImageResponsiveThumbnails = UIBloxFlags.GetFFlagUIBloxLoadableImageResponsiveThumbnails(),
	useNewGenericTextLabelProps = UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps(),
	enableRightSideGadgetView = UIBloxFlags.GetFFlagUIBloxUseRightSideGadget(),
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	pillGroupAutomaticSize = UIBloxFlags.GetFFlagUIBloxPillGroupAutomaticSize(),
	vrAlignPanel3DUnderInGamePanel = UIBloxFlags.GetFFlagUIBloxVRAlignPanel3DUnderInGamePanel(),
	vrFixUIJitter = UIBloxFlags.GetFFlagUIBloxVRFixUIJitter(),
	dualVRLaserPointers = UIBloxFlags.GetFFlagUIBloxVRDualLaserPointers(),
}
