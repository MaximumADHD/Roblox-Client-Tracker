local Plugin = script.Parent.Parent.Parent

local CompareMaterials = require(Plugin.Src.Util.CompareMaterials)

return function()
	local materialVariantPlastic = {
		Material = Enum.Material.Plastic,
		MaterialPath = { "Materials", "Plastic" },
		MaterialType = "Part",
	}

	local materialVariantPlastic2 = {
		Material = Enum.Material.Plastic,
		MaterialPath = { "Materials", "Plastic" },
		MaterialType = "Part",
	}

	local materialVariantPlastic3 = {
		Material = Enum.Material.Plastic,
		MaterialPath = { "Materials", "Plastic" },
		MaterialType = "Part",
	}

	local materialVariantBrick = {
		Material = Enum.Material.Brick,
		MaterialPath = { "Materials", "Brick" },
		MaterialType = "Base",
	}

	local materialPlastic = {
		Material = Enum.Material.Plastic,
		MaterialPath = { "Materials", "Plastic" },
		MaterialType = "Part",
	}

	local materialBrick = {
		Material = Enum.Material.Brick,
		MaterialPath = { "Materials", "Brick" },
		MaterialType = "Base",
	}

	beforeEach(function()
		local plasticMV = Instance.new("MaterialVariant")
		local plasticMV2 = Instance.new("MaterialVariant")
		local brickMV = Instance.new("MaterialVariant")
		brickMV.BaseMaterial = Enum.Material.Brick

		materialVariantPlastic.MaterialVariant = plasticMV
		materialVariantPlastic2.MaterialVariant = plasticMV -- Different material item, same variant
		materialVariantPlastic3.MaterialVariant = plasticMV2
		materialVariantBrick.MaterialVariant = brickMV
	end)

	afterEach(function()
		materialVariantPlastic.MaterialVariant:Destroy()
		materialVariantPlastic2.MaterialVariant:Destroy()
		materialVariantPlastic3.MaterialVariant:Destroy()
		materialVariantBrick.MaterialVariant:Destroy()

		materialVariantPlastic.MaterialVariant = nil
		materialVariantPlastic2.MaterialVariant = nil
		materialVariantPlastic3.MaterialVariant = nil
		materialVariantBrick.MaterialVariant = nil
	end)

	it("Compare equal material items", function()
		expect(CompareMaterials(materialVariantPlastic, materialVariantPlastic)).to.equal(true)
	end)

	it("Compare equal material variants", function()
		expect(CompareMaterials(materialVariantPlastic, materialVariantPlastic2)).to.equal(true)
	end)

	it("Compare different material variants", function()
		expect(CompareMaterials(materialVariantPlastic, materialVariantPlastic3)).to.equal(false)
	end)

	it("Compare different material material variants", function()
		expect(CompareMaterials(materialVariantPlastic, materialVariantBrick)).to.equal(false)
	end)

	it("Compare material variant and material", function()
		expect(CompareMaterials(materialVariantPlastic, materialPlastic)).to.equal(false)
	end)

	it("Compare same material", function()
		expect(CompareMaterials(materialPlastic, materialPlastic)).to.equal(true)
	end)

	it("Compare different materials", function()
		expect(CompareMaterials(materialPlastic, materialBrick)).to.equal(false)
	end)

	it("Compare equal material variants reverse order", function()
		expect(CompareMaterials(materialVariantPlastic2, materialVariantPlastic)).to.equal(true)
	end)

	it("Compare different material variants reverse order", function()
		expect(CompareMaterials(materialVariantPlastic3, materialVariantPlastic)).to.equal(false)
	end)

	it("Compare different material material variants reverse order", function()
		expect(CompareMaterials(materialVariantBrick, materialVariantPlastic)).to.equal(false)
	end)

	it("Compare material variant and material reverse order", function()
		expect(CompareMaterials(materialPlastic, materialVariantPlastic)).to.equal(false)
	end)

	it("Compare different materials reverse order", function()
		expect(CompareMaterials(materialBrick, materialPlastic)).to.equal(false)
	end)
end
