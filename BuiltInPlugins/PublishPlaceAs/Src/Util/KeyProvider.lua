-- Centralized Place for Keys used throughout the widget

local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FFlagLuobuDevPublishLuaTempOptIn = game:GetFastFlag("LuobuDevPublishLuaTempOptIn")

local KeyProvider = {}

function KeyProvider.getOptInLocationsKeyName()
    assert(FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn)

    return "OptInLocations"
end

function KeyProvider.getChinaKeyName()
    assert(FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn)

    return "China"
end

return KeyProvider
