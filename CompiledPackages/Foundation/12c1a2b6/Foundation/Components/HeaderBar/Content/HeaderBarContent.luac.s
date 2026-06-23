PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R2 R2 K0 ["createElement"]
        5 GETUPVAL                         R3 2
        6 GETTABLEKS                       R3 R3 K1 ["Provider"]
        8 DUPTABLE                         R4 K4 [{"testId", "slot"}]
        9 GETTABLEKS                       R5 R1 K2 ["testId"]
       11 SETTABLEKS                       R5 R4 K2 ["testId"]
       13 GETUPVAL                         R5 3
       14 GETTABLEKS                       R5 R5 K5 ["Content"]
       16 SETTABLEKS                       R5 R4 K3 ["slot"]
       18 GETUPVAL                         R5 1
       19 GETTABLEKS                       R5 R5 K0 ["createElement"]
       21 GETUPVAL                         R6 4
       22 DUPTABLE                         R7 K8 [{"tag", "LayoutOrder", "testId"}]
       23 LOADK                            R8 K9 ["align-y-center grow size-0-full auto-x"]
       24 SETTABLEKS                       R8 R7 K6 ["tag"]
       26 GETUPVAL                         R8 5
       27 GETTABLEKS                       R8 R8 K10 ["CONTENT_LAYOUT_ORDER"]
       29 SETTABLEKS                       R8 R7 K7 ["LayoutOrder"]
       31 LOADK                            R9 K11 ["%*--content"]
       32 GETTABLEKS                       R11 R1 K2 ["testId"]
       34 NAMECALL                         R9 R9 K12 ["format"]
       36 CALL                             R9 2 1
       37 MOVE                             R8 R9
       38 SETTABLEKS                       R8 R7 K2 ["testId"]
       40 GETTABLEKS                       R8 R0 K13 ["children"]
       42 CALL                             R5 3 -1
       43 CALL                             R2 -1 -1
       44 RETURN                           R2 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R4 K9 ["HeaderBar"]
       20 GETTABLEKS                       R4 R4 K10 ["HeaderBarContext"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K11 ["Enums"]
       27 GETTABLEKS                       R5 R5 K12 ["HeaderBarSlot"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K8 ["Components"]
       34 GETTABLEKS                       R6 R6 K13 ["View"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R0 K8 ["Components"]
       41 GETTABLEKS                       R7 R7 K9 ["HeaderBar"]
       43 GETTABLEKS                       R7 R7 K14 ["constants"]
       45 CALL                             R6 1 1
       46 GETIMPORT                        R7 K6 [require]
       48 GETTABLEKS                       R8 R0 K8 ["Components"]
       50 GETTABLEKS                       R8 R8 K9 ["HeaderBar"]
       52 GETTABLEKS                       R8 R8 K15 ["useHeaderBarContext"]
       54 CALL                             R7 1 1
       55 DUPCLOSURE                       R8 K16 [PROTO_0]
       56 CAPTURE                          VAL R7
       57 CAPTURE                          VAL R2
       58 CAPTURE                          VAL R3
       59 CAPTURE                          VAL R4
       60 CAPTURE                          VAL R5
       61 CAPTURE                          VAL R6
       62 RETURN                           R8 1
