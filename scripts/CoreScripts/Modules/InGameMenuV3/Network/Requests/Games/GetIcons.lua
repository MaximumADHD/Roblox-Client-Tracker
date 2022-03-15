local InGameMenu = script.Parent.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

--[[
	Returns the game icon for a universe.
	Docs: https://games.roblox.com/docs#!/Games/get_v1_games_universeId_icon

	TODO: Change this to use the localized game endpoint:
	https://gameinternationalization.roblox.com/docs#!/GameIcon/get_v1_game_icon_games_gameId

	We currently can't do this because we can't use the CDN URLs that this
	endpoint returns in the game DataModel. When we move into the app DM, we can
	switch over to that method to ensure that we're showing properly localized
	game icons.

	{
		"imageId": 0
	}
]]
return function(requestImpl, universeId)
	local url = string.format("%sv1/games/%d/icon", Url.GAME_URL, universeId)
	return requestImpl(url, "GET")
end