local CorePackages = game:GetService("CorePackages")
local MessageBus = require(CorePackages.UniversalApp.MessageBus)
local t = require(CorePackages.Packages.t)
local Cryo = require(CorePackages.Cryo)

local NAME = "Game"

local optionalParams = t.strictInterface({
	placeId = t.optional(t.number),
	userId = t.optional(t.number),
	accessCode = t.optional(t.string),
	gameInstanceId = t.optional(t.string),
	linkCode = t.optional(t.string),
	referralPage = t.optional(t.string)
})

local function checkRequiredParams(props)
	return props.placeId or props.userId
end 

local GameProtocol = {
	GAME_LAUNCH_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "launch"),
		validateParams = t.intersection(optionalParams, checkRequiredParams)
	}
}

GameProtocol.__index = GameProtocol

function GameProtocol.new(): GameProtocol
	local self = setmetatable({
		subscriber = MessageBus.Subscriber.new(),
	}, GameProtocol)
	return self
end

function GameProtocol:launchGame(params): ()
	if type(params.placeId) == "string" then
		params.placeId = tonumber(params.placeId)
	end
	if type(params.userId) == "string" then
		params.userId = tonumber(params.userId)
	end
	MessageBus.publish(self.GAME_LAUNCH_DESCRIPTOR, params)
end

function GameProtocol:isEnabled(): boolean
	return game:GetEngineFeature("GameProtocol")
end

GameProtocol.default = GameProtocol.new()

return GameProtocol