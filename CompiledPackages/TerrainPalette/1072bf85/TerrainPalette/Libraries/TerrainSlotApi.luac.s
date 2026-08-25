PROTO_0:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["GetMaterialSlot"]
        3 CALL                             R2 2 3
        4 JUMPIFNOTEQKNIL                  R2 ; [+3]
        6 LOADNIL                          R5
        7 RETURN                           R5 1
        8 JUMPIFNOTEQKNIL                  R4 ; [+2]
       10 LOADB                            R6 0 +1
       11 LOADB                            R6 1
       12 LOADK                            R8 K1 ["Terrain material slot %* has no color"]
       13 MOVE                             R10 R1
       14 NAMECALL                         R8 R8 K2 ["format"]
       16 CALL                             R8 2 1
       17 MOVE                             R7 R8
       18 FASTCALL2                        ASSERT R6 R7 ; [+3]
       20 GETIMPORT                        R5 K4 [assert]
       22 CALL                             R5 2 0
       23 DUPTABLE                         R5 K8 [{"material", "variantName", "color"}]
       24 SETTABLEKS                       R2 R5 K5 ["material"]
       26 ORK                              R6 R3 K9 [""]
       27 SETTABLEKS                       R6 R5 K6 ["variantName"]
       29 SETTABLEKS                       R4 R5 K7 ["color"]
       31 RETURN                           R5 1

PROTO_1:
        0 MOVE                             R4 R1
        1 NAMECALL                         R2 R0 K0 ["ResetMaterialSlot"]
        3 CALL                             R2 2 0
        4 RETURN                           R0 0

PROTO_2:
        0 MOVE                             R5 R1
        1 GETTABLEKS                       R6 R2 K0 ["material"]
        3 GETTABLEKS                       R7 R2 K1 ["variantName"]
        5 GETTABLEKS                       R8 R2 K2 ["color"]
        7 NAMECALL                         R3 R0 K3 ["SetMaterialSlot"]
        9 CALL                             R3 5 0
       10 RETURN                           R0 0

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPalette"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Domain"]
       11 GETTABLEKS                       R2 R2 K7 ["TerrainMaterialTypes"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K11 [{"get", "reset", "set"}]
       15 DUPCLOSURE                       R3 K12 [PROTO_0]
       16 SETTABLEKS                       R3 R2 K8 ["get"]
       18 DUPCLOSURE                       R3 K13 [PROTO_1]
       19 SETTABLEKS                       R3 R2 K9 ["reset"]
       21 DUPCLOSURE                       R3 K14 [PROTO_2]
       22 SETTABLEKS                       R3 R2 K10 ["set"]
       24 RETURN                           R2 1
