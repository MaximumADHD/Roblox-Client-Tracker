game:DefineFastFlag("UpgradeExpChatV3_3_2", false)

return function()
	return game:GetEngineFeature("TextChatServiceAPIs") and game:GetFastFlag("UpgradeExpChatV3_3_2")
end
