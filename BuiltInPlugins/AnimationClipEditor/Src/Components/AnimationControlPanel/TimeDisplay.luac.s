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
       22 DUPTABLE                         R12 K15 [{["BackgroundTransparency"] = 1, ["Size"], ["LayoutOrder"]}]
       23 GETIMPORT                        R13 K18 [UDim2.new]
       25 LOADN                            R14 0
       26 GETUPVAL                         R15 1
       27 GETTABLEKS                       R15 R15 K19 ["TIME_DISPLAY_WIDTH"]
       29 LOADN                            R16 1
       30 LOADN                            R17 0
       31 CALL                             R13 4 1
       32 SETTABLEKS                       R13 R12 K13 ["Size"]
       34 GETTABLEKS                       R13 R1 K14 ["LayoutOrder"]
       36 SETTABLEKS                       R13 R12 K14 ["LayoutOrder"]
       38 DUPTABLE                         R13 K24 [{"Layout", "CurrentFrameBox", "DividerLabel", "EndFrameBox"}]
       39 GETUPVAL                         R14 0
       40 GETTABLEKS                       R14 R14 K9 ["createElement"]
       42 LOADK                            R15 K25 ["UIListLayout"]
       43 DUPTABLE                         R16 K30 [{"FillDirection", "HorizontalAlignment", "SortOrder", "VerticalAlignment"}]
       44 GETIMPORT                        R17 K33 [Enum.FillDirection.Horizontal]
       46 SETTABLEKS                       R17 R16 K26 ["FillDirection"]
       48 GETIMPORT                        R17 K35 [Enum.HorizontalAlignment.Left]
       50 SETTABLEKS                       R17 R16 K27 ["HorizontalAlignment"]
       52 GETIMPORT                        R17 K36 [Enum.SortOrder.LayoutOrder]
       54 SETTABLEKS                       R17 R16 K28 ["SortOrder"]
       56 GETIMPORT                        R17 K38 [Enum.VerticalAlignment.Center]
       58 SETTABLEKS                       R17 R16 K29 ["VerticalAlignment"]
       60 CALL                             R14 2 1
       61 SETTABLEKS                       R14 R13 K20 ["Layout"]
       63 GETUPVAL                         R14 0
       64 GETTABLEKS                       R14 R14 K9 ["createElement"]
       66 GETUPVAL                         R15 2
       67 DUPTABLE                         R16 K45 [{["Size"], ["Text"], ["TextXAlignment"], ["LayoutOrder"] = 0, ["ClearTextOnFocus"] = False, ["FocusChanged"]}]
       68 GETIMPORT                        R17 K18 [UDim2.new]
       70 LOADN                            R18 0
       71 LOADN                            R19 40
       72 LOADN                            R20 1
       73 LOADN                            R21 -6
       74 CALL                             R17 4 1
       75 SETTABLEKS                       R17 R16 K13 ["Size"]
       77 GETUPVAL                         R17 3
       78 GETTABLEKS                       R17 R17 K46 ["formatTime"]
       80 MOVE                             R18 R4
       81 MOVE                             R19 R6
       82 MOVE                             R20 R3
       83 CALL                             R17 3 1
       84 SETTABLEKS                       R17 R16 K39 ["Text"]
       86 GETIMPORT                        R17 K47 [Enum.TextXAlignment.Left]
       88 SETTABLEKS                       R17 R16 K40 ["TextXAlignment"]
       90 GETTABLEKS                       R17 R0 K48 ["setCurrentTime"]
       92 SETTABLEKS                       R17 R16 K44 ["FocusChanged"]
       94 DUPTABLE                         R17 K50 [{"Tooltip"}]
       95 GETUPVAL                         R18 0
       96 GETTABLEKS                       R18 R18 K9 ["createElement"]
       98 GETUPVAL                         R19 4
       99 DUPTABLE                         R20 K52 [{["TextKey"] = "CurrentFrameBox"}]
      100 CALL                             R18 2 1
      101 SETTABLEKS                       R18 R17 K49 ["Tooltip"]
      103 CALL                             R14 3 1
      104 SETTABLEKS                       R14 R13 K21 ["CurrentFrameBox"]
      106 GETUPVAL                         R14 0
      107 GETTABLEKS                       R14 R14 K9 ["createElement"]
      109 LOADK                            R15 K53 ["TextLabel"]
      110 DUPTABLE                         R16 K58 [{["Text"] = "/", ["TextSize"], ["Font"], ["Size"], ["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["TextColor3"]}]
      111 GETTABLEKS                       R17 R7 K59 ["textSize"]
      113 SETTABLEKS                       R17 R16 K55 ["TextSize"]
      115 GETTABLEKS                       R17 R2 K60 ["font"]
      117 SETTABLEKS                       R17 R16 K56 ["Font"]
      119 GETIMPORT                        R17 K18 [UDim2.new]
      121 LOADN                            R18 0
      122 LOADN                            R19 12
      123 LOADN                            R20 1
      124 LOADN                            R21 0
      125 CALL                             R17 4 1
      126 SETTABLEKS                       R17 R16 K13 ["Size"]
      128 GETTABLEKS                       R17 R8 K61 ["iconColor"]
      130 SETTABLEKS                       R17 R16 K57 ["TextColor3"]
      132 CALL                             R14 2 1
      133 SETTABLEKS                       R14 R13 K22 ["DividerLabel"]
      135 GETUPVAL                         R14 0
      136 GETTABLEKS                       R14 R14 K9 ["createElement"]
      138 GETUPVAL                         R15 2
      139 DUPTABLE                         R16 K63 [{["Size"], ["Text"], ["TextXAlignment"], ["LayoutOrder"] = 2, ["ClearTextOnFocus"] = False, ["FocusChanged"], ["ReadOnly"]}]
      140 GETIMPORT                        R17 K18 [UDim2.new]
      142 LOADN                            R18 0
      143 LOADN                            R19 40
      144 LOADN                            R20 1
      145 LOADN                            R21 -6
      146 CALL                             R17 4 1
      147 SETTABLEKS                       R17 R16 K13 ["Size"]
      149 GETUPVAL                         R17 3
      150 GETTABLEKS                       R17 R17 K46 ["formatTime"]
      152 MOVE                             R18 R5
      153 MOVE                             R19 R6
      154 MOVE                             R20 R3
      155 CALL                             R17 3 1
      156 SETTABLEKS                       R17 R16 K39 ["Text"]
      158 GETIMPORT                        R17 K47 [Enum.TextXAlignment.Left]
      160 SETTABLEKS                       R17 R16 K40 ["TextXAlignment"]
      162 GETTABLEKS                       R17 R0 K64 ["setEndTime"]
      164 SETTABLEKS                       R17 R16 K44 ["FocusChanged"]
      166 SETTABLEKS                       R9 R16 K8 ["ReadOnly"]
      168 DUPTABLE                         R17 K50 [{"Tooltip"}]
      169 GETUPVAL                         R18 0
      170 GETTABLEKS                       R18 R18 K9 ["createElement"]
      172 GETUPVAL                         R19 4
      173 DUPTABLE                         R20 K65 [{["TextKey"] = "EndFrameBox"}]
      174 CALL                             R18 2 1
      175 SETTABLEKS                       R18 R17 K49 ["Tooltip"]
      177 CALL                             R14 3 1
      178 SETTABLEKS                       R14 R13 K23 ["EndFrameBox"]
      180 CALL                             R10 3 -1
      181 RETURN                           R10 -1

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
