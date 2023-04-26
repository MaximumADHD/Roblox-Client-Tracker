game:DefineFastFlag("EnableIAPEntryPointDisablePolicy", false)

return function()
	return (game:GetFastFlag("EnableIAPEntryPointDisablePolicy") or game:GetEngineFeature("EnableMaquettesSupport"))
		and game:GetEngineFeature("QuestVrPurchaseFeature") -- The new policy only makes sense if engine support for Quest IAP is present, otherwise the old webview policy should continue to be used
end
