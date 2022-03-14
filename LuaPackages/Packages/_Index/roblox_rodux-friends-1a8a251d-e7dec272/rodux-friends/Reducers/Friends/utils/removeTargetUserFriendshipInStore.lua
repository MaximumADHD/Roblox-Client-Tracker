local FriendsReducer = script:FindFirstAncestor("rodux-friends")
local Root = FriendsReducer.Parent
local Cryo = require(Root.Cryo)
local removeUser = require(script.Parent.removeUser)

-- @param state - "byUserId" field
-- @param action - the action represented by UnfriendTargetUserId
-- @return the resulting state after removing target user ID from friends list 
return function(state, action)
	local currentUser = tostring(action.additionalData.currentUserId)
	local removedUser = tostring(action.namedIds.users)

	local newState = Cryo.Dictionary.join(state, {
		[currentUser] = removeUser(state[currentUser], removedUser),
		[removedUser] = removeUser(state[removedUser], currentUser),
	})

	newState[removedUser] = nil

	return newState
end
