local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local Constants = require(InGameMenu.Resources.Constants)

local SetLocaleId = require(InGameMenu.Actions.SetLocaleId)
local SetNames = require(InGameMenu.Actions.SetNames)
local SetDescriptions = require(InGameMenu.Actions.SetDescriptions)
local SetSourceLocaleId = require(InGameMenu.Actions.SetSourceLocaleId)

local function getLocalized(langaugeTable, currentLocaleId, sourceLocaleId)
	if langaugeTable[currentLocaleId] then
		return langaugeTable[currentLocaleId]
	end

	if langaugeTable[sourceLocaleId] then
		return langaugeTable[sourceLocaleId]
	end

	if langaugeTable[Constants.FallbackLocaleId] then
		return langaugeTable[Constants.FallbackLocaleId]
	end

	return nil
end

return Rodux.createReducer({
	currentLocaleId = nil,
	sourceLocaleId = "en",
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
		local currentName = getLocalized(state.gameNames, action.newLocaleId, state.sourceLocaleId)
		local currentDescription = getLocalized(state.gameDescriptions, action.newLocaleId, state.sourceLocaleId)

		return Cryo.Dictionary.join(state, {
			currentLocaleId = action.newLocaleId,
			currentGameName = currentName,
			currentGameDescription = currentDescription,
		})
	end,
	[SetSourceLocaleId.name] = function(state, action)
		local currentName = getLocalized(state.gameNames, state.currentLocaleId, action.localeId)
		local currentDescription = getLocalized(state.gameDescriptions, state.currentLocaleId, action.localeId)

		return Cryo.Dictionary.join(state, {
			sourceLocaleId = action.localeId,
			currentGameName = currentName,
			currentGameDescription = currentDescription,
		})
	end,
	[SetNames.name] = function(state, action)
		local currentName = getLocalized(action.newNames, state.currentLocaleId, state.sourceLocaleId)

		return Cryo.Dictionary.join(state, {
			gameNames = action.newNames,
			currentGameName = currentName,
		})
	end,
	[SetDescriptions.name] = function(state, action)
		local currentDescription = getLocalized(action.newDescriptions, state.currentLocaleId, state.sourceLocaleId)

		return Cryo.Dictionary.join(state, {
			gameDescriptions = action.newDescriptions,
			currentGameDescription = currentDescription,
		})
	end,
})