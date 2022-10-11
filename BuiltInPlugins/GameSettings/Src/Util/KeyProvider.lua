-- Centralized Place for Keys used throughout the widget
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
	return "GameSettings"
end

function KeyProvider.getPluginKeyName()
	return "plugin"
end

function KeyProvider.getContextKeyName()
	return "context"
end

function KeyProvider.getLuobuStudioDevPublishKeyName()
	return "LuobuStudioDevPublish"
end

function KeyProvider.getTermsOfUseDialogKeyName()
	return "TermsOfUseDialog"
end

function KeyProvider.getCheckboxToggleKeyName()
	return "CheckboxToggle"
end

function KeyProvider.getButtonClickedKeyName()
	return "buttonClicked"
end

function KeyProvider.getFooterKeyName()
	return "Footer"
end

function KeyProvider.getScriptCollaborationEnabledOnServerKeyName()
	return "ScriptCollaborationEnabledOnServer"
end

function KeyProvider.getTeamCreateEnabledKeyName()
	return "TeamCreateEnabled"
end

return KeyProvider
