local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local RoduxFriends = dependencies.RoduxFriends
local convertActions = dependencies.convertActions
local friendsActionAdaptor = dependencies.friendsActionAdaptor
local llama = dependencies.llama

local friendsRecommendationsBySouceAdaptor = require(script.Parent.friendsRecommendationsBySouceAdaptor)

local getFFlagFriendsCarouselRemoveRecsAdaptors =
	require(FriendsCarousel.Flags.getFFlagFriendsCarouselRemoveRecsAdaptors)

local defaultState = {
	countsByUserId = {},
	byUserId = {},
	requests = {
		receivedCount = 0,
	},
	recommendations = {},
	friendshipStatus = {},
	friendsRankByUserId = {},
}

local reducer = RoduxFriends.installReducer()

if getFFlagFriendsCarouselRemoveRecsAdaptors() then
	return convertActions(reducer, friendsActionAdaptor(RoduxFriends), defaultState)
else
	local extendedFriendsActionAdaptor = function(RoduxFriends)
		return llama.Dictionary.join(friendsActionAdaptor(RoduxFriends), friendsRecommendationsBySouceAdaptor())
	end

	return convertActions(reducer, extendedFriendsActionAdaptor(RoduxFriends), defaultState)
end
