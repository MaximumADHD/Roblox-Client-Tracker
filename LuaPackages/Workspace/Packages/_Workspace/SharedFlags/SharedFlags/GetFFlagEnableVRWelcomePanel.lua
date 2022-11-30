game:DefineFastFlag("EnableVRWelcomePanelv3", false)

return function()
	return game:GetFastFlag("EnableVRWelcomePanelv3") or game:GetEngineFeature("EnableMaquettesSupport")
end
