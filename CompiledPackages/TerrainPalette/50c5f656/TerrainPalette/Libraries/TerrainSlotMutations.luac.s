PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["findFreeTerrainMaterialIndex"]
        3 GETTABLEKS                       R3 R0 K1 ["entries"]
        5 CALL                             R2 1 1
        6 JUMPIFNOTEQKNIL                  R2 ; [+3]
        8 LOADNIL                          R3
        9 RETURN                           R3 1
       10 GETUPVAL                         R3 1
       11 GETTABLEKS                       R3 R3 K2 ["set"]
       13 GETTABLEKS                       R4 R0 K3 ["terrain"]
       15 GETTABLEKS                       R5 R0 K4 ["slotApi"]
       17 JUMPIF                           R5 ; [+1]
       18 GETUPVAL                         R5 2
       19 MOVE                             R6 R2
       20 GETTABLEKS                       R7 R1 K5 ["material"]
       22 GETTABLEKS                       R9 R1 K7 ["variantName"]
       24 ORK                              R8 R9 K6 [""]
       25 GETTABLEKS                       R9 R1 K8 ["color"]
       27 CALL                             R3 6 0
       28 GETUPVAL                         R3 3
       29 GETTABLEKS                       R3 R3 K2 ["set"]
       31 GETTABLEKS                       R4 R0 K3 ["terrain"]
       33 MOVE                             R5 R2
       34 GETUPVAL                         R6 0
       35 GETTABLEKS                       R6 R6 K9 ["getNextGeneratedName"]
       37 GETTABLEKS                       R7 R0 K1 ["entries"]
       39 GETTABLEKS                       R8 R1 K10 ["name"]
       41 CALL                             R6 2 -1
       42 CALL                             R3 -1 0
       43 GETTABLEKS                       R3 R0 K11 ["historyService"]
       45 GETTABLEKS                       R3 R3 K12 ["setWaypoint"]
       47 LOADK                            R4 K13 ["TerrainPaletteSlotAdded"]
       48 CALL                             R3 1 0
       49 GETTABLEKS                       R3 R0 K14 ["onCatalogChanged"]
       51 JUMPIFEQKNIL                     R3 ; [+4]
       53 GETTABLEKS                       R3 R0 K14 ["onCatalogChanged"]
       55 CALL                             R3 0 0
       56 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Domain"]
       11 GETTABLEKS                       R2 R2 K7 ["SlotCollection"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Libraries"]
       18 GETTABLEKS                       R3 R3 K9 ["SlotNames"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Domain"]
       25 GETTABLEKS                       R4 R4 K10 ["TerrainSlotTypes"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Libraries"]
       32 GETTABLEKS                       R5 R5 K11 ["TerrainSlotApi"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Libraries"]
       39 GETTABLEKS                       R6 R6 K12 ["TerrainSlots"]
       41 CALL                             R5 1 1
       42 NEWTABLE                         R6 1 0
       44 DUPCLOSURE                       R7 K13 [PROTO_0]
       45 CAPTURE                          VAL R1
       46 CAPTURE                          VAL R5
       47 CAPTURE                          VAL R4
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R7 R6 K14 ["createSlot"]
       51 RETURN                           R6 1
