game:DefineFastFlag("SelfViewSettingsEnabled3", false)
local EngineFeatureSelfViewEnum = game:GetEngineFeature("CoreGuiTypeSelfViewPresent")

return function()
	return game:GetFastFlag("SelfViewSettingsEnabled3") and EngineFeatureSelfViewEnum
end
