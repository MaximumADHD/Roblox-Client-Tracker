local FFlagTerrainToolsUseMapSettingsWithPreview = game:GetFastFlag("TerrainToolsUseMapSettingsWithPreview")

local Plugin = script.Parent.Parent.Parent

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local Biome = TerrainEnums.Biome
local ToolId = TerrainEnums.ToolId

local TexturePath = "rbxasset://textures/TerrainTools/"

local Constants = {}

Constants.ToolIcons = {
	[ToolId.Generate] = TexturePath .. "mt_generate.png",
	[ToolId.Import] = TexturePath .. "mt_terrain_import.png",
	[ToolId.ConvertPart] = TexturePath .. "mt_convert_part.png",
	[ToolId.SeaLevel] = TexturePath .. "mt_sea_level.png",
	[ToolId.Replace] = TexturePath .. "mt_replace.png",
	[ToolId.Clear] = TexturePath .. "mt_terrain_clear.png",
	[ToolId.Select] = TexturePath .. "icon_regions_select.png",
	[ToolId.Move] = TexturePath .. "icon_regions_move.png",
	[ToolId.Resize] = TexturePath .. "icon_regions_resize.png",
	[ToolId.Rotate] = TexturePath .. "icon_regions_rotate.png",
	[ToolId.Copy] = TexturePath .. "icon_regions_copy.png",
	[ToolId.Paste] = TexturePath .. "icon_regions_paste.png",
	[ToolId.Delete] = TexturePath .. "icon_regions_delete.png",
	[ToolId.Fill] = TexturePath .. "icon_regions_fill.png",
	[ToolId.Add] = TexturePath .. "mt_add.png",
	[ToolId.Subtract] = TexturePath .. "mt_subtract.png",
	[ToolId.Grow] = TexturePath .. "mt_grow.png",
	[ToolId.Erode] = TexturePath .. "mt_erode.png",
	[ToolId.Smooth] = TexturePath .. "mt_smooth.png",
	[ToolId.Flatten] = TexturePath .. "mt_flatten.png",
	[ToolId.Paint] = TexturePath .. "mt_paint.png",
}

Constants.INITIAL_BRUSH_SIZE = 6
Constants.MIN_BRUSH_SIZE = 1
Constants.MAX_BRUSH_SIZE = 64

Constants.INITIAL_BRUSH_STRENGTH = 1

Constants.INITIAL_PLANE_POSITION_Y = 30

-- Each voxel in Roblox smooth terrain is 4x4x4
Constants.VOXEL_RESOLUTION = 4

Constants.MIN_BIOME_SIZE = 16
Constants.MAX_BIOME_SIZE = 4096
Constants.BIOME_SNAP_INCREMENT = 4

Constants.FLATTEN_PLANE_TOLERANCE = 0.05

Constants.ToolActivatesPlugin = {
	[ToolId.Select] = true,
	[ToolId.Move] = true,
	[ToolId.Resize] = true,
	[ToolId.Rotate] = true,
	[ToolId.Copy] = true,
	[ToolId.Paste] = true,
	[ToolId.Delete] = true,
	[ToolId.Fill] = true,
	[ToolId.Add] = true,
	[ToolId.Subtract] = true,
	[ToolId.Grow] = true,
	[ToolId.Erode] = true,
	[ToolId.Smooth] = true,
	[ToolId.Flatten] = true,
	[ToolId.Paint] = true,
	[ToolId.SeaLevel] = true,
	[ToolId.Generate] = FFlagTerrainToolsUseMapSettingsWithPreview,
	[ToolId.Import] = FFlagTerrainToolsUseMapSettingsWithPreview,
	[ToolId.Replace] = true,
}

Constants.BiomeToLocalizationKey = {
	[Biome.Water] = "BiomeWater",
	[Biome.Marsh] = "BiomeMarsh",
	[Biome.Plains] = "BiomePlains",
	[Biome.Hills] = "BiomeHills",
	[Biome.Dunes] = "BiomeDunes",
	[Biome.Canyons] = "BiomeCanyons",
	[Biome.Mountains] = "BiomeMountains",
	[Biome.Lavascape] = "BiomeLavascape",
	[Biome.Arctic] = "BiomeArctic",
}

Constants.FIRST_COLUMN_WIDTH = 90
Constants.SIDE_PADDING = 20
Constants.SECOND_COLUMN_START = Constants.SIDE_PADDING + Constants.FIRST_COLUMN_WIDTH

return Constants
