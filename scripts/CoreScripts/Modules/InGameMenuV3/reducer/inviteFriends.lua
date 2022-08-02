local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent
local GetFFlagFixV3InviteReducer = require(InGameMenu.Flags.GetFFlagFixV3InviteReducer)

local SetFriends = require(InGameMenu.Actions.SetFriends)
local EMPTY_LIST = {}


if GetFFlagFixV3InviteReducer() then
	return Rodux.createReducer({inviteFriends = EMPTY_LIST}, {
		[SetFriends.name] = function(state, action)
			state.inviteFriends = action.inviteFriends or EMPTY_LIST
			return state
		end,
	})
else
	return Rodux.createReducer({}, {
		[SetFriends.name] = function(state, action)
			state.inviteFriends = action.inviteFriends or {}
			return state
		end,
	})
end
