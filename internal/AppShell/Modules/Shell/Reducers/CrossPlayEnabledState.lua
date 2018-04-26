local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Immutable = require(Modules.Common.Immutable)
local RequestCrossPlayEnabled = require(Modules.Shell.Actions.RequestCrossPlayEnabled)
local SetCrossPlayEnabled = require(Modules.Shell.Actions.SetCrossPlayEnabled)
local PostCrossPlayEnabledFailed = require(Modules.Shell.Actions.PostCrossPlayEnabledFailed)
local GetCrossPlayEnabledFailed = require(Modules.Shell.Actions.GetCrossPlayEnabledFailed)

--To use: Add CrossPlayEnabledState = CrossPlayEnabledState(state.CrossPlayEnabledState, action) to the AppShellReducer
return function(state, action)
	state = state or {
		isRequesting = false
	}

    if action.type == RequestCrossPlayEnabled.name then
		state = Immutable.Set(state, "isRequesting", true)
	elseif action.type == SetCrossPlayEnabled.name then
		if action.enabled ~= nil then
			state = {
				enabled = action.enabled,
				lastUpdated = tick(),
				isRequesting = false
			}
		else
			state = {
				isRequesting = false
			}
		end
	elseif action.type == PostCrossPlayEnabledFailed.name then
		state = Immutable.Set(state, "isRequesting", false)
	elseif action.type == GetCrossPlayEnabledFailed.name then
		state = Immutable.Set(state, "isRequesting", false)
	end

	return state
end