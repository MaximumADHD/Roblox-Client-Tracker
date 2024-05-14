local CorePackages = game:GetService("CorePackages")

local GetFFlagEnableV3MenuABTest = require(script.Parent.Flags.GetFFlagEnableV3MenuABTest)
local GetFFlagEnableMenuControlsABTest = require(script.Parent.Flags.GetFFlagEnableMenuControlsABTest)
local GetFFlagEnableMenuModernizationABTest = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableMenuModernizationABTest
local GetFFlagEnableInGameMenuChromeABTest = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableInGameMenuChromeABTest

return function()
	return game:GetEngineFeature("ExperienceMenuABTest") and (GetFFlagEnableV3MenuABTest() or GetFFlagEnableMenuControlsABTest() or GetFFlagEnableMenuModernizationABTest() or GetFFlagEnableInGameMenuChromeABTest())
end
