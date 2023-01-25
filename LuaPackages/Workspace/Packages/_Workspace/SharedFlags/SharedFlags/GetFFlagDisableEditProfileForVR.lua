game:DefineFastFlag("DisableEditProfileForVRV2", false)

return function()
	return if game:GetFastFlag("DisableEditProfileForVRV2")
			or game:GetEngineFeature("EnableMaquettesSupport")
		then true
		else false
end
