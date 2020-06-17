local CorePackages = game:GetService("CorePackages")

local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

local GAME_I18N_URL = string.format("https://gameinternationalization.%s", Url.DOMAIN)

local GameRequests = {}

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
function GameRequests.GetNamesAndDescriptions(requestImpl, gameId)
	local url = string.format("%sv1/name-description/games/%s", GAME_I18N_URL, gameId)
	return requestImpl(url, "GET")
end

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
function GameRequests.GetSourceLanguage(requestImpl, gameId)
	local url = string.format("%sv1/source-language/games/%s", GAME_I18N_URL, gameId)
	return requestImpl(url, "GET")
end

--[[
	This endpoint (locale.roblox.com/v1/locales)
	returns information about the supported languages on Roblox
	Docs: https://locale.roblox.com/docs#!/Locale/get_v1_locales_user_locale

	{
		"data": [
			{
				"locale": {
					"id": 0,
					"locale": "string",
					"name": "string",
					"nativeName": "string",
					"language": {
					"id": 0,
					"name": "string",
					"nativeName": "string",
					"languageCode": "string"
					}
				},

				"isEnabledForFullExperience": true,
				"isEnabledForSignupAndLogin": true,
				"isEnabledForInGameUgc": true
			}
		]
	}
]]
function GameRequests.GetSupportedLanguages(requestImpl)
	local url = string.format("%sv1/locales", Url.LOCALE)
	return requestImpl(url, "GET")
end

return GameRequests