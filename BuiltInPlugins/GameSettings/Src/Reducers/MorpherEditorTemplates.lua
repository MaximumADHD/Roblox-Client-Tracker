local Plugin = script.Parent.Parent.Parent

local TemplatesAdd = require(Plugin.Src.Actions.TemplatesAdd)
local TemplatesClobberTemplate = require(Plugin.Src.Actions.TemplatesClobberTemplate)

local UtilityFunctionsTable = require(Plugin.Src.Util.UtilityFunctionsTable)

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