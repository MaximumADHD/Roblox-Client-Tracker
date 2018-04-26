local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Immutable = require(Modules.Common.Immutable)
local FetchPrivilegeSettings = require(Modules.Shell.Actions.FetchPrivilegeSettings)
local SetPrivilegeSettings = require(Modules.Shell.Actions.SetPrivilegeSettings)

return function(state, action)
	state = state or {
		isRequesting = false
	}

    if action.type == FetchPrivilegeSettings.name then
		state = Immutable.Set(state, "isRequesting", true)
	elseif action.type == SetPrivilegeSettings.name then
		if action.Multiplayer and action.SharedContent then
			local multiplayerSetting = state.Multiplayer or {}
			local sharedContentSetting = state.SharedContent or {}
			state = {
				Multiplayer = Immutable.JoinDictionaries(multiplayerSetting, action.Multiplayer),
				SharedContent = Immutable.JoinDictionaries(sharedContentSetting, action.SharedContent),
				lastUpdated = tick(),
				isRequesting = false
			}
		else
			state = {
				isRequesting = false
			}
		end
	end

	return state
end