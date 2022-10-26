local InGameMenu = script.Parent.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

--[[
    Documentation of endpoint:
    https://gameinternationalization.roblox.com/docs#!/SourceLanguage/get_v1_source_language_games_gameId

    Gets source language for the provided universeID

    Input:
        universeID
]]

return function(requestImpl, universeId)
    assert(type(universeId) == "number", "GetExperienceSourceLanguage request expects universeId to be a number")
    local url = string.format("%sv1/source-language/games/%d", Url.GAME_I18N_URL, universeId)
    return requestImpl(url, "GET")
end