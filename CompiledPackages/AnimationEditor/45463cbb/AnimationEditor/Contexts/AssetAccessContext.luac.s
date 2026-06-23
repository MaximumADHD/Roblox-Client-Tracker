PROTO_0:
        0 DUPTABLE                         R0 K1 [{"shareAccessToAssetsAsync"}]
        1 GETUPVAL                         R1 0
        2 SETTABLEKS                       R1 R0 K0 ["shareAccessToAssetsAsync"]
        4 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBoundAction"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["SHARE_ACCESS"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 2
        8 GETTABLEKS                       R2 R2 K2 ["useMemo"]
       10 NEWCLOSURE                       R3 P0
       11 CAPTURE                          VAL R1
       12 NEWTABLE                         R4 0 1
       14 MOVE                             R5 R1
       15 SETLIST                          R4 R5 1 [1]
       17 CALL                             R2 2 1
       18 GETUPVAL                         R3 2
       19 GETTABLEKS                       R3 R3 K3 ["createElement"]
       21 GETUPVAL                         R4 3
       22 GETTABLEKS                       R4 R4 K4 ["Provider"]
       24 DUPTABLE                         R5 K6 [{"value"}]
       25 SETTABLEKS                       R2 R5 K5 ["value"]
       27 GETTABLEKS                       R6 R0 K7 ["children"]
       29 CALL                             R3 3 -1
       30 RETURN                           R3 -1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"shareAccessToAssetsAsync"}]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["shareAccessToAssetsAsync"]
        4 SETTABLEKS                       R1 R0 K0 ["shareAccessToAssetsAsync"]
        6 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useBoundAction"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["SHARE_ACCESS"]
        6 GETTABLEKS                       R3 R0 K2 ["shareAccessToAssetsAsync"]
        8 CALL                             R1 2 0
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K3 ["useMemo"]
       12 NEWCLOSURE                       R2 P0
       13 CAPTURE                          VAL R0
       14 NEWTABLE                         R3 0 1
       16 GETTABLEKS                       R4 R0 K2 ["shareAccessToAssetsAsync"]
       18 SETLIST                          R3 R4 1 [1]
       20 CALL                             R1 2 1
       21 GETUPVAL                         R2 2
       22 GETTABLEKS                       R2 R2 K4 ["createElement"]
       24 GETUPVAL                         R3 3
       25 GETTABLEKS                       R3 R3 K5 ["Provider"]
       27 DUPTABLE                         R4 K7 [{"value"}]
       28 SETTABLEKS                       R1 R4 K6 ["value"]
       30 GETTABLEKS                       R5 R0 K8 ["children"]
       32 CALL                             R2 3 -1
       33 RETURN                           R2 -1

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
       28 DUPTABLE                         R5 K13 [{"SHARE_ACCESS"}]
       29 LOADK                            R6 K12 ["SHARE_ACCESS"]
       30 SETTABLEKS                       R6 R5 K12 ["SHARE_ACCESS"]
       32 DUPTABLE                         R6 K15 [{"shareAccessToAssetsAsync"}]
       33 GETTABLEKS                       R7 R4 K16 ["createUnimplemented"]
       35 LOADK                            R8 K14 ["shareAccessToAssetsAsync"]
       36 CALL                             R7 1 1
       37 SETTABLEKS                       R7 R6 K14 ["shareAccessToAssetsAsync"]
       39 GETTABLEKS                       R7 R3 K17 ["createContext"]
       41 MOVE                             R8 R6
       42 CALL                             R7 1 1
       43 DUPCLOSURE                       R8 K18 [PROTO_1]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R7
       48 DUPCLOSURE                       R9 K19 [PROTO_3]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R7
       53 DUPTABLE                         R10 K23 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
       54 SETTABLEKS                       R7 R10 K20 ["Context"]
       56 SETTABLEKS                       R9 R10 K21 ["EditableDataModelProvider"]
       58 SETTABLEKS                       R8 R10 K22 ["UIDataModelProvider"]
       60 RETURN                           R10 1
