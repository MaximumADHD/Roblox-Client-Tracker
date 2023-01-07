game:DefineFastFlag("DisableWebviewsVR", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		or game:GetFastFlag("DisableWebviewsVR")
end
