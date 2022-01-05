local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Reducers = Plugin.Src.Reducers
local CallstackReducer = require(Reducers.Callstack)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local Mocks = Plugin.Src.Mocks
local mockThreadState = require(Mocks.ThreadState)
local mockStackFrame = require(Mocks.StackFrame)
local mockScriptRef = require(Mocks.ScriptRef)
local mockDebuggerVariable = require(Mocks.DebuggerVariable)
local MockDebuggerConnection = require(Mocks.MockDebuggerConnection)
local MockScriptRegService = require(Mocks.MockScriptRegService)
local mockLSC = require(Mocks.MockLSC)

local Actions = Plugin.Src.Actions
local BreakpointHitAction = require(Actions.Common.BreakpointHit)

local RequestCallstackThunk = require(script.Parent.RequestCallstackThunk)

local Models = Plugin.Src.Models
local DebuggerStateToken = require(Models.DebuggerStateToken)
local defaultDebuggerToken = DebuggerStateToken.fromData({debuggerConnectionId = 1})

return function()
	it("should return its expected default state", function()
		local CallstackReducer = Rodux.Store.new(CallstackReducer)
		expect(CallstackReducer:getState()).to.be.ok()

	end)

	it("should accurately reflect the updates", function()
		local store = Rodux.Store.new(CallstackReducer, nil, MainMiddleware)
		
		local scriptRef1 = mockScriptRef.new()
		local scriptRef2 = mockScriptRef.new()
		local testStackFrameOne = mockStackFrame.new(10, scriptRef1, "TestFrame1", "C")
		local testStackFrameTwo = mockStackFrame.new(20, scriptRef2, "TestFrame2", "C")
		local testCallstack = {
			testStackFrameOne,
			testStackFrameTwo,
		}
		local testThread = mockThreadState.new(1, "TestThread1", true)
		local currentMockConnection = MockDebuggerConnection.new(1)
		currentMockConnection.MockSetCallstackByThreadId(1, testCallstack)
		currentMockConnection.MockSetDebuggerVariablesByCallstackFrame(testStackFrameOne,mockDebuggerVariable.GetDefaultFrameVariables()) 
		currentMockConnection.MockSetDebuggerVariablesByCallstackFrame(testStackFrameTwo,mockDebuggerVariable.GetDefaultFrameVariables()) 
		
		local guidMapping = {
			[scriptRef1] = mockLSC.new("Workspace.NewFolder.SomeFolder.AbsurdlyLongPath.script"),
			[scriptRef2] = mockLSC.new("TestThread2")
		}

		store:dispatch(BreakpointHitAction(defaultDebuggerToken, 1))
		store:dispatch(RequestCallstackThunk(testThread, currentMockConnection, defaultDebuggerToken, MockScriptRegService.new(guidMapping)))

		local state = store:getState()
		expect(#state.stateTokenToCallstackVars[defaultDebuggerToken].threadList).to.equal(0)
		expect(#state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList).to.equal(1)
		expect(#state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList[1]).to.equal(#testCallstack)
		expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList[1][1].functionColumn).to.equal(testStackFrameOne.FrameName)
		expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList[1][2].functionColumn).to.equal(testStackFrameTwo.FrameName)
		expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList[1][1].layerColumn).to.equal(testStackFrameOne.FrameType)
		expect(state.stateTokenToCallstackVars[defaultDebuggerToken].threadIdToFrameList[1][2].layerColumn).to.equal(testStackFrameTwo.FrameType)
	end)
end
