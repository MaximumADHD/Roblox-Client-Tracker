--[[
	A limited, simple implementation of a Signal.
]]

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
	table.insert(self._listeners, callback)

	local function disconnect()
		local listenerKey

		for key, listener in ipairs(self._listeners) do
			if listener == callback then
				listenerKey = key
				break
			end
		end

		table.remove(self._listeners, listenerKey)
	end

	return {
		Disconnect = disconnect
	}
end

function Signal:Fire(...)
	for _, listener in pairs(self._listeners) do
		listener(...)
	end
end

return Signal