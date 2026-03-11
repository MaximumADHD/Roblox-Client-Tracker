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
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Util"]
       18 GETTABLEKS                       R3 R4 K9 ["createUnimplemented"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R1 K10 ["createElement"]
       23 DUPTABLE                         R4 K12 [{"browseAssetsAsync"}]
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 ["browseAssetsAsync"]
       26 CALL                             R5 1 1
       27 SETTABLEKS                       R5 R4 K11 ["browseAssetsAsync"]
       29 GETTABLEKS                       R5 R1 K13 ["createContext"]
       31 MOVE                             R6 R4
       32 CALL                             R5 1 1
       33 DUPCLOSURE                       R6 K14 [PROTO_0]
       34 CAPTURE                          VAL R3
       35 CAPTURE                          VAL R5
       36 DUPTABLE                         R7 K17 [{"Context", "Provider"}]
       37 SETTABLEKS                       R5 R7 K15 ["Context"]
       39 SETTABLEKS                       R6 R7 K16 ["Provider"]
       41 RETURN                           R7 1
