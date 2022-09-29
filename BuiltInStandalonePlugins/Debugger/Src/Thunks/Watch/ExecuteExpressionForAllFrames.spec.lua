local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local Util = Plugin.Src.Util
local TestStore = require(Util.TestStore)

local Mocks = Plugin.Src.Mocks
local MockDebuggerConnection = require(Mocks.MockDebuggerConnection)
local MockStackFrame = require(Mocks.StackFrame)
local MockScriptRef = require(Mocks.ScriptRef)
local MockThreadState = require(Mocks.ThreadState)
local MockCrossDMScriptChangeListenerService = require(Mocks.MockCrossDMScriptChangeListenerService)

local Thunks = Plugin.Src.Thunks

local ExecuteExpressionForAllFrames = require(Thunks.Watch.ExecuteExpressionForAllFrames)
local PopulateCallstackThreadThunk = require(Thunks.Callstack.PopulateCallstackThreadThunk)

local FFlagStudioDebuggerExpandVariables = require(Plugin.Src.Flags.GetFFlagStudioDebuggerExpandVariables)

return function()
	it("should evaluate expressions correctly", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		store = TestStore(store)
		local state = store:getState()
		local currentMockConnection = MockDebuggerConnection.new(1)
		local mockStackFrame = MockStackFrame.new(1, MockScriptRef.new(), "TestFrame1", "C")
		local mockThreadState = MockThreadState.new(2, "testThread", true)
		currentMockConnection.MockSetThreadStateById(2, mockThreadState)
		currentMockConnection.MockSetCallstackByThreadId(2, { [0] = mockStackFrame, [1] = mockStackFrame })
		local dst = state.Common.debuggerConnectionIdToDST[1]
		local expressionString = "Alex"
		
		local checkResults = function()
			local path = if FFlagStudioDebuggerExpandVariables() then "Alex" else "1"
			store:dispatch(ExecuteExpressionForAllFrames(expressionString, currentMockConnection, dst, 2))
			state = store:getState()
			expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
			expect(state.Watch.stateTokenToFlattenedTree[dst][2][1]).to.be.ok()
			expect(state.Watch.stateTokenToFlattenedTree[dst][2][1].Watches[path].expressionColumn).to.be.equal(
				expressionString
			)
			expect(state.Watch.stateTokenToFlattenedTree[dst][2][1].Watches[path].valueColumn).to.be.equal("Instance")
			expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
			expect(state.Watch.stateTokenToFlattenedTree[dst][2][2]).to.be.ok()
			expect(state.Watch.stateTokenToFlattenedTree[dst][2][2].Watches[path].expressionColumn).to.be.equal(
				expressionString
			)
			expect(state.Watch.stateTokenToFlattenedTree[dst][2][2].Watches[path].valueColumn).to.be.equal("Instance")
		end
		
		store:dispatch(PopulateCallstackThreadThunk(mockThreadState, currentMockConnection, dst, MockCrossDMScriptChangeListenerService.new(), checkResults))
	end)
end
