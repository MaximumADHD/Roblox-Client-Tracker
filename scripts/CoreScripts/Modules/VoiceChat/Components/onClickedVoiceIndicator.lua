local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Constants = require(CorePackages.Workspace.Packages.VoiceChat).Constants
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local Analytics = require(RobloxGui.Modules.SelfView.Analytics).new()

return function(targetUserId: string | number, voiceState, context: string?)
	local localPlayer = Players.LocalPlayer
	if localPlayer then
		if targetUserId == tostring(localPlayer.UserId) then
			if voiceState == Constants.VOICE_STATE.ERROR then
				VoiceChatServiceManager:RejoinPreviousChannel()
			elseif voiceState == Constants.VOICE_STATE.CONNECTING then
				VoiceChatServiceManager:ShowVoiceChatLoadingMessage()
			else
				Analytics:setLastCtx("bubbleChatToggle")
				VoiceChatServiceManager:ToggleMic(context)
			end
		else
			VoiceChatServiceManager:ToggleMutePlayer(tonumber(targetUserId), context)
		end
	end
end
