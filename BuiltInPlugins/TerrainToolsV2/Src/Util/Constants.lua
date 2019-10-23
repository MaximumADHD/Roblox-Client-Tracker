--[[
	Provides a look up table for tool icons.
]]

local TexturePath = "rbxasset://textures/TerrainTools/"

local Constants = {
	Generate = TexturePath .. "mt_generate.png",
	Import = TexturePath .. "mt_terrain_import.png",
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



return Constants