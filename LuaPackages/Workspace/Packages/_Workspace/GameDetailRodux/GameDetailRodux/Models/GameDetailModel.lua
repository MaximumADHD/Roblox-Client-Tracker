--!nonstrict
--[[

	Documentation of endpoint:
	https://games.roblox.com/docs#!/Games/get_v1_games

	{
		"id": string, (universe id)
		"rootPlaceId": string,
		"name": string,
		"description": string,
		"sourceName": string,
		"sourceDescription": string,
		"creator": {
			"id": number,
			"name": string,
			"type": string,  ("User", "Group")
			"isRNVAccount": bool,
			"hasVerifiedBadge": bool,
		},
		"price": number,
		"isExperimental": bool,
		"allowedGearGenres": list of strings.
			eg: [
				"TownAndCity",
				"FPS"
			],
		"allowedGearCategories": list of strings..?,
		"playing": number,
		"visits": number,
		"maxPlayers": number,
		"created": string, eg: "2016-02-26T00:48:29.66",
		"updated": string, eg: "2018-10-04T10:39:37.3891834-05:00",
		"studioAccessToApisAllowed": bool,
		"createVipServersAllowed": bool,
		"universeAvatarType": string, eg: "MorphToR15"
		"genre": "string"
	}
]]

local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local Packages = GameDetailRodux.Parent

local LuaDateTime = require(Packages.Time).DateTime
local GetFFlagEnableSwapToSourceButton = require(Packages.SharedFlags).GetFFlagEnableSwapToSourceButton
local FFlagUsePSEnabledInUniverseEndpoint = require(GameDetailRodux.Flags.FFlagUsePSEnabledInUniverseEndpoint)

local GameDetail = {}

function GameDetail.new()
	local self = {}

	return self
end

function GameDetail.mock(universeId, name)
	local self = GameDetail.new()

	local creationTime = LuaDateTime.new()
	local updateTime = LuaDateTime.fromUnixTimestamp(creationTime:GetUnixTimestamp() + 60) -- one minute in the future

	self.id = universeId
	self.rootPlaceId = "370731277"
	self.name = name
	self.description = "This is MeepCity"
	self.sourceName = if GetFFlagEnableSwapToSourceButton() then "source name" else nil
	self.sourceDescription = if GetFFlagEnableSwapToSourceButton() then "source description" else nil
	self.creator = {
		id = 123247,
		name = "alexnewtron",
		type = "User",
		isRNVAccount = false,
		hasVerifiedBadge = false,
	}
	self.price = nil
	self.isExperimental = false
	self.allowedGearGenres = { "TownAndCity" }
	self.allowedGearCategories = {}
	self.playing = 49252
	self.visits = 2358954901
	self.maxPlayers = 110
	self.created = creationTime:GetIsoDate()
	self.updated = updateTime:GetIsoDate()
	self.studioAccessToApisAllowed = true
	if not FFlagUsePSEnabledInUniverseEndpoint() then
		self.createVipServersAllowed = true
	end
	self.universeAvatarType = "MorphToR15"
	self.genre = "Town and City"
	return self
end

function GameDetail.fromJsonData(gameDetailJson)
	local self = GameDetail.new()

	self.id = tostring(gameDetailJson.id)
	self.rootPlaceId = tostring(gameDetailJson.rootPlaceId)
	self.name = gameDetailJson.name
	self.description = gameDetailJson.description
	self.sourceName = if GetFFlagEnableSwapToSourceButton() then gameDetailJson.sourceName else nil
	self.sourceDescription = if GetFFlagEnableSwapToSourceButton() then gameDetailJson.sourceDescription else nil
	self.creator = {
		id = gameDetailJson.creator.id,
		name = gameDetailJson.creator.name,
		type = gameDetailJson.creator.type,
		isRNVAccount = gameDetailJson.creator.isRNVAccount,
		hasVerifiedBadge = gameDetailJson.creator.hasVerifiedBadge,
	}
	self.price = gameDetailJson.price
	self.isExperimental = gameDetailJson.isExperimental
	self.allowedGearGenres = gameDetailJson.allowedGearGenres
	self.allowedGearCategories = gameDetailJson.allowedGearCategories
	self.playing = gameDetailJson.playing
	self.visits = gameDetailJson.visits
	self.maxPlayers = gameDetailJson.maxPlayers
	self.created = gameDetailJson.created
	self.updated = gameDetailJson.updated
	self.studioAccessToApisAllowed = gameDetailJson.studioAccessToApisAllowed
	if not FFlagUsePSEnabledInUniverseEndpoint() then
		self.createVipServersAllowed = gameDetailJson.createVipServersAllowed
	end
	self.universeAvatarType = gameDetailJson.universeAvatarType
	self.genre = gameDetailJson.genre
	return self
end

return GameDetail
