local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)

game:DefineFastFlag("PYMKCarouselIncomingFriendshipReducer", false)

return function()
	return dependencies.getFFlagSocialUpdateRoduxFriendsv314()
		and game:GetFastFlag("PYMKCarouselIncomingFriendshipReducer")
end
