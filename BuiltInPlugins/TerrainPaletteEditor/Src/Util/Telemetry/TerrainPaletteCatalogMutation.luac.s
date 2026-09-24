MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPaletteEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Analytics"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K17 [{["eventName"] = "TerrainPaletteEditor_CatalogMutation", ["backends"], ["throttlingPercentage"] = 10000, ["lastUpdated"] = "2026-09-08", ["description"] = "Records the result when a creator creates, duplicates, updates, or deletes a material in the Terrain Palette Editor."}]
       15 NEWTABLE                         R3 0 1
       17 LOADK                            R4 K18 ["EventIngest"]
       18 SETLIST                          R3 R4 1 [1]
       20 SETTABLEKS                       R3 R2 K10 ["backends"]
       22 GETIMPORT                        R3 K21 [table.freeze]
       24 MOVE                             R4 R2
       25 CALL                             R3 1 -1
       26 RETURN                           R3 -1
