local function isVoiceChatSupported(): boolean
	return game:GetEngineFeature("VoiceChatSupported")
end

return isVoiceChatSupported
