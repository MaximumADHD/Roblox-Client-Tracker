--!strict
-- Utility module for handling RBXScriptSignals/Connections

export type ConnectionUtilType = {
	connections: {[RBXScriptSignal]: RBXScriptConnection},
	-------------------- Methods ----------------------------
	new: () -> ConnectionUtilType,
    -- Adds the given function as a connection to the RBXScriptSignal. If there is an already
    -- existing connecttion for the signal, disconnects it and adds the new connection
	connect: (self: ConnectionUtilType, RBXScriptSignal, (any) -> any) -> (),
	disconnect: (self: ConnectionUtilType, RBXScriptSignal) -> (),
	disconnectAll: (self: ConnectionUtilType, RBXScriptSignal) -> (),
}

local ConnectionUtil: ConnectionUtilType = {} :: ConnectionUtilType
(ConnectionUtil:: any).__index = ConnectionUtil

function ConnectionUtil.new()
	local self = setmetatable({}, ConnectionUtil)
	self.connections = {} 
	return self :: any 
end

function ConnectionUtil:connect(signal, func)
	if self.connections[signal] then
		self.connections[signal]:Disconnect() -- Disconnect existing connection
	end
	self.connections[signal] = signal:Connect(func)
end

function ConnectionUtil:disconnect(signal)
	if self.connections[signal] then
		self.connections[signal]:Disconnect()
		self.connections[signal] = nil
	end
end

function ConnectionUtil:disconnectAll()
	for _, connection in pairs(self.connections) do
		if connection then
			connection:Disconnect()
		end
	end
	self.connections = {} -- Clear all connections
end

return ConnectionUtil