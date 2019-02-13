local Immutable = require(script.Parent.Parent.Immutable)

local SetRCCProfilerState = require(script.Parent.Parent.Actions.SetRCCProfilerState)

return function(state, action)
	local microProfilerState = state or {
		waitingForRecording = false,
		lastFileOutputLocation = "",
	}

	if action.type == SetRCCProfilerState.name then
		local update = {
			waitingForRecording = action.waitingForRecording,
			lastFileOutputLocation = action.lastFileOutputLocation,
		}
		return Immutable.JoinDictionaries(microProfilerState, update)
	end

	return microProfilerState
end