local Action = require(script.Parent.Action)

return Action(script.Name, function(allPolicies, allPolicySortedKeys)
	assert(type(allPolicies) == "table", "Expected allPolicies to be a table")
	assert(type(allPolicySortedKeys) == "table", "Expected allPolicySortedKeys to be a table")

	return {
		allPolicies = allPolicies,
		allPolicySortedKeys = allPolicySortedKeys,
	}
end)