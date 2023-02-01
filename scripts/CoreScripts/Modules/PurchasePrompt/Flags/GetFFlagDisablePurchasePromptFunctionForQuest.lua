game:DefineFastFlag("DisablePurchasePromptFunctionForQuest", false)

return function()
	return game:GetFastFlag("DisablePurchasePromptFunctionForQuest") or game:GetEngineFeature("EnableMaquettesSupport")
end
