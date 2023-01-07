game:DefineFastFlag("PYMKCarouselIncomingFriendRequestAnalytics", false)

local getFFlagPYMKCarouselIncomingFriendRequest = require(script.Parent.getFFlagPYMKCarouselIncomingFriendRequest)

return function()
	return getFFlagPYMKCarouselIncomingFriendRequest()
		and game:GetFastFlag("PYMKCarouselIncomingFriendRequestAnalytics")
end
