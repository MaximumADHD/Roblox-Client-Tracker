local CorePackages = game:GetService("CorePackages")
local Roact = require(CorePackages.Roact)

local Components = script.Parent.Parent.Components
local ClientMemoryData = require(Components.Memory.ClientMemoryData)
local ServerMemoryData = require(Components.Memory.ServerMemoryData)
local ClientNetworkData = require(Components.Network.ClientNetworkData)
local ServerNetworkData = require(Components.Network.ServerNetworkData)
local ServerScriptsData = require(Components.Scripts.ServerScriptsData)
local DataStoresData = require(Components.DataStores.DataStoresData)
local ServerStatsData = require(Components.ServerStats.ServerStatsData)
local ActionBindingsData = require(Components.ActionBindings.ActionBindingsData)
local ServerJobsData = require(Components.ServerJobs.ServerJobsData)


local DataProvider = Roact.Component:extend("DataProvider")

function DataProvider:init()
	self._context.DevConsoleData = {
		ClientMemoryData = ClientMemoryData,
		ServerMemoryData = ServerMemoryData,
		ClientNetworkData = ClientNetworkData,
		ServerNetworkData = ServerNetworkData,
		ServerScriptsData = ServerScriptsData,
		DataStoresData = DataStoresData,
		ServerStatsData = ServerStatsData,
		ActionBindingsData = ActionBindingsData,
		ServerJobsData = ServerJobsData,
	}
end

function DataProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

return DataProvider