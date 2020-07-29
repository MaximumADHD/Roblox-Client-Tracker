local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)
local Rodux = require(Plugin.Rodux)

local UtilityFunctionsTable = require(Plugin.Src.Util.UtilityFunctionsTable)

local DEFAULT_STATE = {templates = {}}

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
