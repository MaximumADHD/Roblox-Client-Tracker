game:DefineFastFlag("EnableVRReadyToast", false)

return function()
	return if game:GetFastFlag("EnableVRReadyToast") or game:GetEngineFeature("EnableMaquettesSupport")
		then true
		else false
end