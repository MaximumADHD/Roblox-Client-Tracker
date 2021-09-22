local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local BreakpointReducer = require(script.Parent.Breakpoint)
local Actions = Plugin.Src.Actions
local Models = Plugin.Src.Models
local AddBreakpointAction = require(Actions.BreakpointsWindow.AddBreakpoint)
local Breakpoint = require(Models.Breakpoint)

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

return function()
	local function expectBreakpoint(state, debuggerConnectionId, breakpoint)
		-- Check that breakpoint exists
		expect(state).to.be.ok()
		expect(state.BreakpointIdsInDebuggerConnection[debuggerConnectionId]).to.be.ok()
		expect(state.BreakpointIdsInDebuggerConnection[debuggerConnectionId][breakpoint.id]).to.be.ok()
		expect(state.BreakpointInfo[breakpoint.id]).to.be.ok()
	
		-- Check that the breakpoint's props are correct
		local stateBreakpoint = state.BreakpointInfo[breakpoint.id]
		expect(stateBreakpoint.id).to.equal(breakpoint.id)
		expect(stateBreakpoint.isValid).to.equal(breakpoint.isValid)
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

			local breakpoint1 = Breakpoint.mockBreakpoint({}, uniqueId)
			local state = BreakpointReducer({}, AddBreakpointAction(123, breakpoint1))
			expect(state).to.be.ok()
			expect(getSize(state.BreakpointIdsInDebuggerConnection)).to.equal(1)
			expect(getSize(state.BreakpointIdsInDebuggerConnection[123])).to.equal(1)

			-- Add a breakpoint in the same debugger connection
			uniqueId = uniqueId + 1
			local breakpoint2 = Breakpoint.mockBreakpoint({}, uniqueId)
			state = BreakpointReducer(state, AddBreakpointAction(123, breakpoint2))
			expect(state).to.be.ok()
			expect(getSize(state.BreakpointIdsInDebuggerConnection)).to.equal(1)
			expect(getSize(state.BreakpointIdsInDebuggerConnection[123])).to.equal(2)

			-- Add a breakpoint in a different debugger connection
			uniqueId = uniqueId + 1
			local breakpoint3 = Breakpoint.mockBreakpoint({}, uniqueId)
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
			local breakpoint = Breakpoint.mockBreakpoint({}, uniqueId)
			uniqueId = uniqueId + 1
			local breakpointOverride = Breakpoint.mockBreakpoint({id = breakpoint.id}, uniqueId)

			local state = BreakpointReducer({}, AddBreakpointAction(123, breakpoint))

			-- Add the override breakpoint to a different debugger connection, should replace the original breakpoint 
			-- in BreakpointInfo since they have the same id
			state = BreakpointReducer(state, AddBreakpointAction(321, breakpointOverride))
			expect(state).to.be.ok()
			expect(getSize(state.BreakpointIdsInDebuggerConnection)).to.equal(2)
			expect(getSize(state.BreakpointInfo)).to.equal(1)
			expectBreakpoint(state, 123, breakpointOverride)
			expectBreakpoint(state, 321, breakpointOverride)

			-- Add the override breakpoint to the same debugger connection, which should throw an assert since
			-- it already contains that breakpointId
			expect(function() BreakpointReducer(state, AddBreakpointAction(123, breakpointOverride)) end).to.throw()
		end)

		it("should preserve immutability", function()
			local uniqueId = 0
			local breakpoint = Breakpoint.mockBreakpoint({}, uniqueId)
			local immutabilityPreserved = testImmutability(BreakpointReducer, AddBreakpointAction(321, breakpoint), {})
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

end
