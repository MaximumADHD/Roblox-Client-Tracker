local GetFFlagEnableV3MenuABTest = require(script.Parent.Flags.GetFFlagEnableV3MenuABTest)
local GetFFlagEnableMenuControlsABTest = require(script.Parent.Flags.GetFFlagEnableMenuControlsABTest)
local GetFFlagEnableMenuModernizationABTest = require(script.Parent.Flags.GetFFlagEnableMenuModernizationABTest)

return function()
	return game:GetEngineFeature("ExperienceMenuABTest") and (GetFFlagEnableV3MenuABTest() or GetFFlagEnableMenuControlsABTest() or GetFFlagEnableMenuModernizationABTest())
end
