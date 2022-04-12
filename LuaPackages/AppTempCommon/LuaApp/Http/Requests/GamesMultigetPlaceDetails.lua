local CorePackages = game:GetService("CorePackages")

local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

--[[
	This endpoint returns games' information with a batches of place ids
	Doc: https://games.roblox.com/docs#!/Games/get_v1_games_multiget_place_details
	{
    	"placeId": 0,
		"name": "string",
		"description": "string",
		"sourceName": "string",
		"sourceDescription": "string",
		"url": "string",
		"builder": "string",
		"builderId": 0,
		"isPlayable": true,
		"reasonProhibited": "string",
		"universeId": 0,
		"universeRootPlaceId": 0,
		"price": 0,
		"imageToken": "string"
	}
]]--

return function(requestImpl, placeIds)
	local argTable = {
		placeIds = placeIds,
	}

	local args = Url:makeQueryString(argTable)
	local url = string.format("%s/v1/games/multiget-place-details?%s", Url.GAME_URL, args)

	return requestImpl(url, "GET")
end