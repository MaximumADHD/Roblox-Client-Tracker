local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local Rodux = dependencies.Rodux
local FriendsNetworking = dependencies.FriendsNetworking
local llama = dependencies.llama
local SocialLibraries = dependencies.SocialLibraries
local getDeepValue = SocialLibraries.Dictionary.getDeepValue

local DEFAULT_STATE = {}

return Rodux.createReducer(DEFAULT_STATE, {
	[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state, action)
		local users = action.responseBody.data
		local newState = llama.Dictionary.map(users, function(user)
			local friendshipOriginSourceType = getDeepValue(user, "friendRequest.originSourceType") or ""
			return friendshipOriginSourceType, tostring(user.id)
		end)
		return newState
	end,
})
