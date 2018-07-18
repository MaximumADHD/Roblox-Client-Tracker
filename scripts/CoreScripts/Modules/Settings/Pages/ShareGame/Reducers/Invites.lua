local CorePackages = game:GetService("CorePackages")
local AppTempCommon = CorePackages.AppTempCommon

local Modules = game:GetService("CoreGui").RobloxGui.Modules
local ShareGame = Modules.Settings.Pages.ShareGame

local Immutable = require(AppTempCommon.Common.Immutable)
local SetUserInvited = require(ShareGame.Actions.SetUserInvited)

return function(state, action)
	state = state or {}

	if action.type == SetUserInvited.name then
		state = Immutable.Set(state, action.userId, action.isInvited)
	end

	return state
end