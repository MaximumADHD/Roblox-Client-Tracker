game:DefineFastFlag("DisablePurchasePromptFunctionForQuestV2", false)

return function()
	return game:GetFastFlag("DisablePurchasePromptFunctionForQuestV2") or game:GetEngineFeature("EnableMaquettesSupport")
end
