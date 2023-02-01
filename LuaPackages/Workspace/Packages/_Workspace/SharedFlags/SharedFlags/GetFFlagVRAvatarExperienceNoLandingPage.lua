game:DefineFastFlag("VRAvatarExperienceNoLandingPage", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		or game:GetFastFlag("VRAvatarExperienceNoLandingPage")
end
