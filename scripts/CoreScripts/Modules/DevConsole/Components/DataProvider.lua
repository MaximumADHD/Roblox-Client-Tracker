local CorePackages = game:GetService("CorePackages")

local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent.Components
local LogData = require(Components.Log.LogData)
local ClientMemoryData = require(Components.Memory.ClientMemoryData)
local ServerMemoryData = require(Components.Memory.ServerMemoryData)
local NetworkData = require(Components.Network.NetworkData)
local ServerScriptsData = require(Components.Scripts.ServerScriptsData)
local DataStoresData = require(Components.DataStores.DataStoresData)
local ServerStatsData = require(Components.ServerStats.ServerStatsData)
local ActionBindingsData = require(Components.ActionBindings.ActionBindingsData)
local ServerJobsData = require(Components.ServerJobs.ServerJobsData)
local DebugVisualizationsData = require(Components.DebugVisualizations.DebugVisualizationsData)
local ServerProfilingData = require(Components.ScriptProfiler.ServerProfilingData)
local LuauHeapData = require(Components.LuauHeap.LuauHeapData)
local DataContext = require(Components.DataContext)

local FFlagScriptProfilerNoClientRepl = game:DefineFastFlag("ScriptProfilerNoClientRepl", false)

local DataProvider = Roact.Component:extend("DataProvider")

function DataProvider:init()
	self:setState({
		DevConsoleData = {
			ClientLogData = LogData.new(true),
			ServerLogData = LogData.new(false),
			ClientMemoryData = ClientMemoryData.new(),
			ServerMemoryData = ServerMemoryData.new(),
			ClientNetworkData = NetworkData.new(true),
			ServerNetworkData = NetworkData.new(false),
			ServerScriptsData = ServerScriptsData.new(),
			DataStoresData = DataStoresData.new(),
			ServerStatsData = ServerStatsData.new(),
			ActionBindingsData = ActionBindingsData.new(),
			ServerJobsData = ServerJobsData.new(),
			DebugVisualizationsData = DebugVisualizationsData.new(),
			ServerProfilingData = if FFlagScriptProfilerNoClientRepl then nil else ServerProfilingData.new(),
			LuauHeapData = LuauHeapData.new(),
		},
	})
end

function DataProvider:didMount()
	self.state.DevConsoleData.ClientLogData:start()
	self.state.DevConsoleData.ClientMemoryData:start()
end

function DataProvider:willUpdate(nextProps, nextState)
	if nextProps.isDeveloperView and not self.props.isDeveloperView then
		for _, dataProvider in pairs(self.state.DevConsoleData) do
			if not dataProvider:isRunning() then
				dataProvider:start()
			end
		end
	end
end

function DataProvider:render()
	return Roact.createElement(DataContext.Provider, {
		value = self.state.DevConsoleData,
	}, Roact.oneChild(self.props[Roact.Children]))
end

local function mapStateToProps(state, props)
	return {
		isDeveloperView = state.MainView.isDeveloperView,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, nil)(DataProvider)
