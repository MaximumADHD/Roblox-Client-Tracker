-- Centralized Place for Keys used throughout the widget
local FFlagGameSettingsEnableVoiceChat = game:GetFastFlag("GameSettingsEnableVoiceChat")
local FFlagLuobuDevPublishAnalyticsKeys = game:GetFastFlag("LuobuDevPublishAnalyticsKeys")
local FFlagStudioTeamCreateStreamingEnabled = game:getFastFlag("StudioTeamCreateStreamingEnabled")

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
	return "OptInLocations"
end

function KeyProvider.getChinaKeyName()
	return "China"
end

function KeyProvider.getSelectedKeyName()
	return "selected"
end

function KeyProvider.getVoiceChatEnabledKeyName()
	assert(FFlagGameSettingsEnableVoiceChat)

	return "VoiceChatEnabled"
end

function KeyProvider.getApprovedKeyName()
	return "Approved"
end

function KeyProvider.getInReviewKeyName()
	return "InReview"
end

function KeyProvider.getRejectedKeyName()
	return "Rejected"
end

function KeyProvider.getPlayerAcceptanceKeyName()
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

function KeyProvider.getTeamCreateStreamingEnabledKeyName()
    assert(FFlagStudioTeamCreateStreamingEnabled)
    
    return "TeamCreateStreamingEnabled"
end

function KeyProvider.getTeamCreateEnabledKeyName()
    assert(FFlagStudioTeamCreateStreamingEnabled)
    
    return "TeamCreateEnabled"
end

return KeyProvider
