game:DefineFastFlag("EnableMaquettesU13Block", false)

return function()
	return game:GetFastFlag("EnableMaquettesU13Block") or game:GetEngineFeature("EnableMaquettesSupport")
end
