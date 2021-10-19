local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local Util = Plugin.Src.Util
local TestStore = require(Util.TestStore)

local FilterWatchDataThunk = require(script.Parent.FilterWatchDataThunk)

local filterText = "Karan"

return function()
	it("should filter roots that don't match", function()			
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		store = TestStore(store)
		store:dispatch(FilterWatchDataThunk(filterText))
		local state = store:getState()

		local dst = state.Common.debuggerConnectionIdToDST[1]

		expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1]).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["1"].textFilteredOut).to.be.equal(false)
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["2"].textFilteredOut).to.be.equal(true)
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["1_2_1"].scopeFilteredOut).to.be.equal(false)
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["1_2_1"].textFilteredOut).to.be.equal(false)
	end)
	
	it("should set variables expanded to ensure it is visible to the user, and collapse less essential branches ", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)

		store = TestStore(store)
		store:dispatch(FilterWatchDataThunk(filterText))

		local state = store:getState()
		local dst = state.Common.debuggerConnectionIdToDST[1]

		expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1]).to.be.ok()
		expect(state.Watch.pathToExpansionState["1"]).to.be.equal(true)
		expect(state.Watch.pathToExpansionState["1_2"]).to.be.equal(true)
		expect(state.Watch.pathToExpansionState["1_2_1"]).to.be.equal(true)
		expect(state.Watch.pathToExpansionState["1_1"]).to.be.equal(false)
		expect(state.Watch.pathToExpansionState["1_1_1"]).to.be.equal(false)
	end)
end
