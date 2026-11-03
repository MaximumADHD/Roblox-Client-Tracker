PROTO_0:
        0 GETUPVAL                         R1 0
        1 MOVE                             R3 R0
        2 NAMECALL                         R1 R1 K0 ["GetAnimationClipAsync"]
        4 CALL                             R1 2 -1
        5 RETURN                           R1 -1

PROTO_1:
        0 LOADNIL                          R1
        1 RETURN                           R1 1

PROTO_2:
        0 DUPTABLE                         R0 K1 [{"getAnimationClipAsync"}]
        1 DUPCLOSURE                       R1 K2 [PROTO_1]
        2 SETTABLEKS                       R1 R0 K0 ["getAnimationClipAsync"]
        4 RETURN                           R0 1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useMemo"]
        3 DUPCLOSURE                       R2 K1 [PROTO_2]
        4 CALL                             R1 1 1
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
        1 GETIMPORT                        R0 K1 [game]
        3 LOADK                            R2 K2 ["AnimationClipProvider"]
        4 NAMECALL                         R0 R0 K3 ["GetService"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [script]
        9 LOADK                            R3 K6 ["AnimationEditor"]
       10 NAMECALL                         R1 R1 K7 ["FindFirstAncestor"]
       12 CALL                             R1 2 1
       13 GETIMPORT                        R2 K9 [require]
       15 GETTABLEKS                       R3 R1 K10 ["Parent"]
       17 GETTABLEKS                       R3 R3 K11 ["React"]
       19 CALL                             R2 1 1
       20 GETTABLEKS                       R3 R2 K12 ["createContext"]
       22 DUPTABLE                         R4 K14 [{"getAnimationClipAsync"}]
       23 DUPCLOSURE                       R5 K15 [PROTO_0]
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R5 R4 K13 ["getAnimationClipAsync"]
       27 CALL                             R3 1 1
       28 LOADK                            R4 K16 ["AnimationClipProviderContext"]
       29 SETTABLEKS                       R4 R3 K17 ["displayName"]
       31 DUPCLOSURE                       R4 K18 [PROTO_3]
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 DUPTABLE                         R5 K21 [{"Context", "MockProvider"}]
       35 SETTABLEKS                       R3 R5 K19 ["Context"]
       37 SETTABLEKS                       R4 R5 K20 ["MockProvider"]
       39 RETURN                           R5 1
