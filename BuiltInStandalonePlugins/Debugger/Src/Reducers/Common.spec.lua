local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local Framework = require(Plugin.Packages.Framework)
local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local Actions = Plugin.Src.Actions
local SetCurrentThreadAction = require(Actions.Callstack.SetCurrentThread)
local ResumedAction = require(Actions.Common.Resumed)
local CommonReducer = require(script.Parent.Common)

return function()
	it("should return its expected default state", function()
		local commonReducer = Rodux.Store.new(CommonReducer)
		expect(commonReducer:getState()).to.be.ok()
		expect(commonReducer:getState().currentThreadId).to.equal(-1)
	end)

	describe(SetCurrentThreadAction.name, function()
		it("should set the CurrentScriptUri", function()
			local state = CommonReducer(nil, SetCurrentThreadAction(123))

			expect(state).to.be.ok()
			expect(state.currentThreadId).to.be.ok()
			expect(state.currentThreadId).to.equal(123)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CommonReducer, SetCurrentThreadAction(1234))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe(ResumedAction.name, function()
		it("should set the CurrentScriptUri", function()
			local state = CommonReducer(nil, ResumedAction())

			expect(state).to.be.ok()
			expect(state.currentThreadId).to.be.ok()
			expect(state.currentThreadId).to.equal(-1)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(CommonReducer, ResumedAction())
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
