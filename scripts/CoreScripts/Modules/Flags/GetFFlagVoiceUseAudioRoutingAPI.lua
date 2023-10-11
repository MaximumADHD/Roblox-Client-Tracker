local VoiceChatService = game:GetService("VoiceChatService")

game:DefineFastFlag("VoiceUseAudioRoutingAPIV3", false)

return function()
	return (game:GetFastFlag("VoiceUseAudioRoutingAPIV3") and (VoiceChatService :: any).UseNewAudioApi)
end
