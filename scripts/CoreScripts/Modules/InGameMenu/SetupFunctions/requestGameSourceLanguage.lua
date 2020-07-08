--Remove with isNewGamepadMenuEnabled

local HttpRbxApiService = game:GetService("HttpRbxApiService")

local InGameMenu = script.Parent.Parent

local SetSourceLanguageCode = require(InGameMenu.Actions.SetSourceLanguageCode)

local httpImpl = require(InGameMenu.Network.httpRequest)(HttpRbxApiService)
local GetSourceLanguage = require(InGameMenu.Network.Requests.Games.GetSourceLanguage)

local function requestGameSourceLanguage(store)
	GetSourceLanguage(httpImpl, game.GameId):andThen(function(result)
		local data = result.responseBody

		store:dispatch(SetSourceLanguageCode(data.languageCode))
	end):catch(function()
		store:dispatch(SetSourceLanguageCode("en")) --Fallback to english.
	end)
end

return requestGameSourceLanguage