local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local Mocks = Plugin.Src.Mocks
local MockDebuggerConnection = require(Mocks.MockDebuggerConnection)
local mockThreadState = require(Mocks.ThreadState)
local mockScriptRef = require(Mocks.ScriptRef)
local mockStackFrame = require(Mocks.StackFrame)
local mockPausedState = require(Mocks.PausedState)
local mockDebuggerVariable = require(Mocks.DebuggerVariable)
local MockDebuggerUIService = require(Mocks.MockDebuggerUIService)

local Models = Plugin.Src.Models
local DebuggerStateToken = require(Models.DebuggerStateToken)

local Actions = Plugin.Src.Actions
local AddThreadId = require(Actions.Callstack.AddThreadId)
local SetCurrentThread = require(Actions.Callstack.SetCurrentThread)
local SimPaused = require(Actions.Common.SimPaused)

local Constants = require(Plugin.Src.Util.Constants)

local LoadAllVariablesForThreadAndFrame = require(script.Parent.LoadAllVariablesForThreadAndFrame)

return function()
	it("should load variables mocks", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)

		-- setup mocks to initialize the store
		local currentMockConnection = MockDebuggerConnection.new(1)
		local dst = DebuggerStateToken.fromData({ debuggerConnectionId = currentMockConnection.Id })
		local testStackFrameOne = mockStackFrame.new(10, mockScriptRef.new(), "TestFrame1", "C")
		local testThreadOne = mockThreadState.new(1, "Workspace.NewFolder.SomeFolder.AbsurdlyLongPath.script", true)
		testThreadOne:MockSetChildren({[0] = testStackFrameOne})
		local testPausedState = mockPausedState.new(Constants.DebuggerPauseReason.Requested, 1, true)

		-- set default connection data
		local defaultFrameVariables = mockDebuggerVariable.GetDefaultFrameVariables()
		local variableTestName = "testName"
		defaultFrameVariables["Locals"]:MockSetChildren({
			mockDebuggerVariable.new(1, variableTestName, "somePreview", "map"),
		})
		currentMockConnection.MockSetDebuggerVariablesByCallstackFrame(testStackFrameOne, defaultFrameVariables)
		currentMockConnection.MockSetThreadStateById(1, testThreadOne)

		-- fake a stopped thread and load the stack frame variables
		store:dispatch(SimPaused(dst, testPausedState.ThreadId))
		local threadState = currentMockConnection:GetThreadById(testPausedState.ThreadId)
		store:dispatch(AddThreadId(testPausedState.ThreadId, threadState.ThreadName, dst))
		store:dispatch(SetCurrentThread(testPausedState.ThreadId))
		local mockDebuggerUIService = MockDebuggerUIService.new()
		store:dispatch(LoadAllVariablesForThreadAndFrame(1, currentMockConnection, 0, mockDebuggerUIService))

		-- check that we have loaded the right debugger variables
		local state = store:getState()
		expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1]).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["1"].nameColumn).to.be.equal(variableTestName)
	end)
end
