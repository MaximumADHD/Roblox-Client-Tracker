local FriendsReducer = script:FindFirstAncestor("rodux-friends")
local Root = FriendsReducer.Parent
local Rodux = require(Root.Rodux)
local Cryo = require(Root.Cryo)

local Actions = FriendsReducer.Actions
local FriendshipCreated = require(Actions.FriendshipCreated)
local FriendshipDestroyed = require(Actions.FriendshipDestroyed)

local addUser = require(script.Parent.utils.addUser)
local removeUser = require(script.Parent.utils.removeUser)

local DEFAULT_STATE = {}

return function(options)
	local FriendsNetworking = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[FriendshipCreated.name] = function(state, action)
			assert(type(action.payload.userId1) == "string", "Expected userId1 to be a string")
			assert(type(action.payload.userId2) == "string", "Expected userId2 to be a string")

			return Cryo.Dictionary.join(state, {
				[action.payload.userId1] = addUser(state[action.payload.userId1], action.payload.userId2),
				[action.payload.userId2] =  addUser(state[action.payload.userId2], action.payload.userId1),
			})
		end,

		[FriendshipDestroyed.name] = function(state, action)
			assert(type(action.payload.userId1) == "string", "Expected userId1 to be a string")
			assert(type(action.payload.userId2) == "string", "Expected userId2 to be a string")

			return Cryo.Dictionary.join(state, {
				[action.payload.userId1] = removeUser(state[action.payload.userId1], action.payload.userId2),
				[action.payload.userId2] =  removeUser(state[action.payload.userId2], action.payload.userId1),
			})
		end,

		[FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(state, action)
			local baseFriendId = tostring(action.namedIds.users)

			local newFriendships = function(accumulator, newFriend)
				local newFriendId = tostring(newFriend.id)

				return Cryo.Dictionary.join(accumulator, {
					[newFriendId] = addUser(accumulator[newFriendId], baseFriendId),
					[baseFriendId] =  addUser(accumulator[baseFriendId], newFriendId),
				})
			end
			local result = Cryo.List.foldLeft(action.responseBody.data, newFriendships, state)

			return result
		end
	})
end
