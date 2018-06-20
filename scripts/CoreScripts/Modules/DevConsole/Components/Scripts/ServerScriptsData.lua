local NetworkClient = game:GetService("NetworkClient")
local Signal = require(script.Parent.Parent.Parent.Signal)

local instance
local ServerScriptsData = {}
ServerScriptsData.__index = ServerScriptsData

function ServerScriptsData.new()
	local self = {}
	setmetatable(self, ServerScriptsData)

	self._serverScriptsUpdated = Signal.new()
	self._serverScriptsData = {}
	self._serverScriptsDataCount = 0
	return self
end

function ServerScriptsData:Signal()
	return self._serverScriptsUpdated
end

function ServerScriptsData:getCurrentData()
	return self._serverScriptsData, self._serverScriptsDataCount
end

function ServerScriptsData:start()
	local clientReplicator = NetworkClient:GetChildren()[1]

	if clientReplicator and not self._statsListenerConnection then
		self._statsListenerConnection = clientReplicator.StatsReceived:connect(function(stats)
			if stats then
				local count = 0

				local statsScripts = stats.Scripts
				for k, v in pairs(statsScripts) do
					self._serverScriptsData[k] = v
					count = count + 1
				end

				self._serverScriptsDataCount = count
				self._serverScriptsUpdated:Fire(self._serverScriptsData, self._serverScriptsDataCount)
			end
		end)
		clientReplicator:RequestServerStats(true)
	end
end

function ServerScriptsData:stop()
	-- listeners are responsible for disconnecting themselves
	if self._statsListenerConnection then
		self._statsListenerConnection:Disconnect()
		self._statsListenerConnection = nil
	end
end

local function GetInstance()
	if not instance then
		instance = ServerScriptsData.new()
	end
	return instance
end

return GetInstance()