--Remove with isNewGamepadMenuEnabled

local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local Constants = require(InGameMenu.Resources.Constants)

local SetLocaleId = require(InGameMenu.Actions.SetLocaleId)
local SetNames = require(InGameMenu.Actions.SetNames)
local SetDescriptions = require(InGameMenu.Actions.SetDescriptions)
local SetSourceLanguageCode = require(InGameMenu.Actions.SetSourceLanguageCode)
local SetLanguageCodeMap = require(InGameMenu.Actions.SetLanguageCodeMap)

local function getCurrentLanguageCode(currentLocaleId, languageCodeMap)
	if languageCodeMap and languageCodeMap[currentLocaleId] then
		return languageCodeMap[currentLocaleId]
	end

	-- This fallback works for some locale to language code mappings
	if currentLocaleId:find("-") then
		return currentLocaleId:split("-")[1]
	end

	return currentLocaleId
end

local function getLocalized(languageTable, currentLanguageCode, sourceLanguageCode)
	if languageTable[currentLanguageCode] then
		return languageTable[currentLanguageCode]
	end

	if languageTable[sourceLanguageCode] then
		return languageTable[sourceLanguageCode]
	end

	if languageTable[Constants.FallbackLocaleId] then
		return languageTable[Constants.FallbackLocaleId]
	end

	return nil
end

return Rodux.createReducer({
	currentLocaleId = "en-us",
	localeToLanguageCodeMap = {},
	sourceLanguageCode = "en",
	gameNames = {
		[Constants.FallbackLocaleId] = "Game",
	},
	gameDescriptions = {
		[Constants.FallbackLocaleId] = "",
	},

	currentGameName = "Game",
	currentGameDescription = "",
}, {
	[SetLocaleId.name] = function(state, action)
		local currentLanguageCode = getCurrentLanguageCode(action.newLocaleId, state.localeToLanguageCodeMap)
		local currentName = getLocalized(state.gameNames, currentLanguageCode, state.sourceLanguageCode)
		local currentDescription = getLocalized(state.gameDescriptions, currentLanguageCode, state.sourceLanguageCode)

		return Cryo.Dictionary.join(state, {
			currentLocaleId = action.newLocaleId,
			currentGameName = currentName,
			currentGameDescription = currentDescription,
		})
	end,

	[SetLanguageCodeMap.name] = function(state, action)
		local currentLanguageCode = getCurrentLanguageCode(state.currentLocaleId, action.languageCodeMap)
		local currentName = getLocalized(state.gameNames, currentLanguageCode, state.sourceLanguageCode)
		local currentDescription = getLocalized(state.gameDescriptions, currentLanguageCode, state.sourceLanguageCode)

		return Cryo.Dictionary.join(state, {
			localeToLanguageCodeMap = action.languageCodeMap,
			currentGameName = currentName,
			currentGameDescription = currentDescription,
		})
	end,

	[SetSourceLanguageCode.name] = function(state, action)
		local currentLanguageCode = getCurrentLanguageCode(state.currentLocaleId, state.localeToLanguageCodeMap)
		local currentName = getLocalized(state.gameNames, currentLanguageCode, action.languageCode)
		local currentDescription = getLocalized(state.gameDescriptions, currentLanguageCode, action.languageCode)

		return Cryo.Dictionary.join(state, {
			sourceLanguageCode = action.languageCode,
			currentGameName = currentName,
			currentGameDescription = currentDescription,
		})
	end,

	[SetNames.name] = function(state, action)
		local currentLanguageCode = getCurrentLanguageCode(state.currentLocaleId, state.localeToLanguageCodeMap)
		local currentName = getLocalized(action.newNames, currentLanguageCode, state.sourceLanguageCode)

		return Cryo.Dictionary.join(state, {
			gameNames = action.newNames,
			currentGameName = currentName,
		})
	end,

	[SetDescriptions.name] = function(state, action)
		local currentLanguageCode = getCurrentLanguageCode(state.currentLocaleId, state.localeToLanguageCodeMap)
		local currentDescription = getLocalized(action.newDescriptions, currentLanguageCode, state.sourceLanguageCode)

		return Cryo.Dictionary.join(state, {
			gameDescriptions = action.newDescriptions,
			currentGameDescription = currentDescription,
		})
	end,
})