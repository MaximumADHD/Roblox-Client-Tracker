local Immutable = require(script.Parent.Parent.Immutable)

local Actions = script.Parent.Parent.Actions
local SetLogErrorWarningCount = require(Actions.SetLogErrorWarningCount)

return function(state, action)
	local topBarLiveUpdate = state or {
		LogWarningCount = 0,
		LogErrorCount = 0,
	}

	if action.type == SetLogErrorWarningCount.name then
		local update = {
			LogWarningCount = action.warningCount,
			LogErrorCount = action.errorCount,
		}

		return Immutable.JoinDictionaries(topBarLiveUpdate, update)
	end

	return topBarLiveUpdate
end