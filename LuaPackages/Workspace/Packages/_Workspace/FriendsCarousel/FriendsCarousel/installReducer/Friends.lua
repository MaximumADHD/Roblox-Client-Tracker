local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local RoduxFriends = dependencies.RoduxFriends
local convertActions = dependencies.convertActions
local friendsActionAdaptor = dependencies.friendsActionAdaptor
local llama = dependencies.llama

local friendsRecommendationsBySouceAdaptor = require(script.Parent.friendsRecommendationsBySouceAdaptor)

local getFFlagFriendsCarouselFilterOutRecs = require(FriendsCarousel.Flags.getFFlagFriendsCarouselFilterOutRecs)

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

local extendedFriendsActionAdaptor

if getFFlagFriendsCarouselFilterOutRecs() then
	extendedFriendsActionAdaptor = function(RoduxFriends)
		return llama.Dictionary.join(friendsActionAdaptor(RoduxFriends), friendsRecommendationsBySouceAdaptor())
	end
end

return convertActions(
	reducer,
	if getFFlagFriendsCarouselFilterOutRecs()
		then extendedFriendsActionAdaptor(RoduxFriends)
		else friendsActionAdaptor(RoduxFriends),
	defaultState
)
