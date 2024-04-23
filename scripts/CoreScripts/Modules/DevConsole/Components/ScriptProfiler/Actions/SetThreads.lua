--!nonstrict
local Action = require(script.Parent.Parent.Parent.Parent.Action)

return Action("ScriptProfiler" .. script.Name, function(isClient, state)
	return {
		isClient = isClient,
		state = state,
	}
end)
