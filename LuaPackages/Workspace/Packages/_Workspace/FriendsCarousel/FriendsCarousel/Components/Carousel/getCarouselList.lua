local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)
local llama = dependencies.llama
local memoize = dependencies.memoize

local LocalTypes = require(FriendsCarousel.Common.LocalTypes)

local getCarouselList = memoize(
	function(
		friendsList: LocalTypes.FriendsList,
		recommendationsList: LocalTypes.RecommendationsList
	): LocalTypes.FriendsList | LocalTypes.RecommendationsList
		if #recommendationsList == 0 then
			return friendsList
		end

		return llama.List.join(friendsList, recommendationsList)
	end
)

return getCarouselList
