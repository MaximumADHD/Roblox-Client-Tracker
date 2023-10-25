local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
local OpenOrUpdateDialog = require(RobloxGui.Modules.ContactList.Actions.OpenOrUpdateDialog)

local function tryGetLocalized(key, fallback)
	local success, result = pcall(function()
		return RobloxTranslator:FormatByKey(key)
	end)

	if success then
		return result
	end

	return fallback
end

return function()
	local canUseVoice = VoiceChatServiceManager:userAndPlaceCanUseVoice()
	if not canUseVoice then
		local localizedKeys = {
			title = "Feature.Call.Modal.EnableChatVoiceTitle",
			body = "Feature.Call.Modal.EnableChatVoiceBody",
		}

		local default = {
			title = "Enable chat with voice",
			body = "Turn on chat with voice in Settings > Privacy to talk with others in this experience.",
		}

		local title = tryGetLocalized(localizedKeys.title, default.title)
		local body = tryGetLocalized(localizedKeys.body, default.body)

		return false, OpenOrUpdateDialog(title, body)
	end

	return true, nil
end
