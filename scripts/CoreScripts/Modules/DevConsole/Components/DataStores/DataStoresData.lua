local NetworkClient = game:GetService("NetworkClient")
local Signal = require(script.Parent.Parent.Parent.Signal)

local instance
local DataStoresData = {}
DataStoresData.__index = DataStoresData

function DataStoresData.new()
	local self = {}
	setmetatable(self, DataStoresData)

	self._dataStoresUpdated = Signal.new()
	self._dataStoresData = {}
	self._dataStoresDataCount = 0
	return self
end

function DataStoresData:Signal()
	return self._dataStoresUpdated
end

function DataStoresData:getCurrentData()
	return self._dataStoresData, self._dataStoresDataCount
end

function DataStoresData:start()
	local clientReplicator = NetworkClient:GetChildren()[1]

	if clientReplicator and not self._statsListenerConnection then
		self._statsListenerConnection = clientReplicator.StatsReceived:connect(function(stats)
			local dataStoreBudget = stats.DataStoreBudget
			if dataStoreBudget then
				local count = 0
				for k, v in pairs(dataStoreBudget) do
					if type(v) == 'number' then
						self._dataStoresData[k] = v
						count = count + 1
					end
				end
				self._dataStoresDataCount = count
				self._dataStoresUpdated:Fire(self._dataStoresData, self._dataStoresDataCount)
			end
		end)
		clientReplicator:RequestServerStats(true)
	end
end

function DataStoresData:stop()
	-- listeners are responsible for disconnecting themselves
	if self._statsListenerConnection then
		self._statsListenerConnection:Disconnect()
		self._statsListenerConnection = nil
	end
end

local function GetInstance()
	if not instance then
		instance = DataStoresData.new()
	end
	return instance
end

return GetInstance()