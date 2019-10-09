local Action = require(script.Parent.Action)

return Action(script.Name, function(planeLock)
	if planeLock then
		assert(type(planeLock) == "boolean", string.format("Expected planeLock to be a boolean, received %s", type(planeLock)))
	end
	return {
		planeLock = planeLock,
	}
end)