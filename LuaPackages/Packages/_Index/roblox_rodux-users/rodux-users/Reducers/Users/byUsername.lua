local UsersReducer = script:FindFirstAncestor("rodux-users")
local Root = UsersReducer.Parent
local Rodux = require(Root.Rodux)
local Cryo = require(Root.Cryo)

local Actions = UsersReducer.Actions
local Models = UsersReducer.Models

local UserRemoved = require(Actions.UserRemoved)
local UserUpdated = require(Actions.UserUpdated)
local UserModel = require(Models.UserModel)

local usernameFromUserId = function(userId, state)
	local returnedUsername = nil
	for username, id in pairs(state) do
		if id == userId then
			returnedUsername = username
			break
		end
	end

	return returnedUsername
end

local addUsersFromList = function(state, users)
	local newUsers = {}
	for _, user in ipairs(users) do
		newUsers[user.name] = tostring(user.id)
	end

	return Cryo.Dictionary.join(state, newUsers)
end

local DEFAULT_STATE = {}
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

		[UserUpdated.name] = function(state, action)
			assert(UserModel.isValid(action.payload))

			return Cryo.Dictionary.join(state, {
				[action.payload.username] = action.payload.id,
			})
		end,

		[UserRemoved.name] = function(state, action)
			assert(type(action.payload.id) == "string", "Expected id to be a string")

			local usernameToRemove = usernameFromUserId(action.payload.id, state)

			if usernameToRemove then
				return Cryo.Dictionary.join(state, {
					[usernameToRemove] = Cryo.None,
				})
			end

			return state
		end,
	})
end
