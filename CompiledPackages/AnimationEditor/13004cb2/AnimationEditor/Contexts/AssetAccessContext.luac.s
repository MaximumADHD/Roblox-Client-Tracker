PROTO_0:
        0 DUPTABLE                         R1 K1 [{"shareAccessToAssetsAsync"}]
        1 GETUPVAL                         R3 0
        2 GETTABLEKS                       R2 R3 K2 ["useBoundAction"]
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K3 ["SHARE_ACCESS"]
        7 CALL                             R2 1 1
        8 SETTABLEKS                       R2 R1 K0 ["shareAccessToAssetsAsync"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R2 R3 K4 ["createElement"]
       13 GETUPVAL                         R4 3
       14 GETTABLEKS                       R3 R4 K5 ["Provider"]
       16 DUPTABLE                         R4 K7 [{"value"}]
       17 SETTABLEKS                       R1 R4 K6 ["value"]
       19 GETTABLEKS                       R5 R0 K8 ["children"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useBoundAction"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["SHARE_ACCESS"]
        6 GETTABLEKS                       R3 R0 K2 ["shareAccessToAssetsAsync"]
        8 CALL                             R1 2 0
        9 DUPTABLE                         R1 K3 [{"shareAccessToAssetsAsync"}]
       10 GETTABLEKS                       R2 R0 K2 ["shareAccessToAssetsAsync"]
       12 SETTABLEKS                       R2 R1 K2 ["shareAccessToAssetsAsync"]
       14 GETUPVAL                         R3 2
       15 GETTABLEKS                       R2 R3 K4 ["createElement"]
       17 GETUPVAL                         R4 3
       18 GETTABLEKS                       R3 R4 K5 ["Provider"]
       20 DUPTABLE                         R4 K7 [{"value"}]
       21 SETTABLEKS                       R1 R4 K6 ["value"]
       23 GETTABLEKS                       R5 R0 K8 ["children"]
       25 CALL                             R2 3 -1
       26 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R5 R0 K7 ["Util"]
       13 GETTABLEKS                       R4 R5 K8 ["Networking"]
       15 GETTABLEKS                       R3 R4 K9 ["NetworkUtils"]
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
       43 DUPCLOSURE                       R8 K18 [PROTO_0]
       44 CAPTURE                          VAL R2
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R3
       47 CAPTURE                          VAL R7
       48 DUPCLOSURE                       R9 K19 [PROTO_1]
       49 CAPTURE                          VAL R2
       50 CAPTURE                          VAL R5
       51 CAPTURE                          VAL R3
       52 CAPTURE                          VAL R7
       53 DUPTABLE                         R10 K23 [{"Context", "EditableDataModelProvider", "UIDataModelProvider"}]
       54 SETTABLEKS                       R7 R10 K20 ["Context"]
       56 SETTABLEKS                       R9 R10 K21 ["EditableDataModelProvider"]
       58 SETTABLEKS                       R8 R10 K22 ["UIDataModelProvider"]
       60 RETURN                           R10 1
