local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(totalTime)
	assert(type(totalTime) == "number", "Expected totalTime to be a number")
	return {
		totalTime = totalTime,
	}
end)