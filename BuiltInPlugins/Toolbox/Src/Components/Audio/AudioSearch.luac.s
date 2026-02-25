PROTO_0:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["minDuration"]
        5 JUMPIFEQ                         R0 R1 ; [+13]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K2 ["onDurationChange"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K0 ["props"]
       16 GETTABLEKS                       R3 R4 K3 ["maxDuration"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["maxDuration"]
        5 JUMPIFEQ                         R0 R1 ; [+13]
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["props"]
       10 GETTABLEKS                       R1 R2 K2 ["onDurationChange"]
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["props"]
       15 GETTABLEKS                       R2 R3 K3 ["minDuration"]
       17 MOVE                             R3 R0
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_2:
        0 LOADN                            R3 1
        1 FASTCALL2                        MATH_MAX R3 R1 ; [+4]
        3 MOVE                             R4 R1
        4 GETIMPORT                        R2 K2 [math.max]
        6 CALL                             R2 2 1
        7 MOVE                             R1 R2
        8 GETUPVAL                         R4 0
        9 GETTABLEKS                       R3 R4 K3 ["props"]
       11 GETTABLEKS                       R2 R3 K4 ["onDurationChange"]
       13 MOVE                             R3 R0
       14 MOVE                             R4 R1
       15 CALL                             R2 2 0
       16 RETURN                           R0 0

PROTO_3:
        0 NEWCLOSURE                       R2 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R2 R0 K0 ["onMinDurationChange"]
        4 NEWCLOSURE                       R2 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R2 R0 K1 ["onMaxDurationChange"]
        8 NEWCLOSURE                       R2 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R2 R0 K2 ["onSliderChange"]
       12 RETURN                           R0 0

PROTO_4:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["minDuration"]
        6 GETTABLEKS                       R4 R1 K3 ["maxDuration"]
        8 GETTABLEKS                       R6 R2 K4 ["searchOptions"]
       10 GETTABLEKS                       R5 R6 K5 ["audioSearch"]
       12 GETTABLEKS                       R6 R1 K6 ["Localization"]
       14 LOADK                            R9 K7 ["General"]
       15 LOADK                            R10 K8 ["SearchOptionAudioTo"]
       16 NAMECALL                         R7 R6 K9 ["getText"]
       18 CALL                             R7 3 1
       19 GETUPVAL                         R9 0
       20 GETTABLEKS                       R8 R9 K10 ["createElement"]
       22 LOADK                            R9 K11 ["Frame"]
       23 DUPTABLE                         R10 K15 [{"BackgroundTransparency", "AutomaticSize", "Size"}]
       24 LOADN                            R11 1
       25 SETTABLEKS                       R11 R10 K12 ["BackgroundTransparency"]
       27 GETIMPORT                        R11 K18 [Enum.AutomaticSize.Y]
       29 SETTABLEKS                       R11 R10 K13 ["AutomaticSize"]
       31 GETIMPORT                        R11 K21 [UDim2.fromScale]
       33 LOADN                            R12 1
       34 LOADN                            R13 0
       35 CALL                             R11 2 1
       36 SETTABLEKS                       R11 R10 K14 ["Size"]
       38 DUPTABLE                         R11 K25 [{"Layout", "AudioDuration", "RangeSlider"}]
       39 GETUPVAL                         R13 0
       40 GETTABLEKS                       R12 R13 K10 ["createElement"]
       42 LOADK                            R13 K26 ["UIListLayout"]
       43 DUPTABLE                         R14 K30 [{"SortOrder", "HorizontalAlignment", "Padding"}]
       44 GETIMPORT                        R15 K32 [Enum.SortOrder.LayoutOrder]
       46 SETTABLEKS                       R15 R14 K27 ["SortOrder"]
       48 GETIMPORT                        R15 K34 [Enum.HorizontalAlignment.Center]
       50 SETTABLEKS                       R15 R14 K28 ["HorizontalAlignment"]
       52 GETIMPORT                        R15 K37 [UDim.new]
       54 LOADN                            R16 0
       55 GETUPVAL                         R18 1
       56 GETTABLEKS                       R17 R18 K17 ["Y"]
       58 CALL                             R15 2 1
       59 SETTABLEKS                       R15 R14 K29 ["Padding"]
       61 CALL                             R12 2 1
       62 SETTABLEKS                       R12 R11 K22 ["Layout"]
       64 GETUPVAL                         R13 0
       65 GETTABLEKS                       R12 R13 K10 ["createElement"]
       67 LOADK                            R13 K11 ["Frame"]
       68 DUPTABLE                         R14 K38 [{"BackgroundTransparency", "LayoutOrder", "Size"}]
       69 LOADN                            R15 1
       70 SETTABLEKS                       R15 R14 K12 ["BackgroundTransparency"]
       72 LOADN                            R15 1
       73 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
       75 GETIMPORT                        R15 K39 [UDim2.new]
       77 LOADN                            R16 1
       78 LOADN                            R17 0
       79 LOADN                            R18 0
       80 GETUPVAL                         R20 2
       81 GETTABLEKS                       R19 R20 K17 ["Y"]
       83 CALL                             R15 4 1
       84 SETTABLEKS                       R15 R14 K14 ["Size"]
       86 DUPTABLE                         R15 K43 [{"UIListLayout", "MinTextBox", "ToLabel", "MaxTextBox"}]
       87 GETUPVAL                         R17 0
       88 GETTABLEKS                       R16 R17 K10 ["createElement"]
       90 LOADK                            R17 K26 ["UIListLayout"]
       91 DUPTABLE                         R18 K46 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
       92 GETIMPORT                        R19 K48 [Enum.FillDirection.Horizontal]
       94 SETTABLEKS                       R19 R18 K44 ["FillDirection"]
       96 GETIMPORT                        R19 K50 [Enum.HorizontalAlignment.Left]
       98 SETTABLEKS                       R19 R18 K28 ["HorizontalAlignment"]
      100 GETIMPORT                        R19 K37 [UDim.new]
      102 LOADN                            R20 0
      103 GETUPVAL                         R22 1
      104 GETTABLEKS                       R21 R22 K51 ["X"]
      106 CALL                             R19 2 1
      107 SETTABLEKS                       R19 R18 K29 ["Padding"]
      109 GETIMPORT                        R19 K32 [Enum.SortOrder.LayoutOrder]
      111 SETTABLEKS                       R19 R18 K27 ["SortOrder"]
      113 GETIMPORT                        R19 K52 [Enum.VerticalAlignment.Center]
      115 SETTABLEKS                       R19 R18 K45 ["VerticalAlignment"]
      117 CALL                             R16 2 1
      118 SETTABLEKS                       R16 R15 K26 ["UIListLayout"]
      120 GETUPVAL                         R17 0
      121 GETTABLEKS                       R16 R17 K10 ["createElement"]
      123 GETUPVAL                         R17 3
      124 DUPTABLE                         R18 K60 [{"currentValue", "defaultValue", "layoutOrder", "max", "min", "onDurationChange", "size"}]
      125 SETTABLEKS                       R3 R18 K53 ["currentValue"]
      127 LOADN                            R19 0
      128 SETTABLEKS                       R19 R18 K54 ["defaultValue"]
      130 LOADN                            R19 1
      131 SETTABLEKS                       R19 R18 K55 ["layoutOrder"]
      133 SETTABLEKS                       R4 R18 K56 ["max"]
      135 LOADN                            R19 0
      136 SETTABLEKS                       R19 R18 K57 ["min"]
      138 GETTABLEKS                       R19 R0 K61 ["onMinDurationChange"]
      140 SETTABLEKS                       R19 R18 K58 ["onDurationChange"]
      142 GETIMPORT                        R19 K39 [UDim2.new]
      144 LOADN                            R20 0
      145 GETUPVAL                         R22 2
      146 GETTABLEKS                       R21 R22 K51 ["X"]
      148 LOADN                            R22 0
      149 GETUPVAL                         R24 2
      150 GETTABLEKS                       R23 R24 K17 ["Y"]
      152 CALL                             R19 4 1
      153 SETTABLEKS                       R19 R18 K59 ["size"]
      155 CALL                             R16 2 1
      156 SETTABLEKS                       R16 R15 K40 ["MinTextBox"]
      158 GETUPVAL                         R17 0
      159 GETTABLEKS                       R16 R17 K10 ["createElement"]
      161 LOADK                            R17 K62 ["TextLabel"]
      162 DUPTABLE                         R18 K65 [{"BackgroundTransparency", "LayoutOrder", "Size", "Text", "TextColor3"}]
      163 LOADN                            R19 1
      164 SETTABLEKS                       R19 R18 K12 ["BackgroundTransparency"]
      166 LOADN                            R19 2
      167 SETTABLEKS                       R19 R18 K31 ["LayoutOrder"]
      169 GETIMPORT                        R19 K39 [UDim2.new]
      171 LOADN                            R20 0
      172 LOADN                            R21 20
      173 LOADN                            R22 1
      174 LOADN                            R23 0
      175 CALL                             R19 4 1
      176 SETTABLEKS                       R19 R18 K14 ["Size"]
      178 SETTABLEKS                       R7 R18 K63 ["Text"]
      180 GETTABLEKS                       R19 R5 K66 ["textColor"]
      182 SETTABLEKS                       R19 R18 K64 ["TextColor3"]
      184 CALL                             R16 2 1
      185 SETTABLEKS                       R16 R15 K41 ["ToLabel"]
      187 GETUPVAL                         R17 0
      188 GETTABLEKS                       R16 R17 K10 ["createElement"]
      190 GETUPVAL                         R17 3
      191 DUPTABLE                         R18 K60 [{"currentValue", "defaultValue", "layoutOrder", "max", "min", "onDurationChange", "size"}]
      192 SETTABLEKS                       R4 R18 K53 ["currentValue"]
      194 GETUPVAL                         R19 4
      195 SETTABLEKS                       R19 R18 K54 ["defaultValue"]
      197 LOADN                            R19 3
      198 SETTABLEKS                       R19 R18 K55 ["layoutOrder"]
      200 GETUPVAL                         R19 4
      201 SETTABLEKS                       R19 R18 K56 ["max"]
      203 SETTABLEKS                       R3 R18 K57 ["min"]
      205 GETTABLEKS                       R19 R0 K67 ["onMaxDurationChange"]
      207 SETTABLEKS                       R19 R18 K58 ["onDurationChange"]
      209 GETIMPORT                        R19 K39 [UDim2.new]
      211 LOADN                            R20 0
      212 GETUPVAL                         R22 2
      213 GETTABLEKS                       R21 R22 K51 ["X"]
      215 LOADN                            R22 0
      216 GETUPVAL                         R24 2
      217 GETTABLEKS                       R23 R24 K17 ["Y"]
      219 CALL                             R19 4 1
      220 SETTABLEKS                       R19 R18 K59 ["size"]
      222 CALL                             R16 2 1
      223 SETTABLEKS                       R16 R15 K42 ["MaxTextBox"]
      225 CALL                             R12 3 1
      226 SETTABLEKS                       R12 R11 K23 ["AudioDuration"]
      228 GETUPVAL                         R13 0
      229 GETTABLEKS                       R12 R13 K10 ["createElement"]
      231 GETUPVAL                         R13 5
      232 DUPTABLE                         R14 K74 [{"LayoutOrder", "LowerRangeValue", "UpperRangeValue", "Min", "Max", "OnValuesChanged", "Size", "SnapIncrement"}]
      233 LOADN                            R15 2
      234 SETTABLEKS                       R15 R14 K31 ["LayoutOrder"]
      236 SETTABLEKS                       R3 R14 K68 ["LowerRangeValue"]
      238 SETTABLEKS                       R4 R14 K69 ["UpperRangeValue"]
      240 GETUPVAL                         R15 6
      241 SETTABLEKS                       R15 R14 K70 ["Min"]
      243 GETUPVAL                         R15 4
      244 SETTABLEKS                       R15 R14 K71 ["Max"]
      246 GETTABLEKS                       R15 R0 K75 ["onSliderChange"]
      248 SETTABLEKS                       R15 R14 K72 ["OnValuesChanged"]
      250 GETIMPORT                        R15 K39 [UDim2.new]
      252 LOADN                            R16 1
      253 LOADN                            R17 0
      254 LOADN                            R18 0
      255 LOADN                            R19 20
      256 CALL                             R15 4 1
      257 SETTABLEKS                       R15 R14 K14 ["Size"]
      259 LOADN                            R15 1
      260 SETTABLEKS                       R15 R14 K73 ["SnapIncrement"]
      262 CALL                             R12 2 1
      263 SETTABLEKS                       R12 R11 K24 ["RangeSlider"]
      265 CALL                             R8 3 -1
      266 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R6 R0 K7 ["Src"]
       22 GETTABLEKS                       R5 R6 K8 ["Util"]
       24 GETTABLEKS                       R4 R5 K9 ["Constants"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R8 R0 K7 ["Src"]
       31 GETTABLEKS                       R7 R8 K10 ["Components"]
       33 GETTABLEKS                       R6 R7 K11 ["SearchOptions"]
       35 GETTABLEKS                       R5 R6 K12 ["TimeTextBox"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R6 K5 [require]
       40 GETTABLEKS                       R7 R1 K13 ["Framework"]
       42 CALL                             R6 1 1
       43 GETTABLEKS                       R5 R6 K14 ["ContextServices"]
       45 GETTABLEKS                       R6 R5 K15 ["withContext"]
       47 GETIMPORT                        R9 K5 [require]
       49 GETTABLEKS                       R10 R1 K13 ["Framework"]
       51 CALL                             R9 1 1
       52 GETTABLEKS                       R8 R9 K16 ["UI"]
       54 GETTABLEKS                       R7 R8 K17 ["RangeSlider"]
       56 GETIMPORT                        R9 K5 [require]
       58 GETTABLEKS                       R10 R1 K13 ["Framework"]
       60 CALL                             R9 1 1
       61 GETTABLEKS                       R8 R9 K8 ["Util"]
       63 GETTABLEKS                       R9 R3 K18 ["MAX_AUDIO_SEARCH_DURATION"]
       65 GETTABLEKS                       R10 R3 K19 ["MIN_AUDIO_SEARCH_DURATION"]
       67 GETIMPORT                        R11 K22 [Vector2.new]
       69 LOADN                            R12 80
       70 LOADN                            R13 32
       71 CALL                             R11 2 1
       72 GETIMPORT                        R12 K22 [Vector2.new]
       74 LOADN                            R13 6
       75 LOADN                            R14 12
       76 CALL                             R12 2 1
       77 GETTABLEKS                       R13 R2 K23 ["PureComponent"]
       79 LOADK                            R15 K24 ["AudioSearch"]
       80 NAMECALL                         R13 R13 K25 ["extend"]
       82 CALL                             R13 2 1
       83 DUPCLOSURE                       R14 K26 [PROTO_3]
       84 SETTABLEKS                       R14 R13 K27 ["init"]
       86 DUPCLOSURE                       R14 K28 [PROTO_4]
       87 CAPTURE                          VAL R2
       88 CAPTURE                          VAL R12
       89 CAPTURE                          VAL R11
       90 CAPTURE                          VAL R4
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R7
       93 CAPTURE                          VAL R10
       94 SETTABLEKS                       R14 R13 K29 ["render"]
       96 MOVE                             R14 R6
       97 DUPTABLE                         R15 K32 [{"Localization", "Stylizer"}]
       98 GETTABLEKS                       R16 R5 K30 ["Localization"]
      100 SETTABLEKS                       R16 R15 K30 ["Localization"]
      102 GETTABLEKS                       R16 R5 K31 ["Stylizer"]
      104 SETTABLEKS                       R16 R15 K31 ["Stylizer"]
      106 CALL                             R14 1 1
      107 MOVE                             R15 R13
      108 CALL                             R14 1 1
      109 MOVE                             R13 R14
      110 RETURN                           R13 1
