PROTO_0:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["createElement"]
        5 LOADK                            R2 K1 ["StyleLink"]
        6 DUPTABLE                         R3 K3 [{"StyleSheet"}]
        7 SETTABLEKS                       R0 R3 K2 ["StyleSheet"]
        9 CALL                             R1 2 -1
       10 RETURN                           R1 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ViewportToolingFramework"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Hooks"]
       18 GETTABLEKS                       R3 R4 K9 ["useStyleSheet"]
       20 CALL                             R2 1 1
       21 DUPCLOSURE                       R3 K10 [PROTO_0]
       22 CAPTURE                          VAL R2
       23 CAPTURE                          VAL R1
       24 RETURN                           R3 1
