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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["explorer"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R2 K1 ["expanded"]
        5 JUMP                             ; [+1]
        6 LOADK                            R2 K2 ["collapsed"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R2 1
        3 GETTABLEKS                       R1 R2 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K4 [{"tag", "onActivated", "Size"}]
        7 LOADK                            R4 K5 ["row align-y-center padding-left-medium padding-y-xxsmall gap-small"]
        8 SETTABLEKS                       R4 R3 K1 ["tag"]
       10 NEWCLOSURE                       R4 P0
       11 CAPTURE                          UPVAL U3
       12 CAPTURE                          UPVAL U4
       13 SETTABLEKS                       R4 R3 K2 ["onActivated"]
       15 GETIMPORT                        R4 K8 [UDim2.new]
       17 LOADN                            R5 1
       18 LOADN                            R6 0
       19 LOADN                            R7 0
       20 GETUPVAL                         R10 5
       21 GETTABLEKS                       R9 R10 K9 ["PropertyRow"]
       23 GETTABLEKS                       R8 R9 K10 ["MinHeight"]
       25 CALL                             R4 4 1
       26 SETTABLEKS                       R4 R3 K3 ["Size"]
       28 DUPTABLE                         R4 K14 [{"Arrow", "Label", "RightIcon"}]
       29 GETUPVAL                         R5 6
       30 GETUPVAL                         R6 2
       31 DUPTABLE                         R7 K16 [{"LayoutOrder", "Size"}]
       32 MOVE                             R8 R0
       33 CALL                             R8 0 1
       34 SETTABLEKS                       R8 R7 K15 ["LayoutOrder"]
       36 GETIMPORT                        R8 K8 [UDim2.new]
       38 LOADN                            R9 0
       39 GETUPVAL                         R12 5
       40 GETTABLEKS                       R11 R12 K11 ["Arrow"]
       42 GETTABLEKS                       R10 R11 K17 ["Indent"]
       44 LOADN                            R11 1
       45 LOADN                            R12 0
       46 CALL                             R8 4 1
       47 SETTABLEKS                       R8 R7 K3 ["Size"]
       49 DUPTABLE                         R8 K19 [{"Visual"}]
       50 GETUPVAL                         R9 6
       51 GETUPVAL                         R10 7
       52 DUPTABLE                         R11 K21 [{"tag", "Image", "Size"}]
       53 LOADK                            R12 K22 ["content-default anchor-center-center position-center-center"]
       54 SETTABLEKS                       R12 R11 K1 ["tag"]
       56 GETUPVAL                         R12 4
       57 DUPCLOSURE                       R14 K23 [PROTO_1]
       58 CAPTURE                          UPVAL U8
       59 NAMECALL                         R12 R12 K24 ["map"]
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K20 ["Image"]
       64 GETIMPORT                        R12 K26 [UDim2.fromOffset]
       66 GETUPVAL                         R16 5
       67 GETTABLEKS                       R15 R16 K11 ["Arrow"]
       69 GETTABLEKS                       R14 R15 K3 ["Size"]
       71 GETTABLEKS                       R13 R14 K27 ["X"]
       73 GETUPVAL                         R17 5
       74 GETTABLEKS                       R16 R17 K11 ["Arrow"]
       76 GETTABLEKS                       R15 R16 K3 ["Size"]
       78 GETTABLEKS                       R14 R15 K28 ["Y"]
       80 CALL                             R12 2 1
       81 SETTABLEKS                       R12 R11 K3 ["Size"]
       83 CALL                             R9 2 1
       84 SETTABLEKS                       R9 R8 K18 ["Visual"]
       86 CALL                             R5 3 1
       87 SETTABLEKS                       R5 R4 K11 ["Arrow"]
       89 GETUPVAL                         R5 6
       90 GETUPVAL                         R6 9
       91 DUPTABLE                         R7 K30 [{"LayoutOrder", "Text", "tag"}]
       92 MOVE                             R8 R0
       93 CALL                             R8 0 1
       94 SETTABLEKS                       R8 R7 K15 ["LayoutOrder"]
       96 GETUPVAL                         R8 10
       97 SETTABLEKS                       R8 R7 K29 ["Text"]
       99 LOADK                            R8 K31 ["shrink size-full-full text-no-wrap text-align-x-left text-align-y-center text-title-small clip"]
      100 SETTABLEKS                       R8 R7 K1 ["tag"]
      102 CALL                             R5 2 1
      103 SETTABLEKS                       R5 R4 K12 ["Label"]
      105 GETUPVAL                         R6 3
      106 GETTABLEKS                       R5 R6 K32 ["trailingIcon"]
      108 JUMPIFNOT                        R5 ; [+37]
      109 GETUPVAL                         R5 6
      110 GETUPVAL                         R7 11
      111 GETTABLEKS                       R6 R7 K33 ["IconButton"]
      113 DUPTABLE                         R7 K36 [{"onActivated", "LayoutOrder", "icon", "size"}]
      114 GETUPVAL                         R10 3
      115 GETTABLEKS                       R9 R10 K32 ["trailingIcon"]
      117 GETTABLEKS                       R8 R9 K2 ["onActivated"]
      119 SETTABLEKS                       R8 R7 K2 ["onActivated"]
      121 MOVE                             R8 R0
      122 CALL                             R8 0 1
      123 SETTABLEKS                       R8 R7 K15 ["LayoutOrder"]
      125 DUPTABLE                         R8 K39 [{"name", "variant"}]
      126 GETUPVAL                         R11 3
      127 GETTABLEKS                       R10 R11 K32 ["trailingIcon"]
      129 GETTABLEKS                       R9 R10 K37 ["name"]
      131 SETTABLEKS                       R9 R8 K37 ["name"]
      133 GETUPVAL                         R10 12
      134 GETTABLEKS                       R9 R10 K40 ["Filled"]
      136 SETTABLEKS                       R9 R8 K38 ["variant"]
      138 SETTABLEKS                       R8 R7 K34 ["icon"]
      140 GETUPVAL                         R9 13
      141 GETTABLEKS                       R8 R9 K41 ["XSmall"]
      143 SETTABLEKS                       R8 R7 K35 ["size"]
      145 CALL                             R5 2 1
      146 SETTABLEKS                       R5 R4 K13 ["RightIcon"]
      148 CALL                             R1 3 -1
      149 RETURN                           R1 -1

PROTO_3:
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
       14 GETUPVAL                         R4 2
       15 CALL                             R4 0 1
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R5 R6 K3 ["useMemo"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          UPVAL U4
       21 CAPTURE                          UPVAL U3
       22 CAPTURE                          UPVAL U5
       23 CAPTURE                          VAL R0
       24 CAPTURE                          VAL R2
       25 CAPTURE                          VAL R4
       26 CAPTURE                          UPVAL U6
       27 CAPTURE                          UPVAL U7
       28 CAPTURE                          UPVAL U8
       29 CAPTURE                          UPVAL U9
       30 CAPTURE                          VAL R1
       31 CAPTURE                          UPVAL U10
       32 CAPTURE                          UPVAL U11
       33 CAPTURE                          UPVAL U12
       34 NEWTABLE                         R7 0 1
       36 MOVE                             R8 R3
       37 SETLIST                          R7 R8 1 [1]
       39 CALL                             R5 2 1
       40 GETUPVAL                         R6 6
       41 GETUPVAL                         R7 5
       42 DUPTABLE                         R8 K7 [{"tag", "LayoutOrder", "Visible"}]
       43 LOADK                            R9 K8 ["col auto-y size-full-0 gap-none"]
       44 SETTABLEKS                       R9 R8 K4 ["tag"]
       46 GETTABLEKS                       R9 R0 K5 ["LayoutOrder"]
       48 SETTABLEKS                       R9 R8 K5 ["LayoutOrder"]
       50 GETTABLEKS                       R9 R0 K6 ["Visible"]
       52 SETTABLEKS                       R9 R8 K6 ["Visible"]
       54 DUPTABLE                         R9 K10 [{"SectionHeader"}]
       55 SETTABLEKS                       R5 R9 K9 ["SectionHeader"]
       57 CALL                             R6 3 -1
       58 RETURN                           R6 -1

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
       18 GETTABLEKS                       R5 R0 K8 ["Util"]
       20 GETTABLEKS                       R4 R5 K9 ["ImageUrl"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R6 R0 K4 ["Parent"]
       27 GETTABLEKS                       R5 R6 K10 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K11 ["Signals"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K12 ["SignalsReact"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R9 R0 K8 ["Util"]
       44 GETTABLEKS                       R8 R9 K13 ["createNextOrder"]
       46 CALL                             R7 1 1
       47 GETIMPORT                        R8 K6 [require]
       49 GETTABLEKS                       R10 R0 K14 ["Hooks"]
       51 GETTABLEKS                       R9 R10 K15 ["useVisualValues"]
       53 CALL                             R8 1 1
       54 GETTABLEKS                       R9 R2 K16 ["Text"]
       56 GETTABLEKS                       R10 R2 K17 ["View"]
       58 GETTABLEKS                       R11 R2 K18 ["Image"]
       60 GETTABLEKS                       R12 R4 K19 ["createElement"]
       62 GETTABLEKS                       R14 R2 K14 ["Hooks"]
       64 GETTABLEKS                       R13 R14 K20 ["useTokens"]
       66 GETTABLEKS                       R15 R2 K21 ["Enums"]
       68 GETTABLEKS                       R14 R15 K22 ["IconSize"]
       70 GETTABLEKS                       R16 R2 K21 ["Enums"]
       72 GETTABLEKS                       R15 R16 K23 ["IconVariant"]
       74 DUPCLOSURE                       R16 K24 [PROTO_3]
       75 CAPTURE                          VAL R6
       76 CAPTURE                          VAL R13
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R7
       80 CAPTURE                          VAL R10
       81 CAPTURE                          VAL R12
       82 CAPTURE                          VAL R11
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R9
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R15
       87 CAPTURE                          VAL R14
       88 GETTABLEKS                       R17 R4 K25 ["memo"]
       90 MOVE                             R18 R16
       91 CALL                             R17 1 -1
       92 RETURN                           R17 -1
