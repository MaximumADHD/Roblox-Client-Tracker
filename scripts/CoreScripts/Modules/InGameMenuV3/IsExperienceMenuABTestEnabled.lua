local GetFFlagEnableV3MenuABTest = require(script.Parent.Parent.Flags.GetFFlagEnableV3MenuABTest)

return function()
	return game:GetEngineFeature("ExperienceMenuABTest") and GetFFlagEnableV3MenuABTest()
end
