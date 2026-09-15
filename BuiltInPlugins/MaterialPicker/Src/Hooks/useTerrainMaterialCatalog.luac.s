PROTO_0:
        0 GETIMPORT                        R0 K1 [workspace]
        2 GETTABLEKS                       R0 R0 K2 ["Terrain"]
        4 JUMPIFNOT                        R0 ; [+8]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K3 ["TerrainMaterialCatalog"]
        8 GETTABLEKS                       R1 R1 K4 ["read"]
       10 MOVE                             R2 R0
       11 CALL                             R1 1 -1
       12 RETURN                           R1 -1
       13 GETIMPORT                        R1 K7 [table.freeze]
       15 NEWTABLE                         R2 0 0
       17 CALL                             R1 1 -1
       18 RETURN                           R1 -1

PROTO_1:
        0 GETIMPORT                        R0 K1 [pcall]
        2 GETUPVAL                         R1 0
        3 CALL                             R0 1 2
        4 JUMPIFNOT                        R0 ; [+4]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0
        9 GETUPVAL                         R2 2
       10 CALL                             R2 0 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["new"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["CPC_ID"]
        6 GETUPVAL                         R2 2
        7 CALL                             R0 2 1
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["CPC_EVENTS"]
       11 GETTABLEKS                       R3 R3 K3 ["CATALOG_CHANGED"]
       13 GETUPVAL                         R4 3
       14 NAMECALL                         R1 R0 K4 ["Connect"]
       16 CALL                             R1 3 1
       17 NEWCLOSURE                       R2 P0
       18 CAPTURE                          VAL R1
       19 RETURN                           R2 1

PROTO_6:
        0 GETUPVAL                         R5 0
        1 GETTABLEKS                       R5 R5 K0 ["useState"]
        3 MOVE                             R6 R0
        4 CALL                             R5 1 2
        5 GETUPVAL                         R7 0
        6 GETTABLEKS                       R7 R7 K1 ["useCallback"]
        8 NEWCLOSURE                       R8 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R6
       11 CAPTURE                          VAL R4
       12 NEWTABLE                         R9 0 1
       14 MOVE                             R10 R4
       15 SETLIST                          R9 R10 1 [1]
       17 CALL                             R7 2 1
       18 GETUPVAL                         R8 0
       19 GETTABLEKS                       R8 R8 K2 ["useEffect"]
       21 NEWCLOSURE                       R9 P1
       22 CAPTURE                          VAL R7
       23 NEWTABLE                         R10 0 2
       25 MOVE                             R11 R7
       26 MOVE                             R12 R1
       27 SETLIST                          R10 R11 2 [1]
       29 CALL                             R8 2 0
       30 GETUPVAL                         R8 0
       31 GETTABLEKS                       R8 R8 K2 ["useEffect"]
       33 NEWCLOSURE                       R9 P2
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R5
       36 NEWTABLE                         R10 0 2
       38 MOVE                             R11 R5
       39 MOVE                             R12 R3
       40 SETLIST                          R10 R11 2 [1]
       42 CALL                             R8 2 0
       43 GETUPVAL                         R8 0
       44 GETTABLEKS                       R8 R8 K2 ["useEffect"]
       46 NEWCLOSURE                       R9 P3
       47 CAPTURE                          UPVAL U2
       48 CAPTURE                          UPVAL U3
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R7
       51 NEWTABLE                         R10 0 2
       53 MOVE                             R11 R2
       54 MOVE                             R12 R7
       55 SETLIST                          R10 R11 2 [1]
       57 CALL                             R8 2 0
       58 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["MaterialPicker"]
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
       25 GETTABLEKS                       R4 R4 K9 ["TerrainPalette"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R1 K10 ["Util"]
       30 GETTABLEKS                       R4 R4 K11 ["CrossPluginCommunication"]
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K6 ["Packages"]
       36 GETTABLEKS                       R6 R6 K12 ["SharedPluginConstants"]
       38 CALL                             R5 1 1
       39 GETTABLEKS                       R5 R5 K13 ["TERRAIN"]
       41 DUPCLOSURE                       R6 K14 [PROTO_0]
       42 CAPTURE                          VAL R3
       43 DUPCLOSURE                       R7 K15 [PROTO_6]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 RETURN                           R7 1
