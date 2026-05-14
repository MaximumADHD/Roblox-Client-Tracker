PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 MOVE                             R3 R1
        4 GETTABLEKS                       R4 R0 K0 ["size"]
        6 CALL                             R2 2 1
        7 GETUPVAL                         R3 2
        8 GETTABLEKS                       R3 R3 K1 ["createElement"]
       10 GETUPVAL                         R4 3
       11 GETUPVAL                         R5 4
       12 MOVE                             R6 R0
       13 DUPTABLE                         R7 K6 [{"tag", "onActivated", "onStateChanged", "backgroundStyle"}]
       14 GETTABLEKS                       R8 R2 K7 ["segment"]
       16 GETTABLEKS                       R8 R8 K2 ["tag"]
       18 SETTABLEKS                       R8 R7 K2 ["tag"]
       20 NEWCLOSURE                       R8 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R8 R7 K3 ["onActivated"]
       24 GETTABLEKS                       R8 R0 K4 ["onStateChanged"]
       26 SETTABLEKS                       R8 R7 K4 ["onStateChanged"]
       28 GETTABLEKS                       R9 R0 K8 ["isActive"]
       30 JUMPIFNOT                        R9 ; [+7]
       31 GETTABLEKS                       R8 R1 K9 ["Color"]
       33 GETTABLEKS                       R8 R8 K10 ["Shift"]
       35 GETTABLEKS                       R8 R8 K11 ["Shift_400"]
       37 JUMP                             ; [+1]
       38 LOADNIL                          R8
       39 SETTABLEKS                       R8 R7 K5 ["backgroundStyle"]
       41 CALL                             R5 2 1
       42 DUPTABLE                         R6 K13 [{"Text"}]
       43 GETUPVAL                         R7 2
       44 GETTABLEKS                       R7 R7 K1 ["createElement"]
       46 GETUPVAL                         R8 5
       47 DUPTABLE                         R9 K14 [{"tag", "Text"}]
       48 GETTABLEKS                       R10 R2 K15 ["text"]
       50 GETTABLEKS                       R10 R10 K2 ["tag"]
       52 SETTABLEKS                       R10 R9 K2 ["tag"]
       54 GETTABLEKS                       R10 R0 K15 ["text"]
       56 SETTABLEKS                       R10 R9 K12 ["Text"]
       58 CALL                             R7 2 1
       59 SETTABLEKS                       R7 R6 K12 ["Text"]
       61 CALL                             R3 3 -1
       62 RETURN                           R3 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Types"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["View"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["Text"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Enums"]
       39 GETTABLEKS                       R7 R7 K13 ["InputSize"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Providers"]
       46 GETTABLEKS                       R8 R8 K15 ["Style"]
       48 GETTABLEKS                       R8 R8 K16 ["useTokens"]
       50 CALL                             R7 1 1
       51 GETIMPORT                        R8 K6 [require]
       53 GETTABLEKS                       R9 R0 K17 ["Utility"]
       55 GETTABLEKS                       R9 R9 K18 ["withCommonProps"]
       57 CALL                             R8 1 1
       58 GETIMPORT                        R9 K6 [require]
       60 GETIMPORT                        R10 K1 [script]
       62 GETTABLEKS                       R10 R10 K4 ["Parent"]
       64 GETTABLEKS                       R10 R10 K19 ["useSegmentedControlVariants"]
       66 CALL                             R9 1 1
       67 DUPCLOSURE                       R10 K20 [PROTO_1]
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R9
       70 CAPTURE                          VAL R2
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R8
       73 CAPTURE                          VAL R5
       74 GETTABLEKS                       R11 R2 K21 ["memo"]
       76 MOVE                             R12 R10
       77 CALL                             R11 1 -1
       78 RETURN                           R11 -1
