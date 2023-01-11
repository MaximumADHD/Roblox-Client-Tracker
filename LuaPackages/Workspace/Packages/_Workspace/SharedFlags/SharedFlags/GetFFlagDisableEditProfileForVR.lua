game:DefineFastFlag("DisableEditProfileForVR", false)

return function()
	return if game:GetFastFlag("DisableEditProfileForVR")
			or game:GetEngineFeature("EnableMaquettesSupport")
		then true
		else false
end
