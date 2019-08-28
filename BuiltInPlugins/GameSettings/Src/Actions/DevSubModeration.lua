local Plugin = script.Parent.Parent.Parent
local Action = require(Plugin.Src.Actions.Action)

return Action(script.Name, function(key, isAcceptable, filteredName, filteredDescription)
	return { key = key, isAcceptable = isAcceptable, filteredName = filteredName, filteredDescription = filteredDescription }
end)