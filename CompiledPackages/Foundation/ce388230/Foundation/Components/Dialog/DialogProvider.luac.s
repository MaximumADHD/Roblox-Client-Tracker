PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["FoundationDialogFixResponsiveSize"]
        3 JUMPIFNOT                        R0 ; [+14]
        4 GETUPVAL                         R0 1
        5 JUMPIFNOT                        R0 ; [+12]
        6 GETUPVAL                         R0 2
        7 GETUPVAL                         R1 1
        8 GETTABLEKS                       R1 R1 K1 ["AbsoluteSize"]
       10 GETTABLEKS                       R1 R1 K2 ["X"]
       12 GETUPVAL                         R2 3
       13 GETTABLEKS                       R2 R2 K3 ["size"]
       15 GETUPVAL                         R3 4
       16 CALL                             R0 3 -1
       17 RETURN                           R0 -1
       18 GETUPVAL                         R0 3
       19 GETTABLEKS                       R0 R0 K4 ["responsiveSize"]
       21 JUMPIF                           R0 ; [+3]
       22 GETUPVAL                         R0 3
       23 GETTABLEKS                       R0 R0 K3 ["size"]
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useState"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          VAL R1
       10 CAPTURE                          UPVAL U4
       11 CAPTURE                          VAL R0
       12 CAPTURE                          VAL R2
       13 CALL                             R3 1 2
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R5 R5 K0 ["useState"]
       17 GETTABLEKS                       R6 R0 K1 ["hasHeroMedia"]
       19 CALL                             R5 1 2
       20 GETUPVAL                         R7 2
       21 GETTABLEKS                       R7 R7 K2 ["createElement"]
       23 GETUPVAL                         R8 5
       24 GETTABLEKS                       R8 R8 K3 ["Provider"]
       26 DUPTABLE                         R9 K5 [{"value"}]
       27 DUPTABLE                         R10 K11 [{"size", "responsiveSize", "setResponsiveSize", "hasHeroMedia", "setHasHeroMedia", "testId"}]
       28 GETTABLEKS                       R11 R0 K6 ["size"]
       30 SETTABLEKS                       R11 R10 K6 ["size"]
       32 SETTABLEKS                       R3 R10 K7 ["responsiveSize"]
       34 SETTABLEKS                       R4 R10 K8 ["setResponsiveSize"]
       36 SETTABLEKS                       R5 R10 K1 ["hasHeroMedia"]
       38 SETTABLEKS                       R6 R10 K9 ["setHasHeroMedia"]
       40 GETTABLEKS                       R11 R0 K10 ["testId"]
       42 SETTABLEKS                       R11 R10 K10 ["testId"]
       44 SETTABLEKS                       R10 R9 K4 ["value"]
       46 GETTABLEKS                       R10 R0 K12 ["children"]
       48 CALL                             R7 3 -1
       49 RETURN                           R7 -1

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
       23 GETTABLEKS                       R5 R0 K10 ["Utility"]
       25 GETTABLEKS                       R5 R5 K11 ["Flags"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETIMPORT                        R6 K1 [script]
       32 GETTABLEKS                       R6 R6 K4 ["Parent"]
       34 GETTABLEKS                       R6 R6 K12 ["getResponsiveSize"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K13 ["Providers"]
       41 GETTABLEKS                       R7 R7 K14 ["Overlay"]
       43 GETTABLEKS                       R7 R7 K15 ["useOverlay"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K13 ["Providers"]
       50 GETTABLEKS                       R8 R8 K16 ["Style"]
       52 GETTABLEKS                       R8 R8 K17 ["useTokens"]
       54 CALL                             R7 1 1
       55 GETIMPORT                        R8 K6 [require]
       57 GETIMPORT                        R9 K1 [script]
       59 GETTABLEKS                       R9 R9 K4 ["Parent"]
       61 GETTABLEKS                       R9 R9 K18 ["DialogContext"]
       63 CALL                             R8 1 1
       64 DUPCLOSURE                       R9 K19 [PROTO_1]
       65 CAPTURE                          VAL R6
       66 CAPTURE                          VAL R7
       67 CAPTURE                          VAL R2
       68 CAPTURE                          VAL R4
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R8
       71 RETURN                           R9 1
