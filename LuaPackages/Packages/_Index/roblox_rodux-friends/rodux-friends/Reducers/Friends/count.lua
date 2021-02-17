local FriendsReducer = script:FindFirstAncestor("rodux-friends")
local Root = FriendsReducer.Parent
local Cryo = require(Root.Cryo)

local Actions = FriendsReducer.Actions
local FriendshipCreated = require(Actions.FriendshipCreated)
local FriendshipDestroyed = require(Actions.FriendshipDestroyed)

local addUser = require(script.Parent.utils.addUser)
local removeUser = require(script.Parent.utils.removeUser)

local DEFAULT_STATE = {
	byUserId = {},
	count = {},
}

-- Using if statements rather than `createReducer` as this needs to return something different to state by default.
return function(options)
	local FriendsNetworking = options.friendsNetworking

	return function(state, action)
		local currentState = state or DEFAULT_STATE

		if action and action.type == FriendshipCreated.name then
			assert(type(action.payload.userId1) == "string", "Expected userId1 to be a string")
			assert(type(action.payload.userId2) == "string", "Expected userId2 to be a string")

			return Cryo.Dictionary.join(currentState.count, {
				[action.payload.userId1] = #(addUser(currentState.byUserId[action.payload.userId1], action.payload.userId2)),
				[action.payload.userId2] =  #(addUser(currentState.byUserId[action.payload.userId2], action.payload.userId1)),
			})
		end

		if action and action.type == FriendshipDestroyed.name then
			assert(type(action.payload.userId1) == "string", "Expected userId1 to be a string")
			assert(type(action.payload.userId2) == "string", "Expected userId2 to be a string")

			return Cryo.Dictionary.join(currentState.count, {
				[action.payload.userId1] = #(removeUser(currentState.byUserId[action.payload.userId1], action.payload.userId2)),
				[action.payload.userId2] =  #(removeUser(currentState.byUserId[action.payload.userId2], action.payload.userId1)),
			})
		end

		if action and action.type == FriendsNetworking.GetFriendsFromUserId.Succeeded.name then
			local baseFriendId = tostring(action.namedIds.users)
			local baseFriendList = currentState.byUserId[baseFriendId]

			local countNewFriendships = function(accumulator, newFriend)
				local newFriendId = tostring(newFriend.id)
				baseFriendList = addUser(baseFriendList, newFriendId)

				return Cryo.Dictionary.join(accumulator, {
					[newFriendId] = #(addUser(currentState.byUserId[newFriendId], baseFriendId)),
					[baseFriendId] = #baseFriendList,
				})
			end

			return Cryo.Dictionary.join(currentState.count, Cryo.List.foldLeft(action.responseBody.data, countNewFriendships, {}))
		end

		return currentState.count
	end
end
