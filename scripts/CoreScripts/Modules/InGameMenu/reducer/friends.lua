local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local SetFriendStatus = require(InGameMenu.Actions.SetFriendStatus)

return Rodux.createReducer({}, {
	[SetFriendStatus.name] = function(state, action)
		local userId = action.userId
		local friendStatus = action.friendStatus

		return Cryo.Dictionary.join(state, {
			[userId] = friendStatus or Cryo.None,
		})
	end,
})