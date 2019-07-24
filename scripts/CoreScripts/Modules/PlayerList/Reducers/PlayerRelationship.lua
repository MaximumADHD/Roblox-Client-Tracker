local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local Actions = script.Parent.Parent.Actions
local AddPlayer = require(Actions.AddPlayer)
local RemovePlayer = require(Actions.RemovePlayer)
local SetPlayerIsBlocked = require(Actions.SetPlayerIsBlocked)
local SetPlayerFollowRelationship = require(Actions.SetPlayerFollowRelationship)
local SetPlayerFriendStatus = require(Actions.SetPlayerFriendStatus)
local SetPlayerIsFollowing = require(Actions.SetPlayerIsFollowing)

local PlayerRelationship = Rodux.createReducer({}, {
	[AddPlayer.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = {
				isBlocked = false,
				friendStatus = Enum.FriendStatus.Unknown,
				isFollowing = false,
				isFollower = false,
			},
		})
	end,

	[RemovePlayer.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = Cryo.None,
		})
	end,

	[SetPlayerIsBlocked.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = {
				isBlocked = action.isBlocked,
				friendStatus = state[action.userId].friendStatus,
				isFollowing = state[action.userId].isFollowing,
				isFollower = state[action.userId].isFollower,
			},
		})
	end,

	[SetPlayerFollowRelationship.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = {
				isBlocked = state[action.userId].isBlocked,
				friendStatus = state[action.userId].friendStatus,
				isFollowing = action.isFollowing,
				isFollower = action.isFollower,
			},
		})
	end,

	[SetPlayerIsFollowing.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = {
				isBlocked = state[action.userId].isBlocked,
				friendStatus = state[action.userId].friendStatus,
				isFollowing = action.isFollowing,
				isFollower = state[action.userId].isFollower,
			},
		})
	end,

	[SetPlayerFriendStatus.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = {
				isBlocked = state[action.userId].isBlocked,
				friendStatus = action.friendStatus,
				isFollowing = state[action.userId].isFollowing,
				isFollower = state[action.userId].isFollower,
			},
		})
	end,
})

return PlayerRelationship