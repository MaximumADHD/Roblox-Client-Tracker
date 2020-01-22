local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(tabName, fieldName, hasError)
	return {
		tabName = tabName,
		fieldName = fieldName,
		hasError = hasError,
	}
end)
