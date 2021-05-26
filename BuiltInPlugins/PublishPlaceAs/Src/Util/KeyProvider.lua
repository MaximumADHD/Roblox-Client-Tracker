-- Centralized Place for Keys used throughout the widget

local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FFlagUpdatePublishPlacePluginToDevFrameworkContext = game:GetFastFlag("UpdatePublishPlacePluginToDevFrameworkContext")

local KeyProvider = {}

function KeyProvider.getOptInLocationsKeyName()
    assert(FFlagUpdatePublishPlacePluginToDevFrameworkContext and FFlagLuobuDevPublishLua)

    return "OptInLocations"
end

function KeyProvider.getChinaKeyName()
    assert(FFlagUpdatePublishPlacePluginToDevFrameworkContext and FFlagLuobuDevPublishLua)

    return "China"
end

return KeyProvider
