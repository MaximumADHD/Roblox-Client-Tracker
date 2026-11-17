PROTO_0:
        0 GETUPVAL                         R3 0
        1 MOVE                             R5 R1
        2 MOVE                             R6 R2
        3 NAMECALL                         R3 R3 K0 ["Connect"]
        5 CALL                             R3 3 -1
        6 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["new"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K2 [{"Connect"}]
        6 NEWCLOSURE                       R3 P0
        7 CAPTURE                          VAL R1
        8 SETTABLEKS                       R3 R2 K1 ["Connect"]
       10 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 NAMECALL                         R0 R0 K0 ["Disconnect"]
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 MOVE                             R2 R1
        1 JUMPIF                           R2 ; [+1]
        2 GETUPVAL                         R2 0
        3 MOVE                             R3 R2
        4 GETUPVAL                         R4 1
        5 CALL                             R3 1 1
        6 GETUPVAL                         R6 2
        7 MOVE                             R7 R0
        8 NAMECALL                         R4 R3 K0 ["Connect"]
       10 CALL                             R4 3 1
       11 DUPTABLE                         R5 K2 [{"cleanup"}]
       12 NEWCLOSURE                       R6 P0
       13 CAPTURE                          VAL R4
       14 SETTABLEKS                       R6 R5 K1 ["cleanup"]
       16 RETURN                           R5 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["TerrainPaletteEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["SharedPluginConstants"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K9 ["Util"]
       23 GETTABLEKS                       R3 R3 K10 ["CrossPluginCommunication"]
       25 GETTABLEKS                       R4 R2 K11 ["TERRAIN"]
       27 GETTABLEKS                       R5 R4 K12 ["CPC_ID"]
       29 GETTABLEKS                       R6 R4 K13 ["CPC_EVENTS"]
       31 GETTABLEKS                       R6 R6 K14 ["CATALOG_CHANGED"]
       33 DUPTABLE                         R7 K17 [{"CPC_NAMESPACE", "CATALOG_CHANGED_EVENT"}]
       34 SETTABLEKS                       R5 R7 K15 ["CPC_NAMESPACE"]
       36 SETTABLEKS                       R6 R7 K16 ["CATALOG_CHANGED_EVENT"]
       38 DUPCLOSURE                       R8 K18 [PROTO_1]
       39 CAPTURE                          VAL R3
       40 DUPCLOSURE                       R9 K19 [PROTO_3]
       41 CAPTURE                          VAL R8
       42 CAPTURE                          VAL R5
       43 CAPTURE                          VAL R6
       44 SETTABLEKS                       R9 R7 K20 ["new"]
       46 RETURN                           R7 1
