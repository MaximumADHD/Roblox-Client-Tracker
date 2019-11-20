--[[
Collection of enums used inside the Terrain Tools plugin

Many of these are also used as a key in the LocalizationTable, so take care if you're changing any of the values
e.g. ToolId.Add = "Add" is used to lookup Studio.TerrainToolsV2.ToolName.Add to retrieve the localized string
]]

local TerrainEnums = {}

TerrainEnums.ToolId = {
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

	None = "None",
}

-- TODO: Remove Build, Sculpt and Paint tabs when cleaning up
-- They have been replaced by Edit
-- Also remove them from the localization CSVs
TerrainEnums.TabId = {
	Create = "Create",
	Build = "Build",
	Region = "Region",
	Sculpt = "Sculpt",
	Paint = "Paint",
	Edit = "Edit",
}

TerrainEnums.PivotType = {
	Top = "Top",
	Center = "Cen",
	Bottom = "Bot",
}

TerrainEnums.FlattenMode = {
	Erode = "Erode",
	Both = "Both",
	Grow = "Grow",
}

TerrainEnums.BrushShape = {
	Sphere = "Sphere",
	Cube = "Cube",
	Cylinder = "Cylinder",
}

return TerrainEnums
