local AnalyticsService = game:GetService("RbxAnalyticsService")

local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Dictionary = require(Packages.llama).Dictionary

local Logger = require(ExperienceChat.Logger):new("ExpChat/" .. script.Name)

-- type AdditionalArgs = { [string]: string | number }
type AdditionalArgs = any -- TODO fix any issues with AdditionalArgs

local Analytics = {}
local service = AnalyticsService

local function withDefaultArgs(args: AdditionalArgs)
	return Dictionary.join(args, {
		gameId = tostring(game.GameId),
		placeId = tostring(game.PlaceId),
	})
end

local function setRbxEventStream(bucket: string, context: string, eventName: string, args: AdditionalArgs?)
	if service then
		Logger:debug("Event: {}", eventName)
		service:SetRBXEventStream(bucket, context, eventName, withDefaultArgs(args or {}))
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

function Analytics.reportCounter(counterName: string, amount: number?)
	if service then
		Logger:debug("Counter: {}", counterName)
		service:ReportCounter(counterName, amount or 1)
	end
end

return Analytics
