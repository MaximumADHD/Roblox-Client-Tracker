PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useState"]
        3 GETTABLEKS                       R2 R0 K1 ["responsiveSize"]
        5 CALL                             R1 1 2
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K0 ["useState"]
        9 GETTABLEKS                       R4 R0 K2 ["hasHeroMedia"]
       11 CALL                             R3 1 2
       12 GETUPVAL                         R5 0
       13 GETTABLEKS                       R5 R5 K3 ["createElement"]
       15 GETUPVAL                         R6 1
       16 GETTABLEKS                       R6 R6 K4 ["Provider"]
       18 DUPTABLE                         R7 K6 [{"value"}]
       19 DUPTABLE                         R8 K11 [{"size", "responsiveSize", "setResponsiveSize", "hasHeroMedia", "setHasHeroMedia", "testId"}]
       20 GETTABLEKS                       R9 R0 K7 ["size"]
       22 SETTABLEKS                       R9 R8 K7 ["size"]
       24 SETTABLEKS                       R1 R8 K1 ["responsiveSize"]
       26 SETTABLEKS                       R2 R8 K8 ["setResponsiveSize"]
       28 SETTABLEKS                       R3 R8 K2 ["hasHeroMedia"]
       30 SETTABLEKS                       R4 R8 K9 ["setHasHeroMedia"]
       32 GETTABLEKS                       R9 R0 K10 ["testId"]
       34 SETTABLEKS                       R9 R8 K10 ["testId"]
       36 SETTABLEKS                       R8 R7 K5 ["value"]
       38 GETTABLEKS                       R8 R0 K12 ["children"]
       40 CALL                             R5 3 -1
       41 RETURN                           R5 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R4 K9 ["DialogSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETIMPORT                        R5 K1 [script]
       25 GETTABLEKS                       R5 R5 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K10 ["DialogContext"]
       29 CALL                             R4 1 1
       30 DUPCLOSURE                       R5 K11 [PROTO_0]
       31 CAPTURE                          VAL R2
       32 CAPTURE                          VAL R4
       33 RETURN                           R5 1
