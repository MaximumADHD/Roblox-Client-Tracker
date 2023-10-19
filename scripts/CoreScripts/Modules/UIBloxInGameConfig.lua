local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

return {
	useNewGenericTextLabelProps = UIBloxFlags.GetFFlagUIBloxUseNewGenericTextLabelProps(),
	enableRightSideGadgetView = UIBloxFlags.GetFFlagUIBloxUseRightSideGadget(),
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	vrAlignPanel3DUnderInGamePanel = true,
	vrFixUIJitter = UIBloxFlags.GetFFlagUIBloxVRFixUIJitter(),
	allowNarrowerSegmentedControl = SharedFlags.GetFFlagIGMVRComfortSetting(),
	dualVRLaserPointers = UIBloxFlags.GetFFlagUIBloxVRDualLaserPointers(),
	useNewKeyLabel = UIBloxFlags.GetFFlagUIBloxUseNewKeyLabel(),
	usePlatformContentKeyLabels = UIBloxFlags.GetFFlagUIBloxUsePlatformContentKeyLabels(),
	enableNewMenuLayout = UIBloxFlags.GetFFlagUIBloxEnableNewMenuLayout(),
	useTokensInPlayerTile = UIBloxFlags.GetFFlagUIBloxUseTokensInPlayerTile(),
	increaseImageResolutionForTenFoot = UIBloxFlags.GetFFlagIncreaseImageResolutionForTenFoot(),
	fixCoPlayFooterBadgeTextCenteringAndZIndex = UIBloxFlags.GetFFlagUIBloxUpgradeCoPlayFooter(),
	fixCoPlayFooterBadgeEmphasisBorder = UIBloxFlags.GetFFlagUIBloxUpgradeCoPlayFooter(),
	toastButtonTypesAutoAlignAndNoBorder = UIBloxFlags.GetFFlagUIBloxToastButtonTypesAutoAlignAndNoBorder(),
	coPlayFooterChangeColorAndShowMoreFaces = UIBloxFlags.GetFFlagUIBloxUpgradeCoPlayFooter(),
	makeDefaultLoadingStrategyDefault = UIBloxFlags.GetFFlagChangeUIBloxLoadingStrategy(),
}
