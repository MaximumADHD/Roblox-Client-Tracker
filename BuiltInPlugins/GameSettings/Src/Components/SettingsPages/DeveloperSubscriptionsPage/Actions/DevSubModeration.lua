local Plugin = script.Parent.Parent.Parent.Parent.Parent.Parent
local Action = require(Plugin.Framework.Util).Action

return Action(script.Name, function(key, isAcceptable, filteredName, filteredDescription)
	return { key = key, isAcceptable = isAcceptable, filteredName = filteredName, filteredDescription = filteredDescription }
end)