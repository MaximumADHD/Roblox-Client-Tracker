--[[
	Reducer for cached target auto translation languages given source languages
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

local DEFAULT_STATE = {}

if game:GetFastFlag("StudioGameSettingsResetStoreAction2") then
	return Rodux.createReducer(DEFAULT_STATE, {
		ResetStore = function(state, action)
			return DEFAULT_STATE
		end,

		LoadedAutoTranslationTargetLanguages = function(state, action)
			return Cryo.Dictionary.join(state, {[action.sourceLanguage] = action.targetLanguages})
		end,
	})
else
	local LoadedAutoTranslationTargetLanguages = require(Plugin.Src.Actions.LoadedAutoTranslationTargetLanguages)

	local function AutoTranslationMetaData(state, action)
		state = state or {}
		if action.type == LoadedAutoTranslationTargetLanguages.name then
			return Cryo.Dictionary.join(state, {[action.sourceLanguage] = action.targetLanguages})
		end

		return state
	end

	return AutoTranslationMetaData
end