game:DefineFastFlag("EnableVoiceChatNewPlayersListV2", false)

return function()
    return game:GetFastFlag("EnableVoiceChatNewPlayersListV2") and game:GetFastFlag("EnableVoiceChatNewMenu")
end
