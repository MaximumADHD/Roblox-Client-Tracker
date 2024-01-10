--!nonstrict
-- LuauHeapData is a DataProvider class which stores Luau heap profiling information coming from server-side statistics response
local ScriptContext = game:GetService("ScriptContext")
local HttpService = game:GetService("HttpService")

local Signal = require(script.Parent.Parent.Parent.Signal)

local getClientReplicator = require(script.Parent.Parent.Parent.Util.getClientReplicator)

local LuauHeapData = {}
LuauHeapData.__index = LuauHeapData

function LuauHeapData.new()
	local self = {}
	setmetatable(self, LuauHeapData)

	self._serverStatsUpdated = Signal.new()
	self._serverStatsData = {}
	self._isRunning = false
	return self
end

function LuauHeapData:Signal()
	return self._serverStatsUpdated
end

function LuauHeapData:getCurrentData()
	return self._serverStatsData
end

function LuauHeapData:isRunning()
	return self._isRunning
end

function LuauHeapData:start()
	local clientReplicator = getClientReplicator()
	if clientReplicator and not self._statsListenerConnection then
		self._statsListenerConnection = clientReplicator.StatsReceived:connect(function(stats)
			if stats and stats.ServerLuauHeapData and #stats.ServerLuauHeapData > 0 then
				self._serverStatsData = HttpService:JSONDecode(stats.ServerLuauHeapData)
				self._serverStatsUpdated:Fire(self._serverStatsData)
			end
		end)
		clientReplicator:RequestServerStats(true)
		self._isRunning = true
	end
end

function LuauHeapData:stop()
	if self._statsListenerConnection then
		self._statsListenerConnection:Disconnect()
		self._statsListenerConnection = nil
	end
	self._isRunning = false
end

return LuauHeapData
