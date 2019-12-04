local Action = require(script.Parent.Action)

return Action(script.Name, function(allPoliciesResponse, playerPolicyResponse, plugin)
	assert(type(allPoliciesResponse) == "table", "Expected allPoliciesResponse to be a table")
	assert(type(playerPolicyResponse) == "table", "Expected playerPolicyResponse to be a table")

	return {
		allPoliciesResponse = allPoliciesResponse,
		playerPolicyResponse = playerPolicyResponse,
		plugin = plugin,
	}
end)