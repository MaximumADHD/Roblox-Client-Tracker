local Plugin = script.Parent.Parent.Parent

local getCategories = require(Plugin.Src.Util.getCategories)

local localization = {}
function localization:getText(Path: string, Item: string)
	return Item
end

return function()
	it("Check if categories properly parsed", function()
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

		local recursedCategories = getCategories(categories, localization)

		expect(#recursedCategories).to.equal(2)

		local metal = recursedCategories[1]
		expect(metal.text).to.equal("Metal")
		expect(metal.path[1]).to.equal("Metal")
		expect(metal.children).to.equal(nil)

		local plastic = recursedCategories[2]
		expect(plastic.text).to.equal("Plastic")
		expect(plastic.path[1]).to.equal("Plastic")
		expect(plastic.children).to.equal(nil)
	end)

	it("Check nest categories", function()
		local categories = {
			Builtin = true,
			Categories = {
				Synthetic = {
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
							}
						}
					},
					CategoryNames = {
						"Plastic"
					},
					Materials = {},
				}
			},
			CategoryNames = {
				"Synthetic"
			},
			Materials = {},
		}

		local recursedCategories = getCategories(categories, localization)

		expect(#recursedCategories).to.equal(1)

		local synthetic = recursedCategories[1]
		expect(synthetic.text).to.equal("Synthetic")
		expect(synthetic.path[1]).to.equal("Synthetic")
		expect(#synthetic.children).to.equal(1)

		local plastic = synthetic.children[1]
		expect(plastic.text).to.equal("Plastic")
		expect(plastic.path[1]).to.equal("Synthetic")
		expect(plastic.path[2]).to.equal("Plastic")
		expect(plastic.children).to.equal(nil)
	end)
end
