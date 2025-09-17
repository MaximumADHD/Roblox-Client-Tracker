local CorePackages = game:GetService("CorePackages")

local GetFFlagEnableInGameMenuChromeABTest = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableInGameMenuChromeABTest

return function()
	return game:GetEngineFeature("ExperienceMenuABTest") and GetFFlagEnableInGameMenuChromeABTest()
end
