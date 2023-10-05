local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local AppTempCommon = CorePackages.AppTempCommon
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Constants = require(AppTempCommon.VoiceChat.Constants)
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()

local GetFFlagVoiceTCSConnectingToast = require(RobloxGui.Modules.Flags.GetFFlagVoiceTCSConnectingToast)

return function(targetUserId: string | number, voiceState, context: string?)
	local localPlayer = Players.LocalPlayer
	if localPlayer then
		if targetUserId == tostring(localPlayer.UserId) then
			if voiceState == Constants.VOICE_STATE.ERROR then
				VoiceChatServiceManager:RejoinPreviousChannel()
			elseif GetFFlagVoiceTCSConnectingToast() and voiceState == Constants.VOICE_STATE.CONNECTING then
				VoiceChatServiceManager:ShowVoiceChatLoadingMessage()
			else
				Analytics:setLastCtx("bubbleChatToggle")
				VoiceChatServiceManager:ToggleMic()
			end
		else
			VoiceChatServiceManager:ToggleMutePlayer(tonumber(targetUserId), context)
		end
	end
end
