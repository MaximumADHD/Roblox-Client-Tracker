local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local Rodux = dependencies.Rodux
local FriendsNetworking = dependencies.FriendsNetworking
local llama = dependencies.llama

local DEFAULT_STATE = {}

return Rodux.createReducer(DEFAULT_STATE, {
	[FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(state, action)
		local users = action.responseBody.data
		return llama.Dictionary.map(users, function(user)
			return user.isDeleted, tostring(user.id)
		end)
	end,
})
