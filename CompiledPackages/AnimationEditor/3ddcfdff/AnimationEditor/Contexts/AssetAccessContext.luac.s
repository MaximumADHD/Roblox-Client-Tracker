PROTO_0:
        0 DUPTABLE                         R0 K1 [{"shareAccessToAssetsAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["shareAccessToAssetsAsync"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBoundAction"]
        3 LOADK                            R2 K1 ["SHARE_ACCESS"]
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 1
        6 GETTABLEKS                       R2 R2 K2 ["useMemo"]
        8 NEWCLOSURE                       R3 P0
        9 CAPTURE                          VAL R1
       10 NEWTABLE                         R4 0 1
       12 MOVE                             R5 R1
       13 SETLIST                          R4 R5 1 [1]
       15 CALL                             R2 2 1
       16 GETUPVAL                         R3 1
       17 GETTABLEKS                       R3 R3 K3 ["createElement"]
       19 GETUPVAL                         R4 2
       20 GETTABLEKS                       R4 R4 K4 ["Provider"]
       22 DUPTABLE                         R5 K6 [{"value"}]
       23 SETTABLEKS                       R2 R5 K5 ["value"]
       25 GETTABLEKS                       R6 R0 K7 ["children"]
       27 CALL                             R3 3 -1
       28 RETURN                           R3 -1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"shareAccessToAssetsAsync"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["shareAccessToAssetsAsync"]
        4 SETTABLEKS                       R1 R0 K0 ["shareAccessToAssetsAsync"]
        6 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBoundAction"]
        3 LOADK                            R2 K1 ["SHARE_ACCESS"]
        4 GETTABLEKS                       R3 R0 K2 ["shareAccessToAssetsAsync"]
        6 CALL                             R1 2 0
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K3 ["useMemo"]
       10 NEWCLOSURE                       R2 P0
       11 CAPTURE                          VAL R0
       12 NEWTABLE                         R3 0 1
       14 GETTABLEKS                       R4 R0 K2 ["shareAccessToAssetsAsync"]
       16 SETLIST                          R3 R4 1 [1]
       18 CALL                             R1 2 1
       19 GETUPVAL                         R2 1
       20 GETTABLEKS                       R2 R2 K4 ["createElement"]
       22 GETUPVAL                         R3 2
       23 GETTABLEKS                       R3 R3 K5 ["Provider"]
       25 DUPTABLE                         R4 K7 [{"value"}]
       26 SETTABLEKS                       R1 R4 K6 ["value"]
       28 GETTABLEKS                       R5 R0 K8 ["children"]
       30 CALL                             R2 3 -1
       31 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Util"]
       13 GETTABLEKS                       R3 R3 K8 ["Networking"]
       15 GETTABLEKS                       R3 R3 K9 ["NetworkUtils"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R1 K10 ["React"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R1 K11 ["ReactUtils"]
       27 CALL                             R4 1 1
       28 DUPTABLE                         R5 K13 [{["SHARE_ACCESS"] = "SHARE_ACCESS"}]
       29 DUPTABLE                         R6 K15 [{"shareAccessToAssetsAsync"}]
       30 GETTABLEKS                       R7 R4 K16 ["createUnimplemented"]
       32 LOADK                            R8 K14 ["shareAccessToAssetsAsync"]
       33 CALL                             R7 1 1
       34 SETTABLEKS                       R7 R6 K14 ["shareAccessToAssetsAsync"]
       36 GETTABLEKS                       R7 R3 K17 ["createContext"]
       38 MOVE                             R8 R6
       39 CALL                             R7 1 1
       40 DUPCLOSURE                       R8 K18 [PROTO_1]
       41 CAPTURE                          VAL R2
       42 CAPTURE                          VAL R3
       43 CAPTURE                          VAL R7
       44 DUPCLOSURE                       R9 K19 [PROTO_3]
       45 CAPTURE                          VAL R2
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R7
       48 DUPTABLE                         R10 K23 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
       49 SETTABLEKS                       R7 R10 K20 ["Context"]
       51 SETTABLEKS                       R9 R10 K21 ["EditableDataModelProvider"]
       53 SETTABLEKS                       R8 R10 K22 ["UIDataModelProvider"]
       55 RETURN                           R10 1
