PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R2 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R2 K6 ["Types"]
       17 CALL                             R1 1 1
       18 DUPTABLE                         R2 K14 [{["GeneralSettings"] = "GeneralSettings", ["TextureSettings"] = "TextureSettings", ["OverrideSettings"] = "OverrideSettings", ["TilingSettings"] = "TilingSettings", ["PhysicalSettings"] = "PhysicalSettings", ["TerrainDetailsSettings"] = "TerrainDetailsSettings", ["TerrainDetailsEditor"]}]
       19 DUPTABLE                         R3 K21 [{["Top"] = "TerrainDetailsTop", ["Side"] = "TerrainDetailsSide", ["Bottom"] = "TerrainDetailsBottom"}]
       20 SETTABLEKS                       R3 R2 K13 ["TerrainDetailsEditor"]
       22 DUPCLOSURE                       R3 K22 [PROTO_0]
       23 CAPTURE                          VAL R2
       24 RETURN                           R3 1
