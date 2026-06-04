PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 GETTABLEKS                       R4 R4 K0 ["createElement"]
        9 GETUPVAL                         R5 4
       10 DUPTABLE                         R6 K5 [{"tag", "LayoutOrder", "padding", "testId"}]
       11 GETTABLEKS                       R7 R3 K6 ["title"]
       13 GETTABLEKS                       R7 R7 K1 ["tag"]
       15 SETTABLEKS                       R7 R6 K1 ["tag"]
       17 GETUPVAL                         R8 5
       18 GETTABLEKS                       R8 R8 K8 ["MIN_LAYOUT_ORDER"]
       20 ADDK                             R7 R8 K7 [1]
       21 SETTABLEKS                       R7 R6 K2 ["LayoutOrder"]
       23 DUPTABLE                         R7 K11 [{"right", "top"}]
       24 GETTABLEKS                       R9 R2 K12 ["hasHeroMedia"]
       26 JUMPIFNOT                        R9 ; [+2]
       27 LOADNIL                          R8
       28 JUMP                             ; [+13]
       29 GETIMPORT                        R8 K15 [UDim.new]
       31 LOADN                            R9 0
       32 GETTABLEKS                       R11 R3 K16 ["closeAffordance"]
       34 GETTABLEKS                       R11 R11 K17 ["offset"]
       36 GETTABLEKS                       R12 R1 K18 ["Size"]
       38 GETTABLEKS                       R12 R12 K19 ["Size_1000"]
       40 ADD                              R10 R11 R12
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K9 ["right"]
       44 GETTABLEKS                       R9 R2 K12 ["hasHeroMedia"]
       46 JUMPIFNOT                        R9 ; [+2]
       47 LOADNIL                          R8
       48 JUMP                             ; [+8]
       49 GETIMPORT                        R8 K15 [UDim.new]
       51 LOADN                            R9 0
       52 GETTABLEKS                       R10 R1 K18 ["Size"]
       54 GETTABLEKS                       R10 R10 K20 ["Size_500"]
       56 CALL                             R8 2 1
       57 SETTABLEKS                       R8 R7 K10 ["top"]
       59 SETTABLEKS                       R7 R6 K3 ["padding"]
       61 LOADK                            R8 K21 ["%*--title"]
       62 GETTABLEKS                       R10 R2 K4 ["testId"]
       64 NAMECALL                         R8 R8 K22 ["format"]
       66 CALL                             R8 2 1
       67 MOVE                             R7 R8
       68 SETTABLEKS                       R7 R6 K4 ["testId"]
       70 DUPTABLE                         R7 K24 [{"Title"}]
       71 GETUPVAL                         R8 3
       72 GETTABLEKS                       R8 R8 K0 ["createElement"]
       74 GETUPVAL                         R9 6
       75 DUPTABLE                         R10 K26 [{"tag", "Text"}]
       76 GETTABLEKS                       R11 R3 K27 ["titleText"]
       78 GETTABLEKS                       R11 R11 K1 ["tag"]
       80 SETTABLEKS                       R11 R10 K1 ["tag"]
       82 GETTABLEKS                       R11 R0 K28 ["text"]
       84 SETTABLEKS                       R11 R10 K25 ["Text"]
       86 CALL                             R8 2 1
       87 SETTABLEKS                       R8 R7 K23 ["Title"]
       89 CALL                             R4 3 -1
       90 RETURN                           R4 -1

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
       21 GETTABLEKS                       R5 R0 K9 ["Components"]
       23 GETTABLEKS                       R5 R5 K10 ["Text"]
       25 CALL                             R4 1 1
       26 GETIMPORT                        R5 K6 [require]
       28 GETTABLEKS                       R6 R0 K9 ["Components"]
       30 GETTABLEKS                       R6 R6 K11 ["Types"]
       32 CALL                             R5 1 1
       33 GETIMPORT                        R6 K6 [require]
       35 GETTABLEKS                       R7 R0 K9 ["Components"]
       37 GETTABLEKS                       R7 R7 K12 ["View"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R0 K13 ["Providers"]
       44 GETTABLEKS                       R8 R8 K14 ["Style"]
       46 GETTABLEKS                       R8 R8 K15 ["useTokens"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K6 [require]
       51 GETIMPORT                        R9 K1 [script]
       53 GETTABLEKS                       R9 R9 K4 ["Parent"]
       55 GETTABLEKS                       R9 R9 K4 ["Parent"]
       57 GETTABLEKS                       R9 R9 K16 ["useDialog"]
       59 CALL                             R8 1 1
       60 GETIMPORT                        R9 K6 [require]
       62 GETIMPORT                        R10 K1 [script]
       64 GETTABLEKS                       R10 R10 K4 ["Parent"]
       66 GETTABLEKS                       R10 R10 K4 ["Parent"]
       68 GETTABLEKS                       R10 R10 K17 ["useDialogVariants"]
       70 CALL                             R9 1 1
       71 GETTABLEKS                       R9 R9 K17 ["useDialogVariants"]
       73 DUPCLOSURE                       R10 K18 [PROTO_0]
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R9
       77 CAPTURE                          VAL R2
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R3
       80 CAPTURE                          VAL R4
       81 RETURN                           R10 1
