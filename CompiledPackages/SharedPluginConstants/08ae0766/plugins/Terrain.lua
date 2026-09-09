local TERRAIN = {
	CPC_ID = "TerrainPalette",
	EDITOR_CPC_ID = "TerrainPaletteEditor",
	MATERIAL_PICKER_CPC_ID = "TerrainMaterialPicker",
	CPC_EVENTS = {
		CATALOG_CHANGED = "TerrainMaterialCatalogChanged",
		MATERIAL_PICKER_RESPONSE = "TerrainMaterialPickerResponse",
		TERRAIN_PALETTE_EDITOR_READY = "TerrainPaletteEditorReady",
	},
	CPC_CALLBACKS = {
		OPEN_MATERIAL_PICKER = "OpenTerrainMaterialPicker",
		SELECT_SLOT = "SelectTerrainMaterialSlot",
	},
	MATERIAL_PICKER_ACTION_URI = {
		DataModel = "Standalone",
		PluginId = "MaterialPicker",
		Category = "Actions",
		ItemId = "MaterialPickerDropdown",
	},
}

return TERRAIN
