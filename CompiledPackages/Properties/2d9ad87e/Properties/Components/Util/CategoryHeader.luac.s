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
        6 DUPTABLE                         R3 K7 [{["tag"] = "row align-y-center gap-small padding-y-xxsmall padding-left-medium", ["onActivated"], ["Size"], ["selection"], ["stateLayer"]}]
        7 GETUPVAL                         R4 3
        8 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       10 GETIMPORT                        R4 K10 [UDim2.new]
       12 LOADN                            R5 1
       13 LOADN                            R6 0
       14 LOADN                            R7 0
       15 GETUPVAL                         R8 4
       16 GETTABLEKS                       R8 R8 K11 ["PropertyRow"]
       18 GETTABLEKS                       R8 R8 K12 ["MinHeight"]
       20 CALL                             R4 4 1
       21 SETTABLEKS                       R4 R3 K4 ["Size"]
       23 DUPTABLE                         R4 K15 [{["Selectable"] = False}]
       24 SETTABLEKS                       R4 R3 K5 ["selection"]
       26 DUPTABLE                         R4 K17 [{"affordance"}]
       27 GETUPVAL                         R5 5
       28 GETTABLEKS                       R5 R5 K18 ["Enums"]
       30 GETTABLEKS                       R5 R5 K19 ["StateLayerAffordance"]
       32 GETTABLEKS                       R5 R5 K20 ["None"]
       34 SETTABLEKS                       R5 R4 K16 ["affordance"]
       36 SETTABLEKS                       R4 R3 K6 ["stateLayer"]
       38 DUPTABLE                         R4 K24 [{"Arrow", "Label", "RightIcon"}]
       39 GETUPVAL                         R5 6
       40 GETUPVAL                         R6 2
       41 DUPTABLE                         R7 K26 [{"LayoutOrder", "Size", "onActivated", "stateLayer"}]
       42 MOVE                             R8 R0
       43 CALL                             R8 0 1
       44 SETTABLEKS                       R8 R7 K25 ["LayoutOrder"]
       46 GETIMPORT                        R8 K10 [UDim2.new]
       48 LOADN                            R9 0
       49 GETUPVAL                         R10 4
       50 GETTABLEKS                       R10 R10 K21 ["Arrow"]
       52 GETTABLEKS                       R10 R10 K27 ["Indent"]
       54 LOADN                            R11 1
       55 LOADN                            R12 0
       56 CALL                             R8 4 1
       57 SETTABLEKS                       R8 R7 K4 ["Size"]
       59 GETUPVAL                         R8 3
       60 SETTABLEKS                       R8 R7 K3 ["onActivated"]
       62 DUPTABLE                         R8 K17 [{"affordance"}]
       63 GETUPVAL                         R9 5
       64 GETTABLEKS                       R9 R9 K18 ["Enums"]
       66 GETTABLEKS                       R9 R9 K19 ["StateLayerAffordance"]
       68 GETTABLEKS                       R9 R9 K20 ["None"]
       70 SETTABLEKS                       R9 R8 K16 ["affordance"]
       72 SETTABLEKS                       R8 R7 K6 ["stateLayer"]
       74 DUPTABLE                         R8 K29 [{"Visual"}]
       75 GETUPVAL                         R9 6
       76 GETUPVAL                         R10 7
       77 DUPTABLE                         R11 K32 [{["tag"] = "position-center-center anchor-center-center content-default", ["Image"], ["Size"]}]
       78 GETUPVAL                         R12 8
       79 DUPCLOSURE                       R14 K33 [PROTO_1]
       80 CAPTURE                          UPVAL U9
       81 NAMECALL                         R12 R12 K34 ["map"]
       83 CALL                             R12 2 1
       84 SETTABLEKS                       R12 R11 K31 ["Image"]
       86 GETIMPORT                        R12 K36 [UDim2.fromOffset]
       88 GETUPVAL                         R13 4
       89 GETTABLEKS                       R13 R13 K21 ["Arrow"]
       91 GETTABLEKS                       R13 R13 K4 ["Size"]
       93 GETTABLEKS                       R13 R13 K37 ["X"]
       95 GETUPVAL                         R14 4
       96 GETTABLEKS                       R14 R14 K21 ["Arrow"]
       98 GETTABLEKS                       R14 R14 K4 ["Size"]
      100 GETTABLEKS                       R14 R14 K38 ["Y"]
      102 CALL                             R12 2 1
      103 SETTABLEKS                       R12 R11 K4 ["Size"]
      105 CALL                             R9 2 1
      106 SETTABLEKS                       R9 R8 K28 ["Visual"]
      108 CALL                             R5 3 1
      109 SETTABLEKS                       R5 R4 K21 ["Arrow"]
      111 GETUPVAL                         R5 6
      112 GETUPVAL                         R6 10
      113 DUPTABLE                         R7 K41 [{["LayoutOrder"], ["Text"], ["tag"] = "shrink size-full-full text-title-small text-no-wrap text-align-x-left text-align-y-center clip"}]
      114 MOVE                             R8 R0
      115 CALL                             R8 0 1
      116 SETTABLEKS                       R8 R7 K25 ["LayoutOrder"]
      118 GETUPVAL                         R8 11
      119 SETTABLEKS                       R8 R7 K39 ["Text"]
      121 CALL                             R5 2 1
      122 SETTABLEKS                       R5 R4 K22 ["Label"]
      124 GETUPVAL                         R5 12
      125 GETTABLEKS                       R5 R5 K42 ["trailingIcon"]
      127 JUMPIFNOT                        R5 ; [+51]
      128 GETUPVAL                         R5 6
      129 GETUPVAL                         R6 5
      130 GETTABLEKS                       R6 R6 K43 ["IconButton"]
      132 DUPTABLE                         R7 K48 [{"onActivated", "LayoutOrder", "icon", "size", "testId", "ref"}]
      133 GETUPVAL                         R8 12
      134 GETTABLEKS                       R8 R8 K42 ["trailingIcon"]
      136 GETTABLEKS                       R8 R8 K3 ["onActivated"]
      138 SETTABLEKS                       R8 R7 K3 ["onActivated"]
      140 MOVE                             R8 R0
      141 CALL                             R8 0 1
      142 SETTABLEKS                       R8 R7 K25 ["LayoutOrder"]
      144 DUPTABLE                         R8 K51 [{"name", "variant"}]
      145 GETUPVAL                         R9 12
      146 GETTABLEKS                       R9 R9 K42 ["trailingIcon"]
      148 GETTABLEKS                       R9 R9 K49 ["name"]
      150 SETTABLEKS                       R9 R8 K49 ["name"]
      152 GETUPVAL                         R9 13
      153 GETTABLEKS                       R9 R9 K52 ["Filled"]
      155 SETTABLEKS                       R9 R8 K50 ["variant"]
      157 SETTABLEKS                       R8 R7 K44 ["icon"]
      159 GETUPVAL                         R8 14
      160 GETTABLEKS                       R8 R8 K53 ["XSmall"]
      162 SETTABLEKS                       R8 R7 K45 ["size"]
      164 GETUPVAL                         R8 12
      165 GETTABLEKS                       R8 R8 K42 ["trailingIcon"]
      167 GETTABLEKS                       R8 R8 K46 ["testId"]
      169 SETTABLEKS                       R8 R7 K46 ["testId"]
      171 GETUPVAL                         R8 12
      172 GETTABLEKS                       R8 R8 K42 ["trailingIcon"]
      174 GETTABLEKS                       R8 R8 K47 ["ref"]
      176 SETTABLEKS                       R8 R7 K47 ["ref"]
      178 CALL                             R5 2 1
      179 SETTABLEKS                       R5 R4 K23 ["RightIcon"]
      181 CALL                             R1 3 -1
      182 RETURN                           R1 -1

PROTO_3:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Divider"]
        4 GETTABLEKS                       R1 R1 K1 ["SpacingAround"]
        6 JUMP                             ; [+5]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["Divider"]
       10 GETTABLEKS                       R1 R1 K2 ["PaddedSpacingAround"]
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["Divider"]
       15 GETTABLEKS                       R3 R3 K3 ["Height"]
       17 GETUPVAL                         R4 0
       18 GETTABLEKS                       R4 R4 K0 ["Divider"]
       20 GETTABLEKS                       R4 R4 K1 ["SpacingAround"]
       22 ADD                              R2 R3 R4
       23 GETIMPORT                        R3 K6 [UDim2.new]
       25 LOADN                            R4 1
       26 GETUPVAL                         R5 0
       27 GETTABLEKS                       R5 R5 K7 ["ScrollBar"]
       29 GETTABLEKS                       R5 R5 K8 ["Width"]
       31 LOADN                            R6 0
       32 ADD                              R7 R1 R2
       33 CALL                             R3 4 -1
       34 RETURN                           R3 -1

PROTO_4:
        0 JUMPIFNOTEQKN                    R0 K0 [1] ; [+2]
        2 LOADB                            R1 0 +1
        3 LOADB                            R1 1
        4 RETURN                           R1 1

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+6]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R1 R1 K0 ["Divider"]
        4 GETTABLEKS                       R1 R1 K1 ["SpacingAround"]
        6 JUMP                             ; [+5]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["Divider"]
       10 GETTABLEKS                       R1 R1 K2 ["PaddedSpacingAround"]
       12 GETIMPORT                        R2 K5 [UDim2.fromOffset]
       14 LOADN                            R3 0
       15 MOVE                             R4 R1
       16 CALL                             R2 2 -1
       17 RETURN                           R2 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useSignalBinding"]
        3 GETTABLEKS                       R2 R0 K1 ["getCategoryName"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K0 ["useSignalBinding"]
        9 GETTABLEKS                       R3 R0 K2 ["getExpanded"]
       11 CALL                             R2 1 1
       12 GETUPVAL                         R3 0
       13 GETTABLEKS                       R3 R3 K0 ["useSignalBinding"]
       15 GETTABLEKS                       R4 R0 K3 ["getIsCategoryHeaderDirectlyAbove"]
       17 CALL                             R3 1 1
       18 GETUPVAL                         R4 1
       19 CALL                             R4 0 1
       20 GETUPVAL                         R5 2
       21 CALL                             R5 0 1
       22 GETUPVAL                         R6 3
       23 GETTABLEKS                       R6 R6 K4 ["useEventCallback"]
       25 NEWCLOSURE                       R7 P0
       26 CAPTURE                          VAL R0
       27 CAPTURE                          VAL R2
       28 CALL                             R6 1 1
       29 GETUPVAL                         R7 4
       30 GETTABLEKS                       R7 R7 K5 ["useMemo"]
       32 NEWCLOSURE                       R8 P1
       33 CAPTURE                          UPVAL U5
       34 CAPTURE                          UPVAL U4
       35 CAPTURE                          UPVAL U6
       36 CAPTURE                          VAL R6
       37 CAPTURE                          VAL R5
       38 CAPTURE                          UPVAL U7
       39 CAPTURE                          UPVAL U8
       40 CAPTURE                          UPVAL U9
       41 CAPTURE                          VAL R2
       42 CAPTURE                          UPVAL U10
       43 CAPTURE                          UPVAL U11
       44 CAPTURE                          VAL R1
       45 CAPTURE                          VAL R0
       46 CAPTURE                          UPVAL U12
       47 CAPTURE                          UPVAL U13
       48 NEWTABLE                         R9 0 1
       50 MOVE                             R10 R4
       51 SETLIST                          R9 R10 1 [1]
       53 CALL                             R7 2 1
       54 GETUPVAL                         R8 8
       55 GETUPVAL                         R9 6
       56 DUPTABLE                         R10 K10 [{["tag"] = "col gap-none size-full-0 auto-y", ["LayoutOrder"], ["Visible"]}]
       57 GETTABLEKS                       R11 R0 K8 ["LayoutOrder"]
       59 SETTABLEKS                       R11 R10 K8 ["LayoutOrder"]
       61 GETTABLEKS                       R11 R0 K9 ["Visible"]
       63 SETTABLEKS                       R11 R10 K9 ["Visible"]
       65 DUPTABLE                         R11 K13 [{"Border", "SectionHeader"}]
       66 GETUPVAL                         R12 8
       67 GETUPVAL                         R13 6
       68 DUPTABLE                         R14 K15 [{"Size", "Visible"}]
       69 NEWCLOSURE                       R17 P2
       70 CAPTURE                          VAL R5
       71 NAMECALL                         R15 R3 K16 ["map"]
       73 CALL                             R15 2 1
       74 SETTABLEKS                       R15 R14 K14 ["Size"]
       76 GETTABLEKS                       R15 R0 K8 ["LayoutOrder"]
       78 JUMPIFNOT                        R15 ; [+6]
       79 GETTABLEKS                       R15 R0 K8 ["LayoutOrder"]
       81 DUPCLOSURE                       R17 K17 [PROTO_4]
       82 NAMECALL                         R15 R15 K16 ["map"]
       84 CALL                             R15 2 1
       85 SETTABLEKS                       R15 R14 K9 ["Visible"]
       87 DUPTABLE                         R15 K19 [{"Line"}]
       88 GETUPVAL                         R16 8
       89 GETUPVAL                         R17 6
       90 DUPTABLE                         R18 K22 [{"backgroundStyle", "Size", "Position"}]
       91 DUPTABLE                         R19 K25 [{"Color3", "Transparency"}]
       92 GETTABLEKS                       R20 R5 K26 ["Divider"]
       94 GETTABLEKS                       R20 R20 K27 ["Color"]
       96 SETTABLEKS                       R20 R19 K23 ["Color3"]
       98 GETTABLEKS                       R20 R5 K26 ["Divider"]
      100 GETTABLEKS                       R20 R20 K24 ["Transparency"]
      102 SETTABLEKS                       R20 R19 K24 ["Transparency"]
      104 SETTABLEKS                       R19 R18 K20 ["backgroundStyle"]
      106 GETIMPORT                        R19 K30 [UDim2.new]
      108 LOADN                            R20 1
      109 LOADN                            R21 0
      110 LOADN                            R22 0
      111 LOADN                            R23 1
      112 CALL                             R19 4 1
      113 SETTABLEKS                       R19 R18 K14 ["Size"]
      115 NEWCLOSURE                       R21 P4
      116 CAPTURE                          VAL R5
      117 NAMECALL                         R19 R3 K16 ["map"]
      119 CALL                             R19 2 1
      120 SETTABLEKS                       R19 R18 K21 ["Position"]
      122 CALL                             R16 2 1
      123 SETTABLEKS                       R16 R15 K18 ["Line"]
      125 CALL                             R12 3 1
      126 SETTABLEKS                       R12 R11 K11 ["Border"]
      128 SETTABLEKS                       R7 R11 K12 ["SectionHeader"]
      130 CALL                             R8 3 -1
      131 RETURN                           R8 -1

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
       74 DUPCLOSURE                       R17 K25 [PROTO_6]
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R14
       77 CAPTURE                          VAL R8
       78 CAPTURE                          VAL R5
       79 CAPTURE                          VAL R4
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R11
       82 CAPTURE                          VAL R2
       83 CAPTURE                          VAL R13
       84 CAPTURE                          VAL R12
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R10
       87 CAPTURE                          VAL R16
       88 CAPTURE                          VAL R15
       89 GETTABLEKS                       R18 R4 K26 ["memo"]
       91 MOVE                             R19 R17
       92 CALL                             R18 1 -1
       93 RETURN                           R18 -1
