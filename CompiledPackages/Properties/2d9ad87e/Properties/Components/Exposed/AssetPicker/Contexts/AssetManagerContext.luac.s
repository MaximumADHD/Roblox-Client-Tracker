PROTO_0:
        0 DUPTABLE                         R1 K1 [{"openAssetManager"}]
        1 GETTABLEKS                       R2 R0 K0 ["openAssetManager"]
        3 SETTABLEKS                       R2 R1 K0 ["openAssetManager"]
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
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R4 R1 K8 ["ReactUtils"]
       18 CALL                             R3 1 1
       19 GETTABLEKS                       R4 R3 K9 ["createUnimplemented"]
       21 GETTABLEKS                       R5 R2 K10 ["createElement"]
       23 DUPTABLE                         R6 K12 [{"openAssetManager"}]
       24 MOVE                             R7 R4
       25 LOADK                            R8 K11 ["openAssetManager"]
       26 CALL                             R7 1 1
       27 SETTABLEKS                       R7 R6 K11 ["openAssetManager"]
       29 GETTABLEKS                       R7 R2 K13 ["createContext"]
       31 MOVE                             R8 R6
       32 CALL                             R7 1 1
       33 LOADK                            R8 K14 ["AssetManagerContext"]
       34 SETTABLEKS                       R8 R7 K15 ["displayName"]
       36 DUPCLOSURE                       R8 K16 [PROTO_0]
       37 CAPTURE                          VAL R5
       38 CAPTURE                          VAL R7
       39 DUPTABLE                         R9 K19 [{"Context", "Provider"}]
       40 SETTABLEKS                       R7 R9 K17 ["Context"]
       42 SETTABLEKS                       R8 R9 K18 ["Provider"]
       44 RETURN                           R9 1
