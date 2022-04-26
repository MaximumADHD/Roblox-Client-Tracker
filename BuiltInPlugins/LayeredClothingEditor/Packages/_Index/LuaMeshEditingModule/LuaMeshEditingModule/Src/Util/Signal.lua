--[[
	A limited, simple implementation of a Signal.

	Handlers are fired in order, and (dis)connections are properly handled when
	executing an event.

	This is identical to DevFramework's Signal with some of the Immutable functions being manually copied over.
]]
local Signal = {}

Signal.__index = Signal

local function RemoveFromList(list, removeIndex)
	local new = {}

	for i = 1, #list do
		if i ~= removeIndex then
			table.insert(new, list[i])
		end
	end

	return new
end

local function Append(list, ...)
	local new = {}
	local len = #list

	for key = 1, len do
		new[key] = list[key]
	end

	for i = 1, select("#", ...) do
		new[len + i] = select(i, ...)
	end

	return new
end

function Signal.new()
	local self = {
		_listeners = {}
	}

	setmetatable(self, Signal)

	return self
end

function Signal:Connect(callback)
	local listener = {
		callback = callback,
		isConnected = true,
	}
	self._listeners = Append(self._listeners, listener)

	local function disconnect()
		listener.isConnected = false
		self._listeners = RemoveFromList(self._listeners, listener)
	end

	return {
		Disconnect = disconnect,
	}
end

function Signal:Fire(...)
	for _, listener in ipairs(self._listeners) do
		if listener.isConnected then
			listener.callback(...)
		end
	end
end


return Signal