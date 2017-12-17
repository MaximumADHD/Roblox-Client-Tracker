--[[
	A limited, simple implementation of a Signal.

	Handlers are fired in order, and (dis)connections are properly handled when
	executing an event.

	Signal uses Immutable to avoid invalidating the 'Fire' loop iteration.
]]

local Immutable = require(script.Parent.Immutable)

local Signal = {}

Signal.__index = Signal

function Signal.new()
	local self = {
		_listeners = {}
	}

	setmetatable(self, Signal)

	return self
end

function Signal:Connect(callback)
	self._listeners = Immutable.Append(self._listeners, callback)

	local function disconnect()
		self._listeners = Immutable.RemoveValueFromList(self._listeners, callback)
	end

	return {
		Disconnect = disconnect
	}
end

function Signal:Fire(...)
	for _, listener in ipairs(self._listeners) do
		listener(...)
	end
end

return Signal