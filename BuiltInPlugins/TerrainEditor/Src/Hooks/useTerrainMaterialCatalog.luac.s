PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 RETURN                           R1 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETUPVAL                         R2 2
        3 CALL                             R1 1 -1
        4 CALL                             R0 -1 0
        5 RETURN                           R0 0

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+2]
        1 GETUPVAL                         R1 0
        2 CALL                             R1 0 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 GETUPVAL                         R0 1
        5 NAMECALL                         R0 R0 K0 ["Disconnect"]
        7 CALL                             R0 1 0
        8 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 GETTABLEKS                       R1 R1 K0 ["CPC_ID"]
        4 CALL                             R0 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R3 R3 K1 ["CPC_EVENTS"]
        8 GETTABLEKS                       R3 R3 K2 ["CATALOG_CHANGED"]
       10 GETUPVAL                         R4 2
       11 NAMECALL                         R1 R0 K3 ["Connect"]
       13 CALL                             R1 3 1
       14 GETUPVAL                         R2 3
       15 GETTABLEKS                       R2 R2 K4 ["Focused"]
       17 NEWCLOSURE                       R4 P0
       18 CAPTURE                          UPVAL U2
       19 NAMECALL                         R2 R2 K3 ["Connect"]
       21 CALL                             R2 2 1
       22 NEWCLOSURE                       R3 P1
       23 CAPTURE                          VAL R1
       24 CAPTURE                          VAL R2
       25 RETURN                           R3 1

PROTO_6:
        0 JUMPIFNOT                        R1 ; [+6]
        1 GETTABLEKS                       R3 R1 K0 ["terrain"]
        3 JUMPIFNOT                        R3 ; [+3]
        4 GETTABLEKS                       R2 R1 K0 ["terrain"]
        6 JUMP                             ; [+3]
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K1 ["Terrain"]
       10 JUMPIFNOT                        R1 ; [+6]
       11 GETTABLEKS                       R4 R1 K2 ["readCatalog"]
       13 JUMPIFNOT                        R4 ; [+3]
       14 GETTABLEKS                       R3 R1 K2 ["readCatalog"]
       16 JUMP                             ; [+3]
       17 GETUPVAL                         R3 1
       18 GETTABLEKS                       R3 R3 K3 ["read"]
       20 JUMPIFNOT                        R1 ; [+6]
       21 GETTABLEKS                       R5 R1 K4 ["createTransport"]
       23 JUMPIFNOT                        R5 ; [+3]
       24 GETTABLEKS                       R4 R1 K4 ["createTransport"]
       26 JUMP                             ; [+1]
       27 GETUPVAL                         R4 2
       28 GETUPVAL                         R5 3
       29 GETTABLEKS                       R5 R5 K5 ["useState"]
       31 NEWCLOSURE                       R6 P0
       32 CAPTURE                          VAL R3
       33 CAPTURE                          VAL R2
       34 CALL                             R5 1 2
       35 GETUPVAL                         R7 3
       36 GETTABLEKS                       R7 R7 K6 ["useCallback"]
       38 NEWCLOSURE                       R8 P1
       39 CAPTURE                          VAL R6
       40 CAPTURE                          VAL R3
       41 CAPTURE                          VAL R2
       42 NEWTABLE                         R9 0 2
       44 MOVE                             R10 R3
       45 MOVE                             R11 R2
       46 SETLIST                          R9 R10 2 [1]
       48 CALL                             R7 2 1
       49 GETUPVAL                         R8 3
       50 GETTABLEKS                       R8 R8 K7 ["useEffect"]
       52 NEWCLOSURE                       R9 P2
       53 CAPTURE                          VAL R4
       54 CAPTURE                          UPVAL U4
       55 CAPTURE                          VAL R7
       56 CAPTURE                          VAL R0
       57 NEWTABLE                         R10 0 3
       59 MOVE                             R11 R0
       60 MOVE                             R12 R7
       61 MOVE                             R13 R4
       62 SETLIST                          R10 R11 3 [1]
       64 CALL                             R8 2 0
       65 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["SharedPluginConstants"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K6 ["Packages"]
       32 GETTABLEKS                       R5 R5 K10 ["TerrainPalette"]
       34 CALL                             R4 1 1
       35 GETTABLEKS                       R5 R1 K11 ["Util"]
       37 GETTABLEKS                       R5 R5 K12 ["CrossPluginCommunication"]
       39 GETTABLEKS                       R6 R3 K13 ["TERRAIN"]
       41 GETTABLEKS                       R7 R4 K14 ["TerrainMaterialCatalog"]
       43 GETIMPORT                        R8 K16 [game]
       45 LOADK                            R10 K17 ["Workspace"]
       46 NAMECALL                         R8 R8 K18 ["GetService"]
       48 CALL                             R8 2 1
       49 DUPCLOSURE                       R9 K19 [PROTO_0]
       50 CAPTURE                          VAL R5
       51 DUPCLOSURE                       R10 K20 [PROTO_6]
       52 CAPTURE                          VAL R8
       53 CAPTURE                          VAL R7
       54 CAPTURE                          VAL R9
       55 CAPTURE                          VAL R2
       56 CAPTURE                          VAL R6
       57 RETURN                           R10 1
