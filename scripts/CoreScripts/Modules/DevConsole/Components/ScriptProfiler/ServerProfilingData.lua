--!nonstrict
local Signal = require(script.Parent.Parent.Parent.Signal)
local ScriptContext = game:GetService("ScriptContext")

local getClientReplicator = require(script.Parent.Parent.Parent.Util.getClientReplicator)

local ServerProfilingData = {}
ServerProfilingData.__index = ServerProfilingData

function ServerProfilingData.new()
	local self = {}
	setmetatable(self, ServerProfilingData)

	self._serverStatsUpdated = Signal.new()
	self._serverStatsData = ""
	self._lastUpdateTime = 0
	self._isRunning = false
	return self
end

function ServerProfilingData:Signal()
	return self._serverStatsUpdated
end

function ServerProfilingData:getCurrentData()
	return self._serverStatsData
end

function ServerProfilingData:isRunning()
	return self._isRunning
end

function ServerProfilingData:start()
	local clientReplicator = getClientReplicator()
	if clientReplicator and not self._statsListenerConnection then
		self._statsListenerConnection = clientReplicator.StatsReceived:connect(function(stats)
			if stats and stats.ServerScriptProfilingData and #stats.ServerScriptProfilingData > 0 then
				self._serverStatsData = stats.ServerScriptProfilingData
				self._serverStatsUpdated:Fire(self._serverStatsData)
			end
		end)
		clientReplicator:RequestServerStats(true)
		self._isRunning = true
	end
end

function ServerProfilingData:stop()
	if self._statsListenerConnection then
		self._statsListenerConnection:Disconnect()
		self._statsListenerConnection = nil
	end
	self._isRunning = false
end

return ServerProfilingData