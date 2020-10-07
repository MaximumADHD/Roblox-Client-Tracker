--[[
Collection of enums used inside the Terrain Tools plugin

Many of these are also used as a key in the LocalizationTable, so take care if you're changing any of the values
e.g. ToolId.Add = "Add" is used to lookup Studio.TerrainToolsV2.ToolName.Add to retrieve the localized string
]]

local TerrainEnums = {}

TerrainEnums.ToolId = {
	Generate = "Generate",

	Import = "Import",
	ImportLocal = "ImportLocal",

	SeaLevel = "SeaLevel",
	Replace = "Replace",
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

	ConvertPart = "ConvertPart",

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

TerrainEnums.Biome = {
	Water = "Water",
	Plains = "Plains",
	Dunes = "Dunes",
	Mountains = "Mountains",
	Arctic = "Arctic",
	Marsh = "Marsh",
	Hills = "Hills",
	Canyons = "Canyons",
	Lavascape = "Lavascape",
}

TerrainEnums.ConvertMode = {
	Biome = "Biome",
	Material = "Material",
}

TerrainEnums.Shape = {
	Block = "Block",

	-- Cylinder has its height along the up vector of a CFrame
	-- CylinderRotate has its height along the right vector of a CFrame
	-- Both types are used in the engine, so we need to be able to handle both for part conversion
	-- Here we treat them as separate shapes entirely
	Cylinder = "Cylinder",
	CylinderRotate = "CylinderRotate",

	Ball = "Ball",
	Wedge = "Wedge",
}

-- Maps to keys in the localization table under the Warning group
TerrainEnums.ConvertPartError = {
	RegionTooLarge = "RegionTooLarge",
	UnknownShape = "UnknownShape",
	InvalidSize = "InvalidSize",
}

TerrainEnums.ConvertPartWarning = {
	HasProtected = "HasProtected",
	HasTooSmall = "HasTooSmall",
	HasOtherInstance = "HasOtherInstance",
}

TerrainEnums.ReplaceMode = {
	Box = "Box",
	Brush = "Brush",
}

return TerrainEnums
