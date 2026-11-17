PROTO_0:
        0 JUMPIFEQKNIL                     R0 ; [+3]
        2 JUMPIFNOTEQKS                    R0 K0 [""] ; [+3]
        4 LOADNIL                          R1
        5 RETURN                           R1 1
        6 GETUPVAL                         R1 0
        7 MOVE                             R3 R0
        8 LOADB                            R4 1
        9 NAMECALL                         R1 R1 K1 ["FindFirstChild"]
       11 CALL                             R1 3 1
       12 JUMPIFEQKNIL                     R1 ; [+8]
       14 LOADK                            R5 K2 ["MaterialVariant"]
       15 NAMECALL                         R3 R1 K3 ["IsA"]
       17 CALL                             R3 2 1
       18 JUMPIFNOT                        R3 ; [+2]
       19 MOVE                             R2 R1
       20 RETURN                           R2 1
       21 LOADNIL                          R2
       22 RETURN                           R2 1

PROTO_1:
        0 NEWTABLE                         R2 0 0
        2 GETUPVAL                         R5 0
        3 GETTABLEKS                       R5 R5 K0 ["FIRST_SLOT_INDEX"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K1 ["LAST_SLOT_INDEX"]
        8 LOADN                            R4 1
        9 FORNPREP                         R3
       10 GETTABLEKS                       R6 R1 K2 ["get"]
       12 MOVE                             R7 R0
       13 MOVE                             R8 R5
       14 CALL                             R6 2 1
       15 JUMPIFEQKNIL                     R6 ; [+61]
       17 DUPTABLE                         R9 K9 [{"slotIndex", "material", "variant", "variantName", "name", "color"}]
       18 SETTABLEKS                       R5 R9 K3 ["slotIndex"]
       20 GETTABLEKS                       R10 R6 K4 ["material"]
       22 SETTABLEKS                       R10 R9 K4 ["material"]
       24 GETTABLEKS                       R11 R6 K6 ["variantName"]
       26 JUMPIFEQKNIL                     R11 ; [+3]
       28 JUMPIFNOTEQKS                    R11 K10 [""] ; [+3]
       30 LOADNIL                          R10
       31 JUMP                             ; [+16]
       32 GETUPVAL                         R12 1
       33 MOVE                             R14 R11
       34 LOADB                            R15 1
       35 NAMECALL                         R12 R12 K11 ["FindFirstChild"]
       37 CALL                             R12 3 1
       38 JUMPIFEQKNIL                     R12 ; [+8]
       40 LOADK                            R15 K12 ["MaterialVariant"]
       41 NAMECALL                         R13 R12 K13 ["IsA"]
       43 CALL                             R13 2 1
       44 JUMPIFNOT                        R13 ; [+2]
       45 MOVE                             R10 R12
       46 JUMP                             ; [+1]
       47 LOADNIL                          R10
       48 SETTABLEKS                       R10 R9 K5 ["variant"]
       50 GETTABLEKS                       R10 R6 K6 ["variantName"]
       52 SETTABLEKS                       R10 R9 K6 ["variantName"]
       54 GETUPVAL                         R10 2
       55 GETTABLEKS                       R10 R10 K2 ["get"]
       57 MOVE                             R11 R0
       58 MOVE                             R12 R5
       59 CALL                             R10 2 1
       60 JUMPIF                           R10 ; [+4]
       61 GETTABLEKS                       R10 R6 K4 ["material"]
       63 GETTABLEKS                       R10 R10 K14 ["Name"]
       65 SETTABLEKS                       R10 R9 K7 ["name"]
       67 GETTABLEKS                       R10 R6 K8 ["color"]
       69 SETTABLEKS                       R10 R9 K8 ["color"]
       71 FASTCALL2                        TABLE_INSERT R2 R9 ; [+4]
       73 MOVE                             R8 R2
       74 GETIMPORT                        R7 K17 [table.insert]
       76 CALL                             R7 2 0
       77 FORNLOOP                         R3
       78 RETURN                           R2 1

PROTO_2:
        0 GETTABLEKS                       R6 R1 K0 ["set"]
        2 MOVE                             R7 R0
        3 MOVE                             R8 R2
        4 DUPTABLE                         R9 K4 [{"material", "variantName", "color"}]
        5 SETTABLEKS                       R3 R9 K1 ["material"]
        7 SETTABLEKS                       R4 R9 K2 ["variantName"]
        9 SETTABLEKS                       R5 R9 K3 ["color"]
       11 CALL                             R6 3 0
       12 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R3 R1 K0 ["reset"]
        2 MOVE                             R4 R0
        3 MOVE                             R5 R2
        4 CALL                             R3 2 0
        5 RETURN                           R0 0

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
       23 GETTABLEKS                       R4 R0 K8 ["Libraries"]
       25 GETTABLEKS                       R4 R4 K10 ["TerrainSlotApi"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Domain"]
       32 GETTABLEKS                       R5 R5 K11 ["TerrainMaterialTypes"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K13 [game]
       37 LOADK                            R7 K14 ["MaterialService"]
       38 NAMECALL                         R5 R5 K15 ["GetService"]
       40 CALL                             R5 2 1
       41 NEWTABLE                         R6 4 0
       43 DUPCLOSURE                       R7 K16 [PROTO_0]
       44 CAPTURE                          VAL R5
       45 DUPCLOSURE                       R8 K17 [PROTO_1]
       46 CAPTURE                          VAL R1
       47 CAPTURE                          VAL R5
       48 CAPTURE                          VAL R2
       49 SETTABLEKS                       R8 R6 K18 ["scan"]
       51 DUPCLOSURE                       R8 K19 [PROTO_2]
       52 SETTABLEKS                       R8 R6 K20 ["set"]
       54 DUPCLOSURE                       R8 K21 [PROTO_3]
       55 SETTABLEKS                       R8 R6 K22 ["reset"]
       57 RETURN                           R6 1
