local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local Rodux = dependencies.Rodux
local FriendsNetworking = dependencies.FriendsNetworking

local DEFAULT_STATE = {}

return Rodux.createReducer(DEFAULT_STATE, {
	[FriendsNetworking.GetInactiveFriends.Succeeded.name] = function(state, action)
		local newState = {}
		for key, user in pairs(action.responseBody.data) do
			newState[tostring(user.id)] = true
		end
		return newState
	end,
})
