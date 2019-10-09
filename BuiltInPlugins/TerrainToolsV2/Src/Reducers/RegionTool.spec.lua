local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local SelectTool = require(script.Parent.SelectTool)
local testImmutability = require(TestHelpers.testImmutability)
local Rodux = require(Packages.Rodux)
local SetMergeEmpty = require(Plugin.Src.Actions.SetMergeEmpty)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(SelectTool)
		expect(r:getState()).to.be.ok()
		expect(r:getState().mergeEmpty).to.equal(false)
	end)

	describe("SetMergeEmpty", function()
		it("should set mergeEmpty", function()
			local state = SelectTool(nil, SetMergeEmpty(true))

			expect(state).to.be.ok()
			expect(state.mergeEmpty).to.be.ok()
			expect(state.mergeEmpty).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(SelectTool, SetMergeEmpty(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end