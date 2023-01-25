game:DefineFastFlag("HidePrivateServerInGameDetailsForVR", false)

return function()
	return game:GetFastFlag("HidePrivateServerInGameDetailsForVR") or game:GetEngineFeature("EnableMaquettesSupport")
end
