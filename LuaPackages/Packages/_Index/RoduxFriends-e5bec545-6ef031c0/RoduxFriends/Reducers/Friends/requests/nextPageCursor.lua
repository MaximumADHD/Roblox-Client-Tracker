--!strict
local FriendsReducer: any = script.Parent.Parent.Parent.Parent
local Root: any = FriendsReducer.Parent
local Rodux: any = require(Root.Rodux) :: any
local roduxFriendsTypes = require(FriendsReducer.roduxFriendsTypes)

local DEFAULT_STATE: roduxFriendsTypes.NextPageCursor = nil

return function(options: any)
	local FriendsNetworking: any = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(_, action: roduxFriendsTypes.GetFriendRequestsSucceeded)
			local response = action.responseBody
			local nextPageCursor = response.nextPageCursor

			return nextPageCursor
		end,
		[FriendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function(_, _action: any)
			return nil
		end,
	})
end
