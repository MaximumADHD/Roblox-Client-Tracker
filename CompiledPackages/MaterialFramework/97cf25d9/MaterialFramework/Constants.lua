-- Base materials with metalness, per
-- https://create.roblox.com/docs/parts/materials#asset-id--property-reference
-- Metallic base materials need something to reflect, so a preview enables a sky box
-- for them.
local BASE_MATERIALS_WITH_METALNESS = table.freeze({
	[Enum.Material.CorrodedMetal] = true,
	[Enum.Material.DiamondPlate] = true,
	[Enum.Material.Foil] = true,
	[Enum.Material.Metal] = true,
})

-- Default preview tint when the spec omits a color: white shows the material's own look.
--selene: allow(roblox_internal_custom_color)
local DEFAULT_COLOR = Color3.new(1, 1, 1)

return table.freeze({
	BASE_MATERIALS_WITH_METALNESS = BASE_MATERIALS_WITH_METALNESS,
	DEFAULT_COLOR = DEFAULT_COLOR,
})
