local UserSearch = script:FindFirstAncestor("UserSearch")
local Packages = UserSearch.Parent
local RoactUtils = require(Packages.RoactUtils)
local useSelector = RoactUtils.Hooks.RoactRodux.useSelector

type Result = {
	status: Enum.FriendStatus?,
	following: boolean,
	isMyself: boolean,
}

local useRelationshipSelector = function(userId: string)
	return useSelector(function(state): Result
		return {
			status = if state.FriendStatuses then state.FriendStatuses[userId] else nil,
			following = state.FriendFollowings and state.FriendFollowings[userId] or false,
			isMyself = state.LocalUserId == userId,
		}
	end)
end

return useRelationshipSelector
