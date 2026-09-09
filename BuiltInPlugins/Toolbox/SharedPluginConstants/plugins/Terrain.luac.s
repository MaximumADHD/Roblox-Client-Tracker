MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K9 [{[1] = "TerrainPalette", ["EDITOR_CPC_ID"] = "TerrainPaletteEditor", ["MATERIAL_PICKER_CPC_ID"] = "TerrainMaterialPicker", ["CPC_EVENTS"], ["CPC_CALLBACKS"], ["MATERIAL_PICKER_ACTION_URI"]}]
        2 DUPTABLE                         R1 K16 [{["CATALOG_CHANGED"] = "TerrainMaterialCatalogChanged", ["MATERIAL_PICKER_RESPONSE"] = "TerrainMaterialPickerResponse", ["TERRAIN_PALETTE_EDITOR_READY"] = "TerrainPaletteEditorReady"}]
        3 SETTABLEKS                       R1 R0 K6 ["CPC_EVENTS"]
        5 DUPTABLE                         R1 K21 [{["OPEN_MATERIAL_PICKER"] = "OpenTerrainMaterialPicker", ["SELECT_SLOT"] = "SelectTerrainMaterialSlot"}]
        6 SETTABLEKS                       R1 R0 K7 ["CPC_CALLBACKS"]
        8 DUPTABLE                         R1 K30 [{["DataModel"] = "Standalone", ["PluginId"] = "MaterialPicker", ["Category"] = "Actions", ["ItemId"] = "MaterialPickerDropdown"}]
        9 SETTABLEKS                       R1 R0 K8 ["MATERIAL_PICKER_ACTION_URI"]
       11 RETURN                           R0 1
