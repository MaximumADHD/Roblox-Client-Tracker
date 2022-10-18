local Src = script.Parent.Parent

local Models = Src.Models
local WatchRow = require(Models.Watch.WatchRow)
local VariableRow = require(Models.Watch.VariableRow)
local ScopeEnum = require(Models.Watch.ScopeEnum)
local StepStateBundle = require(Models.StepStateBundle)
local MetaBreakpointModel = require(Models.MetaBreakpoint)

local Mocks = Src.Mocks
local mockThreadState = require(Mocks.ThreadState)
local mockStackFrame = require(Mocks.StackFrame)
local mockScriptRef = require(Mocks.ScriptRef)
local mockPausedState = require(Mocks.PausedState)
local mockDebuggerVariable = require(Mocks.DebuggerVariable)
local MockDebuggerConnection = require(Mocks.MockDebuggerConnection)
local MockDebuggerConnectionManager = require(Mocks.MockDebuggerConnectionManager)
local MockDebuggerUIService = require(Mocks.MockDebuggerUIService)
local MockCrossDMScriptChangeListenerService = require(Mocks.MockCrossDMScriptChangeListenerService)

local Actions = Src.Actions
local AddExpression = require(Actions.Watch.AddExpression)
local ExpressionEvaluated = require(Actions.Watch.ExpressionEvaluated)
local AddBreakpoint = require(Actions.BreakpointsWindow.AddBreakpoint)
local AddChildVariables = require(Actions.Watch.AddChildVariables)

local DebugConnectionListener = require(Src.Util.DebugConnectionListener.DebugConnectionListener)
local Constants = require(Src.Util.Constants)

return function(store)
	local expressionData1 = {
		expression = "Expression 1",
		path = "3",
		scope = ScopeEnum.Local,
		value = "somePreview",
		dataType = "string",
		childPaths = {},
	}

	local expressionRow1 = WatchRow.fromData(expressionData1)

	local debuggerVar1 = mockDebuggerVariable.new(1, "Alex", "somePreview", "map")

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

	local debuggerVar2 = mockDebuggerVariable.new(2, "UnitedStates", "somePreview2", "map")

	local varData2Child1 = {
		name = "Wisconsin",
		path = "UnitedStates_Wisconsin",
		scope = ScopeEnum.Local,
		value = "somePreview2",
		dataType = "map",
	}

	local varData2Child11 = {
		name = "GreenBay",
		path = "UnitedStates_Wisconsin_GreenBay",
		scope = ScopeEnum.Local,
		value = "somePreview2",
		dataType = "string",
	}

	local variableRow1Child1 = VariableRow.fromData(varData1Child1)
	local variableRow1Child2 = VariableRow.fromData(varData1Child2)
	local variableRow1Child11 = VariableRow.fromData(varData1Child11)
	local variableRow1Child21 = VariableRow.fromData(varData1Child21)
	local variableRow2Child1 = VariableRow.fromData(varData2Child1)
	local variableRow2Child11 = VariableRow.fromData(varData2Child11)

	local scriptRef1 = mockScriptRef.new()
	local scriptRef2 = mockScriptRef.new()

	local testStackFrameOne = mockStackFrame.new(10, scriptRef1, "TestFrame1", "C")
	local testStackFrameTwo = mockStackFrame.new(20, scriptRef2, "TestFrame2", "C")
	local testCallstack1 = {
		[0] = testStackFrameOne,
		[1] = testStackFrameTwo,
	}

	local testCallstack2 = {
		[0] = testStackFrameTwo,
		[1] = testStackFrameOne,
	}

	local testThreadOne = mockThreadState.new(1, scriptRef1, true)
	local testThreadTwo = mockThreadState.new(2, scriptRef2, true)

	local testPausedState1 = nil

	testPausedState1 = mockPausedState.new(Constants.DebuggerPauseReason.Requested, 1, true)
	
	local currentMockConnection = MockDebuggerConnection.new(1)
	local mainConnectionManager = MockDebuggerConnectionManager.new()
	local _mainListener = DebugConnectionListener.new(
		store,
		mainConnectionManager,
		MockDebuggerUIService.new(),
		MockCrossDMScriptChangeListenerService.new()
	)
	currentMockConnection.MockSetThreadStateById(1, testThreadOne)
	currentMockConnection.MockSetThreadStateById(2, testThreadTwo)
	currentMockConnection.MockSetCallstackByThreadId(1, testCallstack1)
	currentMockConnection.MockSetCallstackByThreadId(2, testCallstack2)

	local defaults1 = mockDebuggerVariable.GetDefaultFrameVariables()
	defaults1["Locals"]:MockSetChildren({ debuggerVar1, debuggerVar2 })
	currentMockConnection.MockSetDebuggerVariablesByCallstackFrame(testStackFrameOne, defaults1)
	local defaults2 = mockDebuggerVariable.GetDefaultFrameVariables()
	defaults2["Locals"]:MockSetChildren({ debuggerVar2, debuggerVar1 })
	currentMockConnection.MockSetDebuggerVariablesByCallstackFrame(testStackFrameTwo, defaults2)

	mainConnectionManager.ConnectionStarted:Fire(currentMockConnection)

	currentMockConnection.Paused:Fire(testPausedState1, testPausedState1.Reason)
	
	local state = store:getState()
	local common = state.Common
	local dst = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId]

	local stepStateBundle1 = StepStateBundle.ctor(dst, 1, 1)

	store:dispatch(AddExpression("Expression 1"))
	store:dispatch(ExpressionEvaluated(stepStateBundle1, expressionRow1))

	local i = 0
	for _, uniqueId in ipairs({ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 14 }) do
		store:dispatch(AddBreakpoint(123, MetaBreakpointModel.mockMetaBreakpoint({ isEnabled = (i >= 6) }, uniqueId)))
		i = i + 1
	end
	store:dispatch(AddChildVariables(stepStateBundle1, "Alex", { variableRow1Child1, variableRow1Child2 }))
	store:dispatch(AddChildVariables(stepStateBundle1, "Alex_Heesoo", { variableRow1Child11 }))
	store:dispatch(AddChildVariables(stepStateBundle1, "Alex_Austin", { variableRow1Child21 }))
	store:dispatch(AddChildVariables(stepStateBundle1, "UnitedStates", { variableRow2Child1 }))
	store:dispatch(AddChildVariables(stepStateBundle1, "UnitedStates_Wisconsin", { variableRow2Child11 }))
	return store
end
