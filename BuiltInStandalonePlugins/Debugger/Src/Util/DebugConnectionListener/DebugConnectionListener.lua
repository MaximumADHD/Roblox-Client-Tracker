local Src = script.Parent.Parent.Parent
local Actions = Src.Actions
local AddThreadId = require(Actions.Callstack.AddThreadId)
local Resumed = require(Actions.Common.Resumed)
local SimPaused = require(Actions.Common.SimPaused)
local SetCurrentThreadAction = require(Actions.Callstack.SetCurrentThread)
local SetCurrentBreakpointIdAction = require(Actions.Common.SetCurrentBreakpointId)
local SetFocusedDebuggerConnection = require(Actions.Common.SetFocusedDebuggerConnection)
local ClearConnectionDataAction = require(Actions.Common.ClearConnectionData)
local LoadAllVariablesForThreadAndFrame = require(Src.Thunks.Watch.LoadAllVariablesForThreadAndFrame)
local PopulateCallstackThreadThunk = require(Src.Thunks.Callstack.PopulateCallstackThreadThunk)

local Models = Src.Models
local DebuggerStateToken = require(Models.DebuggerStateToken)

local Constants = require(Src.Util.Constants)

local FFlagUsePopulateCallstackThreadThunk = require(Src.Flags.GetFFlagUsePopulateCallstackThreadThunk)
local FFlagOnlyLoadOneCallstack = require(Src.Flags.GetFFlagOnlyLoadOneCallstack)

local DebugConnectionListener = {}
DebugConnectionListener.__index = DebugConnectionListener

function DebugConnectionListener:onExecutionPaused(
	connection,
	pausedState,
	debuggerPauseReason,
	debuggerUIService,
	scriptChangeService
)
	self.store:dispatch(SetFocusedDebuggerConnection(connection.Id))
	local state = self.store:getState()
	local common = state.Common
	local dst = DebuggerStateToken.fromData({ debuggerConnectionId = connection.Id })
	if tostring(debuggerPauseReason) == Constants.DebuggerPauseReason.Breakpoint then
		if pausedState.Breakpoint ~= nil then
			self.store:dispatch(SetCurrentBreakpointIdAction(pausedState.Breakpoint.MetaBreakpointId))
		else
			-- TODO: investigate in RIDE-6661
		end
	end

	local function isThreadIdValid()
		return dst == self.store:getState().Common.debuggerConnectionIdToDST[dst.debuggerConnectionId]
	end

	self.store:dispatch(SimPaused(dst, pausedState.ThreadId))

	-- thread info is retrieved here; you cannot call GetThreadById before calling GetThreads
	connection:GetThreads(function(threads)
		if not isThreadIdValid() then
			return
		end

		local loadThreadData = function(threadState)
			if not isThreadIdValid() then
				return
			end

			local loadScriptData = function()
				self.store:dispatch(LoadAllVariablesForThreadAndFrame(threadState.ThreadId, connection, 0, debuggerUIService))
				if FFlagOnlyLoadOneCallstack() then
					self.store:dispatch(SetCurrentThreadAction(threadState.ThreadId))
				end
				-- Open script at top of callstack
				local topFrame = threadState:GetFrame(0)
				debuggerUIService:SetScriptLineMarker(
					topFrame.Script,
					common.currentDebuggerConnectionId,
					topFrame.Line,
					true
				)
				debuggerUIService:OpenScriptAtLine(topFrame.Script, common.currentDebuggerConnectionId, topFrame.Line, false)
			end

			if FFlagUsePopulateCallstackThreadThunk() and not FFlagOnlyLoadOneCallstack() then
				if pausedState.ThreadId == threadState.ThreadId then
					loadScriptData()
				end
			else
				loadScriptData()
			end
		end
		
		local threadStates = threads:GetArg()
		if FFlagOnlyLoadOneCallstack() then
			for index, threadState in pairs(threadStates) do
				self.store:dispatch(AddThreadId(threadState.ThreadId, threadState.ThreadName, dst))
			end
			-- #threadStates can be 0 when pressing the pause button
			if (#threadStates > 0) then
				--[[
					ThreadState at threadStates[1] may or may not correspond to the pauseState.threadID.
					In the case of multiple bps from multiple scripts, it will be at the end
					In the case of one bp from one script generating mutliple threads, it will be at the beginning.
					Don't check pausestate.threadID == threadstate.threadID
				]] 
				local threadState = threadStates[1]
				self.store:dispatch(PopulateCallstackThreadThunk(threadState, connection, dst, scriptChangeService, function()
					loadThreadData(threadState)
				end))
			end
		else
			for _, threadState in pairs(threadStates) do
				self.store:dispatch(AddThreadId(threadState.ThreadId, threadState.ThreadName, dst))
				
				if FFlagUsePopulateCallstackThreadThunk() then
					self.store:dispatch(PopulateCallstackThreadThunk(threadState, connection, dst, scriptChangeService, function()
						loadThreadData(threadState)
					end))
				else
					self.store:dispatch(PopulateCallstackThreadThunk(threadState, connection, dst, scriptChangeService))
					connection:Populate(threadState, function()
						loadThreadData(threadState)
					end)
				end
			end
		end
	end)
end

function DebugConnectionListener:onExecutionResumed(connection, pausedState, debuggerUIService)
	local state = self.store:getState()
	local common = state.Common
	local dst = common.debuggerConnectionIdToDST[connection.Id]
	if dst then
		-- When we have multiple BPs hit, we get multiple resume signals
		debuggerUIService:RemoveScriptLineMarkers(connection.Id, true)
		self.store:dispatch(Resumed(dst, pausedState.ThreadId))
	end
end

function DebugConnectionListener:connectEvents(debuggerConnectionId, connection, debuggerUIService, scriptChangeService)
	self.store:dispatch(SetFocusedDebuggerConnection(connection.Id))
	local connectionEvents = {}
	connectionEvents["paused"] = connection.Paused:Connect(function(pausedState, debuggerPauseReason)
		self:onExecutionPaused(connection, pausedState, debuggerPauseReason, debuggerUIService, scriptChangeService)
	end)
	connectionEvents["resumed"] = connection.Resumed:Connect(function(pausedState)
		self:onExecutionResumed(connection, pausedState, debuggerUIService)
	end)

	self.connectionEventConnections[debuggerConnectionId] = connectionEvents
end

function DebugConnectionListener:onConnectionStarted(debuggerConnection, debuggerUIService, scriptChangeService)
	assert(debuggerConnection and debuggerConnection.Id ~= 0)
	self.debuggerConnections[debuggerConnection.Id] = debuggerConnection
	self:connectEvents(debuggerConnection.Id, debuggerConnection, debuggerUIService, scriptChangeService)
end

function DebugConnectionListener:onConnectionEnded(debuggerConnection, reason, debuggerUIService)
	assert(debuggerConnection and debuggerConnection.Id ~= 0)
	if debuggerUIService ~= nil then
		debuggerUIService:RemoveScriptLineMarkers(debuggerConnection.Id, true)
	end
	local state = self.store:getState()
	local common = state.Common
	local dst = common.debuggerConnectionIdToDST[debuggerConnection.Id]
	if dst then
		self.store:dispatch(ClearConnectionDataAction(dst))
	end

	if self.connectionEventConnections[debuggerConnection.Id] then
		for _, eventConnection in pairs(self.connectionEventConnections[debuggerConnection.Id]) do
			eventConnection:Disconnect()
		end
	end
	self.connectionEventConnections[debuggerConnection.Id] = nil
	self.debuggerConnections[debuggerConnection.Id] = nil
end

function DebugConnectionListener:onFocusChanged(debuggerConnection)
	local focusedDebuggerConnectionId = if debuggerConnection ~= nil then debuggerConnection.Id else Constants.kInvalidDebuggerConnectionId
	self.store:dispatch(SetFocusedDebuggerConnection(focusedDebuggerConnectionId))
end

local function setUpConnections(
	debugConnectionListener,
	debuggerConnectionManager,
	debuggerUIService,
	scriptChangeService
)
	local DebuggerConnectionManager = debuggerConnectionManager or game:GetService("DebuggerConnectionManager")
	local DebuggerUIService = debuggerUIService or game:GetService("DebuggerUIService")
	local ScriptChangeService = scriptChangeService or game:GetService("CrossDMScriptChangeListener")

	debugConnectionListener._connectionStartedConnection = DebuggerConnectionManager.ConnectionStarted:Connect(
		function(debuggerConnection)
			debugConnectionListener:onConnectionStarted(debuggerConnection, DebuggerUIService, ScriptChangeService)
		end
	)
	debugConnectionListener._connectionEndedConnection = DebuggerConnectionManager.ConnectionEnded:Connect(
		function(debuggerConnection, reason)
			debugConnectionListener:onConnectionEnded(debuggerConnection, reason, DebuggerUIService)
		end
	)
	debugConnectionListener._focusChangedConnection = DebuggerConnectionManager.FocusChanged:Connect(
		function(debuggerConnection)
			debugConnectionListener:onFocusChanged(debuggerConnection)
		end
	)
end

function DebugConnectionListener.new(store, debuggerConnectionManager, debuggerUIService, scriptChangeService)
	local self = { store = store }
	self.debuggerConnections = {}
	self.connectionEventConnections = {}
	setUpConnections(self, debuggerConnectionManager, debuggerUIService, scriptChangeService)
	setmetatable(self, DebugConnectionListener)
	return self
end

function DebugConnectionListener:destroy()
	self.store:dispatch(SetFocusedDebuggerConnection(Constants.kInvalidDebuggerConnectionId))

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
