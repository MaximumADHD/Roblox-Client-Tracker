local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)
local MainReducer = require(Plugin.Src.Reducers.MainReducer)

local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local DebugConnectionListener = require(Plugin.Src.Util.DebugConnectionListener.DebugConnectionListener)
local Mocks = Plugin.Src.Mocks
local MockDebuggerConnection = require(Mocks.MockDebuggerConnection)
local mockStackFrame = require(Mocks.StackFrame)
local mockScriptRef = require(Mocks.ScriptRef)
local mockThreadState = require(Mocks.ThreadState)
local mockPausedState = require(Mocks.PausedState)
local mockDebuggerVariable = require(Mocks.DebuggerVariable)
local MockDebuggerConnectionManager = require(Mocks.MockDebuggerConnectionManager)
local MockDebuggerUIService = require(Mocks.MockDebuggerUIService)
local MockBreakpoint = require(Mocks.Breakpoint)
local MockCrossDMScriptChangeListenerService = require(Mocks.MockCrossDMScriptChangeListenerService)

local Constants = require(Plugin.Src.Util.Constants)

local FFlagOnlyLoadOneCallstack = require(Plugin.Src.Flags.GetFFlagOnlyLoadOneCallstack)

return function()
	local function setupFakeThread(mockConnection, fakeThreadId)
		-- setup fake data
		local testStackFrameOne = mockStackFrame.new(10 * fakeThreadId, mockScriptRef.new(), "TestFrame1", "C")
		local testStackFrameTwo = mockStackFrame.new(20 * fakeThreadId, mockScriptRef.new(), "TestFrame2", "C")
		local testCallstack1 = {
			[0] = testStackFrameOne,
			[1] = testStackFrameTwo,
		}
		local testThreadOne = mockThreadState.new(
			fakeThreadId,
			"Workspace.NewFolder.SomeFolder.AbsurdlyLongPath.script",
			true
		)
		mockConnection.MockSetThreadStateById(fakeThreadId, testThreadOne)
		mockConnection.MockSetCallstackByThreadId(fakeThreadId, testCallstack1)
		mockConnection.MockSetDebuggerVariablesByCallstackFrame(
			testStackFrameOne,
			mockDebuggerVariable.GetDefaultFrameVariables()
		)
		mockConnection.MockSetDebuggerVariablesByCallstackFrame(
			testStackFrameTwo,
			mockDebuggerVariable.GetDefaultFrameVariables()
		)
	end

	it("should create and destroy DebugConnectionListener without errors", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		local mainConnectionManager = MockDebuggerConnectionManager.new()
		local debuggerUIService = MockDebuggerUIService.new()
		local mockCrossDMScriptChangeListenerService = MockCrossDMScriptChangeListenerService.new()

		local mainListener = DebugConnectionListener.new(
			mainStore,
			mainConnectionManager,
			debuggerUIService,
			mockCrossDMScriptChangeListenerService
		)
		expect(mainListener)
		mainListener:destroy()
	end)

	it("should create and destroy DebugConnections", function()
		local mainStore = Rodux.Store.new(MainReducer, {})
		local mainConnectionManager = MockDebuggerConnectionManager.new()
		local debuggerUIService = MockDebuggerUIService.new()
		local mockCrossDMScriptChangeListenerService = MockCrossDMScriptChangeListenerService.new()

		local mainListener = DebugConnectionListener.new(
			mainStore,
			mainConnectionManager,
			debuggerUIService,
			mockCrossDMScriptChangeListenerService
		)
		local currentMockConnection = MockDebuggerConnection.new(1)
		mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
		mainConnectionManager.ConnectionEnded:Fire(currentMockConnection)
		mainListener:destroy()
	end)

	it("should pause DebugConnections", function()
		local mainStore = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		local mainConnectionManager = MockDebuggerConnectionManager.new()
		local debuggerUIService = MockDebuggerUIService.new()
		local mockCrossDMScriptChangeListenerService = MockCrossDMScriptChangeListenerService.new()

		local mainListener = DebugConnectionListener.new(
			mainStore,
			mainConnectionManager,
			debuggerUIService,
			mockCrossDMScriptChangeListenerService
		)
		local currentMockConnection = MockDebuggerConnection.new(1)

		setupFakeThread(currentMockConnection, 1)

		local mockBreakpoint = MockBreakpoint.new({
			Script = "TestScriptGuid",
			Id = 2,
			MetaBreakpointId = 30,
		})

		local testPausedState1 = mockPausedState.new(Constants.DebuggerPauseReason.Breakpoint, 1, true)
		testPausedState1:SetBreakpointHit(mockBreakpoint)

		mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)
		currentMockConnection.Paused:Fire(testPausedState1, testPausedState1.Reason)
		local state = mainStore:getState()
		expect(state.Common.currentBreakpointId).to.equal(30)
		expect(state.Common.isPaused).to.equal(true)
		expect(debuggerUIService.showingArrow).to.equal(true)
		expect(debuggerUIService.openScripts[currentMockConnection.MockThreadIdToCallstackMap[1][0].Script]).to.equal(
			true
		)
		mainConnectionManager.ConnectionEnded:Fire(currentMockConnection)
		mainListener:destroy()
	end)

	it("should pause and resume DebugConnections", function()
		local mainStore = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		local mainConnectionManager = MockDebuggerConnectionManager.new()
		local debuggerUIService = MockDebuggerUIService.new()
		local mockCrossDMScriptChangeListenerService = MockCrossDMScriptChangeListenerService.new()

		local mainListener = DebugConnectionListener.new(
			mainStore,
			mainConnectionManager,
			debuggerUIService,
			mockCrossDMScriptChangeListenerService
		)
		local currentMockConnection = MockDebuggerConnection.new(1)

		setupFakeThread(currentMockConnection, 1)
		setupFakeThread(currentMockConnection, 2)

		local mockBreakpoint = MockBreakpoint.new({
			Script = "TestScriptGuid",
			Id = 3,
			MetaBreakpointId = 30,
		})
		local testPausedState1 = mockPausedState.new(Constants.DebuggerPauseReason.Breakpoint, 1, true)
		local testPausedState2 = mockPausedState.new(Constants.DebuggerPauseReason.Breakpoint, 2, true)
		testPausedState1:SetBreakpointHit(mockBreakpoint)
		testPausedState2:SetBreakpointHit(mockBreakpoint)

		mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)

		currentMockConnection.Paused:Fire(testPausedState1, testPausedState1.Reason)
		currentMockConnection.Paused:Fire(testPausedState2, testPausedState2.Reason)
		local state = mainStore:getState()
		expect(state.Common.isPaused).to.equal(true)
		expect(state.Common.currentBreakpointId).to.equal(30)
		expect(state.Common.currentFrameMap[1][1]).to.be.ok()
		expect(state.Common.currentFrameMap[1][2]).to.be.ok()

		if FFlagOnlyLoadOneCallstack() then
			expect(state.Common.debuggerConnectionIdToCurrentThreadId[1]).to.equal(1)

			-- only one script should be open at start
			expect(debuggerUIService.openScripts[currentMockConnection.MockThreadIdToCallstackMap[1][0].Script]).to.equal(
				true
			)
			expect(debuggerUIService.openScripts[currentMockConnection.MockThreadIdToCallstackMap[2][0].Script]).to.equal(
				nil
			)
		else
			expect(state.Common.debuggerConnectionIdToCurrentThreadId[1]).to.equal(2)
			expect(debuggerUIService.openScripts[currentMockConnection.MockThreadIdToCallstackMap[1][0].Script]).to.equal(
				true
			)
			expect(debuggerUIService.openScripts[currentMockConnection.MockThreadIdToCallstackMap[2][0].Script]).to.equal(
				true
			)
		end

		expect(debuggerUIService.showingArrow).to.equal(true)

		currentMockConnection.Resumed:Fire(testPausedState2)
		state = mainStore:getState()
		expect(state.Common.isPaused).to.equal(false)
		expect(state.Common.currentFrameMap[1]).to.equal(nil)
		expect(state.Common.debuggerConnectionIdToCurrentThreadId[1]).to.equal(nil)
		expect(debuggerUIService.showingArrow).to.equal(false)

		currentMockConnection.Paused:Fire(testPausedState2, testPausedState2.Reason)
		state = mainStore:getState()
		expect(state.Common.isPaused).to.equal(true)
		expect(state.Common.currentFrameMap[1][1]).to.be.ok()
		expect(state.Common.currentFrameMap[1][2]).to.be.ok()
		if FFlagOnlyLoadOneCallstack() then
			expect(state.Common.debuggerConnectionIdToCurrentThreadId[1]).to.equal(1)
		else
			expect(state.Common.debuggerConnectionIdToCurrentThreadId[1]).to.equal(2)
		end

		currentMockConnection.Resumed:Fire(testPausedState2)
		state = mainStore:getState()
		expect(state.Common.isPaused).to.equal(false)
		expect(state.Common.currentFrameMap[1]).to.equal(nil)
		expect(state.Common.debuggerConnectionIdToCurrentThreadId[1]).to.equal(nil)

		mainConnectionManager.ConnectionEnded:Fire(currentMockConnection)
		mainListener:destroy()
	end)

	it("should change connection focus on FocusChanged signal", function()
		-- setup 2 mock DebuggerConnections
		local mainStore = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		local mainConnectionManager = MockDebuggerConnectionManager.new()
		local debuggerUIService = MockDebuggerUIService.new()
		local mockCrossDMScriptChangeListenerService = MockCrossDMScriptChangeListenerService.new()

		local mainListener = DebugConnectionListener.new(
			mainStore,
			mainConnectionManager,
			debuggerUIService,
			mockCrossDMScriptChangeListenerService
		)
		local mockConnection1 = MockDebuggerConnection.new(1)
		local mockConnection2 = MockDebuggerConnection.new(2)

		setupFakeThread(mockConnection1, 1)
		setupFakeThread(mockConnection2, 2)

		local testPausedState1 = mockPausedState.new(Constants.DebuggerPauseReason.Requested, 1, true)
		local testPausedState2 = mockPausedState.new(Constants.DebuggerPauseReason.Requested, 2, true)

		-- start and pause the 2 DebuggerConnections
		mainConnectionManager.ConnectionStarted:Fire(mockConnection1)
		mainConnectionManager.ConnectionStarted:Fire(mockConnection2)
		mockConnection1.Paused:Fire(testPausedState1, testPausedState1.Reason)
		mockConnection2.Paused:Fire(testPausedState2, testPausedState2.Reason)

		local state = mainStore:getState()
		expect(state.Common.currentDebuggerConnectionId).to.equal(2)

		-- Firing a FocusChanged signal should change our current debuggerConnectionId
		mainConnectionManager.FocusChanged:Fire(mockConnection1)
		state = mainStore:getState()
		expect(state.Common.currentDebuggerConnectionId).to.equal(1)

		mainConnectionManager.FocusChanged:Fire(mockConnection2)
		state = mainStore:getState()
		expect(state.Common.currentDebuggerConnectionId).to.equal(2)

		mainConnectionManager.ConnectionEnded:Fire(mockConnection2)
		mainConnectionManager.ConnectionEnded:Fire(mockConnection1)
		mainListener:destroy()
	end)
end
