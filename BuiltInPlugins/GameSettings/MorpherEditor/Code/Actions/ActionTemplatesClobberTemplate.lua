local paths = require(script.Parent.Parent.Paths)

return paths.UtilityFunctionsAction.createAction(script.Name, function(templateId, model)
	return {
		templateToClobber = templateId,		
		newTemplateModel = model
	}
end)