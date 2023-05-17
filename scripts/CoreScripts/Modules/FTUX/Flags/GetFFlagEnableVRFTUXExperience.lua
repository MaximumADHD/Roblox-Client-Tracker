game:DefineFastFlag("EnableVRFTUXExperience", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") or game:GetFastFlag("EnableVRFTUXExperience")
end
