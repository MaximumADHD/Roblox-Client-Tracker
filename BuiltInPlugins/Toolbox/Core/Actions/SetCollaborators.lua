local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(collaborators)
	return {
		collaborators = collaborators,
	}
end)
