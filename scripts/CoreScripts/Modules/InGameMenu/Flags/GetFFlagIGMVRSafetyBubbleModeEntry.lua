game:DefineFastFlag("IGMVRSafetyBubbleModeEntry", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		or game:GetFastFlag("IGMVRSafetyBubbleModeEntry")
end
