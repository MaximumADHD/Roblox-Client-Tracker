game:DefineFastFlag("DisablePurchasePromptFunctionForMaquettes", false)

return function()
	return game:GetFastFlag("DisablePurchasePromptFunctionForMaquettes") or game:GetEngineFeature("EnableMaquettesSupport")
end
