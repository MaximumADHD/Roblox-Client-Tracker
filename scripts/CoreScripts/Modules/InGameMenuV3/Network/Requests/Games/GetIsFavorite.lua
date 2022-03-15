local InGameMenu = script.Parent.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

--[[
	Documentation of endpoint:
	https://games.roblox.com/docs#!/Favorites/get_v1_games_universeId_favorites

	input:
		universeId
	output:
		{
			isFavorited : bool
		}
]]

return function(requestImpl, universeId)
	assert(type(universeId) == "string", "GameGetIsFavorite request expects universeId to be a string")

	local url = string.format("%sv1/games/%s/favorites", Url.GAME_URL, universeId)

	return requestImpl(url, "GET")
end
