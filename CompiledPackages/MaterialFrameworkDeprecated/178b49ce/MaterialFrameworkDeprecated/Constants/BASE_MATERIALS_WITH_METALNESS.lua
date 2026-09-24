-- A set of base materials with metalness according to the documentation here: https://create.roblox.com/docs/parts/materials#asset-id--property-reference

local BASE_MATERIALS_WITH_METALNESS = {
	[Enum.Material.CorrodedMetal] = true,
	[Enum.Material.DiamondPlate] = true,
	[Enum.Material.Foil] = true,
	[Enum.Material.Metal] = true,
}

return table.freeze(BASE_MATERIALS_WITH_METALNESS)
