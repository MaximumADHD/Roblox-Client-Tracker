local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local RoduxPresence = dependencies.RoduxPresence
local convertActions = require(script.Parent.convertActions)
local presenceActionAdaptor = require(script.Parent.presenceActionAdaptor)

local defaultState = {
	byUserId = {},
	byGameId = {},
	byGameInstanceId = {},
	byPlaceId = {},
}

return convertActions(RoduxPresence.installReducer(), presenceActionAdaptor :: any, defaultState)
