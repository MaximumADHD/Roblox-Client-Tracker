local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local DebugConnectionListener = require(Plugin.Src.Util.DebugConnectionListener.DebugConnectionListener)
local Mocks = Plugin.Src.Mocks
local MockDebuggerConnection =require(Mocks.MockDebuggerConnection)
local mockStackFrame = require(Mocks.StackFrame)
local mockScriptRef = require(Mocks.ScriptRef)
local mockThreadState = require(Mocks.ThreadState)
local mockPausedState = require(Mocks.PausedState)
local MockDebuggerConnectionManager = require(Mocks.MockDebuggerConnectionManager)

return function()
	local function setupFakeThread(mockConnection, fakeThreadId)
		-- setup fake data
		local testStackFrameOne = mockStackFrame.new(10* fakeThreadId, mockScriptRef.new(), "TestFrame1", "C")
		local testStackFrameTwo = mockStackFrame.new(20 * fakeThreadId, mockScriptRef.new(), "TestFrame2", "C")
		local testCallstack1 = {
			testStackFrameOne,
			testStackFrameTwo,
		}
		local testThreadOne = mockThreadState.new(fakeThreadId, "Workspace.NewFolder.SomeFolder.AbsurdlyLongPath.script", true, testCallstack1)
		mockConnection.MockSetThreadStateById(fakeThreadId, testThreadOne)
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

		setupFakeThread(currentMockConnection, 1)

		local testPausedState1 = mockPausedState.new(Enum.DebuggerPauseReason.Requested, 1, true)

		mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
		currentMockConnection.Paused:Fire(testPausedState1, testPausedState1.Reason)
		mainConnectionManager.ConnectionEnded:Fire(currentMockConnection)
		mainListener:destroy()
	end)

	it("should pause and resume DebugConnections", function()
		local mainStore = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		local mainConnectionManager = MockDebuggerConnectionManager.new()
		local mainListener = DebugConnectionListener.new(mainStore, mainConnectionManager)
		local currentMockConnection = MockDebuggerConnection.new(1)

		setupFakeThread(currentMockConnection, 1)
		setupFakeThread(currentMockConnection, 2)

		local testPausedState1 = mockPausedState.new(Enum.DebuggerPauseReason.Requested, 1, true)
		local testPausedState2 = mockPausedState.new(Enum.DebuggerPauseReason.Requested, 2, true)

		mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
		
		currentMockConnection.Paused:Fire(testPausedState1, testPausedState1.Reason)
		currentMockConnection.Paused:Fire(testPausedState2, testPausedState2.Reason)
		local state = mainStore:getState()
		expect(state.Common.currentFrameMap[1][1]).to.be.ok()
		expect(state.Common.currentFrameMap[1][2]).to.be.ok()
		expect(state.Common.debuggerConnectionIdToCurrentThreadId[1]).to.equal(2)
		
		currentMockConnection.Resumed:Fire(testPausedState1)
		state = mainStore:getState()
		expect(state.Common.currentFrameMap[1][1]).to.equal(nil)
		expect(state.Common.currentFrameMap[1][2]).to.be.ok()
		expect(state.Common.debuggerConnectionIdToCurrentThreadId[1]).to.equal(2)
		
		currentMockConnection.Resumed:Fire(testPausedState2)
		state = mainStore:getState()
		expect(state.Common.currentFrameMap[1][1]).to.equal(nil)
		expect(state.Common.currentFrameMap[1][2]).to.equal(nil)
		expect(state.Common.debuggerConnectionIdToCurrentThreadId[1]).to.equal(nil)

		currentMockConnection.Paused:Fire(testPausedState2, testPausedState2.Reason)
		state = mainStore:getState()
		expect(state.Common.currentFrameMap[1][1]).to.equal(nil)
		expect(state.Common.currentFrameMap[1][2]).to.be.ok()
		expect(state.Common.debuggerConnectionIdToCurrentThreadId[1]).to.equal(2)
		
		currentMockConnection.Resumed:Fire(testPausedState2)
		state = mainStore:getState()
		expect(state.Common.currentFrameMap[1][1]).to.equal(nil)
		expect(state.Common.currentFrameMap[1][2]).to.equal(nil)
		expect(state.Common.debuggerConnectionIdToCurrentThreadId[1]).to.equal(nil)

		mainConnectionManager.ConnectionEnded:Fire(currentMockConnection)
		mainListener:destroy()
	end)
end
