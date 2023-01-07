local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local llama = dependencies.llama

return function(reducer, actionsToConvert, defaultState)
	return function(state, action)
		state = state or defaultState

		local actions = { action }
		local convert = actionsToConvert[action.type]
		if convert then
			actions = convert(action)
		end

		return llama.List.reduce(actions, reducer, state)
	end
end
