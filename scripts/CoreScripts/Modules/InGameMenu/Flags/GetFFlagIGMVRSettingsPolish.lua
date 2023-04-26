game:DefineFastFlag("IGMVRSettingsPolish", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		or game:GetFastFlag("IGMVRSettingsPolish")
end
