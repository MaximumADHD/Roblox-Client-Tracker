MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K4 [{"DataModel", "PluginId", "Category", "ItemId"}]
        2 LOADK                            R1 K5 ["Standalone"]
        3 SETTABLEKS                       R1 R0 K0 ["DataModel"]
        5 LOADK                            R1 K6 ["AssetImport"]
        6 SETTABLEKS                       R1 R0 K1 ["PluginId"]
        8 LOADK                            R1 K7 ["Actions"]
        9 SETTABLEKS                       R1 R0 K2 ["Category"]
       11 LOADK                            R1 K8 ["QuickImporter"]
       12 SETTABLEKS                       R1 R0 K3 ["ItemId"]
       14 RETURN                           R0 1
