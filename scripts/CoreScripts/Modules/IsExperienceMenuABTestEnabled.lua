local GetFFlagEnableV3MenuABTest = require(script.Parent.Flags.GetFFlagEnableV3MenuABTest)
local GetFFlagEnableMenuControlsABTest = require(script.Parent.Flags.GetFFlagEnableMenuControlsABTest)

return function()
	return game:GetEngineFeature("ExperienceMenuABTest") and (GetFFlagEnableV3MenuABTest() or GetFFlagEnableMenuControlsABTest())
end
