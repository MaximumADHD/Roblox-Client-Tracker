local CorePackages = game:GetService("CorePackages")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

return {
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	enableNewMenuLayout = UIBloxFlags.GetFFlagUIBloxEnableNewMenuLayout(),
	destroyLaserPointersOnUnmount = SharedFlags.GetFFlagHideExperienceLoadingJudder(),
	useRobloxGuiFocusedChangedEventInGenericButton = UIBloxFlags.FFlagUIBloxUseRobloxGuiFocused,
}
