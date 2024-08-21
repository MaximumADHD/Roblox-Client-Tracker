--!nonstrict
--[[
	THIS IS FOR DEMO PURPOSES ONLY AND SHOULD NOT BE ENABLED IN NON-DEMO GAMES
	We need corescript access for voice data, this set that as boolean attributes on the players locally
]]

local Players =  game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local RobloxGui = CoreGui.RobloxGui
local FaceAnimatorService = game:GetService("FaceAnimatorService")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

VoiceChatServiceManager.participantsUpdate.Event:Connect(function(participants)
	for userId, participantState in pairs(participants) do
		local player = Players:GetPlayerByUserId(userId)
		if player then
			player:SetAttribute("RBXAttentionVoiceIsActive", participantState.isSignalActive)
		end
	end
end)

local function setLocalPlayerVideoAnimationEnabled()
	local player = Players.LocalPlayer
	if player then
		player:SetAttribute("RBXAttentionVideoAnimationEnabled", FaceAnimatorService.VideoAnimationEnabled)
	end
end

setLocalPlayerVideoAnimationEnabled()
FaceAnimatorService:GetPropertyChangedSignal("VideoAnimationEnabled"):Connect(setLocalPlayerVideoAnimationEnabled)
