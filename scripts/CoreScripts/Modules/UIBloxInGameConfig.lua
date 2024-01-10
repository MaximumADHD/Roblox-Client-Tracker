local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local UIBloxFlags = SharedFlags.UIBlox

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

return {
	useNewThemeColorPalettes = SharedFlags.GetFFlagLuaAppUseUIBloxColorPalettes()
		and UIBloxFlags.GetUIBloxUseNewThemeColorPalettes(),
	enableNewMenuLayout = UIBloxFlags.GetFFlagUIBloxEnableNewMenuLayout(),
	destroyLaserPointersOnUnmount = SharedFlags.GetFFlagHideExperienceLoadingJudder(),
}
