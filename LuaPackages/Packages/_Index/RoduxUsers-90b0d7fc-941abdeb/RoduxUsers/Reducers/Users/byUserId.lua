local UsersReducer = script:FindFirstAncestor("RoduxUsers")
local Root = UsersReducer.Parent
local Rodux = require(Root.Rodux)
local Cryo = require(Root.Cryo)

local Actions = UsersReducer.Actions
local Models = UsersReducer.Models
local UserRemoved = require(Actions.UserRemoved)
local UserUpdated = require(Actions.UserUpdated)
local UserModel = require(Models.UserModel)

local DEFAULT_STATE = {}

local addUsersFromList = function(state, newUsers)
	local users = {}

	for _, user in ipairs(newUsers) do
		local userId = tostring(user.id)

		users[userId] = UserModel.new({
			id = userId,
			username = user.name,
			displayName = user.displayName,
		})
	end

	return Cryo.Dictionary.join(state, users)
end

return function(options)
	local UsersNetworking = options.usersNetworking
	local FriendsNetworking = options.friendsNetworking

	return Rodux.createReducer(DEFAULT_STATE, {
		[UsersNetworking.GetUserV2FromUserId.Succeeded.name] = function(state, action)
			return addUsersFromList(state, { action.responseBody })
		end,

		[UsersNetworking.GetSkinnyUsersFromUserIds.Succeeded.name] = function(state, action)
			return addUsersFromList(state, action.responseBody.data)
		end,

		[FriendsNetworking.GetFriendsFromUserId.Succeeded.name] = function(state, action)
			return addUsersFromList(state, action.responseBody.data)
		end,

		[FriendsNetworking.GetFriendRequests.Succeeded.name] = function(state, action)
			return addUsersFromList(state, action.responseBody.data)
		end,

		[FriendsNetworking.GetFriendRecommendationsFromUserId.Succeeded.name] = function(state, action)
			return addUsersFromList(state, action.responseBody.data)
		end,

		[UserUpdated.name] = function(state, action)
			assert(UserModel.isValid(action.payload))

			return Cryo.Dictionary.join(state, {
				[action.payload.id] = action.payload,
			})
		end,

		[UserRemoved.name] = function(state, action)
			assert(type(action.payload.id) == "string", "Expected id to be a string")

			return Cryo.Dictionary.join(state, {
				[action.payload.id] = Cryo.None,
			})
		end,
	})
end
