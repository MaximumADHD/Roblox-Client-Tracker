PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["setExpanded"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R5 R5 K1 ["getValue"]
        6 CALL                             R5 1 1
        7 NOT                              R4 R5
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

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
       39 GETUPVAL                         R8 8
       40 SETTABLEKS                       R8 R7 K14 ["Text"]
       42 LOADK                            R8 K16 ["shrink size-full-full text-no-wrap text-align-x-left text-align-y-center text-title-small clip"]
       43 SETTABLEKS                       R8 R7 K1 ["tag"]
       45 CALL                             R5 2 1
       46 SETTABLEKS                       R5 R4 K6 ["Label"]
       48 GETUPVAL                         R6 3
       49 GETTABLEKS                       R5 R6 K17 ["trailingIcon"]
       51 JUMPIFNOT                        R5 ; [+37]
       52 GETUPVAL                         R5 5
       53 GETUPVAL                         R7 9
       54 GETTABLEKS                       R6 R7 K18 ["IconButton"]
       56 DUPTABLE                         R7 K21 [{"onActivated", "LayoutOrder", "icon", "size"}]
       57 GETUPVAL                         R10 3
       58 GETTABLEKS                       R9 R10 K17 ["trailingIcon"]
       60 GETTABLEKS                       R8 R9 K2 ["onActivated"]
       62 SETTABLEKS                       R8 R7 K2 ["onActivated"]
       64 MOVE                             R8 R0
       65 CALL                             R8 0 1
       66 SETTABLEKS                       R8 R7 K9 ["LayoutOrder"]
       68 DUPTABLE                         R8 K24 [{"name", "variant"}]
       69 GETUPVAL                         R11 3
       70 GETTABLEKS                       R10 R11 K17 ["trailingIcon"]
       72 GETTABLEKS                       R9 R10 K22 ["name"]
       74 SETTABLEKS                       R9 R8 K22 ["name"]
       76 GETUPVAL                         R10 10
       77 GETTABLEKS                       R9 R10 K25 ["Filled"]
       79 SETTABLEKS                       R9 R8 K23 ["variant"]
       81 SETTABLEKS                       R8 R7 K19 ["icon"]
       83 GETUPVAL                         R9 11
       84 GETTABLEKS                       R8 R9 K26 ["XSmall"]
       86 SETTABLEKS                       R8 R7 K20 ["size"]
       88 CALL                             R5 2 1
       89 SETTABLEKS                       R5 R4 K7 ["RightIcon"]
       91 CALL                             R1 3 -1
       92 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useSignalBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["getCategoryName"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K0 ["useSignalBinding"]
        9 GETTABLEKS                       R3 R0 K2 ["getExpanded"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 CALL                             R3 0 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K3 ["useMemo"]
       17 NEWCLOSURE                       R5 P0
       18 CAPTURE                          UPVAL U3
       19 CAPTURE                          UPVAL U2
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          VAL R0
       22 CAPTURE                          VAL R2
       23 CAPTURE                          UPVAL U5
       24 CAPTURE                          UPVAL U6
       25 CAPTURE                          UPVAL U7
       26 CAPTURE                          VAL R1
       27 CAPTURE                          UPVAL U8
       28 CAPTURE                          UPVAL U9
       29 CAPTURE                          UPVAL U10
       30 NEWTABLE                         R6 0 1
       32 MOVE                             R7 R3
       33 SETLIST                          R6 R7 1 [1]
       35 CALL                             R4 2 1
       36 GETUPVAL                         R5 5
       37 GETUPVAL                         R6 4
       38 DUPTABLE                         R7 K7 [{"tag", "LayoutOrder", "Visible"}]
       39 LOADK                            R8 K8 ["col auto-y size-full-0 gap-none"]
       40 SETTABLEKS                       R8 R7 K4 ["tag"]
       42 GETTABLEKS                       R8 R0 K5 ["LayoutOrder"]
       44 SETTABLEKS                       R8 R7 K5 ["LayoutOrder"]
       46 GETTABLEKS                       R8 R0 K6 ["Visible"]
       48 SETTABLEKS                       R8 R7 K6 ["Visible"]
       50 DUPTABLE                         R8 K10 [{"SectionHeader"}]
       51 SETTABLEKS                       R4 R8 K9 ["SectionHeader"]
       53 CALL                             R5 3 -1
       54 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R4 R0 K4 ["Parent"]
       13 GETTABLEKS                       R3 R4 K7 ["Foundation"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R6 R0 K8 ["Components"]
       20 GETTABLEKS                       R5 R6 K9 ["Util"]
       22 GETTABLEKS                       R4 R5 K10 ["LeftArrowSpacer"]
       24 CALL                             R3 1 1
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R6 R0 K4 ["Parent"]
       29 GETTABLEKS                       R5 R6 K11 ["React"]
       31 CALL                             R4 1 1
       32 GETIMPORT                        R5 K6 [require]
       34 GETTABLEKS                       R6 R1 K12 ["Signals"]
       36 CALL                             R5 1 1
       37 GETIMPORT                        R6 K6 [require]
       39 GETTABLEKS                       R7 R1 K13 ["SignalsReact"]
       41 CALL                             R6 1 1
       42 GETIMPORT                        R7 K6 [require]
       44 GETTABLEKS                       R9 R0 K9 ["Util"]
       46 GETTABLEKS                       R8 R9 K14 ["createNextOrder"]
       48 CALL                             R7 1 1
       49 GETTABLEKS                       R8 R2 K15 ["Text"]
       51 GETTABLEKS                       R9 R2 K16 ["View"]
       53 GETTABLEKS                       R10 R4 K17 ["createElement"]
       55 GETTABLEKS                       R12 R2 K18 ["Hooks"]
       57 GETTABLEKS                       R11 R12 K19 ["useTokens"]
       59 GETTABLEKS                       R13 R2 K20 ["Enums"]
       61 GETTABLEKS                       R12 R13 K21 ["IconSize"]
       63 GETTABLEKS                       R14 R2 K20 ["Enums"]
       65 GETTABLEKS                       R13 R14 K22 ["IconVariant"]
       67 DUPCLOSURE                       R14 K23 [PROTO_2]
       68 CAPTURE                          VAL R6
       69 CAPTURE                          VAL R11
       70 CAPTURE                          VAL R4
       71 CAPTURE                          VAL R7
       72 CAPTURE                          VAL R9
       73 CAPTURE                          VAL R10
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R8
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R13
       78 CAPTURE                          VAL R12
       79 GETTABLEKS                       R15 R4 K24 ["memo"]
       81 MOVE                             R16 R14
       82 CALL                             R15 1 -1
       83 RETURN                           R15 -1
