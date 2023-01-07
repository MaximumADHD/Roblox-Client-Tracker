game:DefineFastFlag("FriendsCarouselIncomingFriendRequestAnalytics", false)

local getFFlagFriendsCarouselIncomingFriendRequest = require(script.Parent.getFFlagFriendsCarouselIncomingFriendRequest)

return function()
	return getFFlagFriendsCarouselIncomingFriendRequest()
		and game:GetFastFlag("FriendsCarouselIncomingFriendRequestAnalytics")
end
