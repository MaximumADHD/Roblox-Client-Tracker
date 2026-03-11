PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["onActivated"]
        3 GETUPVAL                         R2 0
        4 GETTABLEKS                       R1 R2 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R2
        4 GETTABLEKS                       R5 R0 K0 ["size"]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R5 2
        8 GETTABLEKS                       R4 R5 K1 ["createElement"]
       10 GETUPVAL                         R5 3
       11 GETUPVAL                         R6 4
       12 MOVE                             R7 R0
       13 DUPTABLE                         R8 K5 [{"tag", "onActivated", "ref"}]
       14 GETTABLEKS                       R10 R3 K6 ["segment"]
       16 GETTABLEKS                       R9 R10 K2 ["tag"]
       18 SETTABLEKS                       R9 R8 K2 ["tag"]
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R9 R8 K3 ["onActivated"]
       24 SETTABLEKS                       R1 R8 K4 ["ref"]
       26 CALL                             R6 2 1
       27 DUPTABLE                         R7 K8 [{"Text"}]
       28 GETUPVAL                         R9 2
       29 GETTABLEKS                       R8 R9 K1 ["createElement"]
       31 GETUPVAL                         R9 5
       32 DUPTABLE                         R10 K9 [{"tag", "Text"}]
       33 GETTABLEKS                       R12 R3 K10 ["text"]
       35 GETTABLEKS                       R11 R12 K2 ["tag"]
       37 SETTABLEKS                       R11 R10 K2 ["tag"]
       39 GETTABLEKS                       R11 R0 K10 ["text"]
       41 SETTABLEKS                       R11 R10 K7 ["Text"]
       43 CALL                             R8 2 1
       44 SETTABLEKS                       R8 R7 K7 ["Text"]
       46 CALL                             R4 3 -1
       47 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R5 K9 ["Text"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R6 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R6 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R7 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R7 K11 ["View"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R8 R0 K12 ["Enums"]
       39 GETTABLEKS                       R7 R8 K13 ["InputSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R10 R0 K14 ["Providers"]
       46 GETTABLEKS                       R9 R10 K15 ["Style"]
       48 GETTABLEKS                       R8 R9 K16 ["useTokens"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R10 R0 K17 ["Utility"]
       55 GETTABLEKS                       R9 R10 K18 ["withCommonProps"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETIMPORT                        R12 K1 [script]
       62 GETTABLEKS                       R11 R12 K4 ["Parent"]
       64 GETTABLEKS                       R10 R11 K19 ["useSegmentedControlVariants"]
       66 CALL                             R9 1 1
       67 DUPCLOSURE                       R10 K20 [PROTO_1]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R5
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R3
       74 GETTABLEKS                       R11 R2 K21 ["memo"]
       76 GETTABLEKS                       R12 R2 K22 ["forwardRef"]
       78 MOVE                             R13 R10
       79 CALL                             R12 1 -1
       80 CALL                             R11 -1 -1
       81 RETURN                           R11 -1
