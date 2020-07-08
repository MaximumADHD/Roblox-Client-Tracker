--Remove with isNewGamepadMenuEnabled

local InGameMenu = script.Parent.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

--[[
	This endpoint (gameinternationalization/v1/name-description/games/{gameId})
	returns all of the available localized names + descriptions for a game.
	Docs: https://gameinternationalization.roblox.com/docs#!/NameDescription/get_v1_name_description_games_gameId

	{
		"data": [
			{
				"name": "string",
				"description": "string",
				"languageCode": "string"
			}
		]
	}
]]

return function(requestImpl, gameId)
	local url = string.format("%sv1/name-description/games/%s", Url.GAME_I18N_URL, gameId)
	return requestImpl(url, "GET")
end