local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local SetLocaleId = require(InGameMenu.Actions.SetLocaleId)
local SetGameAndDescriptionInfo = require(InGameMenu.Actions.SetGameAndDescriptionInfo)

local function getLocalized(languageTable, currentLocaleId, sourceLocaleId)
	return languageTable[currentLocaleId] or languageTable[sourceLocaleId] or nil
end

return Rodux.createReducer({
	currentLocaleId = "en-us",
	sourceLocaleId = "en-us",

	gameNames = {},
	gameDescriptions = {},

	currentGameName = "Game",
	currentGameDescription = "",
}, {
	[SetLocaleId.name] = function(state, action)
		local currentName = getLocalized(state.gameNames, action.newLocaleId, state.sourceLocaleId)
		local currentDescription = getLocalized(state.gameDescriptions, action.newLocaleId, state.sourceLocaleId)

		return Cryo.Dictionary.join(state, {
			currentLocaleId = action.newLocaleId,

			currentGameName = currentName,
			currentGameDescription = currentDescription,
		})
	end,

	[SetGameAndDescriptionInfo.name] = function(state, action)
		local currentName = getLocalized(action.gameNames, state.currentLocaleId, action.sourceLocale)
		local currentDescription = getLocalized(action.gameDescriptions, state.currentLocaleId, action.sourceLocale)

		return Cryo.Dictionary.join(state, {
			sourceLocaleId = action.sourceLocale,

			gameNames = action.gameNames,
			gameDescriptions = action.gameDescriptions,

			currentGameName = currentName,
			currentGameDescription = currentDescription,
		})
	end,
})
