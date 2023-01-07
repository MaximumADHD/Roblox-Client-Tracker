--!nonstrict
local FriendsCarousel = script:FindFirstAncestor("FriendsCarousel")
local dependencies = require(FriendsCarousel.dependencies)

local RoduxPresence = dependencies.RoduxPresence
local convertActions = dependencies.convertActions
local presenceActionAdaptor = dependencies.presenceActionAdaptor

local defaultState = {
	byUserId = {},
	byGameId = {},
	byGameInstanceId = {},
	byPlaceId = {},
}

local reducer = RoduxPresence.installReducer()

return convertActions(reducer, presenceActionAdaptor(RoduxPresence), defaultState)
