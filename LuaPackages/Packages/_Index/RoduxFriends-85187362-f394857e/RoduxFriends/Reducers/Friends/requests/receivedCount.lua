local FriendsReducer = script:FindFirstAncestor("RoduxFriends")
local Root = FriendsReducer.Parent
local Rodux = require(Root.Rodux)
local Actions = FriendsReducer.Actions
local RequestReceivedCountUpdated = require(Actions.RequestReceivedCountUpdated)

local DEFAULT_STATE = 0

return function(options)
	local FriendsNetworking = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[RequestReceivedCountUpdated.name] = function(_, action)
			assert(type(action.payload.count) == "number", "Expected count to be a number")

			return action.payload.count
		end,

		[FriendsNetworking.GetFriendRequestsCount.Succeeded.name] = function(_, action)
			return action.responseBody.count
		end,
	})
end
