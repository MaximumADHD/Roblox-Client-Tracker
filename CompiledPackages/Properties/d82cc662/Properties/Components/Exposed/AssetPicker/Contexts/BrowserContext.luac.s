PROTO_0:
        0 DUPTABLE                         R1 K1 [{"browseAssetsAsync"}]
        1 GETTABLEKS                       R2 R0 K0 ["browseAssetsAsync"]
        3 SETTABLEKS                       R2 R1 K0 ["browseAssetsAsync"]
        5 GETUPVAL                         R2 0
        6 GETUPVAL                         R3 1
        7 GETTABLEKS                       R3 R3 K2 ["Provider"]
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
       15 GETTABLEKS                       R3 R0 K7 ["Parent"]
       17 GETTABLEKS                       R3 R3 K8 ["React"]
       19 CALL                             R2 1 1
       20 GETIMPORT                        R3 K6 [require]
       22 GETTABLEKS                       R4 R0 K7 ["Parent"]
       24 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K6 [require]
       29 GETTABLEKS                       R5 R1 K10 ["Types"]
       31 CALL                             R4 1 1
       32 GETTABLEKS                       R5 R3 K11 ["createUnimplemented"]
       34 GETTABLEKS                       R6 R2 K12 ["createElement"]
       36 DUPTABLE                         R7 K14 [{"browseAssetsAsync"}]
       37 MOVE                             R8 R5
       38 LOADK                            R9 K13 ["browseAssetsAsync"]
       39 CALL                             R8 1 1
       40 SETTABLEKS                       R8 R7 K13 ["browseAssetsAsync"]
       42 GETTABLEKS                       R8 R2 K15 ["createContext"]
       44 MOVE                             R9 R7
       45 CALL                             R8 1 1
       46 LOADK                            R9 K16 ["BrowserContext"]
       47 SETTABLEKS                       R9 R8 K17 ["displayName"]
       49 DUPCLOSURE                       R9 K18 [PROTO_0]
       50 CAPTURE                          VAL R6
       51 CAPTURE                          VAL R8
       52 DUPTABLE                         R10 K21 [{"Context", "Provider"}]
       53 SETTABLEKS                       R8 R10 K19 ["Context"]
       55 SETTABLEKS                       R9 R10 K20 ["Provider"]
       57 RETURN                           R10 1
