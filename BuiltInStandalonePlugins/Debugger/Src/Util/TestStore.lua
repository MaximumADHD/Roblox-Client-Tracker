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

local Actions = Src.Actions
local Thunks = Src.Thunks
local BreakpointHitAction = require(Actions.Common.BreakpointHit)
local RequestThreadsThunk = require(Thunks.RequestThreadsThunk)
local AddRootVariables = require(Actions.Watch.AddRootVariables)
local AddExpression = require(Actions.Watch.AddExpression)
local ExpressionEvaluated = require(Actions.Watch.ExpressionEvaluated)
local AddBreakpoint = require(Actions.BreakpointsWindow.AddBreakpoint)
local AddChildVariables = require(Actions.Watch.AddChildVariables)
local dst = DebuggerStateToken.fromData({session = 1})

local expressionData1 = {
	expression = "Expression 1",
	path = "Expression 1",
	scope = ScopeEnum.Local,
	value = "somePreview",
	dataType = "string",
	 children = {},
}

local expressionRow1 = WatchRow.fromData(expressionData1)

local varData1 = {
	name = "Alex",
	path = "Alex",
	scope = ScopeEnum.Local,
	value = "somePreview",
	dataType = "map",
}

local varData1Child1 = {
	name = "Heesoo",
	path = "Alex_Heesoo",
	scope = ScopeEnum.Local,
	value = "somePreview",
	dataType = "map",
}

local varData1Child2 = {
	name = "Austin",
	path = "Alex_Austin",
	scope = ScopeEnum.Local,
	value = "somePreview",
	dataType = "string",
}

local varData1Child11 = {
	name = "Raul",
	path = "Alex_Heesoo_Raul",
	scope = ScopeEnum.Local,
	value = "somePreview",
	dataType = "string",
}

local varData1Child21 = {
	name = "Karan",
	path = "Alex_Austin_Karan",
	scope = ScopeEnum.Local,
	value = "somePreview",
	dataType = "string",
}

local varData2 = {
	name = "UnitedStates",
	path = "UnitedStates",
	scope = ScopeEnum.Local,
	value = "somePreview2",
	dataType = "map",
}

local varData2Child1 = {
	name = "Wisconsin",
	path = "UnitedStates_Wisconsin",
	scope = ScopeEnum.Local,
	value = "somePreview2",
	dataType = "map",
}

local varData2Child11 = {
	name = "GreenBay",
	path = "UnitedStates_Wisonsin_GreenBay",
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

local testThreadOne = mockThreadState.new(1, "TestThread1", true, testCallstack1)
local testThreadTwo = mockThreadState.new(2, "TestThread2", true, testCallstack2)
local threadMap = {
	[1] = testThreadOne,
	[2] = testThreadTwo,
}
local testPausedState = mockPausedState.new(Enum.DebuggerPauseReason.Requested, true, threadMap)
local stepStateBundle1 = StepStateBundle.ctor(dst, 1, 1)
local stepStateBundle2 = StepStateBundle.ctor(dst, 2, 1)

return function(store)
	store:dispatch(BreakpointHitAction(dst))
	store:dispatch(RequestThreadsThunk(testPausedState, nil, dst))
	store:dispatch(AddRootVariables(stepStateBundle1, {variableRow1, variableRow2}))
	store:dispatch(AddRootVariables(stepStateBundle2, {variableRow2, variableRow1}))
	store:dispatch(AddExpression("Expression 1"))
	store:dispatch(ExpressionEvaluated(stepStateBundle1, expressionRow1))

	for _, uniqueId in ipairs({80,60,70}) do
		store:dispatch(AddBreakpoint("123", BreakpointModel.mockBreakpoint({}, uniqueId)))
	end

	store:dispatch(AddChildVariables(stepStateBundle1, "Alex", {variableRow1Child1}))
	store:dispatch(AddChildVariables(stepStateBundle1, "Alex", {variableRow1Child1, variableRow1Child2}))
	store:dispatch(AddChildVariables(stepStateBundle1, "Alex_Heesoo", {variableRow1Child11}))
	store:dispatch(AddChildVariables(stepStateBundle1, "Alex_Austin", {variableRow1Child21}))
	store:dispatch(AddChildVariables(stepStateBundle1, "UnitedStates", {variableRow2Child1}))
	store:dispatch(AddChildVariables(stepStateBundle1, "UnitedStates_Wisconsin", {variableRow2Child11}))
	return store
end
