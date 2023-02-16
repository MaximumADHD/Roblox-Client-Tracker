game:DefineFastFlag("ActivateShadowsInWorldspace", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		or game:GetFastFlag("ActivateShadowsInWorldspace")
end
