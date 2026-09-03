MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K7 [{[1] = "TerrainPalette", ["MATERIAL_PICKER_CPC_ID"] = "TerrainMaterialPicker", ["CPC_EVENTS"], ["CPC_CALLBACKS"], ["MATERIAL_PICKER_ACTION_URI"]}]
        2 DUPTABLE                         R1 K12 [{["CATALOG_CHANGED"] = "TerrainMaterialCatalogChanged", ["MATERIAL_PICKER_RESPONSE"] = "TerrainMaterialPickerResponse"}]
        3 SETTABLEKS                       R1 R0 K4 ["CPC_EVENTS"]
        5 DUPTABLE                         R1 K15 [{["OPEN_MATERIAL_PICKER"] = "OpenTerrainMaterialPicker"}]
        6 SETTABLEKS                       R1 R0 K5 ["CPC_CALLBACKS"]
        8 DUPTABLE                         R1 K24 [{["DataModel"] = "Standalone", ["PluginId"] = "MaterialPicker", ["Category"] = "Actions", ["ItemId"] = "MaterialPickerDropdown"}]
        9 SETTABLEKS                       R1 R0 K6 ["MATERIAL_PICKER_ACTION_URI"]
       11 RETURN                           R0 1
