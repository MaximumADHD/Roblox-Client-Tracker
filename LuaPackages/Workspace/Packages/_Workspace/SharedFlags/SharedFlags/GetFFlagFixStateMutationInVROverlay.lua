game:DefineFastFlag("FixStateMutationInVROverlay", false)

return function()
	return game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		or game:GetFastFlag("FixStateMutationInVROverlay")
end
