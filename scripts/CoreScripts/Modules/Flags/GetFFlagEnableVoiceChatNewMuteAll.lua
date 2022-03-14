game:DefineFastFlag("EnableVoiceChatNewMuteAll", false)

return function()
    return game:GetFastFlag("EnableVoiceChatNewMuteAll") and game:GetFastFlag("EnableVoiceChatNewMenu")
end
