local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local BreakpointReducer = require(script.Parent.Breakpoint)
local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models
local AddBreakpointAction = require(Actions.BreakpointsWindow.AddBreakpoint)
local ModifyBreakpointAction = require(Actions.BreakpointsWindow.ModifyBreakpoint)
local DeleteBreakpointAction = require(Actions.BreakpointsWindow.DeleteBreakpoint)
local BreakpointColumnFilter = require(Actions.BreakpointsWindow.BreakpointColumnFilter)
local MetaBreakpoint = require(Models.MetaBreakpoint)

local function getSize(dict)
	if not dict then
		return nil
	end
	local count = 0
	for _, _ in pairs(dict) do
		count = count + 1
	end
	return count
end

local initialState = {
	BreakpointIdsInDebuggerConnection = {},
	MetaBreakpoints = {},
}

return function()
	local function expectBreakpoint(state, debuggerConnectionId, breakpoint)
		-- Check that breakpoint exists
		expect(state).to.be.ok()
		expect(state.BreakpointIdsInDebuggerConnection[debuggerConnectionId]).to.be.ok()
		expect(state.BreakpointIdsInDebuggerConnection[debuggerConnectionId][breakpoint.id]).to.be.ok()
		expect(state.MetaBreakpoints[breakpoint.id]).to.be.ok()

		-- Check that the breakpoint's props are correct
		local stateBreakpoint = state.MetaBreakpoints[breakpoint.id]
		expect(stateBreakpoint.id).to.equal(breakpoint.id)
		expect(stateBreakpoint.scriptName).to.equal(stateBreakpoint.scriptName)
		expect(stateBreakpoint.scriptLine).to.equal(stateBreakpoint.scriptLine)
		expect(stateBreakpoint.condition).to.equal(stateBreakpoint.condition)
		expect(stateBreakpoint.logMessage).to.equal(stateBreakpoint.logMessage)
	end

	it("should return its expected default state", function()
		local breakpointReducer = Rodux.Store.new(BreakpointReducer)
		expect(breakpointReducer:getState()).to.be.ok()
	end)

	describe(AddBreakpointAction.name, function()
		it("should Add Breakpoints", function()
			local uniqueId = 0

			local breakpoint1 = MetaBreakpoint.mockMetaBreakpoint({}, uniqueId)
			local state = BreakpointReducer(initialState, AddBreakpointAction(123, breakpoint1))
			expect(state).to.be.ok()
			expect(getSize(state.BreakpointIdsInDebuggerConnection)).to.equal(1)
			expect(getSize(state.BreakpointIdsInDebuggerConnection[123])).to.equal(1)

			-- Add a breakpoint in the same debugger connection
			uniqueId = uniqueId + 1
			local breakpoint2 = MetaBreakpoint.mockMetaBreakpoint({}, uniqueId)
			state = BreakpointReducer(state, AddBreakpointAction(123, breakpoint2))
			expect(state).to.be.ok()
			expect(getSize(state.BreakpointIdsInDebuggerConnection)).to.equal(1)
			expect(getSize(state.BreakpointIdsInDebuggerConnection[123])).to.equal(2)

			-- Add a breakpoint in a different debugger connection
			uniqueId = uniqueId + 1
			local breakpoint3 = MetaBreakpoint.mockMetaBreakpoint({}, uniqueId)
			state = BreakpointReducer(state, AddBreakpointAction(321, breakpoint3))
			expect(state).to.be.ok()
			expect(getSize(state.BreakpointIdsInDebuggerConnection)).to.equal(2)
			expect(getSize(state.BreakpointIdsInDebuggerConnection[321])).to.equal(1)

			expectBreakpoint(state, 123, breakpoint1)
			expectBreakpoint(state, 123, breakpoint2)
			expectBreakpoint(state, 321, breakpoint3)
		end)

		it("should override when given breakpoints with the same ID", function()
			local uniqueId = 0

			-- Create two breakpoints with the same id
			local breakpoint = MetaBreakpoint.mockMetaBreakpoint({}, uniqueId)
			uniqueId = uniqueId + 1
			local breakpointOverride = MetaBreakpoint.mockMetaBreakpoint({ id = breakpoint.id }, uniqueId)

			local state = BreakpointReducer(initialState, AddBreakpointAction(123, breakpoint))

			-- Add the override breakpoint to a different debugger connection, should replace the original breakpoint
			-- in MetaBreakpoints since they have the same id
			state = BreakpointReducer(state, AddBreakpointAction(321, breakpointOverride))
			expect(state).to.be.ok()
			expect(getSize(state.BreakpointIdsInDebuggerConnection)).to.equal(2)
			expect(getSize(state.MetaBreakpoints)).to.equal(1)
			expectBreakpoint(state, 123, breakpointOverride)
			expectBreakpoint(state, 321, breakpointOverride)

			-- Add the override breakpoint to the same debugger connection, which should throw an assert since
			-- it already contains that breakpointId
			expect(function()
				BreakpointReducer(state, AddBreakpointAction(123, breakpointOverride))
			end).to.throw()
		end)

		it("should preserve immutability", function()
			local uniqueId = 0
			local breakpoint = MetaBreakpoint.mockMetaBreakpoint({}, uniqueId)
			local immutabilityPreserved = testImmutability(
				BreakpointReducer,
				AddBreakpointAction(321, breakpoint),
				initialState
			)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(ModifyBreakpointAction.name, function()
		it("should Modify Breakpoints", function()
			local uniqueId = 0

			-- Add a breakpoint in the debugger connection
			local breakpoint1 = MetaBreakpoint.mockMetaBreakpoint({}, uniqueId)
			local state = BreakpointReducer(initialState, AddBreakpointAction(123, breakpoint1))
			expect(state).to.be.ok()
			expect(getSize(state.BreakpointIdsInDebuggerConnection)).to.equal(1)
			expect(getSize(state.BreakpointIdsInDebuggerConnection[123])).to.equal(1)
			expect(state.MetaBreakpoints[uniqueId].lineNumber).to.equal(0)

			-- Modify the breakpoint in the connection
			local newBreakpoint = MetaBreakpoint.mockMetaBreakpoint({ lineNumber = 2500 }, uniqueId)
			state = BreakpointReducer(state, ModifyBreakpointAction(newBreakpoint))
			expect(state).to.be.ok()
			expect(getSize(state.BreakpointIdsInDebuggerConnection)).to.equal(1)
			expect(getSize(state.BreakpointIdsInDebuggerConnection[123])).to.equal(1)
			expect(getSize(state.MetaBreakpoints)).to.equal(1)
			expect(state.MetaBreakpoints[uniqueId].lineNumber).to.equal(2500)
		end)

		it("should break when modifying breakpoint that doesn't exist", function()
			local newBreakpoint = MetaBreakpoint.mockMetaBreakpoint({}, 0)
			expect(function()
				BreakpointReducer(initialState, ModifyBreakpointAction(newBreakpoint))
			end).to.throw()
		end)
	end)

	describe(DeleteBreakpointAction.name, function()
		it("should Delete Breakpoints", function()
			local uniqueId = 0
			local metaBreakpoint = MetaBreakpoint.mockMetaBreakpoint({}, uniqueId)
			local state = BreakpointReducer({
				MetaBreakpoints = { [metaBreakpoint.id] = metaBreakpoint },
				BreakpointIdsInDebuggerConnection = { [123] = { [0] = 0 } },
			}, DeleteBreakpointAction(uniqueId))
			expect(state).to.be.ok()
			expect(getSize(state.BreakpointIdsInDebuggerConnection)).to.equal(1)
			expect(getSize(state.BreakpointIdsInDebuggerConnection[123])).to.equal(0)
			expect(getSize(state.MetaBreakpoints)).to.equal(0)
		end)

		it("should throw assert when deleting breakpoint not in store", function()
			expect(function()
				BreakpointReducer(initialState, DeleteBreakpointAction(0))
			end).to.throw()
		end)

		it("should preserve immutability", function()
			local uniqueId = 0
			local metaBreakpoint = MetaBreakpoint.mockMetaBreakpoint({}, uniqueId)
			local immutabilityPreserved = testImmutability(
				BreakpointReducer,
				DeleteBreakpointAction(uniqueId),
				{ MetaBreakpoints = { [uniqueId] = metaBreakpoint }, BreakpointIdsInDebuggerConnection = {} }
			)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(BreakpointColumnFilter.name, function()
		it("should update list of enabled columns ", function()
			local state = BreakpointReducer(
				initialState,
				BreakpointColumnFilter({ "SourceLineColumn", "ConditionColumn" })
			)
			expect(state).to.be.ok()
			expect(state.listOfEnabledColumns).to.be.ok()
			expect(#state.listOfEnabledColumns).to.equal(2)
			expect(state.listOfEnabledColumns[1]).to.equal("SourceLineColumn")
			expect(state.listOfEnabledColumns[2]).to.equal("ConditionColumn")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(BreakpointReducer, BreakpointColumnFilter)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
