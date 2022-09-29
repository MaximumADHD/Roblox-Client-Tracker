local Plugin = script.Parent.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Reducers = Plugin.Src.Reducers
local MainReducer = require(Reducers.MainReducer)
local MainMiddleware = require(Plugin.Src.Middleware.MainMiddleware)

local Util = Plugin.Src.Util
local TestStore = require(Util.TestStore)

local FilterWatchDataThunk = require(script.Parent.FilterWatchDataThunk)
local filterText = "Karan"

local FFlagStudioDebuggerExpandVariables = require(Plugin.Src.Flags.GetFFlagStudioDebuggerExpandVariables)

return function()
	it("should filter roots that don't match", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		store = TestStore(store)
		store:dispatch(FilterWatchDataThunk(filterText))

		local state = store:getState()

		local common = state.Common
		local watch = state.Watch
		local dst = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId]
		local currentThreadId = common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId]

		expect(watch.stateTokenToFlattenedTree).to.be.ok()
		expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1]).to.be.ok()
		if FFlagStudioDebuggerExpandVariables() then
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["Alex"].textFilteredOut).to.be.equal(false)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["UnitedStates"].textFilteredOut).to.be.equal(true)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["Alex_Austin_Karan"].scopeFilteredOut).to.be.equal(false)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["Alex_Austin_Karan"].textFilteredOut).to.be.equal(false)
		else
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["1"].textFilteredOut).to.be.equal(
				false
			)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["2"].textFilteredOut).to.be.equal(
				true
			)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["1_2_1"].scopeFilteredOut).to.be.equal(
				false
			)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["1_2_1"].textFilteredOut).to.be.equal(
				false
			)
		end
	end)

	it("should filter roots that don't match regardless of filter case", function()
		local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)
		store = TestStore(store)

		-- set the filter text to all uppercase and see it doesn't affect the results
		store:dispatch(FilterWatchDataThunk(filterText:upper()))
		local state = store:getState()

		local common = state.Common
		local watch = state.Watch
		local dst = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId]
		local currentThreadId = common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId]

		expect(watch.stateTokenToFlattenedTree).to.be.ok()
		expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1]).to.be.ok()
		if FFlagStudioDebuggerExpandVariables() then
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["Alex"].textFilteredOut).to.be.equal(false)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["UnitedStates"].textFilteredOut).to.be.equal(true)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["Alex_Austin_Karan"].scopeFilteredOut).to.be.equal(false)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["Alex_Austin_Karan"].textFilteredOut).to.be.equal(false)
		else
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["1"].textFilteredOut).to.be.equal(
				false
			)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["2"].textFilteredOut).to.be.equal(
				true
			)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["1_2_1"].scopeFilteredOut).to.be.equal(
				false
			)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["1_2_1"].textFilteredOut).to.be.equal(
				false
			)
		end

		-- set the filter text to all lowercase and see that the results are identical
		store:dispatch(FilterWatchDataThunk(filterText:lower()))
		state = store:getState()

		common = state.Common
		watch = state.Watch
		dst = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId]
		currentThreadId = common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId]

		expect(watch.stateTokenToFlattenedTree).to.be.ok()
		expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1]).to.be.ok()
		if FFlagStudioDebuggerExpandVariables() then
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["Alex"].textFilteredOut).to.be.equal(false)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["UnitedStates"].textFilteredOut).to.be.equal(true)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["Alex_Austin_Karan"].scopeFilteredOut).to.be.equal(false)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["Alex_Austin_Karan"].textFilteredOut).to.be.equal(false)
		else
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["1"].textFilteredOut).to.be.equal(
				false
			)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["2"].textFilteredOut).to.be.equal(
				true
			)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["1_2_1"].scopeFilteredOut).to.be.equal(
				false
			)
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1].Variables["1_2_1"].textFilteredOut).to.be.equal(
				false
			)
		end
	end)

	it(
		"should set variables expanded to ensure it is visible to the user, and collapse less essential branches ",
		function()
			local store = Rodux.Store.new(MainReducer, nil, MainMiddleware)

			store = TestStore(store)
			store:dispatch(FilterWatchDataThunk(filterText))

			local state = store:getState()

			local common = state.Common
			local watch = state.Watch
			local dst = common.debuggerConnectionIdToDST[common.currentDebuggerConnectionId]
			local currentThreadId = common.debuggerConnectionIdToCurrentThreadId[common.currentDebuggerConnectionId]

			expect(watch.stateTokenToFlattenedTree).to.be.ok()
			expect(watch.stateTokenToFlattenedTree[dst][currentThreadId][1]).to.be.ok()
			if FFlagStudioDebuggerExpandVariables() then
				expect(watch.pathToExpansionState["Alex"]).to.be.equal(true)
				expect(watch.pathToExpansionState["Alex_Austin"]).to.be.equal(true)
				expect(watch.pathToExpansionState["Alex_Austin_Karan"]).to.be.equal(true)
				expect(watch.pathToExpansionState["Alex_Heesoo"]).to.be.equal(false)
				expect(watch.pathToExpansionState["Alex_Heesoo_Raul"]).to.be.equal(false)
			else
				expect(watch.pathToExpansionState["1"]).to.be.equal(true)
				expect(watch.pathToExpansionState["1_2"]).to.be.equal(true)
				expect(watch.pathToExpansionState["1_2_1"]).to.be.equal(true)
				expect(watch.pathToExpansionState["1_1"]).to.be.equal(false)
				expect(watch.pathToExpansionState["1_1_1"]).to.be.equal(false)
			end
		end
	)
end
