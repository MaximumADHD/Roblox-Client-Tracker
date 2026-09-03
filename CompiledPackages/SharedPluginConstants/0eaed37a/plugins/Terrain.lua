local TERRAIN = {
	CPC_ID = "TerrainPalette",
	MATERIAL_PICKER_CPC_ID = "TerrainMaterialPicker",
	CPC_EVENTS = {
		CATALOG_CHANGED = "TerrainMaterialCatalogChanged",
		MATERIAL_PICKER_RESPONSE = "TerrainMaterialPickerResponse",
	},
	CPC_CALLBACKS = {
		OPEN_MATERIAL_PICKER = "OpenTerrainMaterialPicker",
	},
	MATERIAL_PICKER_ACTION_URI = {
		DataModel = "Standalone",
		PluginId = "MaterialPicker",
		Category = "Actions",
		ItemId = "MaterialPickerDropdown",
	},
}

return TERRAIN
