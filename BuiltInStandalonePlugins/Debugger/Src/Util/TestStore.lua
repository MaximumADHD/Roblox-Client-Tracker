local Src = script.Parent.Parent

local Models = Src.Models
local DebuggerStateToken = require(Models.DebuggerStateToken)
local WatchRow = require(Models.Watch.WatchRow)
local VariableRow = require(Models.Watch.VariableRow)
local ScopeEnum = require(Models.Watch.ScopeEnum)
local StepStateBundle = require(Models.StepStateBundle)
local BreakpointModel = require(Models.Breakpoint)

local Mocks = Src.Mocks
local mockThreadState = require(Mocks.ThreadState)
local mockStackFrame = require(Mocks.StackFrame)
local mockScriptRef = require(Mocks.ScriptRef)
local mockPausedState = require(Mocks.PausedState)
local MockDebuggerConnection = require(Mocks.MockDebuggerConnection)
local MockDebuggerConnectionManager = require(Mocks.MockDebuggerConnectionManager)

local Actions = Src.Actions
local BreakpointHitAction = require(Actions.Common.BreakpointHit)
local SetFocusedDebuggerConnection = require(Actions.Common.SetFocusedDebuggerConnection)
local AddRootVariables = require(Actions.Watch.AddRootVariables)
local AddExpression = require(Actions.Watch.AddExpression)
local ExpressionEvaluated = require(Actions.Watch.ExpressionEvaluated)
local AddBreakpoint = require(Actions.BreakpointsWindow.AddBreakpoint)
local AddChildVariables = require(Actions.Watch.AddChildVariables)
local DebugConnectionListener = require(Src.Util.DebugConnectionListener.DebugConnectionListener)

local dst = DebuggerStateToken.fromData({debuggerConnectionId = 1})

local expressionData1 = {
	expression = "Expression 1",
	path = "3",
	scope = ScopeEnum.Local,
	value = "somePreview",
	dataType = "string",
	childPaths = {},
}

local expressionRow1 = WatchRow.fromData(expressionData1)

local varData1 = {
	name = "Alex",
	path = "1",
	scope = ScopeEnum.Local,
	value = "somePreview",
	dataType = "map",
}

local varData1Child1 = {
	name = "Heesoo",
	path = "1_1",
	scope = ScopeEnum.Local,
	value = "somePreview",
	dataType = "map",
}

local varData1Child2 = {
	name = "Austin",
	path = "1_2",
	scope = ScopeEnum.Local,
	value = "somePreview",
	dataType = "string",
}

local varData1Child11 = {
	name = "Raul",
	path = "1_1_1",
	scope = ScopeEnum.Local,
	value = "somePreview",
	dataType = "string",
}

local varData1Child21 = {
	name = "Karan",
	path = "1_2_1",
	scope = ScopeEnum.Local,
	value = "somePreview",
	dataType = "string",
}

local varData2 = {
	name = "UnitedStates",
	path = "2",
	scope = ScopeEnum.Local,
	value = "somePreview2",
	dataType = "map",
}

local varData2Child1 = {
	name = "Wisconsin",
	path = "2_1",
	scope = ScopeEnum.Local,
	value = "somePreview2",
	dataType = "map",
}

local varData2Child11 = {
	name = "GreenBay",
	path = "2_1_1",
	scope = ScopeEnum.Local,
	value = "somePreview2",
	dataType = "string",
}

local variableRow1 = VariableRow.fromData(varData1)
local variableRow1Child1 = VariableRow.fromData(varData1Child1)
local variableRow1Child2 = VariableRow.fromData(varData1Child2)
local variableRow1Child11 = VariableRow.fromData(varData1Child11)
local variableRow1Child21 = VariableRow.fromData(varData1Child21)
local variableRow2 = VariableRow.fromData(varData2)
local variableRow2Child1 = VariableRow.fromData(varData2Child1)
local variableRow2Child11 = VariableRow.fromData(varData2Child11)

local testStackFrameOne = mockStackFrame.new(10, mockScriptRef.new(), "TestFrame1", "C")
local testStackFrameTwo = mockStackFrame.new(20, mockScriptRef.new(), "TestFrame2", "C")
local testCallstack1 = {
	testStackFrameOne,
	testStackFrameTwo,
}

local testCallstack2 = {
	testStackFrameTwo,
	testStackFrameOne,
}

local testThreadOne = mockThreadState.new(1, "Workspace.NewFolder.SomeFolder.AbsurdlyLongPath.script", true, testCallstack1)
local testThreadTwo = mockThreadState.new(2, "TestThread2", true, testCallstack2)

local debuggerConnection = MockDebuggerConnection.new(1)
debuggerConnection.MockSetThreadStateById(1, testThreadOne)
debuggerConnection.MockSetThreadStateById(2, testThreadTwo)

local testPausedState1 = mockPausedState.new(Enum.DebuggerPauseReason.Requested, 1, true)
local testPausedState2 = mockPausedState.new(Enum.DebuggerPauseReason.Requested, 2, true)
local stepStateBundle1 = StepStateBundle.ctor(dst, 1, 1)
local stepStateBundle2 = StepStateBundle.ctor(dst, 2, 1)
local currentMockConnection = MockDebuggerConnection.new(1)

return function(store)		
	-- TODO(aherdzik): move into DebugConnectionListener:onExecutionPaused action, see RIDE-5969
	store:dispatch(SetFocusedDebuggerConnection(1))
	store:dispatch(BreakpointHitAction(dst))
	
	local mainConnectionManager = MockDebuggerConnectionManager.new()
	local _mainListener = DebugConnectionListener.new(store, mainConnectionManager)
	currentMockConnection.MockSetThreadStateById(1, testThreadOne)
	currentMockConnection.MockSetThreadStateById(2, testThreadTwo)
	mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)

	currentMockConnection.Paused:Fire(testPausedState2, testPausedState2.Reason)
	currentMockConnection.Paused:Fire(testPausedState1, testPausedState1.Reason)	

	store:dispatch(AddRootVariables(stepStateBundle1, {variableRow1, variableRow2}))
	store:dispatch(AddRootVariables(stepStateBundle2, {variableRow2, variableRow1}))
	store:dispatch(AddExpression("Expression 1"))
	store:dispatch(ExpressionEvaluated(stepStateBundle1, expressionRow1))

	local i = 0
	for _, uniqueId in ipairs({80,91,60,71}) do
		store:dispatch(AddBreakpoint(123, BreakpointModel.mockBreakpoint({isEnabled = (i>=2)}, uniqueId)))
		i = i+ 1
	end

	store:dispatch(AddChildVariables(stepStateBundle1, "1", {variableRow1Child1, variableRow1Child2}))
	store:dispatch(AddChildVariables(stepStateBundle1, "1_1", {variableRow1Child11}))
	store:dispatch(AddChildVariables(stepStateBundle1, "1_2", {variableRow1Child21}))
	store:dispatch(AddChildVariables(stepStateBundle1, "2", {variableRow2Child1}))
	store:dispatch(AddChildVariables(stepStateBundle1, "2_1", {variableRow2Child11}))
	return store
end
