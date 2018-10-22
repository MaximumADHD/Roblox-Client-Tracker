local paths = require(script.Parent.Parent.Paths)

return function(state, action)
	state = state or {templates = {}}
    
    if paths.UtilityFunctionsAction.isActionOfType(action, paths.ActionTemplatesAdd) then
		return {templates = action.templatesArrayToAdd}
	elseif paths.UtilityFunctionsAction.isActionOfType(action, paths.ActionTemplatesClobberTemplate) then
		return {templates = paths.UtilityFunctionsTable.immutableSetExistingDictionaryEntry(state.templates, action.templateToClobber, action.newTemplateModel)}
	end

	return state
end