game:DefineFastFlag("EnableVRWelcomePanelv4", false)

return function()
	return game:GetFastFlag("EnableVRWelcomePanelv4") or game:GetEngineFeature("EnableMaquettesSupport")
end
