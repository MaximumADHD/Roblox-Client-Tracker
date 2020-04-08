--[[
	Reducer for cached target auto translation languages given source languages
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)

local LoadedAutoTranslationTargetLanguages = require(Plugin.Src.Actions.LoadedAutoTranslationTargetLanguages)

local function AutoTranslationMetaData(state, action)
	state = state or {}
	if action.type == LoadedAutoTranslationTargetLanguages.name then
		return Cryo.Dictionary.join(state, {[action.sourceLanguage] = action.targetLanguages})
	end

	return state
end

return AutoTranslationMetaData