local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent
local React = require(Packages.React)
local mockedUsersInfo = require(UserSearch.TestHelpers.mockedUsersInfo)

local UserSearchTile = require(UserSearch.Components.UserSearchTile)

local setupStory = function(props: any)
	local user = props.user
	return function(storyProps: any)
		return React.createElement("Frame", {
			Size = UDim2.new(0, 200, 0, 350),
			BackgroundTransparency = 1,
		}, {
			UserSearchTile = React.createElement(UserSearchTile, {
				index = 1,
				size = UDim2.new(0, 200, 0, 250),
				user = {
					id = user.id,
					name = user.name or "Name:" .. user.id,
					displayName = user.displayName or "DisplayName:" .. user.id,
					previousUsernames = user.previousUsernames or {},
				},
				profileInsight = user.profileInsight,
				searchParameters = props.searchParameters or { searchKeyword = "" },
				luaAppNetworkingRequests = storyProps.luaAppNetworkingRequests or {
					requestFriendship = function() end,
					acceptFriendRequest = function() end,
				},
				luaAppNavigation = storyProps.luaAppNavigation or {
					navigateToUserInfo = function() end,
				},
			}),
		})
	end
end

local users = mockedUsersInfo.users

local stories = {
	yourself = setupStory({ user = users.yourself }),
	following = setupStory({ user = users.following }),
	friend = setupStory({ user = users.friend }),
	incomingFriendship = setupStory({ user = users.incomingFriendship }),
	outgoingFriendship = setupStory({ user = users.outgoingFriendship }),
	previousUserName = setupStory({
		user = users.previousUserName,
		searchParameters = { searchKeyword = "searchKeyword" },
	}),
	random = setupStory({ user = users.random }),
	notFriend = setupStory({ user = users.notFriend }),
	mutualFriends = setupStory({ user = users.mutualFriends }),
	frequents = setupStory({ user = users.frequents }),
}

return stories
