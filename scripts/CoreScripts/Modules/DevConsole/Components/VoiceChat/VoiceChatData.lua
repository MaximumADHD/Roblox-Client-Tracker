-- This class provides voice chat stats

local Signal = require(script.Parent.Parent.Parent.Signal)
local voiceChatService = game:GetService("VoiceChatService")

local VoiceChatData = {}
VoiceChatData.__index = VoiceChatData

function VoiceChatData.new()
	local self = {}
	setmetatable(self, VoiceChatData)

	self._statsUpdated = Signal.new()
	self._statsData = {}
	self._isRunning = false
	return self
end

function VoiceChatData:Signal()
	return self._statsUpdated
end

function VoiceChatData:getCurrentData()
	return self._statsData
end

function VoiceChatData:isRunning()
	return self._isRunning
end

function VoiceChatData:start()
	if voiceChatService and not self._statsListenerConnection then
		self._statsListenerConnection = (voiceChatService :: any).VoiceChatStatsCollected:Connect(function()
            self._statsData = (voiceChatService :: any):lastVoiceChatStats()
            self._statsUpdated:Fire(self._statsData)
		end)
		self._isRunning = true
	end
end

function VoiceChatData:stop()
	self._isRunning = false
    if self._statsListenerConnection then
		self._statsListenerConnection:Disconnect()
	end
end

return VoiceChatData