local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

return {
	enableRightSideGadgetView = UIBloxFlags.GetFFlagUIBloxUseRightSideGadget(),
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	vrFixUIJitter = UIBloxFlags.GetFFlagUIBloxVRFixUIJitter(),
	allowNarrowerSegmentedControl = SharedFlags.GetFFlagIGMVRComfortSetting(),
	dualVRLaserPointers = UIBloxFlags.GetFFlagUIBloxVRDualLaserPointers(),
	enableNewMenuLayout = UIBloxFlags.GetFFlagUIBloxEnableNewMenuLayout(),
	useTokensInPlayerTile = UIBloxFlags.GetFFlagUIBloxUseTokensInPlayerTile(),
	increaseImageResolutionForTenFoot = UIBloxFlags.GetFFlagIncreaseImageResolutionForTenFoot(),
	fixCoPlayFooterBadgeTextCenteringAndZIndex = UIBloxFlags.GetFFlagUIBloxUpgradeCoPlayFooter(),
	fixCoPlayFooterBadgeEmphasisBorder = UIBloxFlags.GetFFlagUIBloxUpgradeCoPlayFooter(),
	toastButtonTypesAutoAlignAndNoBorder = UIBloxFlags.GetFFlagUIBloxToastButtonTypesAutoAlignAndNoBorder(),
	coPlayFooterChangeColorAndShowMoreFaces = UIBloxFlags.GetFFlagUIBloxUpgradeCoPlayFooter(),
	makeDefaultLoadingStrategyDefault = UIBloxFlags.GetFFlagChangeUIBloxLoadingStrategy(),
	destroyLaserPointersOnUnmount = SharedFlags.GetFFlagHideExperienceLoadingJudder(),
}
