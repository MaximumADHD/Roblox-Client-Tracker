local PYMKCarousel = script:FindFirstAncestor("PYMKCarousel")
local dependencies = require(PYMKCarousel.dependencies)

local RoduxFriends = dependencies.RoduxFriends
local convertActions = dependencies.convertActions
local friendsActionAdaptor = dependencies.friendsActionAdaptor
local llama = dependencies.llama
local friendsOmniActionAdaptor = require(script.Parent.friendsOmniActionAdaptor)

local defaultState = {
	countsByUserId = {},
	byUserId = {},
	requests = {
		receivedCount = 0,
		byUserId = {},
		mutualFriends = {},
		sentAt = {},
		sourceUniverseIds = {},
	},
	recommendations = {
		byUserId = {},
		bySource = {},
	},
	friendshipStatus = {},
	friendsRankByUserId = {},
}

local reducer = RoduxFriends.installReducer()

local extendedFriendsActionAdaptor = function(config)
	return llama.Dictionary.join(friendsActionAdaptor(RoduxFriends), friendsOmniActionAdaptor(config))
end

return function(config)
	return convertActions(reducer, extendedFriendsActionAdaptor(config), defaultState)
end
