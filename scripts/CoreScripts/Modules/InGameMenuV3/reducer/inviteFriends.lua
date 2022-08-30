local CorePackages = game:GetService("CorePackages")
local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Rodux = InGameMenuDependencies.Rodux
local InGameMenu = script.Parent.Parent
local SetFriends = require(InGameMenu.Actions.SetFriends)


return Rodux.createReducer({}, {
	[SetFriends.name] = function(state, action)
		return action.inviteFriends or state
	end,
})
