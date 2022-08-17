--!nonstrict
local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local SetGameNameAndDescription = require(InGameMenu.Actions.SetGameNameAndDescription)
local SetGameFavorite = require(InGameMenu.Actions.SetGameFavorite)
local SetGameFollow = require(InGameMenu.Actions.SetGameFollow)
local SetGameFollowingStatus = require(InGameMenu.Actions.SetGameFollowingStatus)

local GetFFlagShareInviteLinkContextMenuV3Enabled = require(InGameMenu.Flags.GetFFlagShareInviteLinkContextMenuV3Enabled)

return Rodux.createReducer({
	name = "Game",
	description = "",
	creator = "Roblox",
	isFavorited = false,
	isFollowed = false,
	canFollow = false,
}, {
	[SetGameNameAndDescription.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			name = action.gameName,
			description = action.gameDescription,
			creator = action.gameCreator,
			created = if GetFFlagShareInviteLinkContextMenuV3Enabled() then action.gameCreated else nil,
		})
	end,
	[SetGameFavorite.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isFavorited = action.isFavorited,
		})
	end,
	[SetGameFollow.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isFollowed = action.isFollowed,
		})
	end,
	[SetGameFollowingStatus.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isFollowed = action.isFollowed,
			canFollow = action.canFollow,
		})
	end,
})
