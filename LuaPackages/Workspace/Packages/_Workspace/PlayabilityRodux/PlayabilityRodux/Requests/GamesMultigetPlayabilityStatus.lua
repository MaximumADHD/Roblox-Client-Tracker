local PlayabilityRodux = script:FindFirstAncestor("PlayabilityRodux")
local Packages = PlayabilityRodux.Parent

local Url = require(Packages.Http).Url

--[[
	Find document here: https://games.roblox.com/docs#!/Games/get_v1_games_multiget_playability_status

	This endpoint returns a promise that resolves to:
	[
		{
			"playabilityStatus": "UnplayableOtherReason",
			"isPlayable": false,
			"universeId": 0
		}, {...}, ...
	]

	requestImpl - (function<promise<HttpResponse>>(url, requestMethod, options))
	universeIds - (array<long>) the universeIds of the games you want to get playability status for
]]

return function(requestImpl, universeIds)
	assert(type(universeIds) == "table", "GamesMultigetPlayabilityStatus request expects universeId to be a table")

	local args = table.concat(universeIds, ",")
	local url = string.format("%s/v1/games/multiget-playability-status?universeIds=%s", Url.GAME_URL, args)

	-- return a promise of the result listed above
	return requestImpl(url, "GET")
end
