game:DefineFastFlag("EnableVRWelcomePanelv2", false)

return function()
	return game:GetFastFlag("EnableVRWelcomePanelv2") or game:GetEngineFeature("EnableMaquettesSupport")
end
