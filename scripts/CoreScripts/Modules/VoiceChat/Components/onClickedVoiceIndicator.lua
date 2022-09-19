local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local AppTempCommon = CorePackages.AppTempCommon
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Constants = require(AppTempCommon.VoiceChat.Constants)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

return function(targetUserId: string | number, voiceState)
	local localPlayer = Players.LocalPlayer
	if localPlayer then
		if targetUserId == tostring(localPlayer.UserId) then
			if voiceState == Constants.VOICE_STATE.ERROR then
				VoiceChatServiceManager:RejoinPreviousChannel()
			else
				VoiceChatServiceManager:ToggleMic()
			end
		else
			VoiceChatServiceManager:ToggleMutePlayer(tonumber(targetUserId))
		end
	end
end
