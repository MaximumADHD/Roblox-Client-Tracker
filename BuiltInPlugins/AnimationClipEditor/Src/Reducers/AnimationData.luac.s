PROTO_0:
        0 GETTABLEKS                       R2 R1 K0 ["animationData"]
        2 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Rodux"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createReducer"]
       16 LOADNIL                          R3
       17 DUPTABLE                         R4 K10 [{"SetAnimationData"}]
       18 DUPCLOSURE                       R5 K11 [PROTO_0]
       19 SETTABLEKS                       R5 R4 K9 ["SetAnimationData"]
       21 CALL                             R2 2 -1
       22 RETURN                           R2 -1
