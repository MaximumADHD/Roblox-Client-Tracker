--!strict
local AnalyticsService = game:GetService("RbxAnalyticsService")
local Players = game:GetService("Players")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local List = require(Packages.llama).List

local Logger = require(ExperienceChat.Logger):new("ExpChat/" .. script.Name)
local Config = require(ExperienceChat.Config)

type AdditionalArgs = { [string]: string & number }

local Analytics = {}
local service = AnalyticsService

local function setRbxEventStream(bucket: string, context: string, eventName: string, args: AdditionalArgs?)
	if service then
		Logger:debug("Event: {}", eventName)
		service:SetRBXEventStream(bucket, context, eventName, args or {})
	end
end

function Analytics.with(analyticsService: any?)
	service = analyticsService or AnalyticsService
end

function Analytics.FireRccAnalyticsWithEventName(eventName: string, args: AdditionalArgs?)
	setRbxEventStream("rcc", "experienceChat", eventName, args)
end

function Analytics.FireClientAnalyticsWithEventName(eventName: string, args: AdditionalArgs?)
	setRbxEventStream("client", "experienceChat", eventName, args)
end

function Analytics.FireSendAsync(targetTextChannel: TextChannel)
	local numParticipants = List.count(targetTextChannel:GetChildren(), function(instance)
		return instance:IsA("TextSource")
	end)

	local args = {
		channelName = targetTextChannel.Name,
		senderUserId = if Players.LocalPlayer then Players.LocalPlayer.UserId else nil,
		numParticipants = numParticipants,
		isDefaultChannel = if Config[targetTextChannel.Name] then "true" else "false",
	}

	Analytics.FireClientAnalyticsWithEventName("LuaMessageSent", args)
end

return Analytics
