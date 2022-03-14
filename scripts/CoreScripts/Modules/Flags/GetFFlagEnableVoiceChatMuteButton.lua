game:DefineFastFlag("EnableVoiceChatMuteButton", false)

return function()
    return game:GetFastFlag("EnableVoiceChatMuteButton")
        and game:GetFastFlag("EnableVoiceChatNewPlayersListV2")
        and game:GetFastFlag("EnableVoiceChatNewMenu")
end
