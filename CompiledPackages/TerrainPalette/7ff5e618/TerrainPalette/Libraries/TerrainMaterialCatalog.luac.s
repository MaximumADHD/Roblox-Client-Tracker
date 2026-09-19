PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["scan"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 JUMPIF                           R4 ; [+1]
        6 GETUPVAL                         R4 1
        7 CALL                             R2 2 1
        8 NEWTABLE                         R3 0 0
       10 MOVE                             R4 R2
       11 LOADNIL                          R5
       12 LOADNIL                          R6
       13 FORGPREP                         R4
       14 GETTABLEKS                       R9 R8 K1 ["color"]
       16 DUPTABLE                         R10 K7 [{"slotIndex", "displayName", "color", "baseMaterial", "variantName", "resolvedVariant"}]
       17 GETTABLEKS                       R11 R8 K2 ["slotIndex"]
       19 SETTABLEKS                       R11 R10 K2 ["slotIndex"]
       21 GETTABLEKS                       R11 R8 K8 ["name"]
       23 SETTABLEKS                       R11 R10 K3 ["displayName"]
       25 SETTABLEKS                       R9 R10 K1 ["color"]
       27 GETTABLEKS                       R11 R8 K9 ["material"]
       29 SETTABLEKS                       R11 R10 K4 ["baseMaterial"]
       31 GETTABLEKS                       R12 R8 K5 ["variantName"]
       33 ORK                              R11 R12 K10 [""]
       34 SETTABLEKS                       R11 R10 K5 ["variantName"]
       36 GETTABLEKS                       R11 R8 K11 ["variant"]
       38 SETTABLEKS                       R11 R10 K6 ["resolvedVariant"]
       40 MOVE                             R12 R3
       41 GETIMPORT                        R13 K14 [table.freeze]
       43 MOVE                             R14 R10
       44 CALL                             R13 1 -1
       45 FASTCALL                         TABLE_INSERT ; [+2]
       46 GETIMPORT                        R11 K16 [table.insert]
       48 CALL                             R11 -1 0
       49 FORGLOOP                         R4 2 ; [-36]
       51 GETIMPORT                        R4 K14 [table.freeze]
       53 MOVE                             R5 R3
       54 CALL                             R4 1 -1
       55 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Libraries"]
       11 GETTABLEKS                       R2 R2 K7 ["TerrainSlotApi"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Domain"]
       18 GETTABLEKS                       R3 R3 K9 ["TerrainMaterialTypes"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Libraries"]
       25 GETTABLEKS                       R4 R4 K10 ["TerrainSlots"]
       27 CALL                             R3 1 1
       28 NEWTABLE                         R4 1 0
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 CAPTURE                          VAL R3
       32 CAPTURE                          VAL R1
       33 SETTABLEKS                       R5 R4 K12 ["read"]
       35 RETURN                           R4 1
