local Plugin = script.Parent.Parent.Parent

local Framework = require(Plugin.Packages.Framework)
local Rodux = require(Plugin.Packages.Rodux)

local testImmutability = Framework.TestHelpers.testImmutability

local FillTool = require(script.Parent.FillTool)

local Actions = Plugin.Src.Actions
local SetMergeEmpty = require(Actions.SetMergeEmpty)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(FillTool)
		expect(r:getState()).to.be.ok()
		expect(r:getState().mergeEmpty).to.equal(false)
		expect(r:getState().material).to.equal(Enum.Material.Grass)
	end)

	describe("SetMergeEmpty", function()
		it("should set mergeEmpty", function()
			local state = FillTool(nil, SetMergeEmpty(true))

			expect(state).to.be.ok()
			expect(state.mergeEmpty).to.be.ok()
			expect(state.mergeEmpty).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FillTool, SetMergeEmpty(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMergeEmpty", function()
		it("should set the current mergeEmpty", function()
			local state = FillTool(nil, SetMergeEmpty(true))

			expect(state).to.be.ok()
			expect(state.mergeEmpty).to.be.ok()
			expect(state.mergeEmpty).to.equal(true)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(FillTool, SetMergeEmpty(true))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
