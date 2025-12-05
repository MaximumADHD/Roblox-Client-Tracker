local Immutable = require(script.Parent.Parent.Immutable)

local SetRCCProfilerState = require(script.Parent.Parent.Actions.SetRCCProfilerState)

export type State = {
	waitingForRecording: boolean,
	lastFileOutputLocation: string,
}

return function(state: State?, action: {[string]: any}): State
	local microProfilerState = state or {
		waitingForRecording = false,
		lastFileOutputLocation = "",
	}

	if action.type == SetRCCProfilerState.name then
		local update = {
			waitingForRecording = action.waitingForRecording,
			lastFileOutputLocation = action.lastFileOutputLocation,
		}
		return Immutable.JoinDictionaries(microProfilerState, update) :: any
	end

	return microProfilerState
end
