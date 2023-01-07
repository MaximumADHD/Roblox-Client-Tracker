local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local Rodux = dependencies.Rodux
local FriendsNetworking = dependencies.FriendsNetworking

local DEFAULT_STATE = {}

return Rodux.createReducer(DEFAULT_STATE, {
	[FriendsNetworking.GetUserFollowers.Succeeded.name] = function(_, action)
		local newState = {}
		local data = action.responseBody.data
		for _, followerData in ipairs(data) do
			local userId = tostring(followerData.id)
			newState[userId] = true
		end
		return newState
	end,
})
