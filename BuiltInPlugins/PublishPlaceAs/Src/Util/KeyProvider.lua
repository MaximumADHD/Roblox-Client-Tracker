-- Centralized Place for Keys used throughout the widget

local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FFlagLuobuDevPublishAnalyticsKeys = game:GetFastFlag("LuobuDevPublishAnalyticsKeys")

local KeyProvider = {}

function KeyProvider.getOptInLocationsKeyName()
    assert(FFlagLuobuDevPublishLua)

    return "OptInLocations"
end

function KeyProvider.getChinaKeyName()
    assert(FFlagLuobuDevPublishLua)

    return "China"
end

function KeyProvider.getPublishPlaceAsKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "PublishPlaceAs"
end

function KeyProvider.getPluginKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "plugin"
end

function KeyProvider.getContextKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "context"
end

function KeyProvider.getLuobuStudioDevPublishKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "LuobuStudioDevPublish"
end

function KeyProvider.getTermsOfUseDialogKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "TermsOfUseDialog"
end

function KeyProvider.getSelectedKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "selected"
end

function KeyProvider.getCheckboxToggleKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "CheckboxToggle"
end

function KeyProvider.getButtonClickedKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "buttonClicked"
end

function KeyProvider.getCreateNewGameKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "CreateNewGame"
end

return KeyProvider
