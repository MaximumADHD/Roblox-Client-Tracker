--Remove with isNewGamepadMenuEnabled

local InGameMenu = script.Parent.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

--[[
	This endpoint (gameinternationalization/v1/source-language/games/{gameId})
	returns the games default language
	Docs: https://gameinternationalization.roblox.com/docs#!/SourceLanguage/get_v1_source_language_games_gameId

	{
		"name": "English",
		"nativeName": "English",
		"languageCode": "en"
	}
]]

return function(requestImpl, gameId)
	local url = string.format("%sv1/source-language/games/%s", Url.GAME_I18N_URL, gameId)
	return requestImpl(url, "GET")
end