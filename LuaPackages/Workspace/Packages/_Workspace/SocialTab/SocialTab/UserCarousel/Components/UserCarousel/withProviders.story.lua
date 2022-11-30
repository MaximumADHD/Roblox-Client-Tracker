local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local Roact = dependencies.Roact
local Mock = dependencies.Mock

local UserCarousel = require(script.Parent)
local UserUtils = require(SocialTab.User)

return function(props)
	return Roact.createElement(UserCarousel, {
		localUserId = "123",
		enableFriendFinder = props.enableFriendFinder or false,
		inviteFromAccountProvider = props.inviteFromAccountProvider or false,
		friends = props.friends or {
			UserUtils.makeMockUser({
				id = "1",
				username = "Elsa",
				displayName = "Elsa DisplayName",
			}),
		},

		isLuaProfilePageEnabled = props.isLuaProfilePageEnabled,
		navigateToLuaAppPages = props.navigateToLuaAppPages or Mock.MagicMock.new({ name = "navigateToLuaAppPages" }),
		goToAddFriends = props.goToAddFriends or nil,
		analytics = props.analytics or Mock.MagicMock.new(),
		hasFriendRequests = props.hasFriendRequests or false,
		goToFriendsLanding = props.goToFriendsLanding or nil,
	})
end
