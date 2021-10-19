local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local BreakpointHitAction = require(Plugin.Src.Actions.Common.BreakpointHit)
local SetFocusedDebuggerConnection = require(Plugin.Src.Actions.Common.SetFocusedDebuggerConnection)

local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local DebugConnectionListener = require(Plugin.Src.Util.DebugConnectionListener.DebugConnectionListener)
local Mocks = Plugin.Src.Mocks
local MockDebuggerConnection =require(Mocks.MockDebuggerConnection)
local mockStackFrame = require(Mocks.StackFrame)
local mockScriptRef = require(Mocks.ScriptRef)
local mockThreadState = require(Mocks.ThreadState)
local mockPausedState = require(Mocks.PausedState)
local MockDebuggerConnectionManager = require(Mocks.MockDebuggerConnectionManager)
local DebuggerStateToken = require(Plugin.Src.Models.DebuggerStateToken)

return function()
	local function setupFakeThread(mockConnection)
		-- setup fake data
		local testStackFrameOne = mockStackFrame.new(10, mockScriptRef.new(), "TestFrame1", "C")
		local testStackFrameTwo = mockStackFrame.new(20, mockScriptRef.new(), "TestFrame2", "C")
		local testCallstack1 = {
			testStackFrameOne,
			testStackFrameTwo,
		}
		local testThreadOne = mockThreadState.new(1, "Workspace.NewFolder.SomeFolder.AbsurdlyLongPath.script", true, testCallstack1)
		mockConnection.MockSetThreadStateById(1, testThreadOne)
	end
	
	it("should create and destroy DebugConnectionListener without errors", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		local mainConnectionManager = MockDebuggerConnectionManager.new()
		local mainListener = DebugConnectionListener.new(mainStore, mainConnectionManager)
		expect(mainListener)
		mainListener:destroy()
	end)
	
	it("should create and destroy DebugConnections", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		local mainConnectionManager = MockDebuggerConnectionManager.new()
		local mainListener = DebugConnectionListener.new(mainStore, mainConnectionManager)
		local currentMockConnection = MockDebuggerConnection.new(1)
		mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
		mainConnectionManager.ConnectionEnded:Fire(currentMockConnection)
		mainListener:destroy()
	end)
	
	it("should pause DebugConnections", function()
		local mainStore = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		local mainConnectionManager = MockDebuggerConnectionManager.new()
		local mainListener = DebugConnectionListener.new(mainStore, mainConnectionManager)
		local currentMockConnection = MockDebuggerConnection.new(1)
		
		setupFakeThread(currentMockConnection)
		
		local testPausedState1 = mockPausedState.new(Enum.DebuggerPauseReason.Requested, 1, true)
		local dst = DebuggerStateToken.fromData({debuggerConnectionId = 1})
		
		-- TODO(aherdzik): move into DebugConnectionListener:onExecutionPaused action, see RIDE-5969
		mainStore:dispatch(SetFocusedDebuggerConnection(1))
		mainStore:dispatch(BreakpointHitAction(dst))
		
		mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
		currentMockConnection.Paused:Fire(testPausedState1, testPausedState1.Reason)
		mainConnectionManager.ConnectionEnded:Fire(currentMockConnection)
		mainListener:destroy()
	end)
end
