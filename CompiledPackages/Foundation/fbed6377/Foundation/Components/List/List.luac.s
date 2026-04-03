PROTO_0:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R0
        2 GETUPVAL                         R4 1
        3 CALL                             R2 2 1
        4 GETUPVAL                         R4 2
        5 GETTABLEKS                       R3 R4 K0 ["createElement"]
        7 GETUPVAL                         R4 3
        8 GETUPVAL                         R5 4
        9 MOVE                             R6 R2
       10 DUPTABLE                         R7 K3 [{"tag", "ref"}]
       11 LOADK                            R8 K4 ["col size-full-0 auto-y"]
       12 SETTABLEKS                       R8 R7 K1 ["tag"]
       14 SETTABLEKS                       R1 R7 K2 ["ref"]
       16 CALL                             R5 2 1
       17 DUPTABLE                         R6 K6 [{"ListContext"}]
       18 GETUPVAL                         R8 2
       19 GETTABLEKS                       R7 R8 K0 ["createElement"]
       21 GETUPVAL                         R9 5
       22 GETTABLEKS                       R8 R9 K7 ["Provider"]
       24 DUPTABLE                         R9 K9 [{"value"}]
       25 DUPTABLE                         R10 K14 [{"hasDivider", "isInset", "size", "testId"}]
       26 GETTABLEKS                       R11 R2 K10 ["hasDivider"]
       28 SETTABLEKS                       R11 R10 K10 ["hasDivider"]
       30 GETTABLEKS                       R11 R2 K11 ["isInset"]
       32 SETTABLEKS                       R11 R10 K11 ["isInset"]
       34 GETTABLEKS                       R11 R2 K12 ["size"]
       36 SETTABLEKS                       R11 R10 K12 ["size"]
       38 GETTABLEKS                       R11 R2 K13 ["testId"]
       40 SETTABLEKS                       R11 R10 K13 ["testId"]
       42 SETTABLEKS                       R10 R9 K8 ["value"]
       44 GETTABLEKS                       R10 R2 K15 ["children"]
       46 CALL                             R7 3 1
       47 SETTABLEKS                       R7 R6 K5 ["ListContext"]
       49 CALL                             R3 3 -1
       50 RETURN                           R3 -1

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
       16 GETTABLEKS                       R5 R0 K8 ["Enums"]
       18 GETTABLEKS                       R4 R5 K9 ["InputSize"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K10 ["Components"]
       25 GETTABLEKS                       R5 R6 K11 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K10 ["Components"]
       32 GETTABLEKS                       R6 R7 K12 ["View"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K13 ["Utility"]
       39 GETTABLEKS                       R7 R8 K14 ["withCommonProps"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K13 ["Utility"]
       46 GETTABLEKS                       R8 R9 K15 ["withDefaults"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETIMPORT                        R11 K1 [script]
       53 GETTABLEKS                       R10 R11 K4 ["Parent"]
       55 GETTABLEKS                       R9 R10 K16 ["ListContext"]
       57 CALL                             R8 1 1
       58 DUPTABLE                         R9 K18 [{"testId"}]
       59 LOADK                            R10 K19 ["--foundation-list"]
       60 SETTABLEKS                       R10 R9 K17 ["testId"]
       62 DUPCLOSURE                       R10 K20 [PROTO_0]
       63 CAPTURE                          VAL R7
       64 CAPTURE                          VAL R9
       65 CAPTURE                          VAL R2
       66 CAPTURE                          VAL R5
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R8
       69 GETTABLEKS                       R11 R2 K21 ["memo"]
       71 GETTABLEKS                       R12 R2 K22 ["forwardRef"]
       73 MOVE                             R13 R10
       74 CALL                             R12 1 -1
       75 CALL                             R11 -1 -1
       76 RETURN                           R11 -1
