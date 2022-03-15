local Plugin = script.Parent.Parent.Parent
local Rodux = require(Plugin.Packages.Rodux)

local MaterialPromptReducer = require(script.Parent.MaterialPromptReducer)

local Framework = require(Plugin.Packages.Framework)

local TestHelpers = Framework.TestHelpers
local testImmutability = TestHelpers.testImmutability

local Actions = Plugin.Src.Actions
local SetName = require(Actions.SetName)
local SetBaseMaterial = require(Actions.SetBaseMaterial)
local SetColorMap = require(Actions.SetColorMap)
local SetNormalMap = require(Actions.SetNormalMap)
local SetMetalnessMap = require(Actions.SetMetalnessMap)
local SetRoughnessMap = require(Actions.SetRoughnessMap)
local ClearMaterialVariant = require(Actions.ClearMaterialVariant)

local defaultMaterialVariant = {
	name = "Default Material Variant",
	baseMaterial = Enum.Material.Plastic,
	colorMap = "rbxassetid://8706345277",
	metalnessMap = "rbxassetid://8207243574",
	normalMap = "rbxassetid://8706416568",
	roughnessMap = "rbxassetid://8706417425",
}

return function()
	it("should return its expected default state", function()
		local r = Rodux.Store.new(MaterialPromptReducer, nil, nil, nil)
		expect(r:getState()).to.be.ok()
		expect(r:getState().DefaultStateObject).to.equal("")
	end)

	describe("SetName", function()
		it("should set the name for Material Variant", function()
			local state = MaterialPromptReducer(nil, SetName(defaultMaterialVariant.name))

			expect(state).to.be.ok()
			expect(state.name).to.be.ok()
			expect(state.name).to.equal(defaultMaterialVariant.name)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialPromptReducer, SetName(defaultMaterialVariant.name))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetBaseMaterial", function()
		it("should set the baseMaterial for Material Variant", function()
			local state = MaterialPromptReducer(nil, SetBaseMaterial(defaultMaterialVariant.baseMaterial))

			expect(state).to.be.ok()
			expect(state.baseMaterial).to.be.ok()
			expect(state.baseMaterial).to.equal(defaultMaterialVariant.baseMaterial)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialPromptReducer, SetBaseMaterial(defaultMaterialVariant.baseMaterial))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetColorMap", function()
		it("should set the color map for Material Variant", function()
			local state = MaterialPromptReducer(nil, SetColorMap(defaultMaterialVariant.colorMap))

			expect(state).to.be.ok()
			expect(state.colorMap).to.be.ok()
			expect(state.colorMap).to.equal(defaultMaterialVariant.colorMap)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialPromptReducer, SetColorMap(defaultMaterialVariant.colorMap))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetNormalMap", function()
		it("should set the normal map for Material Variant", function()
			local state = MaterialPromptReducer(nil, SetNormalMap(defaultMaterialVariant.normalMap))

			expect(state).to.be.ok()
			expect(state.normalMap).to.be.ok()
			expect(state.normalMap).to.equal(defaultMaterialVariant.normalMap)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialPromptReducer, SetNormalMap(defaultMaterialVariant.normalMap))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetMetalnessMap", function()
		it("should set the metalness map for Material Variant", function()
			local state = MaterialPromptReducer(nil, SetMetalnessMap(defaultMaterialVariant.metalnessMap))

			expect(state).to.be.ok()
			expect(state.metalnessMap).to.be.ok()
			expect(state.metalnessMap).to.equal(defaultMaterialVariant.metalnessMap)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialPromptReducer, SetMetalnessMap(defaultMaterialVariant.metalnessMap))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("SetRoughnessMap", function()
		it("should set the roughness map for Material Variant", function()
			local state = MaterialPromptReducer(nil, SetRoughnessMap(defaultMaterialVariant.roughnessMap))

			expect(state).to.be.ok()
			expect(state.roughnessMap).to.be.ok()
			expect(state.roughnessMap).to.equal(defaultMaterialVariant.roughnessMap)
		end)

		it("should preserve immutability", function()
			local immutabilityPreserved = testImmutability(MaterialPromptReducer, SetRoughnessMap(defaultMaterialVariant.roughnessMap))
			expect(immutabilityPreserved).to.equal(true)
		end)
	end)

	describe("ClearMaterialVariant", function()
		it("should set the normal map for Material Variant", function()
			local state = MaterialPromptReducer(nil, ClearMaterialVariant())

			expect(state.name).to.equal(nil)
			expect(state.baseMaterial).to.equal(nil)
			expect(state.colorMap).to.equal(nil)
			expect(state.normalMap).to.equal(nil)
			expect(state.metalnessMap).to.equal(nil)
			expect(state.roughnessMap).to.equal(nil)
		end)
	end)
end
