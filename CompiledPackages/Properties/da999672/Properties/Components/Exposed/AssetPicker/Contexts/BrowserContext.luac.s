PROTO_0:
        0 DUPTABLE                         R1 K1 [{"browseAssetsAsync"}]
        1 GETTABLEKS                       R2 R0 K0 ["browseAssetsAsync"]
        3 SETTABLEKS                       R2 R1 K0 ["browseAssetsAsync"]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R3 R4 K2 ["Provider"]
        9 DUPTABLE                         R4 K4 [{"value"}]
       10 SETTABLEKS                       R1 R4 K3 ["value"]
       12 GETTABLEKS                       R5 R0 K5 ["children"]
       14 CALL                             R2 3 -1
       15 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K1 [script]
        9 LOADK                            R3 K4 ["AssetPicker"]
       10 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K6 [require]
       15 GETTABLEKS                       R4 R0 K7 ["Parent"]
       17 GETTABLEKS                       R3 R4 K8 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R1 K9 ["Types"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K10 ["Util"]
       29 GETTABLEKS                       R5 R6 K11 ["createUnimplemented"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R2 K12 ["createElement"]
       34 DUPTABLE                         R6 K14 [{"browseAssetsAsync"}]
       35 MOVE                             R7 R4
       36 LOADK                            R8 K13 ["browseAssetsAsync"]
       37 CALL                             R7 1 1
       38 SETTABLEKS                       R7 R6 K13 ["browseAssetsAsync"]
       40 GETTABLEKS                       R7 R2 K15 ["createContext"]
       42 MOVE                             R8 R6
       43 CALL                             R7 1 1
       44 DUPCLOSURE                       R8 K16 [PROTO_0]
       45 CAPTURE                          VAL R5
       46 CAPTURE                          VAL R7
       47 DUPTABLE                         R9 K19 [{"Context", "Provider"}]
       48 SETTABLEKS                       R7 R9 K17 ["Context"]
       50 SETTABLEKS                       R8 R9 K18 ["Provider"]
       52 RETURN                           R9 1
