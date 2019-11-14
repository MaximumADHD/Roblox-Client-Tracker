local Plugin = script.Parent.Parent.Parent

local TerrainEnums = require(Plugin.Src.Util.TerrainEnums)
local ToolId = TerrainEnums.ToolId

local FFlagTerrainToolsRefactorTabsAndTools = game:GetFastFlag("TerrainToolsRefactorTabsAndTools")

local TexturePath = "rbxasset://textures/TerrainTools/"

local Constants = {}

if FFlagTerrainToolsRefactorTabsAndTools then
	Constants.ToolIcons = {
		[ToolId.Generate] = TexturePath .. "mt_generate.png",
		[ToolId.Import] = TexturePath .. "mt_terrain_import.png",
		[ToolId.SeaLevel] = TexturePath .. "mt_sea_level.png",
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
else
	Constants = {
		Generate = TexturePath .. "mt_generate.png",
		Import = TexturePath .. "mt_terrain_import.png",
		SeaLevel = TexturePath .. "mt_sea_level.png",
		Clear = TexturePath .. "mt_terrain_clear.png",
		Select = TexturePath .. "icon_regions_select.png",
		Move = TexturePath .. "icon_regions_move.png",
		Resize = TexturePath .. "icon_regions_resize.png",
		Rotate = TexturePath .. "icon_regions_rotate.png",
		Copy = TexturePath .. "icon_regions_copy.png",
		Paste = TexturePath .. "icon_regions_paste.png",
		Delete = TexturePath .. "icon_regions_delete.png",
		Fill = TexturePath .. "icon_regions_fill.png",
		Add = TexturePath .. "mt_add.png",
		Subtract = TexturePath .. "mt_subtract.png",
		Grow = TexturePath .. "mt_grow.png",
		Erode = TexturePath .. "mt_erode.png",
		Smooth = TexturePath .. "mt_smooth.png",
		Flatten = TexturePath .. "mt_flatten.png",
		Paint = TexturePath .. "mt_paint.png",

		PivotType = {
			Top = "Top",
			Center = "Cen",
			Bottom = "Bot",
		},

		FlattenMode = {
			Erode = "Erode",
			Both = "Both",
			Grow = "Grow",
		},

		ToolId = {
			Generate = "Generate",
			Import = "Import",
			SeaLevel = "SeaLevel",
			Clear = "Clear",

			Select = "Select",
			Move = "Move",
			Resize = "Resize",
			Rotate = "Rotate",
			Copy = "Copy",
			Paste = "Paste",
			Delete = "Delete",
			Fill = "Fill",

			Add = "Add",
			Subtract = "Subtract",

			Grow = "Grow",
			Erode = "Erode",
			Smooth = "Smooth",
			Flatten = "Flatten",

			Paint = "Paint",
		}
	}
end

Constants.INITIAL_BRUSH_SIZE = 6
Constants.MIN_BRUSH_SIZE = 1
Constants.MAX_BRUSH_SIZE = 32

Constants.INITIAL_BRUSH_STRENGTH = 1

Constants.INITIAL_PLANE_POSITION_Y = 30

-- Each voxel in Roblox smooth terrain is 4x4x4
Constants.VOXEL_RESOLUTION = 4

return Constants
