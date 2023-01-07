--!nonstrict
local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local Rodux = dependencies.Rodux
local llama = dependencies.llama
local EnumPresenceType = dependencies.RoduxPresence.Enums.PresenceType
local mapToUsers = require(FriendsLanding.Friends.mapToUsers)
local getBaseTestStates = require(FriendsLanding.TestHelpers.getBaseTestStates)
local smallNumbersOfFriends = getBaseTestStates().smallNumbersOfFriends
local manyFriends = getBaseTestStates().manyFriends

local localUserId = "0"
local friendStatusTitleMapping = {
	[Enum.FriendStatus.Friend] = "Friend",
	[Enum.FriendStatus.FriendRequestReceived] = "RequestReceived",
}
local friendStatus = llama.Dictionary.keys(friendStatusTitleMapping)

local statusForIndex = function(index)
	return friendStatus[1 + index % #friendStatus]
end

local createStore = function(items)
	return Rodux.Store.new(function()
		return {
			LocalUserId = localUserId,
			FriendStatuses = llama.Dictionary.map(items, function(item, index)
				return statusForIndex(index), item.id
			end),
			ScreenSize = Vector2.new(360, 720),
		}
	end, { Rodux.thunkMiddleware })
end

local createUsers = function(testFriendGroup)
	local items = mapToUsers(testFriendGroup)("test")
	llama.List.every(items, function(item, index)
		local status = statusForIndex(index)
		item.displayName = friendStatusTitleMapping[status]
		item.userPresenceType = EnumPresenceType.InGame
		item.lastLocation = "Last Location"
		return true
	end)
	return items
end

local manyFriendRequests = createUsers(manyFriends)
local smallNumbersOfFriendRequests = createUsers(smallNumbersOfFriends)

return {
	-- By default, we use the `manyFriends` version for friends request mocking
	friendRequests = manyFriendRequests,
	manyFriendRequests = manyFriendRequests,
	smallNumbersOfFriendRequests = smallNumbersOfFriendRequests,
	createStore = createStore,
}
