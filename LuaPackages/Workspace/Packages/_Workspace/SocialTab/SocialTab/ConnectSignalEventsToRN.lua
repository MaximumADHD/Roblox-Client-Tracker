--!nonstrict
local ConnectSignalEventsToRN = {}
ConnectSignalEventsToRN.__index = ConnectSignalEventsToRN

function ConnectSignalEventsToRN.new()
	local self = {
		_rnBypassActionHandle = nil,
		_rnBypassActionCallback = nil,
	}
	setmetatable(self, ConnectSignalEventsToRN)

	return self
end

function ConnectSignalEventsToRN:updateActionSignal(newSignal)
	local processRnBypassAction = function(action)
		if self._rnBypassActionCallback then
			self._rnBypassActionCallback(action)
		end
	end

	if self._rnBypassActionHandle then
		self._rnBypassActionHandle:disconnect()
		self._rnBypassActionHandle = nil
	end

	if newSignal then
		self._rnBypassActionHandle = newSignal:connect(processRnBypassAction)
	end
end

function ConnectSignalEventsToRN:connectExternalDispatch(callback)
	self._rnBypassActionCallback = callback
	return function()
		self._rnBypassActionCallback = nil
	end
end

return ConnectSignalEventsToRN
