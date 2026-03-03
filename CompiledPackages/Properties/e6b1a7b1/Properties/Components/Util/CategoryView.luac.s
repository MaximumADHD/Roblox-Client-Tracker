PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETUPVAL                         R5 1
        2 NOT                              R4 R5
        3 CALL                             R3 1 0
        4 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K3 [{"tag", "onActivated"}]
        7 LOADK                            R4 K4 ["size-full-700 row align-y-center padding-left-medium padding-y-xxsmall gap-small"]
        8 SETTABLEKS                       R4 R3 K1 ["tag"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 SETTABLEKS                       R4 R3 K2 ["onActivated"]
       15 DUPTABLE                         R4 K8 [{"Arrow", "Label", "RightIcon"}]
       16 GETUPVAL                         R5 5
       17 GETUPVAL                         R6 6
       18 DUPTABLE                         R7 K11 [{"LayoutOrder", "arrow"}]
       19 MOVE                             R8 R0
       20 CALL                             R8 0 1
       21 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       23 DUPTABLE                         R8 K13 [{"expanded"}]
       24 GETUPVAL                         R9 4
       25 SETTABLEKS                       R9 R8 K12 ["expanded"]
       27 SETTABLEKS                       R8 R7 K10 ["arrow"]
       29 CALL                             R5 2 1
       30 SETTABLEKS                       R5 R4 K5 ["Arrow"]
       32 GETUPVAL                         R5 5
       33 GETUPVAL                         R6 7
       34 DUPTABLE                         R7 K15 [{"LayoutOrder", "Text", "tag"}]
       35 MOVE                             R8 R0
       36 CALL                             R8 0 1
       37 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       39 GETUPVAL                         R9 8
       40 GETTABLEKS                       R8 R9 K16 ["categoryName"]
       42 SETTABLEKS                       R8 R7 K14 ["Text"]
       44 LOADK                            R8 K17 ["shrink size-full-full text-no-wrap text-align-x-left text-align-y-center text-title-small clip"]
       45 SETTABLEKS                       R8 R7 K1 ["tag"]
       47 CALL                             R5 2 1
       48 SETTABLEKS                       R5 R4 K6 ["Label"]
       50 GETUPVAL                         R6 8
       51 GETTABLEKS                       R5 R6 K18 ["trailingIcon"]
       53 JUMPIFNOT                        R5 ; [+37]
       54 GETUPVAL                         R5 5
       55 GETUPVAL                         R7 9
       56 GETTABLEKS                       R6 R7 K19 ["IconButton"]
       58 DUPTABLE                         R7 K22 [{"onActivated", "LayoutOrder", "icon", "size"}]
       59 GETUPVAL                         R10 8
       60 GETTABLEKS                       R9 R10 K18 ["trailingIcon"]
       62 GETTABLEKS                       R8 R9 K2 ["onActivated"]
       64 SETTABLEKS                       R8 R7 K2 ["onActivated"]
       66 MOVE                             R8 R0
       67 CALL                             R8 0 1
       68 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       70 DUPTABLE                         R8 K25 [{"name", "variant"}]
       71 GETUPVAL                         R11 8
       72 GETTABLEKS                       R10 R11 K18 ["trailingIcon"]
       74 GETTABLEKS                       R9 R10 K23 ["name"]
       76 SETTABLEKS                       R9 R8 K23 ["name"]
       78 GETUPVAL                         R10 10
       79 GETTABLEKS                       R9 R10 K26 ["Filled"]
       81 SETTABLEKS                       R9 R8 K24 ["variant"]
       83 SETTABLEKS                       R8 R7 K20 ["icon"]
       85 GETUPVAL                         R9 11
       86 GETTABLEKS                       R8 R9 K27 ["XSmall"]
       88 SETTABLEKS                       R8 R7 K21 ["size"]
       90 CALL                             R5 2 1
       91 SETTABLEKS                       R5 R4 K7 ["RightIcon"]
       93 CALL                             R1 3 -1
       94 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useState"]
        3 LOADB                            R2 1
        4 CALL                             R1 1 2
        5 GETUPVAL                         R3 1
        6 CALL                             R3 0 1
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K1 ["useMemo"]
       10 NEWCLOSURE                       R5 P0
       11 CAPTURE                          UPVAL U2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          UPVAL U3
       14 CAPTURE                          VAL R2
       15 CAPTURE                          VAL R1
       16 CAPTURE                          UPVAL U4
       17 CAPTURE                          UPVAL U5
       18 CAPTURE                          UPVAL U6
       19 CAPTURE                          VAL R0
       20 CAPTURE                          UPVAL U7
       21 CAPTURE                          UPVAL U8
       22 CAPTURE                          UPVAL U9
       23 NEWTABLE                         R6 0 4
       25 MOVE                             R7 R1
       26 GETTABLEKS                       R8 R0 K2 ["layoutOrder"]
       28 GETTABLEKS                       R9 R0 K3 ["categoryName"]
       30 MOVE                             R10 R3
       31 SETLIST                          R6 R7 4 [1]
       33 CALL                             R4 2 1
       34 GETUPVAL                         R5 4
       35 GETUPVAL                         R6 3
       36 DUPTABLE                         R7 K6 [{"tag", "LayoutOrder"}]
       37 LOADK                            R8 K7 ["col auto-y size-full-0 gap-none"]
       38 SETTABLEKS                       R8 R7 K4 ["tag"]
       40 GETTABLEKS                       R8 R0 K2 ["layoutOrder"]
       42 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       44 DUPTABLE                         R8 K9 [{"SectionHeader"}]
       45 SETTABLEKS                       R4 R8 K8 ["SectionHeader"]
       47 JUMPIFNOT                        R1 ; [+3]
       48 GETTABLEKS                       R9 R0 K10 ["children"]
       50 JUMP                             ; [+1]
       51 LOADNIL                          R9
       52 CALL                             R5 4 -1
       53 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Parent"]
       11 GETTABLEKS                       R2 R3 K7 ["Foundation"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Components"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["LeftArrowSpacer"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Parent"]
       27 GETTABLEKS                       R4 R5 K11 ["React"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R6 R0 K9 ["Util"]
       34 GETTABLEKS                       R5 R6 K12 ["createNextOrder"]
       36 CALL                             R4 1 1
       37 GETTABLEKS                       R5 R1 K13 ["Text"]
       39 GETTABLEKS                       R6 R1 K14 ["View"]
       41 GETTABLEKS                       R7 R3 K15 ["createElement"]
       43 GETTABLEKS                       R9 R1 K16 ["Hooks"]
       45 GETTABLEKS                       R8 R9 K17 ["useTokens"]
       47 GETTABLEKS                       R10 R1 K18 ["Enums"]
       49 GETTABLEKS                       R9 R10 K19 ["IconSize"]
       51 GETTABLEKS                       R11 R1 K18 ["Enums"]
       53 GETTABLEKS                       R10 R11 K20 ["IconVariant"]
       55 DUPCLOSURE                       R11 K21 [PROTO_2]
       56 CAPTURE                          VAL R3
       57 CAPTURE                          VAL R8
       58 CAPTURE                          VAL R4
       59 CAPTURE                          VAL R6
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R2
       62 CAPTURE                          VAL R5
       63 CAPTURE                          VAL R1
       64 CAPTURE                          VAL R10
       65 CAPTURE                          VAL R9
       66 RETURN                           R11 1
