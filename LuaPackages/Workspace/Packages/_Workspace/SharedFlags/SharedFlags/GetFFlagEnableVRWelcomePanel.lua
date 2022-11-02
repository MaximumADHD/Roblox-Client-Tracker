game:DefineFastFlag("EnableVRWelcomePanel", false)

return function()
	return game:GetFastFlag("EnableVRWelcomePanel") or game:GetEngineFeature("EnableMaquettesSupport")
end
