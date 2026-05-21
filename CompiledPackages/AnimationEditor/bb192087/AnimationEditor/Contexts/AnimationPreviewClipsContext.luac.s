PROTO_0:
        0 DUPTABLE                         R1 K1 [{"animationClipsList"}]
        1 GETTABLEKS                       R2 R0 K0 ["animationClipsList"]
        3 SETTABLEKS                       R2 R1 K0 ["animationClipsList"]
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K2 ["createElement"]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K3 ["Provider"]
       11 DUPTABLE                         R4 K5 [{"value"}]
       12 SETTABLEKS                       R1 R4 K4 ["value"]
       14 GETTABLEKS                       R5 R0 K6 ["children"]
       16 CALL                             R2 3 -1
       17 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
       13 CALL                             R1 1 1
       14 DUPTABLE                         R2 K9 [{"animationClipsList"}]
       15 NEWTABLE                         R3 0 0
       17 SETTABLEKS                       R3 R2 K8 ["animationClipsList"]
       19 GETTABLEKS                       R3 R1 K10 ["createContext"]
       21 MOVE                             R4 R2
       22 CALL                             R3 1 1
       23 DUPCLOSURE                       R4 K11 [PROTO_0]
       24 CAPTURE                          VAL R1
       25 CAPTURE                          VAL R3
       26 DUPTABLE                         R5 K14 [{"Context", "Provider"}]
       27 SETTABLEKS                       R3 R5 K12 ["Context"]
       29 SETTABLEKS                       R4 R5 K13 ["Provider"]
       31 RETURN                           R5 1
