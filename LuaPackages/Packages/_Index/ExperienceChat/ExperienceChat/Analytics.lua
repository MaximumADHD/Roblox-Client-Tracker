--!strict
local AnalyticsService = game:GetService("RbxAnalyticsService")
local Players = game:GetService("Players")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local List = require(Packages.llama).List

local Config = require(ExperienceChat.Config)

local function setRbxEventStream(...)
	local args = { ... }
	pcall(function()
		AnalyticsService:SetRBXEventStream(table.unpack(args))
	end)
end

local Analytics = {}

function Analytics.FireSendAsync(targetTextChannel: TextChannel)
	local numParticipants = List.count(targetTextChannel:GetChildren(), function(instance)
		return instance:IsA("TextSource")
	end)

	local args = {
		channelName = targetTextChannel.Name,
		senderUserId = Players.LocalPlayer and Players.LocalPlayer.UserId,
		numParticipants = numParticipants,
		isDefaultChannel = if Config[targetTextChannel.Name] then true else false,
	}

	setRbxEventStream("client", "experienceChat", "LuaMessageSent", args)
end

function Analytics.FireRccAnalyticsWithEventName(eventName)
	setRbxEventStream("rcc", "experienceChat", eventName)
end

return Analytics
