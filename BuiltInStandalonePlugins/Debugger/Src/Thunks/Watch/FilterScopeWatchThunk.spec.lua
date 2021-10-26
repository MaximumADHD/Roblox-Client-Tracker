local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local Util = Plugin.Src.Util
local TestStore = require(Util.TestStore)

local FilterScopeWatchThunk = require(script.Parent.FilterScopeWatchThunk)

local enabledScopes = {"Global, Upvalue"}

return function()
	it("should filter roots that don't match and leave children unchanged", function()			
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		store = TestStore(store)
		local state = store:getState()
		local dst = state.Common.debuggerConnectionIdToDST[1]
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["1"].scopeFilteredOut).to.be.equal(false)
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["2"].scopeFilteredOut).to.be.equal(false)

		store:dispatch(FilterScopeWatchThunk(enabledScopes))
		state = store:getState()

		expect(state.Watch.stateTokenToFlattenedTree).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1]).to.be.ok()
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["1"].scopeFilteredOut).to.be.equal(true)
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["2"].scopeFilteredOut).to.be.equal(true)
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["1_2_1"].scopeFilteredOut).to.be.equal(false)
		expect(state.Watch.stateTokenToFlattenedTree[dst][1][1].Variables["1_2_1"].scopeFilteredOut).to.be.equal(false)
	end)
end
