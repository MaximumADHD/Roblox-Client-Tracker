local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local Immutable = require(AppTempCommon.Common.Immutable)
local ReceivedUserInviteStatus = require(ShareGame.Actions.ReceivedUserInviteStatus)

return function(state, action)
	state = state or {}

	if action.type == ReceivedUserInviteStatus.name then
		state = Immutable.Set(state, action.userId, action.inviteStatus)
	end

	return state
end