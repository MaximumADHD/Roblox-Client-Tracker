PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R5 3
        7 GETTABLEKS                       R4 R5 K0 ["createElement"]
        9 GETUPVAL                         R5 4
       10 DUPTABLE                         R6 K5 [{"tag", "LayoutOrder", "padding", "testId"}]
       11 GETTABLEKS                       R8 R3 K6 ["title"]
       13 GETTABLEKS                       R7 R8 K1 ["tag"]
       15 SETTABLEKS                       R7 R6 K1 ["tag"]
       17 GETUPVAL                         R9 5
       18 GETTABLEKS                       R8 R9 K8 ["MIN_LAYOUT_ORDER"]
       20 ADDK                             R7 R8 K7 [1]
       21 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       23 DUPTABLE                         R7 K12 [{"right", "top", "bottom"}]
       24 GETTABLEKS                       R9 R2 K13 ["hasHeroMedia"]
       26 JUMPIFNOT                        R9 ; [+2]
       27 LOADNIL                          R8
       28 JUMP                             ; [+13]
       29 GETIMPORT                        R8 K16 [UDim.new]
       31 LOADN                            R9 0
       32 GETTABLEKS                       R12 R3 K17 ["closeAffordance"]
       34 GETTABLEKS                       R11 R12 K18 ["offset"]
       36 GETTABLEKS                       R13 R1 K19 ["Size"]
       38 GETTABLEKS                       R12 R13 K20 ["Size_1000"]
       40 ADD                              R10 R11 R12
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K9 ["right"]
       44 GETTABLEKS                       R9 R2 K13 ["hasHeroMedia"]
       46 JUMPIFNOT                        R9 ; [+2]
       47 LOADNIL                          R8
       48 JUMP                             ; [+8]
       49 GETIMPORT                        R8 K16 [UDim.new]
       51 LOADN                            R9 0
       52 GETTABLEKS                       R11 R1 K19 ["Size"]
       54 GETTABLEKS                       R10 R11 K21 ["Size_500"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K10 ["top"]
       59 GETUPVAL                         R8 6
       60 MOVE                             R9 R1
       61 CALL                             R8 1 1
       62 SETTABLEKS                       R8 R7 K11 ["bottom"]
       64 SETTABLEKS                       R7 R6 K3 ["padding"]
       66 LOADK                            R8 K22 ["%*--title"]
       67 GETTABLEKS                       R10 R2 K4 ["testId"]
       69 NAMECALL                         R8 R8 K23 ["format"]
       71 CALL                             R8 2 1
       72 MOVE                             R7 R8
       73 SETTABLEKS                       R7 R6 K4 ["testId"]
       75 DUPTABLE                         R7 K25 [{"Title"}]
       76 GETUPVAL                         R9 3
       77 GETTABLEKS                       R8 R9 K0 ["createElement"]
       79 GETUPVAL                         R9 7
       80 DUPTABLE                         R10 K27 [{"tag", "Text"}]
       81 GETTABLEKS                       R12 R3 K28 ["titleText"]
       83 GETTABLEKS                       R11 R12 K1 ["tag"]
       85 SETTABLEKS                       R11 R10 K1 ["tag"]
       87 GETTABLEKS                       R11 R0 K29 ["text"]
       89 SETTABLEKS                       R11 R10 K26 ["Text"]
       91 CALL                             R8 2 1
       92 SETTABLEKS                       R8 R7 K24 ["Title"]
       94 CALL                             R4 3 -1
       95 RETURN                           R4 -1

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
       16 GETTABLEKS                       R4 R0 K8 ["Constants"]
       18 CALL                             R3 1 1
       19 GETIMPORT                        R4 K6 [require]
       21 GETTABLEKS                       R6 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R6 K10 ["Text"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R7 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R7 K11 ["Types"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R8 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R8 K12 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R10 R0 K13 ["Providers"]
       44 GETTABLEKS                       R9 R10 K14 ["Style"]
       46 GETTABLEKS                       R8 R9 K15 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETIMPORT                        R12 K1 [script]
       53 GETTABLEKS                       R11 R12 K4 ["Parent"]
       55 GETTABLEKS                       R10 R11 K4 ["Parent"]
       57 GETTABLEKS                       R9 R10 K16 ["useDialog"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R10 K6 [require]
       62 GETIMPORT                        R14 K1 [script]
       64 GETTABLEKS                       R13 R14 K4 ["Parent"]
       66 GETTABLEKS                       R12 R13 K4 ["Parent"]
       68 GETTABLEKS                       R11 R12 K17 ["useDialogVariants"]
       70 CALL                             R10 1 1
       71 GETTABLEKS                       R9 R10 K17 ["useDialogVariants"]
       73 GETIMPORT                        R10 K6 [require]
       75 GETIMPORT                        R13 K1 [script]
       77 GETTABLEKS                       R12 R13 K4 ["Parent"]
       79 GETTABLEKS                       R11 R12 K18 ["getBottomSpacing"]
       81 CALL                             R10 1 1
       82 DUPCLOSURE                       R11 K19 [PROTO_0]
       83 CAPTURE                          VAL R7
       84 CAPTURE                          VAL R8
       85 CAPTURE                          VAL R9
       86 CAPTURE                          VAL R2
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R3
       89 CAPTURE                          VAL R10
       90 CAPTURE                          VAL R4
       91 RETURN                           R11 1
