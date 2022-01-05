local Src = script.Parent.Parent.Parent
local Actions = Src.Actions
local AddThreadId = require(Actions.Callstack.AddThreadId)
local SetCurrentThread = require(Actions.Callstack.SetCurrentThread)
local Resumed = require(Actions.Common.Resumed)
local BreakpointHitAction = require(Actions.Common.BreakpointHit)
local SetCurrentBreakpointIdAction = require(Actions.Common.SetCurrentBreakpointId)
local SetFocusedDebuggerConnection = require(Actions.Common.SetFocusedDebuggerConnection)
local ClearConnectionDataAction = require(Actions.Common.ClearConnectionData)
local RequestCallstackThunk = require(Src.Thunks.Callstack.RequestCallstackThunk)
local LoadStackFrameVariables = require(Src.Thunks.Callstack.LoadStackFrameVariables)

local Models = Src.Models
local DebuggerStateToken = require(Models.DebuggerStateToken)
local StepStateBundle = require(Models.StepStateBundle)

local DebugConnectionListener = {}
DebugConnectionListener.__index = DebugConnectionListener

function DebugConnectionListener:onExecutionPaused(connection, pausedState, debuggerPauseReason, debuggerUIService, scriptRegService)
	self.store:dispatch(SetFocusedDebuggerConnection(connection.Id))
	local state = self.store:getState()
	local common = state.Common
	local dst = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId] or 
		DebuggerStateToken.fromData({debuggerConnectionId = connection.Id})
	self.store:dispatch(BreakpointHitAction(dst, pausedState.ThreadId))
	if debuggerPauseReason == Enum.DebuggerPauseReason.Breakpoint and pausedState.Breakpoint then
		self.store:dispatch(SetCurrentBreakpointIdAction(pausedState.Breakpoint.MetaBreakpointId))
		debuggerUIService:OpenScriptAtLine(pausedState.Breakpoint.Script, common.currentDebuggerConnectionId, pausedState.Breakpoint.Line)
	end
	
	-- thread info is retrieved here; you cannot call GetThreadById before calling GetThreads
	connection:GetThreads(function(threads) 
		local threadState = connection:GetThreadById(pausedState.ThreadId)
		assert(threadState ~= nil)
		self.store:dispatch(AddThreadId(pausedState.ThreadId, threadState.ThreadName, dst))
		self.store:dispatch(RequestCallstackThunk(threadState, connection, dst, scriptRegService))
		connection:Populate(threadState, function()
			local callstack = threadState:GetChildren()
			for stackFrameId, stackFrame in ipairs(callstack) do
				local stepStateBundle = StepStateBundle.ctor(dst,threadState.ThreadId,stackFrameId)
				self.store:dispatch(LoadStackFrameVariables(connection, stackFrame, stepStateBundle))
			end
		end)

		self.store:dispatch(SetCurrentThread(pausedState.ThreadId))
	end)
end

function DebugConnectionListener:onExecutionResumed(connection, pausedState)
	local state = self.store:getState()
	local common = state.Common
	local dst = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId]
	self.store:dispatch(Resumed(dst, pausedState.ThreadId))
end

function DebugConnectionListener:connectEvents(debuggerConnectionId, connection, debuggerUIService, scriptRegService)
	self.store:dispatch(SetFocusedDebuggerConnection(connection.Id))
	local connectionEvents = {}
	connectionEvents["paused"] = connection.Paused:Connect(function(pausedState, debuggerPauseReason)
		self:onExecutionPaused(connection, pausedState, debuggerPauseReason, debuggerUIService, scriptRegService)
	end)
	connectionEvents["resumed"] = connection.Resumed:Connect(function(pausedState) 
		self:onExecutionResumed(connection, pausedState)
	end)
	
	self.connectionEventConnections[debuggerConnectionId] = connectionEvents
end

function DebugConnectionListener:onConnectionStarted(debuggerConnection, debuggerUIService, scriptRegService)
	assert(debuggerConnection and debuggerConnection.Id~=0)
	self.debuggerConnections[debuggerConnection.Id] = debuggerConnection
	self:connectEvents(debuggerConnection.Id, debuggerConnection, debuggerUIService, scriptRegService)
end

function DebugConnectionListener:onConnectionEnded(debuggerConnection, reason)
	assert(debuggerConnection and debuggerConnection.Id~=0)
	local state = self.store:getState()
	local common = state.Common
	local dst = common.debuggerConnectionIdToDST[debuggerConnection.Id]
	if dst then
		self.store:dispatch(ClearConnectionDataAction(dst))
	end
	for _,eventConnection in pairs(self.connectionEventConnections[debuggerConnection.Id]) do
		eventConnection:Disconnect()
	end
	self.connectionEventConnections[debuggerConnection.Id] = nil
	self.debuggerConnections[debuggerConnection.Id] = nil
end

function DebugConnectionListener:onFocusChanged(debuggerConnection)
	self.store:dispatch(SetFocusedDebuggerConnection(debuggerConnection.Id))
end

local function setUpConnections(debugConnectionListener, debuggerConnectionManager, debuggerUIService, scriptRegService)
	local DebuggerConnectionManager = debuggerConnectionManager or game:GetService("DebuggerConnectionManager")
	local DebuggerUIService = debuggerUIService or game:GetService("DebuggerUIService")
	local ScriptRegService = scriptRegService or game:GetService("ScriptRegistrationService")

	debugConnectionListener._connectionStartedConnection = DebuggerConnectionManager.ConnectionStarted:Connect(function(debuggerConnection) debugConnectionListener:onConnectionStarted(debuggerConnection, DebuggerUIService, ScriptRegService) end)
	debugConnectionListener._connectionEndedConnection = DebuggerConnectionManager.ConnectionEnded:Connect(function(debuggerConnection, reason) debugConnectionListener:onConnectionEnded(debuggerConnection, reason) end)
	debugConnectionListener._focusChangedConnection = DebuggerConnectionManager.FocusChanged:Connect(function(debuggerConnection) debugConnectionListener:onFocusChanged(debuggerConnection) end)
end

function DebugConnectionListener.new(store, debuggerConnectionManager, debuggerUIService, scriptRegService)
	local self = {store = store}
	self.debuggerConnections = {}
	self.connectionEventConnections = {}
	setUpConnections(self, debuggerConnectionManager, debuggerUIService, scriptRegService)
	setmetatable(self, DebugConnectionListener)
	return self
end

function DebugConnectionListener:destroy()
	if self._connectionStartedConnection then
		self._connectionStartedConnection:Disconnect()
		self._connectionStartedConnection = nil
	end
	
	if self._connectionEndedConnection then
		self._connectionEndedConnection:Disconnect()
		self._connectionEndedConnection = nil
	end
	
	if self._focusChangedConnection then
		self._focusChangedConnection:Disconnect()
		self._focusChangedConnection = nil
	end

	for id, connection in pairs(self.debuggerConnections) do
		self:onConnectionEnded(connection, 0)
	end
end

return DebugConnectionListener
