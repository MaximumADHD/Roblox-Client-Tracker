local Immutable = require(script.Parent.Parent.Immutable)

local AppendRecentDumpPath = require(script.Parent.Parent.Actions.AppendRecentDumpPath)
local SetRCCProfilerState = require(script.Parent.Parent.Actions.SetRCCProfilerState)

export type State = {
	waitingForRecording: boolean,
	lastFileOutputLocation: string,
	recentDumpPaths: { string },
}

return function(state: State?, action: {[string]: any}): State
	local microProfilerState = state or {
		waitingForRecording = false,
		lastFileOutputLocation = "",
		recentDumpPaths = {},
	}

	if action.type == SetRCCProfilerState.name then
		local update = {
			waitingForRecording = action.waitingForRecording,
			lastFileOutputLocation = action.lastFileOutputLocation,
			recentDumpPaths = microProfilerState.recentDumpPaths,
		}
		return Immutable.JoinDictionaries(microProfilerState, update) :: any
	elseif action.type == AppendRecentDumpPath.name then
		local update = {
			waitingForRecording = microProfilerState.waitingForRecording,
			lastFileOutputLocation = microProfilerState.lastFileOutputLocation,
			recentDumpPaths = Immutable.Append(microProfilerState.recentDumpPaths, action.dumpPath),
		}
		return Immutable.JoinDictionaries(microProfilerState, update) :: any
	end

	return microProfilerState
end
