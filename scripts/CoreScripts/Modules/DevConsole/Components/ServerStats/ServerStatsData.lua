local NetworkClient = game:GetService("NetworkClient")
local Signal = require(script.Parent.Parent.Parent.Signal)

local instance
local AVG_PING_MS = "Avg Ping ms"
local ServerStatsData = {}
ServerStatsData.__index = ServerStatsData

function ServerStatsData.new()
	local self = {}
	setmetatable(self, ServerStatsData)

	self._serverStatsUpdated = Signal.new()
	self._serverStatsPing = Signal.new()
	self._serverStatsData = {}
	self._serverStatsDataCount = 0
	return self
end

function ServerStatsData:avgPing()
	return self._serverStatsPing
end

function ServerStatsData:Signal()
	return self._serverStatsUpdated
end

function ServerStatsData:getCurrentData()
	return self._serverStatsData, self._serverStatsDataCount
end

function ServerStatsData:start()
	local clientReplicator = NetworkClient:GetChildren()[1]

	if clientReplicator and not self._statsListenerConnection then
		self._statsListenerConnection = clientReplicator.StatsReceived:connect(function(stats)
			if stats then
				local count = 0
				for k, v in pairs(stats) do
					if type(v) == 'number' then
						self._serverStatsData[k] = v
						count = count + 1
					end
				end

				self._serverStatsDataCount = count
				self._serverStatsUpdated:Fire(self._serverStatsData, self._serverStatsDataCount)
				if self._serverStatsData[AVG_PING_MS] then
					self._serverStatsPing:Fire(self._serverStatsData[AVG_PING_MS])
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

local function GetInstance()
	if not instance then
		instance = ServerStatsData.new()
	end
	return instance
end

return GetInstance()