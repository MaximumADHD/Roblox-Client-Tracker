PROTO_0:
        0 MOVE                             R1 R0
        1 JUMPIF                           R1 ; [+2]
        2 NEWTABLE                         R1 0 0
        4 GETUPVAL                         R2 0
        5 DUPTABLE                         R3 K1 [{"OverlayProvider"}]
        6 GETUPVAL                         R4 1
        7 GETTABLEKS                       R4 R4 K2 ["createElement"]
        9 GETUPVAL                         R5 2
       10 NEWTABLE                         R6 0 0
       12 DUPTABLE                         R7 K4 [{"Container"}]
       13 GETUPVAL                         R8 1
       14 GETTABLEKS                       R8 R8 K2 ["createElement"]
       16 GETUPVAL                         R9 3
       17 DUPTABLE                         R10 K6 [{"tag"}]
       18 GETTABLEKS                       R12 R1 K5 ["tag"]
       20 ORK                              R11 R12 K7 ["size-full-full col"]
       21 SETTABLEKS                       R11 R10 K5 ["tag"]
       23 DUPTABLE                         R11 K9 [{"App"}]
       24 GETUPVAL                         R12 1
       25 GETTABLEKS                       R12 R12 K2 ["createElement"]
       27 GETUPVAL                         R13 4
       28 CALL                             R12 1 1
       29 SETTABLEKS                       R12 R11 K8 ["App"]
       31 CALL                             R8 3 1
       32 SETTABLEKS                       R8 R7 K3 ["Container"]
       34 CALL                             R4 3 1
       35 SETTABLEKS                       R4 R3 K0 ["OverlayProvider"]
       37 CALL                             R2 1 -1
       38 RETURN                           R2 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["InputActionManager"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Util"]
       27 GETTABLEKS                       R4 R4 K11 ["Test"]
       29 GETTABLEKS                       R4 R4 K12 ["Mock"]
       31 GETTABLEKS                       R4 R4 K13 ["mockContext"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K9 ["Src"]
       38 GETTABLEKS                       R5 R5 K14 ["Host"]
       40 GETTABLEKS                       R5 R5 K15 ["App"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K9 ["Src"]
       47 GETTABLEKS                       R6 R6 K10 ["Util"]
       49 GETTABLEKS                       R6 R6 K11 ["Test"]
       51 GETTABLEKS                       R6 R6 K16 ["Setup"]
       53 GETTABLEKS                       R6 R6 K17 ["SelfContainedOverlayProvider"]
       55 CALL                             R5 1 1
       56 GETTABLEKS                       R6 R1 K18 ["View"]
       58 DUPCLOSURE                       R7 K19 [PROTO_0]
       59 CAPTURE                          VAL R3
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R5
       62 CAPTURE                          VAL R6
       63 CAPTURE                          VAL R4
       64 RETURN                           R7 1
