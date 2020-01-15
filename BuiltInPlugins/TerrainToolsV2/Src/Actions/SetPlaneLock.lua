local Action = require(script.Parent.Action)

return Action(script.Name, function(planeLock)
	assert(type(planeLock) == "boolean", ("Expected planeLock to be a boolean, received %s"):format(type(planeLock)))

	return {
		planeLock = planeLock,
	}
end)
