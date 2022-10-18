game:DefineFastFlag("SelfViewSettingsEnabled2", false)
local EngineFeatureSelfViewEnum = game:GetEngineFeature("CoreGuiTypeSelfViewPresent")

return function()
	return game:GetFastFlag("SelfViewSettingsEnabled2") and EngineFeatureSelfViewEnum
end
