local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(templateId, model)
	return {
		templateToClobber = templateId,
		newTemplateModel = model
	}
end)