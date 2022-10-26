local InGameMenu = script.Parent.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

--[[
    Documentation of endpoint:
    https://gameinternationalization.roblox.com/docs#!/UserLocalizationSettings/get_v1_user_localization_settings_universe_universeId

    For the authenticated user, gets their preferred language setting for the
    provided universeID.
     
    Inputs:
        universeID
]]

return function(requestImpl, universeId)
    assert(type(universeId) == "number", "GetUserExperienceLanguagePreference request expects universeId to be a number")
    local url = string.format("%sv1/user-localization-settings/universe/%d", Url.GAME_I18N_URL, universeId)
    return requestImpl(url, "GET")
end