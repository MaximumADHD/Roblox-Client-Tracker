local VoiceChatService = game:GetService("VoiceChatService")

game:DefineFastFlag("VoiceUseAudioRoutingAPIV2", false)

return function()
	return (game:GetFastFlag("VoiceUseAudioRoutingAPIV2") and (VoiceChatService :: any).UseNewAudioApi)
end
