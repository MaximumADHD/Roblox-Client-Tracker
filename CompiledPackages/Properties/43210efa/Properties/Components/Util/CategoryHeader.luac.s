PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["setExpanded"]
        3 GETUPVAL                         R5 1
        4 NAMECALL                         R5 R5 K1 ["getValue"]
        6 CALL                             R5 1 1
        7 NOT                              R4 R5
        8 CALL                             R3 1 0
        9 RETURN                           R0 0

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
        6 DUPTABLE                         R3 K5 [{["tag"] = "row align-y-center gap-small padding-y-xxsmall padding-left-medium", ["onActivated"], ["Size"]}]
        7 NEWCLOSURE                       R4 P0
        8 CAPTURE                          UPVAL U3
        9 CAPTURE                          UPVAL U4
       10 SETTABLEKS                       R4 R3 K3 ["onActivated"]
       12 GETIMPORT                        R4 K8 [UDim2.new]
       14 LOADN                            R5 1
       15 LOADN                            R6 0
       16 LOADN                            R7 0
       17 GETUPVAL                         R8 5
       18 GETTABLEKS                       R8 R8 K9 ["PropertyRow"]
       20 GETTABLEKS                       R8 R8 K10 ["MinHeight"]
       22 CALL                             R4 4 1
       23 SETTABLEKS                       R4 R3 K4 ["Size"]
       25 DUPTABLE                         R4 K14 [{"Arrow", "Label", "RightIcon"}]
       26 GETUPVAL                         R5 6
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K16 [{"LayoutOrder", "Size"}]
       29 MOVE                             R8 R0
       30 CALL                             R8 0 1
       31 SETTABLEKS                       R8 R7 K15 ["LayoutOrder"]
       33 GETIMPORT                        R8 K8 [UDim2.new]
       35 LOADN                            R9 0
       36 GETUPVAL                         R10 5
       37 GETTABLEKS                       R10 R10 K11 ["Arrow"]
       39 GETTABLEKS                       R10 R10 K17 ["Indent"]
       41 LOADN                            R11 1
       42 LOADN                            R12 0
       43 CALL                             R8 4 1
       44 SETTABLEKS                       R8 R7 K4 ["Size"]
       46 DUPTABLE                         R8 K19 [{"Visual"}]
       47 GETUPVAL                         R9 6
       48 GETUPVAL                         R10 7
       49 DUPTABLE                         R11 K22 [{["tag"] = "position-center-center anchor-center-center content-default", ["Image"], ["Size"]}]
       50 GETUPVAL                         R12 4
       51 DUPCLOSURE                       R14 K23 [PROTO_1]
       52 CAPTURE                          UPVAL U8
       53 NAMECALL                         R12 R12 K24 ["map"]
       55 CALL                             R12 2 1
       56 SETTABLEKS                       R12 R11 K21 ["Image"]
       58 GETIMPORT                        R12 K26 [UDim2.fromOffset]
       60 GETUPVAL                         R13 5
       61 GETTABLEKS                       R13 R13 K11 ["Arrow"]
       63 GETTABLEKS                       R13 R13 K4 ["Size"]
       65 GETTABLEKS                       R13 R13 K27 ["X"]
       67 GETUPVAL                         R14 5
       68 GETTABLEKS                       R14 R14 K11 ["Arrow"]
       70 GETTABLEKS                       R14 R14 K4 ["Size"]
       72 GETTABLEKS                       R14 R14 K28 ["Y"]
       74 CALL                             R12 2 1
       75 SETTABLEKS                       R12 R11 K4 ["Size"]
       77 CALL                             R9 2 1
       78 SETTABLEKS                       R9 R8 K18 ["Visual"]
       80 CALL                             R5 3 1
       81 SETTABLEKS                       R5 R4 K11 ["Arrow"]
       83 GETUPVAL                         R5 6
       84 GETUPVAL                         R6 9
       85 DUPTABLE                         R7 K31 [{["LayoutOrder"], ["Text"], ["tag"] = "shrink size-full-full text-title-small text-no-wrap text-align-x-left text-align-y-center clip"}]
       86 MOVE                             R8 R0
       87 CALL                             R8 0 1
       88 SETTABLEKS                       R8 R7 K15 ["LayoutOrder"]
       90 GETUPVAL                         R8 10
       91 SETTABLEKS                       R8 R7 K29 ["Text"]
       93 CALL                             R5 2 1
       94 SETTABLEKS                       R5 R4 K12 ["Label"]
       96 GETUPVAL                         R5 3
       97 GETTABLEKS                       R5 R5 K32 ["trailingIcon"]
       99 JUMPIFNOT                        R5 ; [+37]
      100 GETUPVAL                         R5 6
      101 GETUPVAL                         R6 11
      102 GETTABLEKS                       R6 R6 K33 ["IconButton"]
      104 DUPTABLE                         R7 K36 [{"onActivated", "LayoutOrder", "icon", "size"}]
      105 GETUPVAL                         R8 3
      106 GETTABLEKS                       R8 R8 K32 ["trailingIcon"]
      108 GETTABLEKS                       R8 R8 K3 ["onActivated"]
      110 SETTABLEKS                       R8 R7 K3 ["onActivated"]
      112 MOVE                             R8 R0
      113 CALL                             R8 0 1
      114 SETTABLEKS                       R8 R7 K15 ["LayoutOrder"]
      116 DUPTABLE                         R8 K39 [{"name", "variant"}]
      117 GETUPVAL                         R9 3
      118 GETTABLEKS                       R9 R9 K32 ["trailingIcon"]
      120 GETTABLEKS                       R9 R9 K37 ["name"]
      122 SETTABLEKS                       R9 R8 K37 ["name"]
      124 GETUPVAL                         R9 12
      125 GETTABLEKS                       R9 R9 K40 ["Filled"]
      127 SETTABLEKS                       R9 R8 K38 ["variant"]
      129 SETTABLEKS                       R8 R7 K34 ["icon"]
      131 GETUPVAL                         R8 13
      132 GETTABLEKS                       R8 R8 K41 ["XSmall"]
      134 SETTABLEKS                       R8 R7 K35 ["size"]
      136 CALL                             R5 2 1
      137 SETTABLEKS                       R5 R4 K13 ["RightIcon"]
      139 CALL                             R1 3 -1
      140 RETURN                           R1 -1

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
       17 GETTABLEKS                       R5 R5 K3 ["useMemo"]
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
       42 DUPTABLE                         R8 K8 [{["tag"] = "col gap-none size-full-0 auto-y", ["LayoutOrder"], ["Visible"]}]
       43 GETTABLEKS                       R9 R0 K6 ["LayoutOrder"]
       45 SETTABLEKS                       R9 R8 K6 ["LayoutOrder"]
       47 GETTABLEKS                       R9 R0 K7 ["Visible"]
       49 SETTABLEKS                       R9 R8 K7 ["Visible"]
       51 DUPTABLE                         R9 K10 [{"SectionHeader"}]
       52 SETTABLEKS                       R5 R9 K9 ["SectionHeader"]
       54 CALL                             R6 3 -1
       55 RETURN                           R6 -1

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
       78 CAPTURE                          VAL R4
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R11
       81 CAPTURE                          VAL R13
       82 CAPTURE                          VAL R12
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R10
       85 CAPTURE                          VAL R2
       86 CAPTURE                          VAL R16
       87 CAPTURE                          VAL R15
       88 GETTABLEKS                       R18 R4 K26 ["memo"]
       90 MOVE                             R19 R17
       91 CALL                             R18 1 -1
       92 RETURN                           R18 -1
