local InGameMenu = script.Parent.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

--[[
    Documentation of endpoint:
    https://locale.roblox.com/docs#!/Locale/get_v1_locales

    Returns a json that contains information about locales, like native names,
    associated language, language codes, antive names, targetIDs

    Inputs:
        displayValueLocale - locale code string that when passed as an optional
        parameter returns language names for the provided locale
]]

return function(requestImpl, displayValueLocale)
    assert(type(displayValueLocale) == "string", "GetLocaleInfo request expects display value locale to be a string")
    local url = string.format("%sv1/locales?displayValueLocale=%s", Url.LOCALE, displayValueLocale)
    return requestImpl(url, "GET")
end
