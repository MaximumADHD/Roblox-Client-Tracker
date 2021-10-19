local Action = require(script.Parent.Action)

return Action(script.Name, function(planeLockActive)
	assert(type(planeLockActive) == "boolean", ("Expected planeLockActive to be a boolean, received %s"):format(
		type(planeLockActive)))

	return {
		planeLockActive = planeLockActive,
	}
end)
