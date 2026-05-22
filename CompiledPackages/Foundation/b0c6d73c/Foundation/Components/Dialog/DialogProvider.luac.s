PROTO_0:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+12]
        2 GETUPVAL                         R0 1
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K0 ["AbsoluteSize"]
        6 GETTABLEKS                       R1 R1 K1 ["X"]
        8 GETUPVAL                         R2 2
        9 GETTABLEKS                       R2 R2 K2 ["size"]
       11 GETUPVAL                         R3 3
       12 CALL                             R0 3 -1
       13 RETURN                           R0 -1
       14 GETUPVAL                         R0 2
       15 GETTABLEKS                       R0 R0 K3 ["responsiveSize"]
       17 JUMPIF                           R0 ; [+3]
       18 GETUPVAL                         R0 2
       19 GETTABLEKS                       R0 R0 K2 ["size"]
       21 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 GETTABLEKS                       R3 R3 K0 ["useState"]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          VAL R1
        9 CAPTURE                          UPVAL U3
       10 CAPTURE                          VAL R0
       11 CAPTURE                          VAL R2
       12 CALL                             R3 1 2
       13 GETUPVAL                         R5 2
       14 GETTABLEKS                       R5 R5 K0 ["useState"]
       16 GETTABLEKS                       R6 R0 K1 ["hasHeroMedia"]
       18 CALL                             R5 1 2
       19 GETUPVAL                         R7 2
       20 GETTABLEKS                       R7 R7 K2 ["useRef"]
       22 LOADNIL                          R8
       23 CALL                             R7 1 1
       24 GETUPVAL                         R8 2
       25 GETTABLEKS                       R8 R8 K0 ["useState"]
       27 LOADNIL                          R9
       28 CALL                             R8 1 2
       29 GETUPVAL                         R10 2
       30 GETTABLEKS                       R10 R10 K3 ["createElement"]
       32 GETUPVAL                         R11 4
       33 GETTABLEKS                       R11 R11 K4 ["Provider"]
       35 DUPTABLE                         R12 K6 [{"value"}]
       36 DUPTABLE                         R13 K15 [{"size", "responsiveSize", "setResponsiveSize", "hasHeroMedia", "setHasHeroMedia", "testId", "closeAffordanceRef", "contentStartRef", "setContentStartRef"}]
       37 GETTABLEKS                       R14 R0 K7 ["size"]
       39 SETTABLEKS                       R14 R13 K7 ["size"]
       41 SETTABLEKS                       R3 R13 K8 ["responsiveSize"]
       43 SETTABLEKS                       R4 R13 K9 ["setResponsiveSize"]
       45 SETTABLEKS                       R5 R13 K1 ["hasHeroMedia"]
       47 SETTABLEKS                       R6 R13 K10 ["setHasHeroMedia"]
       49 GETTABLEKS                       R14 R0 K11 ["testId"]
       51 SETTABLEKS                       R14 R13 K11 ["testId"]
       53 SETTABLEKS                       R7 R13 K12 ["closeAffordanceRef"]
       55 SETTABLEKS                       R8 R13 K13 ["contentStartRef"]
       57 SETTABLEKS                       R9 R13 K14 ["setContentStartRef"]
       59 SETTABLEKS                       R13 R12 K5 ["value"]
       61 GETTABLEKS                       R13 R0 K16 ["children"]
       63 CALL                             R10 3 -1
       64 RETURN                           R10 -1

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
       27 GETTABLEKS                       R5 R5 K10 ["getResponsiveSize"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K11 ["Providers"]
       34 GETTABLEKS                       R6 R6 K12 ["Overlay"]
       36 GETTABLEKS                       R6 R6 K13 ["useOverlay"]
       38 CALL                             R5 1 1
       39 GETIMPORT                        R6 K6 [require]
       41 GETTABLEKS                       R7 R0 K11 ["Providers"]
       43 GETTABLEKS                       R7 R7 K14 ["Style"]
       45 GETTABLEKS                       R7 R7 K15 ["useTokens"]
       47 CALL                             R6 1 1
       48 GETIMPORT                        R7 K6 [require]
       50 GETIMPORT                        R8 K1 [script]
       52 GETTABLEKS                       R8 R8 K4 ["Parent"]
       54 GETTABLEKS                       R8 R8 K16 ["DialogContext"]
       56 CALL                             R7 1 1
       57 DUPCLOSURE                       R8 K17 [PROTO_1]
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R4
       62 CAPTURE                          VAL R7
       63 RETURN                           R8 1
