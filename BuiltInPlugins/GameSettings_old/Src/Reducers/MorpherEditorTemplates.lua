local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

local UtilityFunctionsTable = require(Plugin.Src.Util.UtilityFunctionsTable)

local DEFAULT_STATE = {templates = {}}

if game:GetFastFlag("StudioGameSettingsResetStoreAction2") then
	return Rodux.createReducer(DEFAULT_STATE, {
		ResetStore = function(state, action)
			return DEFAULT_STATE
		end,

		TemplatesAdd = function(state, action)
			return Cryo.Dictionary.join(state, {
				templates = action.templatesArrayToAdd,
			})
		end,

		TemplatesClobberTemplate = function(state, action)
			return Cryo.Dictionary.join(state, {
				templates = UtilityFunctionsTable.immutableSetExistingDictionaryEntry(
					state.templates, action.templateToClobber, action.newTemplateModel),
			})
		end,
	})
else
	local TemplatesAdd = require(Plugin.Src.Actions.TemplatesAdd)
	local TemplatesClobberTemplate = require(Plugin.Src.Actions.TemplatesClobberTemplate)

	return function(state, action)
		state = state or {templates = {}}

		if action.type == TemplatesAdd.name then
			return { templates = action.templatesArrayToAdd }
		elseif action.type == TemplatesClobberTemplate then
			return { templates = UtilityFunctionsTable.immutableSetExistingDictionaryEntry(
				state.templates, action.templateToClobber, action.newTemplateModel)}
		end

		return state
	end
end