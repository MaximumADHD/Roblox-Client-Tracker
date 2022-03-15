local Plugin = script.Parent.Parent.Parent.Parent
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

local LazyLoadVariable = require(script.Parent.LazyLoadVariable)
local LazyLoadVariableChildren = require(script.Parent.LazyLoadVariableChildren)

return function()
	it("should load variables mocks", function()			
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		store = TestStore(store)
		local state = store:getState()
		local currentMockConnection = MockDebuggerConnection.new(1)
		local dst = state.Common.debuggerConnectionIdToDST[1]
		local stepStateBundle = StepStateBundle.ctor(dst,1,1)

		store:dispatch(LazyLoadVariable("2", stepStateBundle, true, currentMockConnection))
		state = store:getState()

		expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1]).to.be.ok()

		-- child data is loaded from DebuggerVariable mock data in MockDebuggerConnection
		expect(#state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["2"].childPaths).to.be.equal(2)
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["2"].childPaths[2]).to.be.equal("2_4")
		expect(#state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["2_4"].childPaths).to.be.equal(0)
		
		store:dispatch(LazyLoadVariableChildren("2", stepStateBundle, true, currentMockConnection))
		state = store:getState()
		
		expect(#state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["2_4"].childPaths).to.be.equal(1)
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["2_4"].childPaths[1]).to.be.equal("2_4_5")
	end)
end
