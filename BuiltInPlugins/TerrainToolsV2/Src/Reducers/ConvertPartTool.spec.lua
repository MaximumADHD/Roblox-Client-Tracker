local Plugin = script.Parent.Parent.Parent
local TestHelpers = Plugin.Src.TestHelpers
local Packages = Plugin.Packages

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ConvertMode = TerrainEnums.ConvertMode

local ConvertPartTool = require(script.Parent.ConvertPartTool)
local testImmutability = require(TestHelpers.testImmutability)
local Rodux = require(Packages.Rodux)

local Actions = Plugin.Src.Actions
local SetConvertMode = require(Actions.SetConvertMode)
local SetMaterial = require(Actions.SetMaterial)

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(ConvertPartTool)
		expect(r:getState()).to.be.ok()
		expect(r:getState().convertMode).to.equal(ConvertMode.Biome)
		expect(r:getState().material).to.equal(Enum.Material.Grass)
	end)

	describe("SetConvertMode", function()
		it("should set the current convertMode", function()
			local state = ConvertPartTool(nil, SetConvertMode("hello world"))

			expect(state).to.be.ok()
			expect(state.convertMode).to.be.ok()
			expect(state.convertMode).to.equal("hello world")
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ConvertPartTool, SetConvertMode("foo"))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMaterial", function()
		it("should set the current material", function()
			local state = ConvertPartTool(nil, SetMaterial(Enum.Material.Slate))
			expect(state).to.be.ok()
			expect(state.material).to.be.ok()
			expect(state.material).to.equal(Enum.Material.Slate)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(ConvertPartTool, SetMaterial(Enum.Material.Slate))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)
end
