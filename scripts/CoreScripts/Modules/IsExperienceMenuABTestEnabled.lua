local CorePackages = game:GetService("CorePackages")

local GetFFlagEnableMenuModernizationABTest = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableMenuModernizationABTest
local GetFFlagEnableInGameMenuChromeABTest = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableInGameMenuChromeABTest

return function()
	return game:GetEngineFeature("ExperienceMenuABTest") and (GetFFlagEnableMenuModernizationABTest() or GetFFlagEnableInGameMenuChromeABTest())
end
