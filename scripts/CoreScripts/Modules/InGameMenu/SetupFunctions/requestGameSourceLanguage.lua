local HttpRbxApiService = game:GetService("HttpRbxApiService")

local InGameMenu = script.Parent.Parent

local SetSourceLocaleId = require(InGameMenu.Actions.SetSourceLocaleId)

local httpImpl = require(InGameMenu.Network.httpRequest)(HttpRbxApiService)
local GetSourceLanguage = require(InGameMenu.Network.Requests.Games.GetSourceLanguage)

local function requestGameSourceLanguage(store)
	GetSourceLanguage(httpImpl, game.GameId):andThen(function(result)
		local data = result.responseBody

		store:dispatch(SetSourceLocaleId(data.languageCode))
	end):catch(function()
		store:dispatch(SetSourceLocaleId("en")) --Fallback to english.
	end)
end

return requestGameSourceLanguage