local FriendsReducer: any = script:FindFirstAncestor("rodux-friends")
local Root: any = FriendsReducer.Parent
local Rodux: any = require(Root.Rodux)
type NextPageCursor = string?

local DEFAULT_STATE: NextPageCursor = nil

return function(options: any)
	local FriendsNetworking: any = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(_, action: any)
			local response: table = action.responseBody
			local nextPageCursor: NextPageCursor = response.nextPageCursor

			return nextPageCursor
		end,
		[FriendsNetworking.DeclineAllFriendRequests.Succeeded.name] = function()
			return nil
		end,
	})
end
