local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ConvertMode = TerrainEnums.ConvertMode

local ConvertPart = require(script.Parent.ConvertPart)
local testImmutability = require(TestHelpers.testImmutability)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Src.Actions
local SetConvertMode = require(Actions.SetConvertMode)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(ConvertPart)
		expect(r:getState()).to.be.ok()
		expect(r:getState().convertMode).to.equal(ConvertMode.Biome)
	end)

	describe("SetConvertMode", function()
		it("should set the current convertMode", function()
			local state = ConvertPart(nil, SetConvertMode("hello world"))

			expect(state).to.be.ok()
			expect(state.convertMode).to.be.ok()
			expect(state.convertMode).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ConvertPart, SetConvertMode("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
