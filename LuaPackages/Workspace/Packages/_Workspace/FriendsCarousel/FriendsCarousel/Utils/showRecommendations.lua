local FriendsCarousel = script.Parent.Parent
local getFIntShowFriendRecommendationsLimit = require(FriendsCarousel.Flags.getFIntShowFriendRecommendationsLimit)

return function(friendsCount: number): boolean
	return friendsCount <= getFIntShowFriendRecommendationsLimit()
end
