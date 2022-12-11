local HttpService = game:GetService("HttpService")

local Root = script.Parent
local Packages = Root.Parent
local MessageBus = require(Packages.MessageBus).MessageBus
local t = require(Packages.t)
local Cryo = require(Packages.Cryo)

local Types = require(script.Parent.GameProtocolTypes)

local FFlagExperienceJoinAttemptId = require(script.Parent.Flags.FFlagExperienceJoinAttemptId)

type LaunchParams = Types.LaunchParams
export type GameProtocol = Types.GameProtocol

export type GameProtocolModule = GameProtocol & {
	new: () -> GameProtocol,
	default: GameProtocol,
}

local NAME = "Game"

local optionalParams
if FFlagExperienceJoinAttemptId then
	optionalParams = t.strictInterface({
		placeId = t.optional(t.number),
		userId = t.optional(t.number),
		accessCode = t.optional(t.string),
		gameInstanceId = t.optional(t.string),
		linkCode = t.optional(t.string),
		referralPage = t.optional(t.string),
		-- Source used for analytics attribution. E.g (UserProfile,
		-- FriendsCarousel)
		joinAttemptOrigin = t.optional(t.string),
		-- GUID (e.g of the form F1DC45AA-CD03-484B-B4BF-0C98150BFF0B) to
		-- follow along until join is success. The id can help ingest analytic
		-- events and help debugging the Game Join API.
		joinAttemptId = t.string,
	})
else
	optionalParams = t.strictInterface({
		placeId = t.optional(t.number),
		userId = t.optional(t.number),
		accessCode = t.optional(t.string),
		gameInstanceId = t.optional(t.string),
		linkCode = t.optional(t.string),
		referralPage = t.optional(t.string),
	})
end

local function checkRequiredParams(props)
	return props.placeId or props.userId
end

local GameProtocol: GameProtocolModule = {
	GAME_LAUNCH_DESCRIPTOR = {
		mid = MessageBus.getMessageId(NAME, "launch"),
		validateParams = t.intersection(optionalParams, checkRequiredParams),
	},
} :: GameProtocolModule;
(GameProtocol :: any).__index = GameProtocol

function GameProtocol.new(): GameProtocol
	local self = setmetatable({
		subscriber = MessageBus.Subscriber.new(),
	}, GameProtocol)
	return (self :: any) :: GameProtocol
end

function GameProtocol:launchGame(params: LaunchParams, source: string?, onLaunchGameCallback: (string) -> () | nil): ()
	if type(params.placeId) == "string" then
		params.placeId = tonumber(params.placeId)
	end
	if type(params.userId) == "string" then
		params.userId = tonumber(params.userId)
	end

	if FFlagExperienceJoinAttemptId then
		local joinAttemptId = HttpService:GenerateGUID(false)
		params = Cryo.Dictionary.join(params, {
			joinAttemptId = joinAttemptId,
			joinAttemptOrigin = source,
		})

		if onLaunchGameCallback then
			onLaunchGameCallback(joinAttemptId)
		end
	end

	MessageBus.publish(self.GAME_LAUNCH_DESCRIPTOR, params)
end

GameProtocol.default = GameProtocol.new()

return GameProtocol
