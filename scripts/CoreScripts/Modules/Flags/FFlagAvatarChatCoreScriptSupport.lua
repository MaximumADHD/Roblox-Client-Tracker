local FFlagAvatarChatCoreScriptSupport5 = game:DefineFastFlag("AvatarChatCoreScriptSupport5", false)
local FFlagAvatarChatCoreScriptSupport6 = game:DefineFastFlag("AvatarChatCoreScriptSupport6", false)

return (FFlagAvatarChatCoreScriptSupport5 or FFlagAvatarChatCoreScriptSupport6)
	and game:GetEngineFeature("FacialAnimationStreaming2")
	and game:GetEngineFeature("CoreGuiTypeSelfViewPresent")
