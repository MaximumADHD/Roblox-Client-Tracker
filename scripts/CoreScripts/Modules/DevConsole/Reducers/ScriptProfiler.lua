local Immutable = require(script.Parent.Parent.Immutable)

local SetScriptProfilerState = require(script.Parent.Parent.Actions.SetScriptProfilerState)
local SetScriptProfilerRoot = require(script.Parent.Parent.Actions.SetScriptProfilerRoot)
local SetIsProfiling = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetIsProfiling)
local SetData = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetData)
local SetThreads = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetThreads)
local SetTimerState = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetTimerState)
local ClearStateForNewProfilingSession =
	require(script.Parent.Parent.Components.ScriptProfiler.Actions.ClearStateForNewProfilingSession)
local SetAverage = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetAverage)
local SetFrequency = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetFrequency)
local SetDataView = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetDataView)
local SetLiveUpdate = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetLiveUpdate)
local SetShowPlugins = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetShowPlugins)
local SetShowGC = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetShowGC)
local SetSearchData = require(script.Parent.Parent.Components.ScriptProfiler.Actions.SetSearchData)
local ProfilerData = require(script.Parent.Parent.Components.ScriptProfiler.ProfilerDataFormatV2)

local FFlagScriptProfilerSetRootFixSourceInfo = game:DefineFastFlag("ScriptProfilerSetRootFixSourceInfo", false)

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
	searchFilterGraph: { boolean },
	searchFilterFlat: { boolean },

	rootNode: ProfilerData.NodeId,
	rootFunc: ProfilerData.FunctionId,
	rootNodeName: string?,

	liveUpdate: boolean,
	liveUpdateThread: thread?,

	showPlugins: boolean,
	pluginOffsets: { [number]: number, Total: number? },

	showGC: boolean,
	gcFunctionOffsets: { number },
	gcNodeOffsets: { [number]: number, Total: number? },
	pluginGCOffsets: { [number]: number, Total: number? },

	expandedNodes: {},
}

export type State = {
	isClientView: boolean,
	usePercentages: boolean,
	isExporting: boolean,
	isShowingMobileSettings: boolean,
	client: SessionState,
	server: SessionState,
}

local function GetSessionState(isClient, spState)
	return if isClient then spState.client else spState.server
end

local function Update(isClient, spState: State, newState: SessionState | {})
	local oldState = GetSessionState(isClient, spState)

	local joined = Immutable.JoinDictionaries(oldState, newState)

	local update = {
		client = if isClient then joined else nil,
		server = if isClient then nil else joined,
	}

	return Immutable.JoinDictionaries(spState, update)
end

return function(state: State?, action: { [string]: any }): State
	local scriptProfilerState = state
		or {
			isClientView = true,
			usePercentages = false,
			isExporting = false,
			isShowingMobileSettings = false,
			client = {
				isProfiling = false,
				data = nil,
				serializedData = nil,
				frequency = 1000,
				timedProfilingThread = nil,
				timedProfilingTimerThread = nil,
				timedProfilingDuration = 0,
				timedProfilingCountdown = 0,
				isFunctionsView = false,
				average = 0,
				searchTerm = "",
				searchFilterGraph = {},
				searchFilterFlat = {},
				rootNode = 0,
				rootFunc = 0,
				rootNodeName = nil,
				liveUpdate = false,
				liveUpdateThread = nil,
				showPlugins = false,
				pluginOffsets = {},
				showGC = false,
				gcFunctionOffsets = {},
				gcNodeOffsets = {},
				pluginGCOffsets = {},
				expandedNodes = {},
			},
			server = {
				isProfiling = false,
				data = nil,
				serializedData = nil,
				frequency = 1000,
				timedProfilingThread = nil,
				timedProfilingTimerThread = nil,
				timedProfilingDuration = 0,
				timedProfilingCountdown = 0,
				isFunctionsView = false,
				average = 0,
				searchTerm = "",
				searchFilterGraph = {},
				searchFilterFlat = {},
				rootNode = 0,
				rootFunc = 0,
				rootNodeName = nil,
				liveUpdate = false,
				liveUpdateThread = nil,
				showPlugins = false,
				pluginOffsets = {},
				showGC = false,
				gcFunctionOffsets = {},
				gcNodeOffsets = {},
				pluginGCOffsets = {},
				expandedNodes = {},
			},
		}

	if action.type == SetScriptProfilerState.name then
		local update = {
			isClientView = action.isClientView,
			usePercentages = action.usePercentages,
			isExporting = action.isExporting,
			isShowingMobileSettings = action.isShowingMobileSettings,
			client = action.clientSessionState,
			server = action.serverSessionState,
		}
		return Immutable.JoinDictionaries(scriptProfilerState, update) :: any
	elseif action.type == SetIsProfiling.name then
		return Update(action.isClient, scriptProfilerState, { isProfiling = action.isProfiling })
	elseif action.type == SetAverage.name then
		return Update(action.isClient, scriptProfilerState, { average = action.average })
	elseif action.type == SetFrequency.name then
		return Update(action.isClient, scriptProfilerState, { frequency = action.frequency })
	elseif action.type == SetDataView.name then
		return Update(action.isClient, scriptProfilerState, { isFunctionsView = action.isFunctionsView })
	elseif action.type == SetLiveUpdate.name then
		return Update(action.isClient, scriptProfilerState, { liveUpdate = action.liveUpdate })
	elseif action.type == SetShowPlugins.name then
		return Update(action.isClient, scriptProfilerState, { showPlugins = action.showPlugins })
	elseif action.type == SetShowGC.name then
		return Update(action.isClient, scriptProfilerState, { showGC = action.showGC })
	elseif action.type == SetSearchData.name then
		return Update(
			action.isClient,
			scriptProfilerState,
			{
				searchTerm = action.state.searchTerm,
				searchFilterFlat = action.state.searchFilterFlat,
				searchFilterGraph = action.state.searchFilterGraph,
			}
		)
	elseif action.type == SetTimerState.name then
		local newState = {
			timedProfilingDuration = action.state.timedProfilingDuration,
			timedProfilingCountdown = action.state.timedProfilingCountdown,
		}

		return Update(action.isClient, scriptProfilerState, newState)
	elseif action.type == SetData.name then
		local newState = table.clone(GetSessionState(action.isClient, scriptProfilerState))

		newState.data = action.state.data
		newState.serializedData = action.state.serializedData
		newState.pluginOffsets = action.state.pluginOffsets or {}
		newState.pluginGCOffsets = action.state.pluginGCOffsets or {}
		newState.gcFunctionOffsets = action.state.gcFunctionOffsets or {}
		newState.gcNodeOffsets = action.state.gcNodeOffsets or {}
		newState.expandedNodes = action.state.expandedNodes or {}

		local update = table.clone(scriptProfilerState)

		if action.isClient then
			update.client = newState
		else
			update.server = newState
		end

		return Immutable.JoinDictionaries(scriptProfilerState, update)
	elseif action.type == SetThreads.name then
		local newState = table.clone(GetSessionState(action.isClient, scriptProfilerState))

		newState.timedProfilingThread = action.state.timedProfilingThread
		newState.timedProfilingTimerThread = action.state.timedProfilingTimerThread
		newState.liveUpdateThread = action.state.liveUpdateThread

		local update = table.clone(scriptProfilerState)

		if action.isClient then
			update.client = newState
		else
			update.server = newState
		end

		return Immutable.JoinDictionaries(scriptProfilerState, update)
	elseif action.type == ClearStateForNewProfilingSession.name then
		local newState = table.clone(GetSessionState(action.isClient, scriptProfilerState))

		newState.rootNode = 0
		newState.rootFunc = 0
		newState.rootNodeName = nil
		newState.searchFilterFlat = {}
		newState.searchFilterGraph = {}
		newState.expandedNodes = {}

		local update = table.clone(scriptProfilerState)

		if action.isClient then
			update.client = newState
		else
			update.server = newState
		end

		return Immutable.JoinDictionaries(scriptProfilerState, update)
	elseif action.type == SetScriptProfilerRoot.name then
		local update = {}

		local newState = table.clone(
			if scriptProfilerState.isClientView then scriptProfilerState.client else scriptProfilerState.server
		)

		if newState.rootNode ~= action.rootNode then
			newState.rootNode = action.rootNode

			if FFlagScriptProfilerSetRootFixSourceInfo then
				newState.rootFunc = action.rootFunc
			end

			newState.rootNodeName = action.rootNodeName
		else
			newState.rootNode = 0
			newState.rootFunc = 0
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
