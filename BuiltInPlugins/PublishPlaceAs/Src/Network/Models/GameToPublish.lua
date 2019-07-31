--[[
	{
		"id": 988462525,
		"name": "Sanclops's Place",
		"description": "This is your very first Roblox creation. Check it out, then make it your own with Roblox Studio!",
		"creator": {
			"id": 926562939,
			"type": "User"
		},
		"rootPlace": {
			"id": 2735370205,
			"type": "Place"
		},
		"created": "2019-01-10T20:18:09.167Z",
		"updated": "2019-04-24T01:39:07.977Z"
	}
]]

local Game = {}

function Game.mock()
	return {
		creatorId = 22915773,
		creatorType = "User",
		rootPlaceId = 10395446,
		universeId = 149757,
		name = "test place name",
	}
end

function Game.fromJsonData(gameJson)
	local noCreator = not gameJson.creator or not gameJson.creator.id
	local noRootPlace = not gameJson.rootPlace or not gameJson.rootPlace.id
	if not gameJson.id or noCreator or noRootPlace then
		return false, "Game.fromJsonData received JSON without required fields"
	end
	if type(gameJson.id) ~= "number" then
		return false, "Game.fromJsonData expects id to be a number"
	end
	if type(gameJson.creator.id) ~= "number" then
		return false, "Game.fromJsonData expects creatorId to be a number"
	end
	if type(gameJson.rootPlace.id) ~= "number" then
		return false, "Game.fromJsonData expects creatorId to be a number"
	end

	if type(gameJson.name) ~= "string" then
		return false, "Game.fromJsonData expects name to be a string"
	end

	return true, {
		name = gameJson.name,
		creatorId = gameJson.creator.id,
		universeId = gameJson.id,
		creatorType = gameJson.creator.type,
		rootPlaceId = gameJson.rootPlace.id,
	}
end

return Game
