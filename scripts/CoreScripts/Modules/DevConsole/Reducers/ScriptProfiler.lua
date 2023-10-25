local Immutable = require(script.Parent.Parent.Immutable)

local SetScriptProfilerState = require(script.Parent.Parent.Actions.SetScriptProfilerState)

type SessionState = {
	isProfiling: boolean,
	data: {}?,
	frequency: number,

	timedProfilingThread: thread?,
	timedProfilingTimerThread: thread?,
	timedProfilingDuration: number,
	timedProfilingCountdown: number,
	isFunctionsView: boolean,
}

export type State = {
	isClientView: boolean,
	usePercentages: boolean,
	client: SessionState,
	server: SessionState,
}

return function(state: State?, action: {[string]: any}): State
	local scriptProfilerState = state or {
		isClientView = true,
		usePercentages = false,
		client = { isProfiling = false, data = nil, frequency = 1000,
					timedProfilingThread = nil, timedProfilingTimerThread = nil,
					timedProfilingDuration = 0, timedProfilingCountdown = 0,
					isFunctionsView = false, },
		server = { isProfiling = false, data = nil, frequency = 1000,
					timedProfilingThread = nil, timedProfilingTimerThread = nil,
					timedProfilingDuration = 0, timedProfilingCountdown = 0,
					isFunctionsView = false, },
	}

	if action.type == SetScriptProfilerState.name then
		local update = {
			isClientView = action.isClientView,
			usePercentages = action.usePercentages,
			client = action.clientSessionState,
			server = action.serverSessionState,
		}
		return Immutable.JoinDictionaries(scriptProfilerState, update) :: any
	end

	return scriptProfilerState
end
