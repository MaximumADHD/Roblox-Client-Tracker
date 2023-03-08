game:DefineFastFlag("UpgradeExpChatV3_3_11", false)

return function()
	return game:GetEngineFeature("TextChatServiceAPIs") and game:GetFastFlag("UpgradeExpChatV3_3_11")
end
