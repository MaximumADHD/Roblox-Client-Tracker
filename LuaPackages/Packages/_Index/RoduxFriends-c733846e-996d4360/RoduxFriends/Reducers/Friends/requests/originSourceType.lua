--!strict
local FriendsReducer = script:FindFirstAncestor("RoduxFriends")
local Root = FriendsReducer.Parent
local Rodux = require(Root.Rodux)
local RoduxFriends = script.Parent.Parent.Parent.Parent

local getDeepValue = require(RoduxFriends.getDeepValue)
local llama = require(Root.llama) :: any

local DEFAULT_STATE = {}

return function(options)
	local FriendsNetworking = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state, action)
			local users = action.responseBody.data
			local newState = llama.Dictionary.map(users, function(user)
				local friendshipOriginSourceType = getDeepValue(user, "friendRequest.originSourceType")
				return friendshipOriginSourceType, tostring(user.id)
			end)
			return newState
		end,
	})
end
