local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Roact = dependencies.Roact
local RoactRodux = dependencies.RoactRodux
local AddFriendsPage = require(script.Parent)
local FriendsSourceType = require(AddFriends.Enums.FriendsSourceType)
local withRequests = require(script.Parent.withRequests)
local createStore = withRequests.createStore
local friendRequests = withRequests.friendRequests

local STORY_SCREEN_SIZE = Vector2.new(1080, 1920)

return function()
	local noOpt = function() end
	return Roact.createElement(RoactRodux.StoreProvider, {
		store = createStore(friendRequests),
	}, {
		Roact.createElement(AddFriendsPage, {
			visibleRows = 2,
			refreshPage = function() end,
			sourceType = FriendsSourceType.QQ,
			friendRequests = friendRequests,
			friendRequestsCount = #friendRequests,
			amIFollowingUser = noOpt,
			isUserFollowingMe = noOpt,
			getFriendshipRequestSentFromExperience = noOpt,
			screenSize = STORY_SCREEN_SIZE,
		}),
	})
end
