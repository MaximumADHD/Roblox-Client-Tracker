local Plugin = script.Parent.Parent.Parent

local getMaterials = require(Plugin.Src.Util.getMaterials)

return function()
	local categories = {
		Builtin = true,
		Categories = {
			Plastic = {
				Builtin = true,
				Categories = {},
				CategoryNames = {},
				Materials = {
					{
						Material = Enum.Material.Plastic,
						MaterialPath = { "Materials", "Plastic" },
						MaterialType = "Part",
					},
					{
						Material = Enum.Material.SmoothPlastic,
						MaterialPath = { "Materials", "Plastic" },
						MaterialType = "Part",
					},
				},
			},
			Metal = {
				Builtin = true,
				Categories = {},
				CategoryNames = {},
				Materials = {
					{
						Material = Enum.Material.Foil,
						MaterialPath = { "Materials", "Metal" },
						MaterialType = "Part",
					},
					{
						Material = Enum.Material.CorrodedMetal,
						MaterialPath = { "Materials", "Metal" },
						MaterialType = "Part",
					},
					{
						Material = Enum.Material.DiamondPlate,
						MaterialPath = { "Materials", "Metal" },
						MaterialType = "Part",
					},
					{
						Material = Enum.Material.Metal,
						MaterialPath = { "Materials", "Metal" },
						MaterialType = "Part",
					},
				},
			},
		},
		CategoryNames = {
			"Metal",
			"Plastic",
		},
		Materials = {},
	}

	it("Check if getting all materials works", function()
		local materials = getMaterials(categories, {})
		expect(#materials).to.equal(6)
		expect(materials[1].Material).to.equal(Enum.Material.CorrodedMetal)
		expect(materials[2].Material).to.equal(Enum.Material.DiamondPlate)
		expect(materials[3].Material).to.equal(Enum.Material.Foil)
		expect(materials[4].Material).to.equal(Enum.Material.Metal)
		expect(materials[5].Material).to.equal(Enum.Material.Plastic)
		expect(materials[6].Material).to.equal(Enum.Material.SmoothPlastic)
	end)

	it("Check if getting all materials in materials works", function()
		local materials = getMaterials(categories, { "Materials" })
		expect(#materials).to.equal(6)
		expect(materials[1].Material).to.equal(Enum.Material.CorrodedMetal)
		expect(materials[2].Material).to.equal(Enum.Material.DiamondPlate)
		expect(materials[3].Material).to.equal(Enum.Material.Foil)
		expect(materials[4].Material).to.equal(Enum.Material.Metal)
		expect(materials[5].Material).to.equal(Enum.Material.Plastic)
		expect(materials[6].Material).to.equal(Enum.Material.SmoothPlastic)
	end)

	it("Check if getting all materials in materials/plastic works", function()
		local materials = getMaterials(categories, { "Materials", "Plastic" })
		expect(#materials).to.equal(2)
		expect(materials[1].Material).to.equal(Enum.Material.Plastic)
		expect(materials[2].Material).to.equal(Enum.Material.SmoothPlastic)
	end)

	it("Check if getting all materials in materials/metal works", function()
		local materials = getMaterials(categories, { "Materials", "Metal" })
		expect(#materials).to.equal(4)
		expect(materials[1].Material).to.equal(Enum.Material.CorrodedMetal)
		expect(materials[2].Material).to.equal(Enum.Material.DiamondPlate)
		expect(materials[3].Material).to.equal(Enum.Material.Foil)
		expect(materials[4].Material).to.equal(Enum.Material.Metal)
	end)

	it("Check if search works", function()
		local materials = getMaterials(categories, {}, "Metal")
		expect(#materials).to.equal(2)
		expect(materials[1].Material).to.equal(Enum.Material.CorrodedMetal)
		expect(materials[2].Material).to.equal(Enum.Material.Metal)
	end)

	it("Check if search works with paths", function()
		local materials = getMaterials(categories, { "Materials", "Metal" }, "Metal")
		expect(#materials).to.equal(2)
		expect(materials[1].Material).to.equal(Enum.Material.CorrodedMetal)
		expect(materials[2].Material).to.equal(Enum.Material.Metal)
	end)

	it("Check if search works with separate paths", function()
		local materials = getMaterials(categories, { "Materials", "Plastic" }, "Metal")
		expect(#materials).to.equal(0)
	end)
end
