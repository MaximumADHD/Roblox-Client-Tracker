local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local Util = Plugin.Src.Util
local TestStore = require(Util.TestStore)

local Mocks = Plugin.Src.Mocks
local MockDebuggerConnection = require(Mocks.MockDebuggerConnection)

local Models = Plugin.Src.Models
local StepStateBundle = require(Models.StepStateBundle)

local ExecuteExpressionThunk = require(script.Parent.ExecuteExpressionThunk)

return function()
	it("should evaluate expressions correctly", function()			
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		store = TestStore(store)
		local state = store:getState()
		local currentMockConnection = MockDebuggerConnection.new(1)
		local dst = state.Common.debuggerStateTokenHistory[#state.Common.debuggerStateTokenHistory]
		local stepStateBundle = StepStateBundle.ctor(dst,2,1)
		local expressionString = "Alex"
		
		store:dispatch(ExecuteExpressionThunk(expressionString,stepStateBundle,currentMockConnection))
		state = store:getState()
		
		expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][2][1]).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][2][1].Watches["1"].expressionColumn).to.be.equal(expressionString)
	end)
end
