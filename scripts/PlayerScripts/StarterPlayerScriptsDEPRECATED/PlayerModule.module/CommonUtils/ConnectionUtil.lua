--!strict
-- Utility module for handling RBXScriptConnections. This module is used to track connections and disconnect them when needed.

type ConnectionUtilClass = {
	__index: ConnectionUtilClass,
	new: () -> ConnectionUtil,
	-- Connect with an RBXScripConnection
	trackConnection: (self: ConnectionUtil, string, RBXScriptConnection) -> (),
	-- Adds a manual disconnect function
	trackBoundFunction: (self: ConnectionUtil, string, () -> ()) -> (),
	-- Disconnects the key
	disconnect: (self: ConnectionUtil, string) -> (),
	-- Disconnects all connections on this util
	disconnectAll: (self: ConnectionUtil) -> (),
}

export type ConnectionUtil = typeof(setmetatable({} :: {
	-- Mapping from a unique key to a disconnect function
	_connections: {[string]: () -> ()},
}, {} :: ConnectionUtilClass))

local ConnectionUtil: ConnectionUtilClass = {} :: ConnectionUtilClass;
ConnectionUtil.__index = ConnectionUtil

function ConnectionUtil.new()
	local self = setmetatable({}, ConnectionUtil)

	self._connections = {}

	return self
end

function ConnectionUtil:trackConnection(key, connection)
	if self._connections[key] then
		self._connections[key]() -- Disconnect existing connection
	end
	-- store the disconnect function
	self._connections[key] = function() connection:Disconnect() end
end

function ConnectionUtil:trackBoundFunction(key, disconnectionFunc)
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