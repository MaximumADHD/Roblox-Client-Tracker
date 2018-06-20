local NetworkClient = game:GetService("NetworkClient")
local Signal = require(script.Parent.Parent.Parent.Signal)

local instance
local ServerJobsData = {}
ServerJobsData.__index = ServerJobsData

function ServerJobsData.new()
	local self = {}
	setmetatable(self, ServerJobsData)

	self._serverJobsUpdated = Signal.new()
	self._serverJobsData = {}
	self._serverJobsDataCount = 0
	return self
end

function ServerJobsData:Signal()
	return self._serverJobsUpdated
end

function ServerJobsData:getCurrentData()
	return self._serverJobsData, self._serverJobsDataCount
end

function ServerJobsData:start()
	local clientReplicator = NetworkClient:GetChildren()[1]

	if clientReplicator and not self._statsListenerConnection then
		self._statsListenerConnection = clientReplicator.StatsReceived:connect(function(stats)
			local serverJobsList = stats.Jobs

			if serverJobsList then
				self._serverJobsData = serverJobsList
				self._serverJobsDataCount = 0
				self._serverJobsUpdated:Fire(serverJobsList, self._serverJobsDataCount)
			end
		end)
		clientReplicator:RequestServerStats(true)
	end
end

function ServerJobsData:stop()
	if self._statsListenerConnection then
		self._statsListenerConnection:Disconnect()
		self._statsListenerConnection = nil
	end
end

local function GetInstance()
	if not instance then
		instance = ServerJobsData.new()
	end
	return instance
end

return GetInstance()