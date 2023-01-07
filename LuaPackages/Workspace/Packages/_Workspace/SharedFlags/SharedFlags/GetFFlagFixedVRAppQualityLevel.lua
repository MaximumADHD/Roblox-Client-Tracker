game:DefineFastFlag("FixedVRAppQualityLevel", false)

return function()
	return if game:GetFastFlag("FixedVRAppQualityLevel") or game:GetEngineFeature("EnableMaquettesSupport") -- enable with FFlag: UserMaquettesSupportEnabled
		then true
		else false
end
