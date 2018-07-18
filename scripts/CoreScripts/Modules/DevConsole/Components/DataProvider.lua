local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

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


local DataProvider = Roact.Component:extend("DataProvider")

function DataProvider:init()
	self._context.DevConsoleData = {
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
	}
end

function DataProvider:didMount()
	if self.props.isDeveloperView then
		for _, dataProvider in pairs(self._context.DevConsoleData) do
			dataProvider:start()
		end
	else
		self._context.DevConsoleData.ClientLogData:start()
		self._context.DevConsoleData.ClientMemoryData:start()
	end
end

function DataProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return DataProvider