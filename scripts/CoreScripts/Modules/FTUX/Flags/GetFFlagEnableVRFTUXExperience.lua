game:DefineFastFlag("EnableVRFTUXExperienceV2", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") or game:GetFastFlag("EnableVRFTUXExperienceV2")
end
