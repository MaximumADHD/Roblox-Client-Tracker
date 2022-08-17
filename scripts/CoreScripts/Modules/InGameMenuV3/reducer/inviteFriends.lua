local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux
local InGameMenu = script.Parent.Parent
local SetFriends = require(InGameMenu.Actions.SetFriends)

local EMPTY_LIST = {}

return Rodux.createReducer({inviteFriends = EMPTY_LIST}, {
	[SetFriends.name] = function(state, action)
		state.inviteFriends = action.inviteFriends or EMPTY_LIST
		return state
	end,
})
