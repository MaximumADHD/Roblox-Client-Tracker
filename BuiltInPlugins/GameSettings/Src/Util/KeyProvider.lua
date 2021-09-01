-- Centralized Place for Keys used throughout the widget
local FFlagLuobuDevPublishLua = game:GetFastFlag("LuobuDevPublishLua")
local FFlagGameSettingsEnableVoiceChat = game:GetFastFlag("GameSettingsEnableVoiceChat")
local FFlagLuobuDevPublishAnalyticsKeys = game:GetFastFlag("LuobuDevPublishAnalyticsKeys")

local KeyProvider = {}

function KeyProvider.getCopyIdKeyName()
    return "CopyIDToClipboard"
end

function KeyProvider.getConfigureKeyName()
    return "Configure"
end

function KeyProvider.getIsFriendOnlyKeyName()
    return "isFriendsOnly"
end

function KeyProvider.getIsActiveKeyName()
    return "isActive"
end

function KeyProvider.getIsForSaleKeyName()
    return "isForSale"
end

function KeyProvider.getVipServersIsEnabledKeyName()
    return "vipServersIsEnabled"
end

function KeyProvider.getEditKeyName()
    return "Edit"
end

function KeyProvider.getVersionHistoryKeyName()
    return "VersionHistory"
end

function KeyProvider.getOptInLocationsKeyName()
    assert(FFlagLuobuDevPublishLua)

    return "OptInLocations"
end

function KeyProvider.getChinaKeyName()
    assert(FFlagLuobuDevPublishLua)

    return "China"
end

function KeyProvider.getSelectedKeyName()
    assert(FFlagLuobuDevPublishLua)

    return "selected"
end

function KeyProvider.getVoiceChatEnabledKeyName()
    assert(FFlagGameSettingsEnableVoiceChat)

    return "VoiceChatEnabled"
end

function KeyProvider.getApprovedKeyName()
    assert(FFlagLuobuDevPublishLua)

    return "Approved"
end

function KeyProvider.getInReviewKeyName()
    assert(FFlagLuobuDevPublishLua)

    return "InReview"
end

function KeyProvider.getRejectedKeyName()
    assert(FFlagLuobuDevPublishLua)

    return "Rejected"
end

function KeyProvider.getPlayerAcceptanceKeyName()
    assert(FFlagLuobuDevPublishLua)

    return "PlayerAcceptance"
end

function KeyProvider.getGameSettingsKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "GameSettings"
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

function KeyProvider.getCheckboxToggleKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "CheckboxToggle"
end

function KeyProvider.getButtonClickedKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "buttonClicked"
end

function KeyProvider.getFooterKeyName()
    assert(FFlagLuobuDevPublishAnalyticsKeys)

    return "Footer"
end

return KeyProvider
