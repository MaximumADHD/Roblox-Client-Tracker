local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(suggestions, sentTime, prefix)
	return {
		suggestions = suggestions,
		sentTime = sentTime,
		prefix = prefix,
	}
end)
