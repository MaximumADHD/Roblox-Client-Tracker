local FriendsReducer = script:FindFirstAncestor("RoduxFriends")
local Root = FriendsReducer.Parent
local Rodux = require(Root.Rodux)

local DEFAULT_STATE = {}

-- this assumes that we initially call getFriendRequests without a pageCursor, and only call with pageCursors given by the initial fetch
-- this will also function poorly if we need to refetch old cursors
return function(options)
	local FriendsNetworking = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state, action)
			local order = state or {}
			local count = order.count or 0
			local requestsById = order.requestsById or {}

			local users = action.responseBody.data
			local nextPageCursor = action.responseBody.nextPageCursor

			if nextPageCursor == order.lastCursor and nextPageCursor ~= nil then
				return order
			else
				local currentRequests = requestsById
				local currentCount = count
				for i, user in ipairs(users) do
					local score = count + i
					if not currentRequests[tostring(user.id)] then
						currentRequests[tostring(user.id)] = score
					end
				end

				currentCount = count + #users

				return {
					count = currentCount,
					lastCursor = nextPageCursor,
					requestsById = currentRequests,
				}
			end
		end,
	})
end
