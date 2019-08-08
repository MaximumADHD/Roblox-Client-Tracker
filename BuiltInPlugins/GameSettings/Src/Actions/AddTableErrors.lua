local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(keys, errors)
	return {
        keys = keys,
		errors = errors,
	}
end)