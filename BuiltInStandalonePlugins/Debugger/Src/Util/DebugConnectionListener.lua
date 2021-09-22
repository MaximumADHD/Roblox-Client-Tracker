local DebugConnectionListener = {}
DebugConnectionListener.__index = DebugConnectionListener

function DebugConnectionListener:onExecutionPaused(pausedState, debuggerPauseReason)
	--TODO(RIDE-5719)
end

function DebugConnectionListener:onExecutionResumed(pausedState)
	--TODO(RIDE-5719)
end

function DebugConnectionListener:connectEvents(debuggerConnectionId, connection)
	local connectionEvents = {}
	connectionEvents["paused"] = connection.Paused:connect(function(pausedState, debuggerPauseReason) 
		self:onExecutionPaused(pausedState, debuggerPauseReason)
	end)
	connectionEvents["resumed"] = connection.Resumed:connect(function(pausedState) 
		self:onExecutionResumed(pausedState)
	end)
	
	self.connectionEventConnections[debuggerConnectionId] = connectionEvents
end

function DebugConnectionListener:onConnectionStarted(debuggerConnection)
	assert(debuggerConnection and debuggerConnection.Id~=0)
	self.debuggerConnections[debuggerConnection.Id] = debuggerConnection
	self:connectEvents(debuggerConnection.Id, debuggerConnection)
end

function DebugConnectionListener:onConnectionEnded(debuggerConnection, reason)
	assert(debuggerConnection and debuggerConnection.Id~=0)
	for _,eventConnection in pairs(self.connectionEventConnections[debuggerConnection.Id]) do
		eventConnection:Disconnect()
	end
	self.connectionEventConnections[debuggerConnection.Id] = nil
	self.debuggerConnections[debuggerConnection.Id] = nil
end

function DebugConnectionListener:onFocusChanged(instance)
end

function setUpConnections(debugConnectionListener)
	local DebuggerConnectionManager = game:GetService("DebuggerConnectionManager")
	debugConnectionListener._connectionStartedConnection = DebuggerConnectionManager.ConnectionStarted:connect(function(debuggerConnection) debugConnectionListener:onConnectionStarted(debuggerConnection) end)
	debugConnectionListener._connectionEndedConnection = DebuggerConnectionManager.ConnectionEnded:connect(function(debuggerConnection, reason) debugConnectionListener:onConnectionEnded(debuggerConnection, reason) end)
	debugConnectionListener._focusChangedConnection = DebuggerConnectionManager.FocusChanged:connect(function(instance) debugConnectionListener:onFocusChanged(instance) end)
end

function DebugConnectionListener.new(store)
	local self = {store = store}
	self.debuggerConnections = {}
	self.connectionEventConnections = {}
	setUpConnections(self)
	setmetatable(self, DebugConnectionListener)
	return self
end

function DebugConnectionListener:destroy()
	self._connectionStartedConnection:Disconnect()
	self._connectionEndedConnection:Disconnect()
	self._focusChangedConnection:Disconnect()
	for id, connection in pairs(self.debuggerConnections) do
		self:onConnectionEnded(connection, 0)
	end
end

return DebugConnectionListener
