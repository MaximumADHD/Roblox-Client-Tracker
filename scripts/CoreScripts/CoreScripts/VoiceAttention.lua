--!nonstrict
--[[
	THIS IS FOR DEMO PURPOSES ONLY AND SHOULD NOT BE ENABLED IN NON-DEMO GAMES
	Bounces voice data for players talking back to the client for voice attention
]]

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local replicatedStorage = game:GetService("ReplicatedStorage")
if replicatedStorage then
	local voiceDataChange = replicatedStorage:WaitForChild("VoiceDataChange")

	VoiceChatServiceManager.participantsUpdate.Event:Connect(function(participants)
		local data = {}

		for userId, participantState in pairs(participants) do
			data[userId] = participantState.isSignalActive
		end

		if next(data) ~= nil then
			voiceDataChange:Fire(data)
		end
	end)
end
