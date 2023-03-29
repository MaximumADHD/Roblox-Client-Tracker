game:DefineFastFlag("DisableCDLQrCodeForMaquettes", false)

return function()
	return game:GetFastFlag("DisableCDLQrCodeForMaquettes") or game:GetEngineFeature("EnableMaquettesSupport")
end
