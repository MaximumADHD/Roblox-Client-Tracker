PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["Item"]
        2 GETUPVAL                         R3 0
        3 GETTABLEKS                       R2 R3 K1 ["createElement"]
        5 LOADK                            R3 K2 ["TextLabel"]
        6 NEWTABLE                         R4 4 0
        8 GETTABLEKS                       R5 R0 K3 ["NextOrder"]
       10 CALL                             R5 0 1
       11 SETTABLEKS                       R5 R4 K4 ["LayoutOrder"]
       13 GETTABLEKS                       R5 R1 K5 ["Text"]
       15 SETTABLEKS                       R5 R4 K5 ["Text"]
       17 GETUPVAL                         R6 0
       18 GETTABLEKS                       R5 R6 K6 ["Tag"]
       20 LOADK                            R6 K7 ["VPF-Label"]
       21 SETTABLE                         R6 R4 R5
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1

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
       16 GETTABLEKS                       R3 R0 K8 ["Types"]
       18 CALL                             R2 1 1
       19 DUPCLOSURE                       R3 K9 [PROTO_0]
       20 CAPTURE                          VAL R1
       21 RETURN                           R3 1
