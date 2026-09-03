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
        4 JUMPIFNOT                        R0 ; [+3]
        5 GETUPVAL                         R2 1
        6 MOVE                             R3 R1
        7 CALL                             R2 1 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 0
        2 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["useState"]
        3 GETUPVAL                         R3 1
        4 CALL                             R2 1 2
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R4 R4 K1 ["useCallback"]
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          UPVAL U1
       10 CAPTURE                          VAL R3
       11 NEWTABLE                         R6 0 0
       13 CALL                             R4 2 1
       14 GETUPVAL                         R5 0
       15 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       17 NEWCLOSURE                       R6 P1
       18 CAPTURE                          VAL R4
       19 NEWTABLE                         R7 0 2
       21 MOVE                             R8 R4
       22 MOVE                             R9 R0
       23 SETLIST                          R7 R8 2 [1]
       25 CALL                             R5 2 0
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K2 ["useEffect"]
       29 NEWCLOSURE                       R6 P2
       30 CAPTURE                          UPVAL U2
       31 CAPTURE                          UPVAL U3
       32 CAPTURE                          VAL R1
       33 CAPTURE                          VAL R4
       34 NEWTABLE                         R7 0 2
       36 MOVE                             R8 R1
       37 MOVE                             R9 R4
       38 SETLIST                          R7 R8 2 [1]
       40 CALL                             R5 2 0
       41 RETURN                           R2 1

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
       43 DUPCLOSURE                       R7 K15 [PROTO_5]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R6
       46 CAPTURE                          VAL R4
       47 CAPTURE                          VAL R5
       48 RETURN                           R7 1
