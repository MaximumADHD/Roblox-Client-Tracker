PROTO_0:
        0 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 0
        4 CALL                             R1 1 2
        5 DUPTABLE                         R3 K3 [{"showMaskEditor", "setShowMaskEditor"}]
        6 SETTABLEKS                       R1 R3 K1 ["showMaskEditor"]
        8 SETTABLEKS                       R2 R3 K2 ["setShowMaskEditor"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K4 ["createElement"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K5 ["Provider"]
       16 DUPTABLE                         R6 K7 [{"value"}]
       17 SETTABLEKS                       R3 R6 K6 ["value"]
       19 GETTABLEKS                       R7 R0 K8 ["children"]
       21 CALL                             R4 3 -1
       22 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K10 [{"showMaskEditor", "setShowMaskEditor"}]
       15 LOADB                            R3 1
       16 SETTABLEKS                       R3 R2 K8 ["showMaskEditor"]
       18 DUPCLOSURE                       R3 K11 [PROTO_0]
       19 SETTABLEKS                       R3 R2 K9 ["setShowMaskEditor"]
       21 GETTABLEKS                       R3 R1 K12 ["createContext"]
       23 MOVE                             R4 R2
       24 CALL                             R3 1 1
       25 DUPCLOSURE                       R4 K13 [PROTO_1]
       26 CAPTURE                          VAL R1
       27 CAPTURE                          VAL R3
       28 DUPTABLE                         R5 K16 [{"Context", "Provider"}]
       29 SETTABLEKS                       R3 R5 K14 ["Context"]
       31 SETTABLEKS                       R4 R5 K15 ["Provider"]
       33 RETURN                           R5 1
