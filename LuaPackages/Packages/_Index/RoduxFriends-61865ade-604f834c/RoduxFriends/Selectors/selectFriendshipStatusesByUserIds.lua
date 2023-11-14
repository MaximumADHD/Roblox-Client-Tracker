local RoduxFriends = script.Parent.Parent

local getDeepValue = require(RoduxFriends.getDeepValue)
local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)
local filterByKeys = require(script.Parent.filterByKeys)

type RecommendationId = roduxFriendsTypes.UserId

return function(options: roduxFriendsTypes.RoduxFriendsOptions)
	local keyPath = options.keyPath
	return function(state)
		return function(recommendationIds: {[number]: RecommendationId }?): { [RecommendationId]: Enum.FriendStatus }
			local friendshipStatuses = getDeepValue(
				state, string.format("%s.friendshipStatus", keyPath)
			) or {}

			if not recommendationIds then
				return friendshipStatuses
			end

			return filterByKeys(recommendationIds, friendshipStatuses)
		end
	end
end
