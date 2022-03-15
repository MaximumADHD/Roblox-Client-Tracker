local HttpService = game:GetService("HttpService")
local InGameMenu = script.Parent.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)


--[[
	Documentation of endpoint:
	https://games.roblox.com/docs#!/Favorites/post_v1_games_universeId_favorites

	input:
		universeId : string,
		isFavorited : boolean
]]

return function(requestImpl, universeId, isFavorited)
	assert(type(universeId) == "string", "GamePostFavorite request expects universeId to be a string")
	assert(type(isFavorited) == "boolean", "GamePostFavorite request expects isFavorited to be a boolean")

	local url = string.format("%sv1/games/%s/favorites", Url.GAME_URL, universeId)

	local body = HttpService:JSONEncode({
		isFavorited = isFavorited,
	})

	return requestImpl(url, "POST", { postBody = body })
end
