local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)

local RoduxFriends = dependencies.RoduxFriends
local convertActions = require(script.Parent.convertActions)
local friendsActionAdaptor = require(script.Parent.friendsActionAdaptor)

local defaultState = {
	countsByUserId = {},
	byUserId = {},
	requests = {
		receivedCount = 0,
	},
}

return function(localUserId)
	return convertActions(
		RoduxFriends.installReducer(),
		-- TODO when old actions are removed, remove dependency on Players
		friendsActionAdaptor(localUserId),
		defaultState
	)
end
