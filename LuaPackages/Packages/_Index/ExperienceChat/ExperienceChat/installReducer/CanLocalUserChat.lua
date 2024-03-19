local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)

local Actions = ExperienceChat.Actions
local ChatPrivacySettingsReceived = require(Actions.ChatPrivacySettingsReceived)
local ChatPrivacySettingsFetchFailed = require(Actions.ChatPrivacySettingsFetchFailed)

return Rodux.createReducer(false, {
	[ChatPrivacySettingsReceived.name] = function(_, action: ChatPrivacySettingsReceived.Action)
		return action.canUserChat
	end :: any,

	[ChatPrivacySettingsFetchFailed.name] = function(_, _)
		return false
	end :: any,
})
