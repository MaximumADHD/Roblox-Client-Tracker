--[[
	Reducer for cached target auto translation languages given source languages
]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

local DEFAULT_STATE = {}

return Rodux.createReducer(DEFAULT_STATE, {
	ResetStore = function(state, action)
		return DEFAULT_STATE
	end,

	LoadedAutoTranslationTargetLanguages = function(state, action)
		return Cryo.Dictionary.join(state, {[action.sourceLanguage] = action.targetLanguages})
	end,
})