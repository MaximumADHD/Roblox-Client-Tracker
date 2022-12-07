game:DefineFastFlag("UpgradeExpChatV3_3_3", false)

return function()
	return game:GetEngineFeature("TextChatServiceAPIs") and game:GetFastFlag("UpgradeExpChatV3_3_3")
end
