local UserSearch = script:FindFirstAncestor("UserSearch")
local mockedUsersInfo = require(UserSearch.TestHelpers.mockedUsersInfo)
local UserSearchTileStories = require(script.Parent.UserSearchTileStories)

return {
	controls = nil,
	state = mockedUsersInfo.state,
	stories = UserSearchTileStories,
}
