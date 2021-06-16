-- Centralized Place for Keys used throughout the widget

local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FFlagLuobuDevPublishLuaTempOptIn = game:GetFastFlag("LuobuDevPublishLuaTempOptIn")
local FFlagUpdatePublishPlacePluginToDevFrameworkContext = game:GetFastFlag("UpdatePublishPlacePluginToDevFrameworkContext")

local KeyProvider = {}

function KeyProvider.getOptInLocationsKeyName()
    assert(FFlagUpdatePublishPlacePluginToDevFrameworkContext and (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn))

    return "OptInLocations"
end

function KeyProvider.getChinaKeyName()
    assert(FFlagUpdatePublishPlacePluginToDevFrameworkContext and (FFlagLuobuDevPublishLua or FFlagLuobuDevPublishLuaTempOptIn))

    return "China"
end

return KeyProvider
