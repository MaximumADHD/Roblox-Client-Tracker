game:DefineFastFlag("EnablePreferredTextSizeStyleFixesInPurchasePrompt", false)

return function()
	return game:GetEngineFeature("EnablePreferredTextSizeSetting")
		and game:GetFastFlag("EnablePreferredTextSizeStyleFixesInPurchasePrompt")
end