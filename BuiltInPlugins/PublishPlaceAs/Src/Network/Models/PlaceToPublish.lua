--[[
	{
		id : 3262491642,
		universeId : 1177385430,
		name : "Dust 2",
		description : "Studio Team Game"
	}
]]

local Place = {}

function Place.mock()
	return {
		placeId = 3262491642,
		universeId = 1177385430,
		name = "test place to publish",
		description = "MOCK_DESCRIPTION",
	}
end

function Place.fromJsonData(placeJson)
	if not placeJson then
		return false, "Invalid data to PlaceToPublish"
	end
	if type(placeJson.id) ~= "number" then
		return false, "Place.fromJsonData expects id to be a number"
	end
	if type(placeJson.universeId) ~= "number" then
		return false, "Place.fromJsonData expects universeId to be a number"
	end
	if type(placeJson.name) ~= "string" then
		return false, "Place.fromJsonData expects name to be a string"
	end
	if type(placeJson.description) ~= "string" then
		return false, "Place.fromJsonData expects description to be a string"
	end

	return true,
		{
			name = placeJson.name,
			placeId = placeJson.id,
			universeId = placeJson.universeId,
			description = placeJson.description,
		}
end

return Place
