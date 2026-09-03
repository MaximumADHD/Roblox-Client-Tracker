PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["setExpanded"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R5 R5 K1 ["getValue"]
        6 CALL                             R5 1 1
        7 NOT                              R4 R5
        8 CALL                             R3 1 -1
        9 RETURN                           R3 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["explorer"]
        3 JUMPIFNOT                        R0 ; [+2]
        4 LOADK                            R2 K1 ["expanded"]
        5 JUMP                             ; [+1]
        6 LOADK                            R2 K2 ["collapsed"]
        7 CALL                             R1 1 -1
        8 RETURN                           R1 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 CALL                             R0 0 1
        2 GETUPVAL                         R1 1
        3 GETTABLEKS                       R1 R1 K0 ["createElement"]
        5 GETUPVAL                         R2 2
        6 DUPTABLE                         R3 K6 [{["tag"] = "row align-y-center gap-small padding-y-xxsmall padding-left-medium", ["onActivated"], ["Size"], ["selection"]}]
        7 GETUPVAL                         R4 3
        8 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       10 GETIMPORT                        R4 K9 [UDim2.new]
       12 LOADN                            R5 1
       13 LOADN                            R6 0
       14 LOADN                            R7 0
       15 GETUPVAL                         R8 4
       16 GETTABLEKS                       R8 R8 K10 ["PropertyRow"]
       18 GETTABLEKS                       R8 R8 K11 ["MinHeight"]
       20 CALL                             R4 4 1
       21 SETTABLEKS                       R4 R3 K4 ["Size"]
       23 DUPTABLE                         R4 K14 [{["Selectable"] = False}]
       24 SETTABLEKS                       R4 R3 K5 ["selection"]
       26 DUPTABLE                         R4 K18 [{"Arrow", "Label", "RightIcon"}]
       27 GETUPVAL                         R5 5
       28 GETUPVAL                         R6 2
       29 DUPTABLE                         R7 K21 [{"LayoutOrder", "Size", "onActivated", "stateLayer"}]
       30 MOVE                             R8 R0
       31 CALL                             R8 0 1
       32 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
       34 GETIMPORT                        R8 K9 [UDim2.new]
       36 LOADN                            R9 0
       37 GETUPVAL                         R10 4
       38 GETTABLEKS                       R10 R10 K15 ["Arrow"]
       40 GETTABLEKS                       R10 R10 K22 ["Indent"]
       42 LOADN                            R11 1
       43 LOADN                            R12 0
       44 CALL                             R8 4 1
       45 SETTABLEKS                       R8 R7 K4 ["Size"]
       47 GETUPVAL                         R8 3
       48 SETTABLEKS                       R8 R7 K3 ["onActivated"]
       50 DUPTABLE                         R8 K24 [{"affordance"}]
       51 GETUPVAL                         R9 6
       52 GETTABLEKS                       R9 R9 K25 ["Enums"]
       54 GETTABLEKS                       R9 R9 K26 ["StateLayerAffordance"]
       56 GETTABLEKS                       R9 R9 K27 ["None"]
       58 SETTABLEKS                       R9 R8 K23 ["affordance"]
       60 SETTABLEKS                       R8 R7 K20 ["stateLayer"]
       62 DUPTABLE                         R8 K29 [{"Visual"}]
       63 GETUPVAL                         R9 5
       64 GETUPVAL                         R10 7
       65 DUPTABLE                         R11 K32 [{["tag"] = "position-center-center anchor-center-center content-default", ["Image"], ["Size"]}]
       66 GETUPVAL                         R12 8
       67 DUPCLOSURE                       R14 K33 [PROTO_1]
       68 CAPTURE                          UPVAL U9
       69 NAMECALL                         R12 R12 K34 ["map"]
       71 CALL                             R12 2 1
       72 SETTABLEKS                       R12 R11 K31 ["Image"]
       74 GETIMPORT                        R12 K36 [UDim2.fromOffset]
       76 GETUPVAL                         R13 4
       77 GETTABLEKS                       R13 R13 K15 ["Arrow"]
       79 GETTABLEKS                       R13 R13 K4 ["Size"]
       81 GETTABLEKS                       R13 R13 K37 ["X"]
       83 GETUPVAL                         R14 4
       84 GETTABLEKS                       R14 R14 K15 ["Arrow"]
       86 GETTABLEKS                       R14 R14 K4 ["Size"]
       88 GETTABLEKS                       R14 R14 K38 ["Y"]
       90 CALL                             R12 2 1
       91 SETTABLEKS                       R12 R11 K4 ["Size"]
       93 CALL                             R9 2 1
       94 SETTABLEKS                       R9 R8 K28 ["Visual"]
       96 CALL                             R5 3 1
       97 SETTABLEKS                       R5 R4 K15 ["Arrow"]
       99 GETUPVAL                         R5 5
      100 GETUPVAL                         R6 10
      101 DUPTABLE                         R7 K41 [{["LayoutOrder"], ["Text"], ["tag"] = "shrink size-full-full text-title-small text-no-wrap text-align-x-left text-align-y-center clip"}]
      102 MOVE                             R8 R0
      103 CALL                             R8 0 1
      104 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
      106 GETUPVAL                         R8 11
      107 SETTABLEKS                       R8 R7 K39 ["Text"]
      109 CALL                             R5 2 1
      110 SETTABLEKS                       R5 R4 K16 ["Label"]
      112 GETUPVAL                         R5 12
      113 GETTABLEKS                       R5 R5 K42 ["trailingIcon"]
      115 JUMPIFNOT                        R5 ; [+51]
      116 GETUPVAL                         R5 5
      117 GETUPVAL                         R6 6
      118 GETTABLEKS                       R6 R6 K43 ["IconButton"]
      120 DUPTABLE                         R7 K48 [{"onActivated", "LayoutOrder", "icon", "size", "testId", "ref"}]
      121 GETUPVAL                         R8 12
      122 GETTABLEKS                       R8 R8 K42 ["trailingIcon"]
      124 GETTABLEKS                       R8 R8 K3 ["onActivated"]
      126 SETTABLEKS                       R8 R7 K3 ["onActivated"]
      128 MOVE                             R8 R0
      129 CALL                             R8 0 1
      130 SETTABLEKS                       R8 R7 K19 ["LayoutOrder"]
      132 DUPTABLE                         R8 K51 [{"name", "variant"}]
      133 GETUPVAL                         R9 12
      134 GETTABLEKS                       R9 R9 K42 ["trailingIcon"]
      136 GETTABLEKS                       R9 R9 K49 ["name"]
      138 SETTABLEKS                       R9 R8 K49 ["name"]
      140 GETUPVAL                         R9 13
      141 GETTABLEKS                       R9 R9 K52 ["Filled"]
      143 SETTABLEKS                       R9 R8 K50 ["variant"]
      145 SETTABLEKS                       R8 R7 K44 ["icon"]
      147 GETUPVAL                         R8 14
      148 GETTABLEKS                       R8 R8 K53 ["XSmall"]
      150 SETTABLEKS                       R8 R7 K45 ["size"]
      152 GETUPVAL                         R8 12
      153 GETTABLEKS                       R8 R8 K42 ["trailingIcon"]
      155 GETTABLEKS                       R8 R8 K46 ["testId"]
      157 SETTABLEKS                       R8 R7 K46 ["testId"]
      159 GETUPVAL                         R8 12
      160 GETTABLEKS                       R8 R8 K42 ["trailingIcon"]
      162 GETTABLEKS                       R8 R8 K47 ["ref"]
      164 SETTABLEKS                       R8 R7 K47 ["ref"]
      166 CALL                             R5 2 1
      167 SETTABLEKS                       R5 R4 K17 ["RightIcon"]
      169 CALL                             R1 3 -1
      170 RETURN                           R1 -1

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["getCategoryName"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["useSignalBinding"]
        9 GETTABLEKS                       R3 R0 K2 ["getExpanded"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 1
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 2
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K3 ["useEventCallback"]
       19 NEWCLOSURE                       R6 P0
       20 CAPTURE                          VAL R0
       21 CAPTURE                          VAL R2
       22 CALL                             R5 1 1
       23 GETUPVAL                         R6 4
       24 GETTABLEKS                       R6 R6 K4 ["useMemo"]
       26 NEWCLOSURE                       R7 P1
       27 CAPTURE                          UPVAL U5
       28 CAPTURE                          UPVAL U4
       29 CAPTURE                          UPVAL U6
       30 CAPTURE                          VAL R5
       31 CAPTURE                          VAL R4
       32 CAPTURE                          UPVAL U7
       33 CAPTURE                          UPVAL U8
       34 CAPTURE                          UPVAL U9
       35 CAPTURE                          VAL R2
       36 CAPTURE                          UPVAL U10
       37 CAPTURE                          UPVAL U11
       38 CAPTURE                          VAL R1
       39 CAPTURE                          VAL R0
       40 CAPTURE                          UPVAL U12
       41 CAPTURE                          UPVAL U13
       42 NEWTABLE                         R8 0 1
       44 MOVE                             R9 R3
       45 SETLIST                          R8 R9 1 [1]
       47 CALL                             R6 2 1
       48 GETUPVAL                         R7 7
       49 GETUPVAL                         R8 6
       50 DUPTABLE                         R9 K9 [{["tag"] = "col gap-none size-full-0 auto-y", ["LayoutOrder"], ["Visible"]}]
       51 GETTABLEKS                       R10 R0 K7 ["LayoutOrder"]
       53 SETTABLEKS                       R10 R9 K7 ["LayoutOrder"]
       55 GETTABLEKS                       R10 R0 K8 ["Visible"]
       57 SETTABLEKS                       R10 R9 K8 ["Visible"]
       59 DUPTABLE                         R10 K11 [{"SectionHeader"}]
       60 SETTABLEKS                       R6 R10 K10 ["SectionHeader"]
       62 CALL                             R7 3 -1
       63 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R3 R3 K7 ["Foundation"]
       15 CALL                             R2 1 1
       16 GETIMPORT                        R3 K6 [require]
       18 GETTABLEKS                       R4 R0 K8 ["Util"]
       20 GETTABLEKS                       R4 R4 K9 ["ImageUrl"]
       22 CALL                             R3 1 1
       23 GETIMPORT                        R4 K6 [require]
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 GETTABLEKS                       R5 R5 K10 ["React"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R1 K11 ["ReactUtils"]
       34 CALL                             R5 1 1
       35 GETIMPORT                        R6 K6 [require]
       37 GETTABLEKS                       R7 R1 K12 ["Signals"]
       39 CALL                             R6 1 1
       40 GETIMPORT                        R7 K6 [require]
       42 GETTABLEKS                       R8 R1 K13 ["SignalsReact"]
       44 CALL                             R7 1 1
       45 GETIMPORT                        R8 K6 [require]
       47 GETTABLEKS                       R9 R0 K14 ["Hooks"]
       49 GETTABLEKS                       R9 R9 K15 ["useVisualValues"]
       51 CALL                             R8 1 1
       52 GETTABLEKS                       R9 R5 K16 ["createNextOrder"]
       54 GETTABLEKS                       R10 R2 K17 ["Text"]
       56 GETTABLEKS                       R11 R2 K18 ["View"]
       58 GETTABLEKS                       R12 R2 K19 ["Image"]
       60 GETTABLEKS                       R13 R4 K20 ["createElement"]
       62 GETTABLEKS                       R14 R2 K14 ["Hooks"]
       64 GETTABLEKS                       R14 R14 K21 ["useTokens"]
       66 GETTABLEKS                       R15 R2 K22 ["Enums"]
       68 GETTABLEKS                       R15 R15 K23 ["IconSize"]
       70 GETTABLEKS                       R16 R2 K22 ["Enums"]
       72 GETTABLEKS                       R16 R16 K24 ["IconVariant"]
       74 DUPCLOSURE                       R17 K25 [PROTO_3]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R14
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R13
       83 CAPTURE                          VAL R2
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R15
       89 GETTABLEKS                       R18 R4 K26 ["memo"]
       91 MOVE                             R19 R17
       92 CALL                             R18 1 -1
       93 RETURN                           R18 -1
