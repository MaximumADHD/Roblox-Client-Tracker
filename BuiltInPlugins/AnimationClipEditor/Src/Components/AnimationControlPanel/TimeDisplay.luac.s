PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["AnimationData"]
        5 JUMPIF                           R1 ; [+52]
        6 JUMPIFNOT                        R3 ; [+51]
        7 GETTABLEKS                       R4 R2 K2 ["TimelineUnit"]
        9 GETTABLEKS                       R5 R2 K3 ["EndTick"]
       11 GETTABLEKS                       R6 R2 K4 ["UpdateEditingLength"]
       13 GETTABLEKS                       R7 R2 K5 ["StepAnimation"]
       15 GETTABLEKS                       R8 R2 K6 ["FrameRate"]
       17 GETUPVAL                         R10 1
       18 GETTABLEKS                       R10 R10 K8 ["parseTime"]
       20 GETTABLEKS                       R11 R0 K9 ["Text"]
       22 MOVE                             R12 R8
       23 MOVE                             R13 R4
       24 CALL                             R10 3 1
       25 ORK                              R9 R10 K7 [0]
       26 LOADN                            R12 0
       27 GETUPVAL                         R14 2
       28 GETTABLEKS                       R14 R14 K10 ["TICK_FREQUENCY"]
       30 GETUPVAL                         R15 2
       31 GETTABLEKS                       R15 R15 K11 ["MAX_ANIMATION_LENGTH"]
       33 MUL                              R13 R14 R15
       34 FASTCALL3                        MATH_CLAMP R9 R12 R13
       36 MOVE                             R11 R9
       37 GETIMPORT                        R10 K14 [math.clamp]
       39 CALL                             R10 3 1
       40 MOVE                             R9 R10
       41 JUMPIFNOTLT                      R5 R9 ; [+4]
       43 MOVE                             R10 R6
       44 MOVE                             R11 R9
       45 CALL                             R10 1 0
       46 GETUPVAL                         R10 1
       47 GETTABLEKS                       R10 R10 K15 ["formatTime"]
       49 MOVE                             R11 R9
       50 MOVE                             R12 R8
       51 MOVE                             R13 R4
       52 CALL                             R10 3 1
       53 SETTABLEKS                       R10 R0 K9 ["Text"]
       55 MOVE                             R10 R7
       56 MOVE                             R11 R9
       57 CALL                             R10 1 0
       58 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["AnimationData"]
        5 JUMPIF                           R1 ; [+51]
        6 JUMPIFNOT                        R3 ; [+50]
        7 GETTABLEKS                       R4 R2 K2 ["FrameRate"]
        9 GETTABLEKS                       R5 R2 K3 ["UpdateEditingLength"]
       11 GETTABLEKS                       R6 R3 K4 ["Metadata"]
       13 GETTABLEKS                       R6 R6 K5 ["EndTick"]
       15 GETTABLEKS                       R7 R2 K6 ["TimelineUnit"]
       17 GETUPVAL                         R9 1
       18 GETTABLEKS                       R9 R9 K8 ["parseTime"]
       20 GETTABLEKS                       R10 R0 K9 ["Text"]
       22 MOVE                             R11 R4
       23 MOVE                             R12 R7
       24 CALL                             R9 3 1
       25 ORK                              R8 R9 K7 [0]
       26 GETUPVAL                         R13 2
       27 GETTABLEKS                       R13 R13 K10 ["TICK_FREQUENCY"]
       29 FASTCALL2                        MATH_MAX R6 R13 ; [+4]
       31 MOVE                             R12 R6
       32 GETIMPORT                        R11 K13 [math.max]
       34 CALL                             R11 2 1
       35 GETUPVAL                         R12 2
       36 GETTABLEKS                       R12 R12 K14 ["MAX_ANIMATION_LENGTH"]
       38 FASTCALL3                        MATH_CLAMP R8 R11 R12
       40 MOVE                             R10 R8
       41 GETIMPORT                        R9 K16 [math.clamp]
       43 CALL                             R9 3 1
       44 MOVE                             R8 R9
       45 GETUPVAL                         R9 1
       46 GETTABLEKS                       R9 R9 K17 ["formatTime"]
       48 MOVE                             R10 R8
       49 MOVE                             R11 R4
       50 MOVE                             R12 R7
       51 CALL                             R9 3 1
       52 SETTABLEKS                       R9 R0 K9 ["Text"]
       54 MOVE                             R9 R5
       55 MOVE                             R10 R8
       56 CALL                             R9 1 0
       57 RETURN                           R0 0

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 SETTABLEKS                       R1 R0 K0 ["setCurrentTime"]
        6 NEWCLOSURE                       R1 P1
        7 CAPTURE                          VAL R0
        8 CAPTURE                          UPVAL U0
        9 CAPTURE                          UPVAL U1
       10 SETTABLEKS                       R1 R0 K1 ["setEndTime"]
       12 RETURN                           R0 0

PROTO_3:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["TimelineUnit"]
        6 GETTABLEKS                       R4 R1 K3 ["Playhead"]
        8 GETTABLEKS                       R5 R1 K4 ["EditingLength"]
       10 GETTABLEKS                       R6 R1 K5 ["FrameRate"]
       12 GETTABLEKS                       R7 R2 K6 ["textBox"]
       14 GETTABLEKS                       R8 R2 K7 ["playbackTheme"]
       16 GETTABLEKS                       R9 R1 K8 ["ReadOnly"]
       18 GETUPVAL                         R10 0
       19 GETTABLEKS                       R10 R10 K9 ["createElement"]
       21 LOADK                            R11 K10 ["Frame"]
       22 DUPTABLE                         R12 K14 [{"BackgroundTransparency", "Size", "LayoutOrder"}]
       23 LOADN                            R13 1
       24 SETTABLEKS                       R13 R12 K11 ["BackgroundTransparency"]
       26 GETIMPORT                        R13 K17 [UDim2.new]
       28 LOADN                            R14 0
       29 GETUPVAL                         R15 1
       30 GETTABLEKS                       R15 R15 K18 ["TIME_DISPLAY_WIDTH"]
       32 LOADN                            R16 1
       33 LOADN                            R17 0
       34 CALL                             R13 4 1
       35 SETTABLEKS                       R13 R12 K12 ["Size"]
       37 GETTABLEKS                       R13 R1 K13 ["LayoutOrder"]
       39 SETTABLEKS                       R13 R12 K13 ["LayoutOrder"]
       41 DUPTABLE                         R13 K23 [{"Layout", "CurrentFrameBox", "DividerLabel", "EndFrameBox"}]
       42 GETUPVAL                         R14 0
       43 GETTABLEKS                       R14 R14 K9 ["createElement"]
       45 LOADK                            R15 K24 ["UIListLayout"]
       46 DUPTABLE                         R16 K29 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
       47 GETIMPORT                        R17 K32 [Enum.FillDirection.Horizontal]
       49 SETTABLEKS                       R17 R16 K25 ["FillDirection"]
       51 GETIMPORT                        R17 K34 [Enum.HorizontalAlignment.Left]
       53 SETTABLEKS                       R17 R16 K26 ["HorizontalAlignment"]
       55 GETIMPORT                        R17 K35 [Enum.SortOrder.LayoutOrder]
       57 SETTABLEKS                       R17 R16 K27 ["SortOrder"]
       59 GETIMPORT                        R17 K37 [Enum.VerticalAlignment.Center]
       61 SETTABLEKS                       R17 R16 K28 ["VerticalAlignment"]
       63 CALL                             R14 2 1
       64 SETTABLEKS                       R14 R13 K19 ["Layout"]
       66 GETUPVAL                         R14 0
       67 GETTABLEKS                       R14 R14 K9 ["createElement"]
       69 GETUPVAL                         R15 2
       70 DUPTABLE                         R16 K42 [{"Size", "Text", "TextXAlignment", "LayoutOrder", "ClearTextOnFocus", "FocusChanged"}]
       71 GETIMPORT                        R17 K17 [UDim2.new]
       73 LOADN                            R18 0
       74 LOADN                            R19 40
       75 LOADN                            R20 1
       76 LOADN                            R21 250
       77 CALL                             R17 4 1
       78 SETTABLEKS                       R17 R16 K12 ["Size"]
       80 GETUPVAL                         R17 3
       81 GETTABLEKS                       R17 R17 K43 ["formatTime"]
       83 MOVE                             R18 R4
       84 MOVE                             R19 R6
       85 MOVE                             R20 R3
       86 CALL                             R17 3 1
       87 SETTABLEKS                       R17 R16 K38 ["Text"]
       89 GETIMPORT                        R17 K44 [Enum.TextXAlignment.Left]
       91 SETTABLEKS                       R17 R16 K39 ["TextXAlignment"]
       93 LOADN                            R17 0
       94 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
       96 LOADB                            R17 0
       97 SETTABLEKS                       R17 R16 K40 ["ClearTextOnFocus"]
       99 GETTABLEKS                       R17 R0 K45 ["setCurrentTime"]
      101 SETTABLEKS                       R17 R16 K41 ["FocusChanged"]
      103 DUPTABLE                         R17 K47 [{"Tooltip"}]
      104 GETUPVAL                         R18 0
      105 GETTABLEKS                       R18 R18 K9 ["createElement"]
      107 GETUPVAL                         R19 4
      108 DUPTABLE                         R20 K49 [{"TextKey"}]
      109 LOADK                            R21 K20 ["CurrentFrameBox"]
      110 SETTABLEKS                       R21 R20 K48 ["TextKey"]
      112 CALL                             R18 2 1
      113 SETTABLEKS                       R18 R17 K46 ["Tooltip"]
      115 CALL                             R14 3 1
      116 SETTABLEKS                       R14 R13 K20 ["CurrentFrameBox"]
      118 GETUPVAL                         R14 0
      119 GETTABLEKS                       R14 R14 K9 ["createElement"]
      121 LOADK                            R15 K50 ["TextLabel"]
      122 DUPTABLE                         R16 K54 [{"Text", "TextSize", "Font", "Size", "BackgroundTransparency", "LayoutOrder", "TextColor3"}]
      123 LOADK                            R17 K55 ["/"]
      124 SETTABLEKS                       R17 R16 K38 ["Text"]
      126 GETTABLEKS                       R17 R7 K56 ["textSize"]
      128 SETTABLEKS                       R17 R16 K51 ["TextSize"]
      130 GETTABLEKS                       R17 R2 K57 ["font"]
      132 SETTABLEKS                       R17 R16 K52 ["Font"]
      134 GETIMPORT                        R17 K17 [UDim2.new]
      136 LOADN                            R18 0
      137 LOADN                            R19 12
      138 LOADN                            R20 1
      139 LOADN                            R21 0
      140 CALL                             R17 4 1
      141 SETTABLEKS                       R17 R16 K12 ["Size"]
      143 LOADN                            R17 1
      144 SETTABLEKS                       R17 R16 K11 ["BackgroundTransparency"]
      146 LOADN                            R17 1
      147 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      149 GETTABLEKS                       R17 R8 K58 ["iconColor"]
      151 SETTABLEKS                       R17 R16 K53 ["TextColor3"]
      153 CALL                             R14 2 1
      154 SETTABLEKS                       R14 R13 K21 ["DividerLabel"]
      156 GETUPVAL                         R14 0
      157 GETTABLEKS                       R14 R14 K9 ["createElement"]
      159 GETUPVAL                         R15 2
      160 DUPTABLE                         R16 K59 [{"Size", "Text", "TextXAlignment", "LayoutOrder", "ClearTextOnFocus", "FocusChanged", "ReadOnly"}]
      161 GETIMPORT                        R17 K17 [UDim2.new]
      163 LOADN                            R18 0
      164 LOADN                            R19 40
      165 LOADN                            R20 1
      166 LOADN                            R21 250
      167 CALL                             R17 4 1
      168 SETTABLEKS                       R17 R16 K12 ["Size"]
      170 GETUPVAL                         R17 3
      171 GETTABLEKS                       R17 R17 K43 ["formatTime"]
      173 MOVE                             R18 R5
      174 MOVE                             R19 R6
      175 MOVE                             R20 R3
      176 CALL                             R17 3 1
      177 SETTABLEKS                       R17 R16 K38 ["Text"]
      179 GETIMPORT                        R17 K44 [Enum.TextXAlignment.Left]
      181 SETTABLEKS                       R17 R16 K39 ["TextXAlignment"]
      183 LOADN                            R17 2
      184 SETTABLEKS                       R17 R16 K13 ["LayoutOrder"]
      186 LOADB                            R17 0
      187 SETTABLEKS                       R17 R16 K40 ["ClearTextOnFocus"]
      189 GETTABLEKS                       R17 R0 K60 ["setEndTime"]
      191 SETTABLEKS                       R17 R16 K41 ["FocusChanged"]
      193 SETTABLEKS                       R9 R16 K8 ["ReadOnly"]
      195 DUPTABLE                         R17 K47 [{"Tooltip"}]
      196 GETUPVAL                         R18 0
      197 GETTABLEKS                       R18 R18 K9 ["createElement"]
      199 GETUPVAL                         R19 4
      200 DUPTABLE                         R20 K49 [{"TextKey"}]
      201 LOADK                            R21 K22 ["EndFrameBox"]
      202 SETTABLEKS                       R21 R20 K48 ["TextKey"]
      204 CALL                             R18 2 1
      205 SETTABLEKS                       R18 R17 K46 ["Tooltip"]
      207 CALL                             R14 3 1
      208 SETTABLEKS                       R14 R13 K22 ["EndFrameBox"]
      210 CALL                             R10 3 -1
      211 RETURN                           R10 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K8 ["Src"]
       27 GETTABLEKS                       R4 R4 K9 ["Util"]
       29 GETTABLEKS                       R4 R4 K11 ["StringUtils"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Packages"]
       36 GETTABLEKS                       R5 R5 K12 ["Framework"]
       38 CALL                             R4 1 1
       39 GETTABLEKS                       R5 R4 K13 ["ContextServices"]
       41 GETTABLEKS                       R6 R5 K14 ["withContext"]
       43 GETIMPORT                        R7 K5 [require]
       45 GETTABLEKS                       R8 R0 K8 ["Src"]
       47 GETTABLEKS                       R8 R8 K15 ["Components"]
       49 GETTABLEKS                       R8 R8 K16 ["TextBox"]
       51 CALL                             R7 1 1
       52 GETIMPORT                        R8 K5 [require]
       54 GETTABLEKS                       R9 R0 K8 ["Src"]
       56 GETTABLEKS                       R9 R9 K15 ["Components"]
       58 GETTABLEKS                       R9 R9 K17 ["Tooltip"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R9 R1 K18 ["PureComponent"]
       63 LOADK                            R11 K19 ["TimeDisplay"]
       64 NAMECALL                         R9 R9 K20 ["extend"]
       66 CALL                             R9 2 1
       67 DUPCLOSURE                       R10 K21 [PROTO_2]
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R2
       70 SETTABLEKS                       R10 R9 K22 ["init"]
       72 DUPCLOSURE                       R10 K23 [PROTO_3]
       73 CAPTURE                          VAL R1
       74 CAPTURE                          VAL R2
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R3
       77 CAPTURE                          VAL R8
       78 SETTABLEKS                       R10 R9 K24 ["render"]
       80 MOVE                             R10 R6
       81 DUPTABLE                         R11 K26 [{"Stylizer"}]
       82 GETTABLEKS                       R12 R5 K25 ["Stylizer"]
       84 SETTABLEKS                       R12 R11 K25 ["Stylizer"]
       86 CALL                             R10 1 1
       87 MOVE                             R11 R9
       88 CALL                             R10 1 1
       89 MOVE                             R9 R10
       90 RETURN                           R9 1
