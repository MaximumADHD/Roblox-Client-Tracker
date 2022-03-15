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

return function()
	it("should load variables mocks", function()			
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		store = TestStore(store)
		local state = store:getState()
		local currentMockConnection = MockDebuggerConnection.new(1)
		local dst = state.Common.debuggerConnectionIdToDST[1]
		local stepStateBundle = StepStateBundle.ctor(dst,1,1)
		
		store:dispatch(LazyLoadVariable("1", stepStateBundle, true, currentMockConnection))
		state = store:getState()
		
		expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1]).to.be.ok()
		-- there were 1 originally, but through lazy loading the variable in this slot, the number of children becomes 3.
		expect(#state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["1"].childPaths).to.be.equal(3)
	end)
end
