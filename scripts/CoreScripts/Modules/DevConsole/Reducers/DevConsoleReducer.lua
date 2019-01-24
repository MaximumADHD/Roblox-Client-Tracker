local Reducers = script.Parent
local DevConsoleDisplayOptions = require(Reducers.DevConsoleDisplayOptions)
local MainView = require(Reducers.MainView)

local MemoryData = require(Reducers.MemoryData)
local NetworkData = require(Reducers.NetworkData)
local ScriptsData = require(Reducers.ScriptsData)
local DataStoresData = require(Reducers.DataStoresData)
local ServerStatsData = require(Reducers.ServerStatsData)
local ServerJobsData = require(Reducers.ServerJobsData)
local ActionBindingsData = require(Reducers.ActionBindingsData)
local MicroProfiler = require(Reducers.MicroProfiler)

return function(state, action)
	local devConsoleState = state or {}
	return {
		DisplayOptions = DevConsoleDisplayOptions(devConsoleState.DisplayOptions, action),
		MainView = MainView(devConsoleState.MainView, action),

		MemoryData = MemoryData(devConsoleState.MemoryData, action),
		NetworkData = NetworkData(devConsoleState.NetworkData, action),
		ScriptsData = ScriptsData(devConsoleState.ScriptsData, action),
		DataStoresData = DataStoresData(devConsoleState.DataStoresData, action),
		ServerStatsData = ServerStatsData(devConsoleState.ServerStatsData, action),
		ServerJobsData = ServerJobsData(devConsoleState.ServerJobsData, action),
		ActionBindingsData = ActionBindingsData(devConsoleState.ActionBindingsData, action),
		MicroProfiler = MicroProfiler(devConsoleState.MicroProfiler, action),
	}
end