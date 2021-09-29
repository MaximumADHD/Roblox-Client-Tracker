local Action = require(script.Parent.Action)

return Action(script.Name, function(planeCFrame)
	assert(tostring(planeCFrame) == "Cryo.None" or typeof(planeCFrame) == "CFrame" or not planeCFrame)
	
	return {
		planeCFrame = planeCFrame,
	}
end)
