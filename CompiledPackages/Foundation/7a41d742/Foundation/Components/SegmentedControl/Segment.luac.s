PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["onActivated"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["id"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 CALL                             R2 0 1
        2 GETUPVAL                         R3 1
        3 MOVE                             R4 R2
        4 GETTABLEKS                       R5 R0 K0 ["size"]
        6 CALL                             R3 2 1
        7 GETUPVAL                         R4 2
        8 GETTABLEKS                       R4 R4 K1 ["createElement"]
       10 GETUPVAL                         R5 3
       11 GETUPVAL                         R6 4
       12 MOVE                             R7 R0
       13 DUPTABLE                         R8 K7 [{"tag", "onActivated", "onStateChanged", "backgroundStyle", "ref"}]
       14 GETTABLEKS                       R9 R3 K8 ["segment"]
       16 GETTABLEKS                       R9 R9 K2 ["tag"]
       18 SETTABLEKS                       R9 R8 K2 ["tag"]
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R9 R8 K3 ["onActivated"]
       24 GETUPVAL                         R10 5
       25 GETTABLEKS                       R10 R10 K9 ["FoundationRemoveDividerSegmentedControl"]
       27 JUMPIFNOT                        R10 ; [+2]
       28 LOADNIL                          R9
       29 JUMP                             ; [+2]
       30 GETTABLEKS                       R9 R0 K4 ["onStateChanged"]
       32 SETTABLEKS                       R9 R8 K4 ["onStateChanged"]
       34 GETUPVAL                         R10 5
       35 GETTABLEKS                       R10 R10 K10 ["FoundationAnimateSegmentedControl"]
       37 JUMPIFNOT                        R10 ; [+2]
       38 LOADNIL                          R9
       39 JUMP                             ; [+11]
       40 GETTABLEKS                       R10 R0 K11 ["isActive"]
       42 JUMPIFNOT                        R10 ; [+7]
       43 GETTABLEKS                       R9 R2 K12 ["Color"]
       45 GETTABLEKS                       R9 R9 K13 ["Shift"]
       47 GETTABLEKS                       R9 R9 K14 ["Shift_400"]
       49 JUMP                             ; [+1]
       50 LOADNIL                          R9
       51 SETTABLEKS                       R9 R8 K5 ["backgroundStyle"]
       53 GETUPVAL                         R10 5
       54 GETTABLEKS                       R10 R10 K10 ["FoundationAnimateSegmentedControl"]
       56 JUMPIFNOT                        R10 ; [+2]
       57 MOVE                             R9 R1
       58 JUMP                             ; [+1]
       59 LOADNIL                          R9
       60 SETTABLEKS                       R9 R8 K6 ["ref"]
       62 CALL                             R6 2 1
       63 DUPTABLE                         R7 K16 [{"Text"}]
       64 GETUPVAL                         R8 2
       65 GETTABLEKS                       R8 R8 K1 ["createElement"]
       67 GETUPVAL                         R9 6
       68 DUPTABLE                         R10 K17 [{"tag", "Text"}]
       69 GETTABLEKS                       R11 R3 K18 ["text"]
       71 GETTABLEKS                       R11 R11 K2 ["tag"]
       73 SETTABLEKS                       R11 R10 K2 ["tag"]
       75 GETTABLEKS                       R11 R0 K18 ["text"]
       77 SETTABLEKS                       R11 R10 K15 ["Text"]
       79 CALL                             R8 2 1
       80 SETTABLEKS                       R8 R7 K15 ["Text"]
       82 CALL                             R4 3 -1
       83 RETURN                           R4 -1

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
       18 GETTABLEKS                       R4 R4 K9 ["Text"]
       20 CALL                             R3 1 1
       21 GETIMPORT                        R4 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Components"]
       25 GETTABLEKS                       R5 R5 K10 ["Types"]
       27 CALL                             R4 1 1
       28 GETIMPORT                        R5 K6 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Components"]
       32 GETTABLEKS                       R6 R6 K11 ["View"]
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
       67 GETIMPORT                        R10 K6 [require]
       69 GETTABLEKS                       R11 R0 K17 ["Utility"]
       71 GETTABLEKS                       R11 R11 K20 ["Flags"]
       73 CALL                             R10 1 1
       74 DUPCLOSURE                       R11 K21 [PROTO_1]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R3
       82 GETTABLEKS                       R13 R10 K22 ["FoundationAnimateSegmentedControl"]
       84 JUMPIFNOT                        R13 ; [+8]
       85 GETTABLEKS                       R12 R2 K23 ["memo"]
       87 GETTABLEKS                       R13 R2 K24 ["forwardRef"]
       89 MOVE                             R14 R11
       90 CALL                             R13 1 -1
       91 CALL                             R12 -1 1
       92 RETURN                           R12 1
       93 GETTABLEKS                       R12 R2 K23 ["memo"]
       95 MOVE                             R13 R11
       96 CALL                             R12 1 1
       97 RETURN                           R12 1
