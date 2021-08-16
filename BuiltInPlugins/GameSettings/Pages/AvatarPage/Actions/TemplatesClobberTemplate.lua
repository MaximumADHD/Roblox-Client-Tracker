local Plugin = script.Parent.Parent.Parent.Parent
local Action = require(Plugin.Framework).Util.Action

return Action(script.Name, function(templateId, model)
	return {
		templateToClobber = templateId,
		newTemplateModel = model
	}
end)
