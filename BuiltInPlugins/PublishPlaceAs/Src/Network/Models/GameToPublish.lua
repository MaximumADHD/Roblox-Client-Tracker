--[[
	{
		"id": 0,
		"name": "string",
		"description": "string",
		"isArchived": true,
		"rootPlaceId": 0,
		"isActive": true,
		"privacyType": "string",
		"creatorType": "string",
		"creatorTargetId": 0,
		"creatorName": "string",
		"created": "2019-09-24T19:06:13.856Z",
		"updated": "2019-09-24T19:06:13.856Z"
	}
]]

local Game = {}

function Game.mock()
	return {
		creatorTargetId = 22915773,
		rootPlaceId = 10395446,
		name = "yeet game",
		universeId = 149757,
		privateType = "Public",
	}
end

function Game.fromJsonData(gameJson)
	local noCreator = not gameJson.creatorTargetId
	local noRootPlace = not gameJson.rootPlaceId
	if not gameJson.id or noCreator or noRootPlace then
		return false, "Game.fromJsonData received JSON without required fields"
	end
	if type(gameJson.id) ~= "number" then
		return false, "Game.fromJsonData expects id to be a number"
	end
	if type(gameJson.creatorTargetId) ~= "number" then
		return false, "Game.fromJsonData expects creatorId to be a number"
	end
	if type(gameJson.rootPlaceId) ~= "number" then
		return false, "Game.fromJsonData expects rootPlaceId to be a number"
	end
	if type(gameJson.name) ~= "string" then
		return false, "Game.fromJsonData expects name to be a string"
	end
	if type(gameJson.privacyType) ~= "string" then
		return false, "Game.fromJsonData expects privacyType to be a string"
	end

	return true,
		{
			creatorId = gameJson.creatorTargetId,
			rootPlaceId = gameJson.rootPlaceId,
			name = gameJson.name,
			universeId = gameJson.id,
			privacyType = gameJson.privacyType,
		}
end

return Game
