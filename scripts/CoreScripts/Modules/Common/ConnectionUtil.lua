--!strict
-- Utility module for handling RBXScriptSignals/Connections

export type ConnectionUtilType = {
	-- Mapping from a unique key to a disconnect function
	connections: {[string]: () -> ()},
	-------------------- Methods ----------------------------
	new: () -> ConnectionUtilType,
    -- Adds the given function as a connection to the RBXScriptSignal. If there is an already
    -- existing connecttion for the key, disconnects it and adds the new connection
	connect: (self: ConnectionUtilType, string, RBXScriptSignal, (any) -> any) -> (),
	-- Adds a manual disconnect function
	connectManual: (self: ConnectionUtilType, string, () -> ()) -> (),
	disconnect: (self: ConnectionUtilType, string) -> (),
	disconnectAll: (self: ConnectionUtilType) -> (),
}

local ConnectionUtil: ConnectionUtilType = {} :: ConnectionUtilType;
(ConnectionUtil:: any).__index = ConnectionUtil

function ConnectionUtil.new()
	local self = setmetatable({}, ConnectionUtil)
	self.connections = {}
	return self :: any 
end

function ConnectionUtil:connect(key, signal, func)
	if self.connections[key] then
		self.connections[key]() -- Disconnect existing connection
	end
	local connection = signal:Connect(func)
	-- store the disconnect function
	self.connections[key] = function() connection:Disconnect() end
end

function ConnectionUtil:connectManual(key, disconnectionFunc)
	if self.connections[key] then
		self.connections[key]()
	end
	self.connections[key] = disconnectionFunc
end

function ConnectionUtil:disconnect(key)
	if self.connections[key] then
		self.connections[key]()
		self.connections[key] = nil
	end
end

function ConnectionUtil:disconnectAll()
	for _, disconnectFunc in pairs(self.connections) do
		disconnectFunc()
	end
	self.connections = {} -- Clear all connections
end

return ConnectionUtil