local CircularBuffer = require(script.Parent.Parent.Parent.CircularBuffer)
local Signal = require(script.Parent.Parent.Parent.Signal)

local MAX_DATASET_COUNT = tonumber(settings():GetFVariable("NewDevConsoleMaxGraphCount"))
local AVG_PING_MS = "Avg Ping ms"

local getClientReplicator = require(script.Parent.Parent.Parent.Util.getClientReplicator)

local ServerStatsData = {}
ServerStatsData.__index = ServerStatsData

function ServerStatsData.new()
	local self = {}
	setmetatable(self, ServerStatsData)

	self._serverStatsUpdated = Signal.new()
	self._serverStatsPing = Signal.new()
	self._serverStatsData = {}
	self._serverStatsDataCount = 0
	self._lastUpdateTime = 0
	return self
end

function ServerStatsData:avgPing()
	return self._serverStatsPing
end

function ServerStatsData:Signal()
	return self._serverStatsUpdated
end

function ServerStatsData:getCurrentData()
	return self._serverStatsData
end

function ServerStatsData:updateValue(key, value)
	if not self._serverStatsData[key] then
		local newBuffer = CircularBuffer.new(MAX_DATASET_COUNT)
		newBuffer:push_back({
			value = value,
			time = self._lastUpdateTime
		})
		self._serverStatsData[key] = {
			max = value,
			min = value,
			dataSet = newBuffer,
		}
	else
		local dataEntry = self._serverStatsData[key]
		local currMax = dataEntry.max
		local currMin = dataEntry.min

		local update = {
			value = value,
			time = self._lastUpdateTime
		}

		local overwrittenEntry = self._serverStatsData[key].dataSet:push_back(update)

		if overwrittenEntry then
			local iter = self._serverStatsData[key].dataSet:iterator()
			local dat = iter:next()
			if currMax == overwrittenEntry.data then
				currMax = currMin
				while dat do
					currMax	= dat.value < currMax and currMax or dat.value
					dat = iter:next()
				end
			end
			if currMin == overwrittenEntry.data then
				currMin = currMax
				while dat do
					currMin	= currMin < dat.value and currMin or dat.value
					dat = iter:next()
				end
			end
		end

		self._serverStatsData[key].max = currMax < value and value or currMax
		self._serverStatsData[key].min = currMin < value and currMin or value
	end
end

function ServerStatsData:start()
	local clientReplicator = getClientReplicator()
	if clientReplicator and not self._statsListenerConnection then
		self._statsListenerConnection = clientReplicator.StatsReceived:connect(function(stats)
			if stats then
				self._lastUpdateTime = os.time()
				local count = 0
				for k, v in pairs(stats) do
					if type(v) == 'number' then
						self:updateValue(k,v)
						count = count + 1
					end
				end

				self._serverStatsDataCount = count
				self._serverStatsUpdated:Fire(self._serverStatsData)
				if self._serverStatsData[AVG_PING_MS] then
					self._serverStatsPing:Fire(self._serverStatsData[AVG_PING_MS].dataSet:back().value)
				end
			end
		end)
		clientReplicator:RequestServerStats(true)
	end

end

function ServerStatsData:stop()
	if self._statsListenerConnection then
		self._statsListenerConnection:Disconnect()
		self._statsListenerConnection = nil
	end
end

return ServerStatsData