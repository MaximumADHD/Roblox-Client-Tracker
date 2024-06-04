--!strict
-- Utility module for handling RBXScriptSignals/Connections

export type ConnectionUtilType = {
	-------------------- Public ----------------------------
	new: () -> ConnectionUtilType,
	-- Adds the given function as a connection to the RBXScriptSignal. If there is an already
	-- existing connecttion for the key, disconnects it and adds the new connection
	connect: (self: ConnectionUtilType, string, RBXScriptSignal, (any) -> any) -> (),
	-- Adds a manual disconnect function
	connectManual: (self: ConnectionUtilType, string, () -> ()) -> (),
	-- Disconnects the key
	disconnect: (self: ConnectionUtilType, string) -> (),
	-- Disconnects all connections on this util
	disconnectAll: (self: ConnectionUtilType) -> (),

	-------------------- Private ----------------------------
	-- Mapping from a unique key to a disconnect function
	_connections: {[string]: () -> ()},
}

local ConnectionUtil: ConnectionUtilType = {} :: ConnectionUtilType;
(ConnectionUtil:: any).__index = ConnectionUtil

function ConnectionUtil.new()
	local self = setmetatable({}, ConnectionUtil)

	self._connections = {}

	return self :: any 
end

function ConnectionUtil:connect(key, signal, func)
	if self._connections[key] then
		self._connections[key]() -- Disconnect existing connection
	end
	local connection = signal:Connect(func)
	-- store the disconnect function
	self._connections[key] = function() connection:Disconnect() end
end

function ConnectionUtil:connectManual(key, disconnectionFunc)
	if self._connections[key] then
		self._connections[key]()
	end
	self._connections[key] = disconnectionFunc
end

function ConnectionUtil:disconnect(key)
	if self._connections[key] then
		self._connections[key]()
		self._connections[key] = nil
	end
end

function ConnectionUtil:disconnectAll()
	for _, disconnectFunc in pairs(self._connections) do
		disconnectFunc()
	end
	self._connections = {} -- Clear all connections
end

return ConnectionUtil