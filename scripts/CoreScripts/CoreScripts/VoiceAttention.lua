--!nonstrict
--[[
	THIS IS FOR DEMO PURPOSES ONLY AND SHOULD NOT BE ENABLED IN NON-DEMO GAMES
	We need corescript access for voice data, this set that as boolean attributes on the players locally
]]

local Players =  game:GetService("Players")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

VoiceChatServiceManager.participantsUpdate.Event:Connect(function(participants)
	for userId, participantState in pairs(participants) do
		local player = Players:GetPlayerByUserId(userId)
		if player then
			player:SetAttribute("RBXAttentionVoiceIsActive", participantState.isSignalActive)
		end
	end
end)