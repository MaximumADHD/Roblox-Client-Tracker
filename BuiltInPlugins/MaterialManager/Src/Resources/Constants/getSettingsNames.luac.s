PROTO_0:
        0 GETUPVAL                         R0 0
        1 RETURN                           R0 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Src"]
       15 GETTABLEKS                       R2 R3 K6 ["Types"]
       17 CALL                             R1 1 1
       18 DUPTABLE                         R2 K14 [{"GeneralSettings", "TextureSettings", "OverrideSettings", "TilingSettings", "PhysicalSettings", "TerrainDetailsSettings", "TerrainDetailsEditor"}]
       19 LOADK                            R3 K7 ["GeneralSettings"]
       20 SETTABLEKS                       R3 R2 K7 ["GeneralSettings"]
       22 LOADK                            R3 K8 ["TextureSettings"]
       23 SETTABLEKS                       R3 R2 K8 ["TextureSettings"]
       25 LOADK                            R3 K9 ["OverrideSettings"]
       26 SETTABLEKS                       R3 R2 K9 ["OverrideSettings"]
       28 LOADK                            R3 K10 ["TilingSettings"]
       29 SETTABLEKS                       R3 R2 K10 ["TilingSettings"]
       31 LOADK                            R3 K11 ["PhysicalSettings"]
       32 SETTABLEKS                       R3 R2 K11 ["PhysicalSettings"]
       34 LOADK                            R3 K12 ["TerrainDetailsSettings"]
       35 SETTABLEKS                       R3 R2 K12 ["TerrainDetailsSettings"]
       37 DUPTABLE                         R3 K18 [{"Top", "Side", "Bottom"}]
       38 LOADK                            R4 K19 ["TerrainDetailsTop"]
       39 SETTABLEKS                       R4 R3 K15 ["Top"]
       41 LOADK                            R4 K20 ["TerrainDetailsSide"]
       42 SETTABLEKS                       R4 R3 K16 ["Side"]
       44 LOADK                            R4 K21 ["TerrainDetailsBottom"]
       45 SETTABLEKS                       R4 R3 K17 ["Bottom"]
       47 SETTABLEKS                       R3 R2 K13 ["TerrainDetailsEditor"]
       49 DUPCLOSURE                       R3 K22 [PROTO_0]
       50 CAPTURE                          VAL R2
       51 RETURN                           R3 1
