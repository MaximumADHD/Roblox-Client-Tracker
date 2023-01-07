local FriendsCarousel = script.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local SocialLuaAnalytics = dependencies.SocialLuaAnalytics
local Enums = SocialLuaAnalytics.Analytics.Enums
local FriendStatuses = Enums.FriendStatuses
local LocalTypes = require(FriendsCarousel.Common.LocalTypes)

local getFFlagFriendsCarouselIncomingFriendRequestAnalytics =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselIncomingFriendRequestAnalytics)

return function(user: LocalTypes.additionalUserFields)
	if user.isFriendWithUser then
		return FriendStatuses.Friends.rawValue()
	elseif user.hasPendingFriendRequest then
		return FriendStatuses.RequestSent.rawValue()
	elseif getFFlagFriendsCarouselIncomingFriendRequestAnalytics() and user.hasIncomingFriendRequest then
		return FriendStatuses.RequestReceived.rawValue()
	else
		return FriendStatuses.NotFriends.rawValue()
	end
end
