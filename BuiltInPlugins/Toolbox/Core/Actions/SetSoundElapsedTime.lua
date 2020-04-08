local Plugin = script.Parent.Parent.Parent

local Action = require(Plugin.Core.Actions.Action)

return Action(script.Name, function(elapsedTime)
	assert(type(elapsedTime) == "number", "Expected elapsedTime to be a number")
	return {
		elapsedTime = elapsedTime,
	}
end)