--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local SetFriendStatus = require(InGameMenu.Actions.SetFriendStatus)
local SetFriendBlockConfirmation = require(InGameMenu.Actions.SetFriendBlockConfirmation)

return Rodux.createReducer({}, {
	[SetFriendStatus.name] = function(state, action)
		local userId = action.userId
		local friendStatus = action.friendStatus

		return Cryo.Dictionary.join(state, {
			[userId] = friendStatus or Cryo.None,
		})
	end,

	[SetFriendBlockConfirmation.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isFriendBlockOpen = action.isFriendBlockOpen,
			targetBlockFriend = action.targetBlockFriend,
		})
	end,
})
