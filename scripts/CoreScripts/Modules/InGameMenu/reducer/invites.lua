local CorePackages = game:GetService("CorePackages")

local InGameMenuDependencies = require(CorePackages.InGameMenuDependencies)
local Cryo = InGameMenuDependencies.Cryo
local Rodux = InGameMenuDependencies.Rodux

local InGameMenu = script.Parent.Parent

local ReceivedUserInviteStatus = require(InGameMenu.Actions.ReceivedUserInviteStatus)

return Rodux.createReducer({}, {
	[ReceivedUserInviteStatus.name] = function(state, action)
		local userId = action.userId
		local inviteStatus = action.inviteStatus

		return Cryo.Dictionary.join(state, {
			[userId] = inviteStatus,
		})
	end,
})