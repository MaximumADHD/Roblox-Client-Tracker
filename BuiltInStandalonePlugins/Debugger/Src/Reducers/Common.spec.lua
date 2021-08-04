local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local Actions = Plugin.Src.Actions
local SetCurrentThreadAction = require(Actions.Callstack.SetCurrentThread)
local ResumedAction = require(Actions.Common.Resumed)
local BreakpointHit = require(Actions.Common.BreakpointHit)
local Step = require(Actions.Common.Step)
local CommonReducer = require(script.Parent.Common)
local SetCurrentFrameNumberAction = require(Actions.Callstack.SetCurrentFrameNumber)

local Models = Plugin.Src.Models
local DebuggerStateToken = require(Models.DebuggerStateToken)

local defaultNewNum = 1
local defaultDebuggerToken = DebuggerStateToken.fromData({session = 1})
local defaultDebuggerToken2 = DebuggerStateToken.fromData({session = 1})

return function()
	it("should return its expected default state", function()
		local commonReducer = Rodux.Store.new(CommonReducer)
		expect(commonReducer:getState()).to.be.ok()
		expect(commonReducer:getState().currentThreadId).to.equal(-1)
	end)

	describe(SetCurrentThreadAction.name, function()
		it("should set the CurrentThreadId", function()
			local state = CommonReducer(nil, SetCurrentThreadAction(123))

			expect(state).to.be.ok()
			expect(state.currentThreadId).to.be.ok()
			expect(state.currentThreadId).to.equal(123)
			expect(state.threadIdToCurrentFrameNumber).to.be.ok()
			expect(state.debuggerStateTokenHistory).to.be.ok()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CommonReducer, SetCurrentThreadAction(1234))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(ResumedAction.name, function()
		it("should reset Common Store", function()
			local state = CommonReducer(nil, ResumedAction())

			expect(state).to.be.ok()
			expect(state.currentThreadId).to.be.ok()
			expect(state.currentThreadId).to.equal(-1)
			expect(state.threadIdToCurrentFrameNumber).to.be.ok()
			expect(state.debuggerStateTokenHistory).to.be.ok()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CommonReducer, ResumedAction())
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(SetCurrentFrameNumberAction.name, function()
		it("should set the CurrentFrameNumber", function()
			local state = CommonReducer(nil, SetCurrentFrameNumberAction(defaultNewNum, defaultNewNum))

			expect(state).to.be.ok()
			expect(state.threadIdToCurrentFrameNumber).to.be.ok()
			expect(state.threadIdToCurrentFrameNumber[defaultNewNum]).to.equal(defaultNewNum)
			expect(state.currentThreadId).to.be.ok()
			expect(state.currentThreadId).to.equal(-1)
			expect(state.debuggerStateTokenHistory).to.be.ok()
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CommonReducer, SetCurrentFrameNumberAction(2, 2))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(BreakpointHit.name, function()
		it("should set the CurrentFrameNumber", function()
			local state = CommonReducer(nil, BreakpointHit(defaultDebuggerToken))

			expect(state).to.be.ok()
			expect(state.debuggerStateTokenHistory).to.be.ok()
			expect(state.debuggerStateTokenHistory[1]).to.equal(defaultDebuggerToken)
			expect(state.threadIdToCurrentFrameNumber).to.be.ok()
			expect(state.currentThreadId).to.equal(-1)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CommonReducer, BreakpointHit(defaultDebuggerToken))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(Step.name, function()
		it("should set the CurrentFrameNumber", function()
			local prepState = CommonReducer(nil, BreakpointHit(defaultDebuggerToken))
			local state = CommonReducer(prepState, Step(defaultDebuggerToken2))

			expect(state).to.be.ok()
			expect(state.debuggerStateTokenHistory).to.be.ok()
			expect(state.debuggerStateTokenHistory[1]).to.equal(defaultDebuggerToken)
			expect(state.debuggerStateTokenHistory[2]).to.equal(defaultDebuggerToken2)
			expect(state.threadIdToCurrentFrameNumber).to.be.ok()
			expect(state.currentThreadId).to.equal(-1)
		end)

		it("should preserve immutability", function()
			local prepState = CommonReducer(nil, BreakpointHit(defaultDebuggerToken))
			local immutabilityPreserved = testImmutability(CommonReducer, Step(defaultDebuggerToken2), prepState)
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
