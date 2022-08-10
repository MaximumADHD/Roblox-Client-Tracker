--[[
	A limited, simple implementation of a Signal.

	Handlers are fired in order, and (dis)connections are properly handled when
	executing an event.

	Signal uses Immutable to avoid invalidating the 'Fire' loop iteration.
]]

local Immutable = require(script.Parent.Immutable)

export type SignalHandle = {
	-- FIXME: This function does not actually take self but all current callers supply it
	disconnect: (any?) -> (),
}

export type SignalCallback = (...any) -> ()

export type Signal = {
	connect: (self: Signal, callback: SignalCallback) -> SignalHandle,
	fire: (self: Signal, ...any) -> (),
}

export type SignalClass = {
	new: () -> Signal
}

local Signal: any = {}

Signal.__index = Signal

function Signal.new()
	local self = {
		_listeners = {}
	}

	setmetatable(self, Signal)

	return self
end

function Signal:connect(callback)
	local listener = {
		callback = callback,
		isConnected = true,
	}
	self._listeners = Immutable.Append(self._listeners, listener)

	local function disconnect()
		listener.isConnected = false
		self._listeners = Immutable.RemoveValueFromList(self._listeners, listener)
	end

	return {
		Disconnect = function()
			warn(string.format(
				"Connection:Disconnect() has been deprecated, use Connection:disconnect()\n%s]",
				debug.traceback()
			))
			disconnect()
		end,
		disconnect = disconnect,
	}
end

function Signal:fire(...)
	for _, listener in ipairs(self._listeners) do
		if listener.isConnected then
			listener.callback(...)
		end
	end
end

function Signal:Connect(...)
	warn(string.format(
		"Signal:Connect() has been deprecated, use Signal:connect()\n%s]",
		debug.traceback()
	))
	return self:connect(...)
end

function Signal:Fire(...)
	warn(string.format(
		"Signal:Fire() has been deprecated, use Signal:fire()\n%s]",
		debug.traceback()
	))
	self:fire(...)
end


return Signal :: SignalClass
