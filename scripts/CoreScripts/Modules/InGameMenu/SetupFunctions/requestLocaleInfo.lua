--Remove with isNewGamepadMenuEnabled

local HttpRbxApiService = game:GetService("HttpRbxApiService")

local InGameMenu = script.Parent.Parent

local SetLanguageCodeMap = require(InGameMenu.Actions.SetLanguageCodeMap)

local httpImpl = require(InGameMenu.Network.httpRequest)(HttpRbxApiService)
local GetSupportedLanguages = require(InGameMenu.Network.Requests.GetSupportedLanguages)

local function requestLocaleInfo(store)
	GetSupportedLanguages(httpImpl):andThen(function(result)
		local data = result.responseBody.data

		local languageCodeMap = {}

		for _, localeInfo in ipairs(data) do
			-- Locale being repeated here twice looks wrong but it is correct.
			-- Web passes in the locales with _ as a seperator but we use - on the client
			languageCodeMap[localeInfo.locale.locale:gsub("_", "-")] = localeInfo.locale.language.languageCode
		end

		store:dispatch(SetLanguageCodeMap(languageCodeMap))
	end):catch(function()
		warn("Unable to retrieve supported roblox languages.")
	end)
end

return requestLocaleInfo