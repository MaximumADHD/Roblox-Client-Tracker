game:DefineFastFlag("RoundedCornersVR", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		or game:GetFastFlag("RoundedCornersVR")
end
