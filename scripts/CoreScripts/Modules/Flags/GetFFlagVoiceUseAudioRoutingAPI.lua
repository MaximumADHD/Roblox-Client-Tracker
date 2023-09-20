local VoiceChatService = game:GetService("VoiceChatService")

game:DefineFastFlag("VoiceUseAudioRoutingAPI", false)

return function()
	return (game:GetFastFlag("VoiceUseAudioRoutingAPI") and (VoiceChatService :: any).UseNewAudioApi)
end
