local InGameMenu = script.Parent.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

--[[
    Documentation of endpoint:
    https://gameinternationalization.roblox.com/docs#!/SupportedLanguages/get_v1_supported_languages_games_gameId

    Gets supported languages for the provided universe ID
    
    Input:
        universeID
]]

return function(requestImpl, universeId)
    assert(type(universeId) == "number", "GetExperienceSupportedLanguages request expects universeId to be a number")
    local url = string.format("%sv1/supported-languages/games/%d", Url.GAME_I18N_URL, universeId)
    return requestImpl(url, "GET")
end