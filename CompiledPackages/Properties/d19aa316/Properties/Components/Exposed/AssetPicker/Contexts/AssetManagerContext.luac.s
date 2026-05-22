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
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R4 R4 K9 ["createUnimplemented"]
       20 CALL                             R3 1 1
       21 GETTABLEKS                       R4 R2 K10 ["createElement"]
       23 DUPTABLE                         R5 K12 [{"openAssetManager"}]
       24 MOVE                             R6 R3
       25 LOADK                            R7 K11 ["openAssetManager"]
       26 CALL                             R6 1 1
       27 SETTABLEKS                       R6 R5 K11 ["openAssetManager"]
       29 GETTABLEKS                       R6 R2 K13 ["createContext"]
       31 MOVE                             R7 R5
       32 CALL                             R6 1 1
       33 DUPCLOSURE                       R7 K14 [PROTO_0]
       34 CAPTURE                          VAL R4
       35 CAPTURE                          VAL R6
       36 DUPTABLE                         R8 K17 [{"Context", "Provider"}]
       37 SETTABLEKS                       R6 R8 K15 ["Context"]
       39 SETTABLEKS                       R7 R8 K16 ["Provider"]
       41 RETURN                           R8 1
