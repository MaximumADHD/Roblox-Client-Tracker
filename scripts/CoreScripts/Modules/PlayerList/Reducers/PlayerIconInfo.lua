local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local Actions = script.Parent.Parent.Actions
local AddPlayer = require(Actions.AddPlayer)
local RemovePlayer = require(Actions.RemovePlayer)
local SetPlayerSpecialGroupIcon = require(Actions.SetPlayerSpecialGroupIcon)
local SetPlayerIsCreator = require(Actions.SetPlayerIsCreator)
local SetPlayerAvatarIcon = require(Actions.SetPlayerAvatarIcon)

local PlayerIconInfo = Rodux.createReducer({}, {
	[AddPlayer.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = {
				isPlaceOwner = game.CreatorType == Enum.CreatorType.User
					and action.userId == game.CreatorId,
				avatarIcon = nil,
				specialGroupIcon = nil,
			},
		})
	end,

	[RemovePlayer.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = Cryo.None,
		})
	end,

	[SetPlayerAvatarIcon.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = {
				isPlaceOwner = state[action.userId].isPlaceOwner,
				avatarIcon = action.avatarIcon,
				specialGroupIcon = state[action.userId].specialGroupIcon,
			},
		})
	end,

	[SetPlayerIsCreator.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = {
				isPlaceOwner = action.isCreator,
				avatarIcon = state[action.userId].avatarIcon,
				specialGroupIcon = state[action.userId].specialGroupIcon,
			},
		})
	end,

	[SetPlayerSpecialGroupIcon.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			[action.userId] = {
				isPlaceOwner = state[action.userId].isPlaceOwner,
				avatarIcon = state[action.userId].avatarIcon,
				specialGroupIcon = action.specialGroupIcon,
			},
		})
	end,
})

return PlayerIconInfo