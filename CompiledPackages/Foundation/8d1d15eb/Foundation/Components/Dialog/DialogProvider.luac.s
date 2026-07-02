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
       21 GETTABLEKS                       R7 R7 K2 ["useRef"]
       23 LOADNIL                          R8
       24 CALL                             R7 1 1
       25 GETUPVAL                         R8 2
       26 GETTABLEKS                       R8 R8 K0 ["useState"]
       28 LOADNIL                          R9
       29 CALL                             R8 1 2
       30 GETUPVAL                         R10 2
       31 GETTABLEKS                       R10 R10 K3 ["createElement"]
       33 GETUPVAL                         R11 5
       34 GETTABLEKS                       R11 R11 K4 ["Provider"]
       36 DUPTABLE                         R12 K6 [{"value"}]
       37 DUPTABLE                         R13 K15 [{"size", "responsiveSize", "setResponsiveSize", "hasHeroMedia", "setHasHeroMedia", "testId", "closeAffordanceRef", "contentStartRef", "setContentStartRef"}]
       38 GETTABLEKS                       R14 R0 K7 ["size"]
       40 SETTABLEKS                       R14 R13 K7 ["size"]
       42 SETTABLEKS                       R3 R13 K8 ["responsiveSize"]
       44 SETTABLEKS                       R4 R13 K9 ["setResponsiveSize"]
       46 SETTABLEKS                       R5 R13 K1 ["hasHeroMedia"]
       48 SETTABLEKS                       R6 R13 K10 ["setHasHeroMedia"]
       50 GETTABLEKS                       R14 R0 K11 ["testId"]
       52 SETTABLEKS                       R14 R13 K11 ["testId"]
       54 SETTABLEKS                       R7 R13 K12 ["closeAffordanceRef"]
       56 SETTABLEKS                       R8 R13 K13 ["contentStartRef"]
       58 SETTABLEKS                       R9 R13 K14 ["setContentStartRef"]
       60 SETTABLEKS                       R13 R12 K5 ["value"]
       62 GETTABLEKS                       R13 R0 K16 ["children"]
       64 CALL                             R10 3 -1
       65 RETURN                           R10 -1

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
