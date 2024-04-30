--!strict
-- Utility module for handling RBXScriptSignals/Connections

local FFlagFixConnectionUtilKeys = game:DefineFastFlag("FixConnectionUtilKeys", false)

export type ConnectionUtilType = {
	connections_old: {[RBXScriptSignal]: RBXScriptConnection}, -- remove with FFlagFixConnectionUtilKeys
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
	if FFlagFixConnectionUtilKeys then
		self.connections = {}
	else
		self.connections_old = {}
	end
	return self :: any 
end

function ConnectionUtil:connect(key, signal, func)
	if FFlagFixConnectionUtilKeys then
		if self.connections[key] then
			self.connections[key]() -- Disconnect existing connection
		end
		local connection = signal:Connect(func)
		-- store the disconnect function
		self.connections[key] = function() connection:Disconnect() end
	else
		if self.connections_old[signal] then
			self.connections_old[signal]:Disconnect() -- Disconnect existing connection
		end
		self.connections_old[signal] = signal:Connect(func)
	end
end

function ConnectionUtil:connectManual(key, disconnectionFunc)
	assert(FFlagFixConnectionUtilKeys)

	if self.connections[key] then
		self.connections[key]()
	end
	self.connections[key] = disconnectionFunc
end

function ConnectionUtil:disconnect(key)
	assert(FFlagFixConnectionUtilKeys)
	if self.connections[key] then
		self.connections[key]()
		self.connections[key] = nil
	end
end

function ConnectionUtil:disconnectAll()
	if FFlagFixConnectionUtilKeys then
		for _, disconnectFunc in pairs(self.connections) do
			disconnectFunc()
		end
		self.connections = {} -- Clear all connections
	else
		for _, connection in pairs(self.connections_old) do
			if connection then
				connection:Disconnect()
			end
		end
		self.connections_old = {} -- Clear all connections
	end
end

return ConnectionUtil