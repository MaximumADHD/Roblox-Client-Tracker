game:DefineFastFlag("DisablePurchasePromptFunctionForMaquettes", false)

return function()
	return game:GetFastFlag("DisablePurchasePromptFunctionForMaquettes") or not game:GetEngineFeature("MaquettesPurchaseFeature")
end
