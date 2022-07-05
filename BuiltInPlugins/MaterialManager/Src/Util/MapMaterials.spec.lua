local Plugin = script.Parent.Parent.Parent

local MapMaterials = require(Plugin.Src.Util.MapMaterials)

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
					}
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
				}
			},
		},
		CategoryNames = {
			"Metal",
			"Plastic",
		},
		Materials = {}
	}

	it("Check if default works", function()
		local materials = {}
		MapMaterials(categories, materials)

		expect(#materials).to.equal(6)
		expect(materials[1].Material).to.equal(Enum.Material.Foil)
		expect(materials[2].Material).to.equal(Enum.Material.CorrodedMetal)
		expect(materials[3].Material).to.equal(Enum.Material.DiamondPlate)
		expect(materials[4].Material).to.equal(Enum.Material.Metal)
		expect(materials[5].Material).to.equal(Enum.Material.Plastic)
		expect(materials[6].Material).to.equal(Enum.Material.SmoothPlastic)
	end)

	it("Check if mapping works", function()
		local materials = {}
		MapMaterials(categories, materials, function(material)
			return material.Material
		end)

		expect(#materials).to.equal(6)
		expect(materials[1]).to.equal(Enum.Material.Foil)
		expect(materials[2]).to.equal(Enum.Material.CorrodedMetal)
		expect(materials[3]).to.equal(Enum.Material.DiamondPlate)
		expect(materials[4]).to.equal(Enum.Material.Metal)
		expect(materials[5]).to.equal(Enum.Material.Plastic)
		expect(materials[6]).to.equal(Enum.Material.SmoothPlastic)
	end)
end
