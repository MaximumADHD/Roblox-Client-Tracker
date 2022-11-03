game:DefineFastFlag("DeactivateThrottleInVR", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		or game:GetFastFlag("DeactivateThrottleInVR")
end
