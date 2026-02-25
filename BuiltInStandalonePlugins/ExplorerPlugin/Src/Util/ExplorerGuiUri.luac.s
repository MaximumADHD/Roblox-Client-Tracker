MAIN:
        0 PREPVARARGS                      0
        1 DUPTABLE                         R0 K5 [{"DataModel", "PluginType", "PluginId", "Category", "ItemId"}]
        2 LOADK                            R1 K6 ["Standalone"]
        3 SETTABLEKS                       R1 R0 K0 ["DataModel"]
        5 LOADK                            R1 K6 ["Standalone"]
        6 SETTABLEKS                       R1 R0 K1 ["PluginType"]
        8 LOADK                            R1 K7 ["Explorer"]
        9 SETTABLEKS                       R1 R0 K2 ["PluginId"]
       11 LOADK                            R1 K8 ["Widgets"]
       12 SETTABLEKS                       R1 R0 K3 ["Category"]
       14 LOADK                            R1 K9 ["ExplorerGui"]
       15 SETTABLEKS                       R1 R0 K4 ["ItemId"]
       17 RETURN                           R0 1
