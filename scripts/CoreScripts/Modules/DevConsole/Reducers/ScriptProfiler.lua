local Immutable = require(script.Parent.Parent.Immutable)

local SetScriptProfilerState = require(script.Parent.Parent.Actions.SetScriptProfilerState)
local SetScriptProfilerRoot = require(script.Parent.Parent.Actions.SetScriptProfilerRoot)
local ProfilerData = require(script.Parent.Parent.Components.ScriptProfiler.ProfilerDataFormatV2)

type SessionState = {
	isProfiling: boolean,

	data: ProfilerData.RootDataFormat?,
	serializedData: string?,

	frequency: number,

	timedProfilingThread: thread?,
	timedProfilingTimerThread: thread?,
	timedProfilingDuration: number,
	timedProfilingCountdown: number,

	isFunctionsView: boolean,

	average: number,

	searchTerm: string,
	searchFilterGraph: {boolean},
	searchFilterFlat: {boolean},

	rootNode: number,
	rootNodeName: string?,

	liveUpdate: boolean,
	liveUpdateThread: thread?,

	showPlugins: boolean,
	pluginOffsets: {[number]: number, Total: number?},

	showGC: boolean,
	gcFunctionOffsets: {number},
	gcNodeOffsets: {[number]: number, Total: number?},
	pluginGCOffsets: {[number]: number, Total: number?},
}

export type State = {
	isClientView: boolean,
	usePercentages: boolean,
	isExporting: boolean,
	client: SessionState,
	server: SessionState,
}

return function(state: State?, action: {[string]: any}): State
	local scriptProfilerState = state or {
		isClientView = true,
		usePercentages = false,
		isExporting = false,
		client = { isProfiling = false, data = nil, serializedData = nil, frequency = 1000,
					timedProfilingThread = nil, timedProfilingTimerThread = nil,
					timedProfilingDuration = 0, timedProfilingCountdown = 0,
					isFunctionsView = false, average = 0, searchTerm = "",
					searchFilterGraph = {}, searchFilterFlat = {},
					rootNode = 0, rootNodeName = nil,
					liveUpdate = false, liveUpdateThread = nil,
					showPlugins = false, pluginOffsets = {},
					showGC = false, gcFunctionOffsets = {}, gcNodeOffsets = {},
					pluginGCOffsets = {}, },
		server = { isProfiling = false, data = nil, serializedData = nil, frequency = 1000,
					timedProfilingThread = nil, timedProfilingTimerThread = nil,
					timedProfilingDuration = 0, timedProfilingCountdown = 0,
					isFunctionsView = false, average = 0, searchTerm = "",
					searchFilterGraph = {}, searchFilterFlat = {},
					rootNode = 0, rootNodeName = nil,
					liveUpdate = false, liveUpdateThread = nil,
					showPlugins = false, pluginOffsets = {},
					showGC = false, gcFunctionOffsets = {}, gcNodeOffsets = {},
					pluginGCOffsets = {}, },
	}

	if action.type == SetScriptProfilerState.name then
		local update = {
			isClientView = action.isClientView,
			usePercentages = action.usePercentages,
			isExporting = action.isExporting,
			client = action.clientSessionState,
			server = action.serverSessionState,
		}
		return Immutable.JoinDictionaries(scriptProfilerState, update) :: any
	elseif action.type == SetScriptProfilerRoot.name then
		local update = {}

		local newState = table.clone(if scriptProfilerState.isClientView then scriptProfilerState.client else scriptProfilerState.server)

		if newState.rootNode ~= action.rootNode then
			newState.rootNode = action.rootNode
			newState.rootNodeName = action.rootNodeName
		else
			newState.rootNode = 0
			newState.rootNodeName = nil
		end

		if scriptProfilerState.isClientView then
			update.client = newState
		else
			update.server = newState
		end

		return Immutable.JoinDictionaries(scriptProfilerState, update)
	end

	return scriptProfilerState
end
