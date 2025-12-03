--!nonstrict
local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)
local Signal = require(script.Parent.Parent.Parent.Signal)

local MAX_DATASET_COUNT = tonumber(settings():GetFVariable("NewDevConsoleMaxGraphCount"))

local getClientReplicator = require(script.Parent.Parent.Parent.Util.getClientReplicator)

local DataStoresData = {}
DataStoresData.__index = DataStoresData

function DataStoresData.new()
	local self = {}
	setmetatable(self, DataStoresData)

	self._dataStoresUpdated = Signal.new()
	self._dataStoresData = {}
	self._dataStoresDataCount = 0
	self._lastUpdateTime = 0
	self._isRunning = false
	return self
end

function DataStoresData:Signal()
	return self._dataStoresUpdated
end

function DataStoresData:getCurrentData()
	return self._dataStoresData, self._dataStoresDataCount
end

function DataStoresData:updateValue(key, value)
	if not self._dataStoresData[key] then
		local newBuffer = CircularBuffer.new(MAX_DATASET_COUNT)
		newBuffer:push_back({
			value = value,
			time = self._lastUpdateTime
		})

		self._dataStoresData[key] = {
			max = value,
			min = value,
			dataSet = newBuffer,
		}
	else
		local dataEntry = self._dataStoresData[key]
		local currMax = dataEntry.max
		local currMin = dataEntry.min

		local update = {
			value = value,
			time = self._lastUpdateTime
		}
		local overwrittenEntry = self._dataStoresData[key].dataSet:push_back(update)

		if overwrittenEntry then
			local iter = self._dataStoresData[key].dataSet:iterator()
			local dat = iter:next()
			if currMax == overwrittenEntry.value then
				currMax = currMin
				while dat do
					currMax	= dat.value < currMax and currMax or dat.value
					dat = iter:next()
				end
			end
			if currMin == overwrittenEntry.value then
				currMin = currMax
				while dat do
					currMin	= currMin < dat.value and currMin or dat.value
					dat = iter:next()
				end
			end
		end

		self._dataStoresData[key].max = currMax < value and value or currMax
		self._dataStoresData[key].min = currMin < value and currMin or value
	end
end

function DataStoresData:isRunning()
	return self._isRunning
end

function DataStoresData:start()
	local clientReplicator = getClientReplicator()
	if clientReplicator and not self._statsListenerConnection then
		self._statsListenerConnection = clientReplicator.StatsReceived:connect(function(stats)
			local dataStoreBudget = stats.DataStoreBudget
			self._lastUpdateTime = os.time()
			if dataStoreBudget then
				local count = 0
				for k, v in pairs(dataStoreBudget) do
					if type(v) == 'number' then
						self:updateValue(k,v)
						count = count + 1
					end
				end
				self._dataStoresDataCount = count
				self._dataStoresUpdated:Fire(self._dataStoresData, self._dataStoresDataCount)
			end
		end)
		clientReplicator:RequestServerStats(true)
		self._isRunning = true
	end
end

function DataStoresData:stop()
	-- listeners are responsible for disconnecting themselves
	if self._statsListenerConnection then
		self._statsListenerConnection:Disconnect()
		self._statsListenerConnection = nil
	end
	self._isRunning = false
end

return DataStoresData