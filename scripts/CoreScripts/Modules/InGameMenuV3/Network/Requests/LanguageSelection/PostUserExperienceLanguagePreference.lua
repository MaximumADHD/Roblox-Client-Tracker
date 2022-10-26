local InGameMenu = script.Parent.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)
local HttpService = game:GetService("HttpService")

--[[
    Documentation of endpoint:
    https://gameinternationalization.roblox.com/docs#!/UserLocalizationSettings/post_v1_user_localization_settings_universe_universeId

    For the authenticated user, POSTs the provided targetID as the preferred
    language family code for the provided universeID
    
    Input:
        universeId
        targetId - numeric value corresponding to the language family ID to set
]]

return function(requestImpl, universeId, newTargetId)
    assert(type(universeId) == "number", "PostUserExperienceLanguagePreference request expects universeId to be a number")
    assert(type(newTargetId) == "number", "PostUserExperienceLanguagePreference request expects newTargetId to be a number")
    local url = string.format("%sv1/user-localization-settings/universe/%d", Url.GAME_I18N_URL, universeId)

    local payload =
    {
        settingValue = {
            settingType = "LanguageFamily",
            settingTargetId = newTargetId
        }
    }

    local body = HttpService:JSONEncode(payload)
    return requestImpl(url, "POST", { postBody = body })
end