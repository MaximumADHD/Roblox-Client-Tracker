--Remove with isNewGamepadMenuEnabled

local InGameMenu = script.Parent.Parent.Parent
local Url = require(InGameMenu.Network.Url)

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

return function(requestImpl)
	local url = string.format("%sv1/locales", Url.LOCALE)
	return requestImpl(url, "GET")
end