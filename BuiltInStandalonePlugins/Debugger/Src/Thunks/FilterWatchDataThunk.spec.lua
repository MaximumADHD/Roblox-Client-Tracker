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

		local dst = state.Common.debuggerStateTokenHistory[#state.Common.debuggerStateTokenHistory]

		expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1]).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["Alex"].textFilteredOut).to.be.equal(false)
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["UnitedStates"].textFilteredOut).to.be.equal(true)
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["Alex_Austin_Karan"].scopeFilteredOut).to.be.equal(false)
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["Alex_Austin_Karan"].textFilteredOut).to.be.equal(false)
	end)
	
	it("should set variables expanded to ensure it is visible to the user, and collapse less essential branches ", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)

		store = TestStore(store)
		store:dispatch(FilterWatchDataThunk(filterText))

		local state = store:getState()
		local dst = state.Common.debuggerStateTokenHistory[#state.Common.debuggerStateTokenHistory]

		expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1]).to.be.ok()
		expect(state.Watch.pathToExpansionState["Alex"]).to.be.equal(true)
		expect(state.Watch.pathToExpansionState["Alex_Austin"]).to.be.equal(true)
		expect(state.Watch.pathToExpansionState["Alex_Austin_Karan"]).to.be.equal(true)
		expect(state.Watch.pathToExpansionState["Alex_Heesoo"]).to.be.equal(false)
		expect(state.Watch.pathToExpansionState["Alex_Heesoo_Raul"]).to.be.equal(false)
	end)
end
