local GameDetailRodux = script:FindFirstAncestor("GameDetailRodux")
local Packages = GameDetailRodux.Parent

local Url = require(Packages.Http).Url

--[[
	Documentation of endpoint:
	https://games.roblox.com/docs#!/Games/get_v1_games

	input:
		list of universe ids, cannot be nil, and cannot exceed 100 IDs.
	output:
		list of GameDetail tables, see Models/GameDetail.lua
]]

local MAX_UNIVERSE_IDS = 100

return function(requestImpl, universeIds)
	assert(type(universeIds) == "table", "GamesMultigetDetails request expects universeIds to be a table")

	if #universeIds == 0 or #universeIds > MAX_UNIVERSE_IDS then
		error("GamesMultigetDetails request expects universeIds count between 1-100")
	end

	local args = table.concat(universeIds, ",")
	local url = string.format("%sv1/games?universeIds=%s", Url.GAME_URL, args)

	return requestImpl(url, "GET")
end
