local Plugin = script.Parent.Parent.Parent

local getOverrides = require(Plugin.Src.Util.getOverrides)

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

	it("Check if getting overrides works", function()
		local overrides, overrideIndex = getOverrides("", categories, Enum.Material.Plastic)

		expect(#overrides).to.equal(2)
		expect(overrides[1]).to.equal("None")
		expect(overrides[2]).to.equal("Plastic")

		expect(overrideIndex).to.equal(1)
	end)

	it("Check if getting overrides works with proper index", function()
		local overrides, overrideIndex = getOverrides("Plastic", categories, Enum.Material.Plastic)

		expect(#overrides).to.equal(2)
		expect(overrides[1]).to.equal("None")
		expect(overrides[2]).to.equal("Plastic")
		expect(overrideIndex).to.equal(2)
	end)

	it("Check if getting overrides works with unfound index", function()
		local overrides, overrideIndex = getOverrides("ExtraPlastic", categories, Enum.Material.Plastic)
		expect(#overrides).to.equal(2)
		expect(overrides[1]).to.equal("None")
		expect(overrides[2]).to.equal("Plastic")
		expect(overrideIndex).to.equal(1)
	end)

	it("Check if getting overrides works with material variant", function()
		table.insert(categories.Categories.Plastic.Materials, {
			Material = Enum.Material.Plastic,
			MaterialPath = { "Materials", "Plastic" },
			MaterialType = "Part",
			MaterialVariant = Instance.new("MaterialVariant")
		})

		local overrides, overrideIndex = getOverrides("MaterialVariant", categories, Enum.Material.Plastic)

		expect(#overrides).to.equal(3)
		expect(overrides[1]).to.equal("None")
		expect(overrides[2]).to.equal("MaterialVariant")
		expect(overrides[3]).to.equal("Plastic")
		expect(overrideIndex).to.equal(2)

		if categories.Categories.Plastic.Materials[3].MaterialVariant then
			categories.Categories.Plastic.Materials[3].MaterialVariant:Destroy()
		end
		table.remove(categories.Categories.Plastic.Materials, 3)
	end)
end
