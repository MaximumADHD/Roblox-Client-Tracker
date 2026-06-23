PROTO_0:
        0 LOADN                            R2 16
        1 JUMPIFNOTLT                      R1 R2 ; [+7]
        3 FASTCALL1                        TOSTRING R1 ; [+3]
        4 MOVE                             R3 R1
        5 GETIMPORT                        R2 K1 [tostring]
        7 CALL                             R2 1 1
        8 RETURN                           R2 1
        9 GETTABLEKS                       R2 R0 K2 ["props"]
       11 GETTABLEKS                       R2 R2 K3 ["Localization"]
       13 GETUPVAL                         R4 0
       14 LOADK                            R5 K4 ["Favorites"]
       15 LOADK                            R6 K5 ["FlooredCountInThousands"]
       16 DUPTABLE                         R7 K7 [{"count"}]
       17 DIVK                             R9 R1 K8 [1000]
       18 FASTCALL1                        MATH_FLOOR R9 ; [+2]
       19 GETIMPORT                        R8 K11 [math.floor]
       21 CALL                             R8 1 1
       22 SETTABLEKS                       R8 R7 K6 ["count"]
       24 NAMECALL                         R2 R2 K12 ["getProjectText"]
       26 CALL                             R2 5 -1
       27 RETURN                           R2 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R0 K0 ["props"]
        4 GETTABLEKS                       R2 R2 K1 ["Stylizer"]
        6 GETTABLEKS                       R4 R1 K2 ["IsFavorited"]
        8 JUMPIFNOT                        R4 ; [+5]
        9 GETTABLEKS                       R3 R2 K3 ["Button"]
       11 GETTABLEKS                       R3 R3 K4 ["Filled"]
       13 JUMPIF                           R3 ; [+4]
       14 GETTABLEKS                       R3 R2 K3 ["Button"]
       16 GETTABLEKS                       R3 R3 K5 ["Unfilled"]
       18 GETUPVAL                         R4 0
       19 GETTABLEKS                       R5 R1 K6 ["Size"]
       21 GETTABLEKS                       R6 R2 K6 ["Size"]
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 1
       25 GETTABLEKS                       R5 R5 K7 ["createElement"]
       27 GETUPVAL                         R6 2
       28 DUPTABLE                         R7 K16 [{"AnchorPoint", "AutomaticSize", "LayoutOrder", "Layout", "HorizontalAlignment", "VerticalAlignment", "Position", "Spacing", "Size"}]
       29 GETTABLEKS                       R8 R1 K8 ["AnchorPoint"]
       31 SETTABLEKS                       R8 R7 K8 ["AnchorPoint"]
       33 GETTABLEKS                       R8 R1 K9 ["AutomaticSize"]
       35 SETTABLEKS                       R8 R7 K9 ["AutomaticSize"]
       37 GETTABLEKS                       R8 R1 K10 ["LayoutOrder"]
       39 SETTABLEKS                       R8 R7 K10 ["LayoutOrder"]
       41 GETIMPORT                        R8 K20 [Enum.FillDirection.Horizontal]
       43 SETTABLEKS                       R8 R7 K11 ["Layout"]
       45 GETIMPORT                        R8 K22 [Enum.HorizontalAlignment.Left]
       47 SETTABLEKS                       R8 R7 K12 ["HorizontalAlignment"]
       49 GETIMPORT                        R8 K24 [Enum.VerticalAlignment.Center]
       51 SETTABLEKS                       R8 R7 K13 ["VerticalAlignment"]
       53 GETTABLEKS                       R8 R1 K14 ["Position"]
       55 SETTABLEKS                       R8 R7 K14 ["Position"]
       57 GETTABLEKS                       R8 R2 K15 ["Spacing"]
       59 SETTABLEKS                       R8 R7 K15 ["Spacing"]
       61 SETTABLEKS                       R4 R7 K6 ["Size"]
       63 DUPTABLE                         R8 K27 [{"Icon", "Text"}]
       64 GETUPVAL                         R9 1
       65 GETTABLEKS                       R9 R9 K7 ["createElement"]
       67 GETUPVAL                         R10 3
       68 DUPTABLE                         R11 K31 [{"AutomaticSize", "LayoutOrder", "Style", "OnClick", "SizeConstraint", "Size"}]
       69 GETTABLEKS                       R12 R1 K9 ["AutomaticSize"]
       71 SETTABLEKS                       R12 R11 K9 ["AutomaticSize"]
       73 LOADN                            R12 1
       74 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
       76 SETTABLEKS                       R3 R11 K28 ["Style"]
       78 GETTABLEKS                       R12 R1 K29 ["OnClick"]
       80 SETTABLEKS                       R12 R11 K29 ["OnClick"]
       82 GETIMPORT                        R12 K33 [Enum.SizeConstraint.RelativeYY]
       84 SETTABLEKS                       R12 R11 K30 ["SizeConstraint"]
       86 GETTABLEKS                       R12 R2 K34 ["IconSize"]
       88 SETTABLEKS                       R12 R11 K6 ["Size"]
       90 GETUPVAL                         R13 4
       91 JUMPIFNOT                        R13 ; [+10]
       92 GETUPVAL                         R12 1
       93 GETTABLEKS                       R12 R12 K7 ["createElement"]
       95 GETUPVAL                         R13 5
       96 DUPTABLE                         R14 K36 [{"Cursor"}]
       97 LOADK                            R15 K37 ["PointingHand"]
       98 SETTABLEKS                       R15 R14 K35 ["Cursor"]
      100 CALL                             R12 2 1
      101 JUMP                             ; [+13]
      102 NEWTABLE                         R12 0 1
      104 GETUPVAL                         R13 1
      105 GETTABLEKS                       R13 R13 K7 ["createElement"]
      107 GETUPVAL                         R14 5
      108 DUPTABLE                         R15 K36 [{"Cursor"}]
      109 LOADK                            R16 K37 ["PointingHand"]
      110 SETTABLEKS                       R16 R15 K35 ["Cursor"]
      112 CALL                             R13 2 -1
      113 SETLIST                          R12 R13 -1 [1]
      115 CALL                             R9 3 1
      116 SETTABLEKS                       R9 R8 K25 ["Icon"]
      118 GETUPVAL                         R9 1
      119 GETTABLEKS                       R9 R9 K7 ["createElement"]
      121 GETUPVAL                         R10 6
      122 DUPTABLE                         R11 K38 [{"LayoutOrder", "AutomaticSize", "Style", "Text"}]
      123 LOADN                            R12 2
      124 SETTABLEKS                       R12 R11 K10 ["LayoutOrder"]
      126 GETIMPORT                        R12 K40 [Enum.AutomaticSize.XY]
      128 SETTABLEKS                       R12 R11 K9 ["AutomaticSize"]
      130 GETTABLEKS                       R12 R2 K26 ["Text"]
      132 SETTABLEKS                       R12 R11 K28 ["Style"]
      134 GETTABLEKS                       R14 R1 K41 ["Count"]
      136 NAMECALL                         R12 R0 K42 ["formatCount"]
      138 CALL                             R12 2 1
      139 SETTABLEKS                       R12 R11 K26 ["Text"]
      141 CALL                             R9 2 1
      142 SETTABLEKS                       R9 R8 K26 ["Text"]
      144 CALL                             R5 3 -1
      145 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R3 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R6 R0 K10 ["Util"]
       34 GETTABLEKS                       R6 R6 K11 ["Typecheck"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R4 K12 ["prioritize"]
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R0 K13 ["Resources"]
       43 CALL                             R7 1 1
       44 GETTABLEKS                       R8 R7 K14 ["LOCALIZATION_PROJECT_NAME"]
       46 GETIMPORT                        R9 K6 [require]
       48 GETTABLEKS                       R10 R0 K2 ["UI"]
       50 GETTABLEKS                       R10 R10 K15 ["Components"]
       52 GETTABLEKS                       R10 R10 K16 ["DEPRECATED_Button"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R11 R0 K2 ["UI"]
       59 GETTABLEKS                       R11 R11 K15 ["Components"]
       61 GETTABLEKS                       R11 R11 K17 ["HoverArea"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K6 [require]
       66 GETTABLEKS                       R12 R0 K2 ["UI"]
       68 GETTABLEKS                       R12 R12 K15 ["Components"]
       70 GETTABLEKS                       R12 R12 K18 ["Pane"]
       72 CALL                             R11 1 1
       73 GETIMPORT                        R12 K6 [require]
       75 GETTABLEKS                       R13 R0 K2 ["UI"]
       77 GETTABLEKS                       R13 R13 K15 ["Components"]
       79 GETTABLEKS                       R13 R13 K19 ["TextLabel"]
       81 CALL                             R12 1 1
       82 GETIMPORT                        R13 K6 [require]
       84 GETTABLEKS                       R14 R0 K20 ["SharedFlags"]
       86 GETTABLEKS                       R14 R14 K21 ["getFFlagDevFrameworkFixMissingKeyErrors"]
       88 CALL                             R13 1 1
       89 CALL                             R13 0 1
       90 GETTABLEKS                       R14 R1 K22 ["PureComponent"]
       92 LOADK                            R16 K23 ["Favorites"]
       93 NAMECALL                         R14 R14 K24 ["extend"]
       95 CALL                             R14 2 1
       96 GETTABLEKS                       R15 R5 K25 ["wrap"]
       98 MOVE                             R16 R14
       99 GETIMPORT                        R17 K1 [script]
      101 CALL                             R15 2 0
      102 DUPCLOSURE                       R15 K26 [PROTO_0]
      103 CAPTURE                          VAL R8
      104 SETTABLEKS                       R15 R14 K27 ["formatCount"]
      106 DUPCLOSURE                       R15 K28 [PROTO_1]
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R13
      112 CAPTURE                          VAL R10
      113 CAPTURE                          VAL R12
      114 SETTABLEKS                       R15 R14 K29 ["render"]
      116 MOVE                             R15 R3
      117 DUPTABLE                         R16 K32 [{"Localization", "Stylizer"}]
      118 GETTABLEKS                       R17 R2 K30 ["Localization"]
      120 SETTABLEKS                       R17 R16 K30 ["Localization"]
      122 GETTABLEKS                       R17 R2 K31 ["Stylizer"]
      124 SETTABLEKS                       R17 R16 K31 ["Stylizer"]
      126 CALL                             R15 1 1
      127 MOVE                             R16 R14
      128 CALL                             R15 1 1
      129 MOVE                             R14 R15
      130 RETURN                           R14 1
