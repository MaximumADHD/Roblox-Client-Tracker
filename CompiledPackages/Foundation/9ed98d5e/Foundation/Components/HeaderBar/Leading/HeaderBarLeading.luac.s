PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R3 1
        3 GETTABLEKS                       R2 R3 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 DUPTABLE                         R4 K3 [{"tag", "testId"}]
        7 LOADK                            R5 K4 ["row align-y-center shrink gap-small size-full"]
        8 SETTABLEKS                       R5 R4 K1 ["tag"]
       10 LOADK                            R6 K5 ["%*--leading"]
       11 GETTABLEKS                       R8 R1 K2 ["testId"]
       13 NAMECALL                         R6 R6 K6 ["format"]
       15 CALL                             R6 2 1
       16 MOVE                             R5 R6
       17 SETTABLEKS                       R5 R4 K2 ["testId"]
       19 GETTABLEKS                       R5 R0 K7 ["children"]
       21 CALL                             R2 3 -1
       22 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Foundation"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["React"]
       13 CALL                             R2 1 1
       14 GETIMPORT                        R3 K6 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["View"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R7 R0 K8 ["Components"]
       25 GETTABLEKS                       R6 R7 K10 ["HeaderBar"]
       27 GETTABLEKS                       R5 R6 K11 ["useHeaderBarContext"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K12 [PROTO_0]
       31 CAPTURE                          VAL R4
       32 CAPTURE                          VAL R2
       33 CAPTURE                          VAL R3
       34 RETURN                           R5 1
