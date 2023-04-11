game:DefineFastFlag("UpgradeExpChatV3_4_2", false)

return function()
	return game:GetEngineFeature("TextChatServiceAPIs") and game:GetFastFlag("UpgradeExpChatV3_4_2")
end
