game:DefineFastFlag("UpgradeExpChatV3_3_6", false)

return function()
	return game:GetEngineFeature("TextChatServiceAPIs") and game:GetFastFlag("UpgradeExpChatV3_3_6")
end
