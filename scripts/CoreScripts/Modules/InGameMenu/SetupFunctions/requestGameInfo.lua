--Remove with isNewGamepadMenuEnabled

local HttpRbxApiService = game:GetService("HttpRbxApiService")

local InGameMenu = script.Parent.Parent

local Constants = require(InGameMenu.Resources.Constants)

local SetNames = require(InGameMenu.Actions.SetNames)
local SetDescriptions = require(InGameMenu.Actions.SetDescriptions)

local httpImpl = require(InGameMenu.Network.httpRequest)(HttpRbxApiService)
local GamesGetNamesAndDescriptions = require(InGameMenu.Network.Requests.Games.GetNamesAndDescriptions)

local function requestGameInfo(store)
	local fallbackName = tostring(game.Name)

	GamesGetNamesAndDescriptions(httpImpl, game.GameId):andThen(function(result)
		local data = result.responseBody.data
		local gameNames = {}
		local gameDescriptions = {}

		for _, nameDescription in ipairs(data) do
			local languageCode = nameDescription.languageCode or Constants.FallbackLocaleId
			if gameNames[languageCode] == nil then
				gameNames[languageCode] = nameDescription.name
			end
			if gameDescriptions[languageCode] == nil then
				gameDescriptions[languageCode] = nameDescription.description
			end
		end

		if gameNames[Constants.FallbackLocaleId] == nil then
			gameNames[Constants.FallbackLocaleId] = fallbackName
		end

		if gameDescriptions[Constants.FallbackLocaleId] == nil then
			gameDescriptions[Constants.FallbackLocaleId] = ""
		end

		return gameNames, gameDescriptions
	end):andThen(function(gameNames, gameDescriptions)
		store:dispatch(SetNames(gameNames))
		store:dispatch(SetDescriptions(gameDescriptions))
	end):catch(function()
		store:dispatch(SetNames({
			[Constants.FallbackLocaleId] = fallbackName,
		}))
	end)
end

return requestGameInfo