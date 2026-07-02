PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["minDuration"]
        5 JUMPIFEQ                         R0 R1 ; [+13]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K2 ["onDurationChange"]
       12 MOVE                             R2 R0
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["props"]
       16 GETTABLEKS                       R3 R3 K3 ["maxDuration"]
       18 CALL                             R1 2 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["maxDuration"]
        5 JUMPIFEQ                         R0 R1 ; [+13]
        7 GETUPVAL                         R1 0
        8 GETTABLEKS                       R1 R1 K0 ["props"]
       10 GETTABLEKS                       R1 R1 K2 ["onDurationChange"]
       12 GETUPVAL                         R2 0
       13 GETTABLEKS                       R2 R2 K0 ["props"]
       15 GETTABLEKS                       R2 R2 K3 ["minDuration"]
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
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K3 ["props"]
       11 GETTABLEKS                       R2 R2 K4 ["onDurationChange"]
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
        8 GETTABLEKS                       R5 R2 K4 ["searchOptions"]
       10 GETTABLEKS                       R5 R5 K5 ["audioSearch"]
       12 GETTABLEKS                       R6 R1 K6 ["Localization"]
       14 LOADK                            R9 K7 ["General"]
       15 LOADK                            R10 K8 ["SearchOptionAudioTo"]
       16 NAMECALL                         R7 R6 K9 ["getText"]
       18 CALL                             R7 3 1
       19 GETUPVAL                         R8 0
       20 GETTABLEKS                       R8 R8 K10 ["createElement"]
       22 LOADK                            R9 K11 ["Frame"]
       23 DUPTABLE                         R10 K16 [{["BackgroundTransparency"] = 1, ["AutomaticSize"], ["Size"]}]
       24 GETIMPORT                        R11 K19 [Enum.AutomaticSize.Y]
       26 SETTABLEKS                       R11 R10 K14 ["AutomaticSize"]
       28 GETIMPORT                        R11 K22 [UDim2.fromScale]
       30 LOADN                            R12 1
       31 LOADN                            R13 0
       32 CALL                             R11 2 1
       33 SETTABLEKS                       R11 R10 K15 ["Size"]
       35 DUPTABLE                         R11 K26 [{"Layout", "AudioDuration", "RangeSlider"}]
       36 GETUPVAL                         R12 0
       37 GETTABLEKS                       R12 R12 K10 ["createElement"]
       39 LOADK                            R13 K27 ["UIListLayout"]
       40 DUPTABLE                         R14 K31 [{"SortOrder", "HorizontalAlignment", "Padding"}]
       41 GETIMPORT                        R15 K33 [Enum.SortOrder.LayoutOrder]
       43 SETTABLEKS                       R15 R14 K28 ["SortOrder"]
       45 GETIMPORT                        R15 K35 [Enum.HorizontalAlignment.Center]
       47 SETTABLEKS                       R15 R14 K29 ["HorizontalAlignment"]
       49 GETIMPORT                        R15 K38 [UDim.new]
       51 LOADN                            R16 0
       52 GETUPVAL                         R17 1
       53 GETTABLEKS                       R17 R17 K18 ["Y"]
       55 CALL                             R15 2 1
       56 SETTABLEKS                       R15 R14 K30 ["Padding"]
       58 CALL                             R12 2 1
       59 SETTABLEKS                       R12 R11 K23 ["Layout"]
       61 GETUPVAL                         R12 0
       62 GETTABLEKS                       R12 R12 K10 ["createElement"]
       64 LOADK                            R13 K11 ["Frame"]
       65 DUPTABLE                         R14 K39 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"]}]
       66 GETIMPORT                        R15 K40 [UDim2.new]
       68 LOADN                            R16 1
       69 LOADN                            R17 0
       70 LOADN                            R18 0
       71 GETUPVAL                         R19 2
       72 GETTABLEKS                       R19 R19 K18 ["Y"]
       74 CALL                             R15 4 1
       75 SETTABLEKS                       R15 R14 K15 ["Size"]
       77 DUPTABLE                         R15 K44 [{"UIListLayout", "MinTextBox", "ToLabel", "MaxTextBox"}]
       78 GETUPVAL                         R16 0
       79 GETTABLEKS                       R16 R16 K10 ["createElement"]
       81 LOADK                            R17 K27 ["UIListLayout"]
       82 DUPTABLE                         R18 K47 [{"FillDirection", "HorizontalAlignment", "Padding", "SortOrder", "VerticalAlignment"}]
       83 GETIMPORT                        R19 K49 [Enum.FillDirection.Horizontal]
       85 SETTABLEKS                       R19 R18 K45 ["FillDirection"]
       87 GETIMPORT                        R19 K51 [Enum.HorizontalAlignment.Left]
       89 SETTABLEKS                       R19 R18 K29 ["HorizontalAlignment"]
       91 GETIMPORT                        R19 K38 [UDim.new]
       93 LOADN                            R20 0
       94 GETUPVAL                         R21 1
       95 GETTABLEKS                       R21 R21 K52 ["X"]
       97 CALL                             R19 2 1
       98 SETTABLEKS                       R19 R18 K30 ["Padding"]
      100 GETIMPORT                        R19 K33 [Enum.SortOrder.LayoutOrder]
      102 SETTABLEKS                       R19 R18 K28 ["SortOrder"]
      104 GETIMPORT                        R19 K53 [Enum.VerticalAlignment.Center]
      106 SETTABLEKS                       R19 R18 K46 ["VerticalAlignment"]
      108 CALL                             R16 2 1
      109 SETTABLEKS                       R16 R15 K27 ["UIListLayout"]
      111 GETUPVAL                         R16 0
      112 GETTABLEKS                       R16 R16 K10 ["createElement"]
      114 GETUPVAL                         R17 3
      115 DUPTABLE                         R18 K62 [{["currentValue"], ["defaultValue"] = 0, ["layoutOrder"] = 1, ["max"], ["min"] = 0, ["onDurationChange"], ["size"]}]
      116 SETTABLEKS                       R3 R18 K54 ["currentValue"]
      118 SETTABLEKS                       R4 R18 K58 ["max"]
      120 GETTABLEKS                       R19 R0 K63 ["onMinDurationChange"]
      122 SETTABLEKS                       R19 R18 K60 ["onDurationChange"]
      124 GETIMPORT                        R19 K40 [UDim2.new]
      126 LOADN                            R20 0
      127 GETUPVAL                         R21 2
      128 GETTABLEKS                       R21 R21 K52 ["X"]
      130 LOADN                            R22 0
      131 GETUPVAL                         R23 2
      132 GETTABLEKS                       R23 R23 K18 ["Y"]
      134 CALL                             R19 4 1
      135 SETTABLEKS                       R19 R18 K61 ["size"]
      137 CALL                             R16 2 1
      138 SETTABLEKS                       R16 R15 K41 ["MinTextBox"]
      140 GETUPVAL                         R16 0
      141 GETTABLEKS                       R16 R16 K10 ["createElement"]
      143 LOADK                            R17 K64 ["TextLabel"]
      144 DUPTABLE                         R18 K68 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 2, ["Size"], ["Text"], ["TextColor3"]}]
      145 GETIMPORT                        R19 K40 [UDim2.new]
      147 LOADN                            R20 0
      148 LOADN                            R21 20
      149 LOADN                            R22 1
      150 LOADN                            R23 0
      151 CALL                             R19 4 1
      152 SETTABLEKS                       R19 R18 K15 ["Size"]
      154 SETTABLEKS                       R7 R18 K66 ["Text"]
      156 GETTABLEKS                       R19 R5 K69 ["textColor"]
      158 SETTABLEKS                       R19 R18 K67 ["TextColor3"]
      160 CALL                             R16 2 1
      161 SETTABLEKS                       R16 R15 K42 ["ToLabel"]
      163 GETUPVAL                         R16 0
      164 GETTABLEKS                       R16 R16 K10 ["createElement"]
      166 GETUPVAL                         R17 3
      167 DUPTABLE                         R18 K71 [{["currentValue"], ["defaultValue"], ["layoutOrder"] = 3, ["max"], ["min"], ["onDurationChange"], ["size"]}]
      168 SETTABLEKS                       R4 R18 K54 ["currentValue"]
      170 GETUPVAL                         R19 4
      171 SETTABLEKS                       R19 R18 K55 ["defaultValue"]
      173 GETUPVAL                         R19 4
      174 SETTABLEKS                       R19 R18 K58 ["max"]
      176 SETTABLEKS                       R3 R18 K59 ["min"]
      178 GETTABLEKS                       R19 R0 K72 ["onMaxDurationChange"]
      180 SETTABLEKS                       R19 R18 K60 ["onDurationChange"]
      182 GETIMPORT                        R19 K40 [UDim2.new]
      184 LOADN                            R20 0
      185 GETUPVAL                         R21 2
      186 GETTABLEKS                       R21 R21 K52 ["X"]
      188 LOADN                            R22 0
      189 GETUPVAL                         R23 2
      190 GETTABLEKS                       R23 R23 K18 ["Y"]
      192 CALL                             R19 4 1
      193 SETTABLEKS                       R19 R18 K61 ["size"]
      195 CALL                             R16 2 1
      196 SETTABLEKS                       R16 R15 K43 ["MaxTextBox"]
      198 CALL                             R12 3 1
      199 SETTABLEKS                       R12 R11 K24 ["AudioDuration"]
      201 GETUPVAL                         R12 0
      202 GETTABLEKS                       R12 R12 K10 ["createElement"]
      204 GETUPVAL                         R13 5
      205 DUPTABLE                         R14 K79 [{["LayoutOrder"] = 2, ["LowerRangeValue"], ["UpperRangeValue"], ["Min"], ["Max"], ["OnValuesChanged"], ["Size"], ["SnapIncrement"] = 1}]
      206 SETTABLEKS                       R3 R14 K73 ["LowerRangeValue"]
      208 SETTABLEKS                       R4 R14 K74 ["UpperRangeValue"]
      210 GETUPVAL                         R15 6
      211 SETTABLEKS                       R15 R14 K75 ["Min"]
      213 GETUPVAL                         R15 4
      214 SETTABLEKS                       R15 R14 K76 ["Max"]
      216 GETTABLEKS                       R15 R0 K80 ["onSliderChange"]
      218 SETTABLEKS                       R15 R14 K77 ["OnValuesChanged"]
      220 GETIMPORT                        R15 K40 [UDim2.new]
      222 LOADN                            R16 1
      223 LOADN                            R17 0
      224 LOADN                            R18 0
      225 LOADN                            R19 20
      226 CALL                             R15 4 1
      227 SETTABLEKS                       R15 R14 K15 ["Size"]
      229 CALL                             R12 2 1
      230 SETTABLEKS                       R12 R11 K25 ["RangeSlider"]
      232 CALL                             R8 3 -1
      233 RETURN                           R8 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R1 R0 K3 ["Packages"]
       13 GETIMPORT                        R2 K5 [require]
       15 GETTABLEKS                       R3 R1 K6 ["Roact"]
       17 CALL                             R2 1 1
       18 GETIMPORT                        R3 K5 [require]
       20 GETTABLEKS                       R4 R0 K7 ["Src"]
       22 GETTABLEKS                       R4 R4 K8 ["Util"]
       24 GETTABLEKS                       R4 R4 K9 ["Constants"]
       26 CALL                             R3 1 1
       27 GETIMPORT                        R4 K5 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Src"]
       31 GETTABLEKS                       R5 R5 K10 ["Components"]
       33 GETTABLEKS                       R5 R5 K11 ["SearchOptions"]
       35 GETTABLEKS                       R5 R5 K12 ["TimeTextBox"]
       37 CALL                             R4 1 1
       38 GETIMPORT                        R5 K5 [require]
       40 GETTABLEKS                       R6 R1 K13 ["Framework"]
       42 CALL                             R5 1 1
       43 GETTABLEKS                       R5 R5 K14 ["ContextServices"]
       45 GETTABLEKS                       R6 R5 K15 ["withContext"]
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R1 K13 ["Framework"]
       51 CALL                             R7 1 1
       52 GETTABLEKS                       R7 R7 K16 ["UI"]
       54 GETTABLEKS                       R7 R7 K17 ["RangeSlider"]
       56 GETIMPORT                        R8 K5 [require]
       58 GETTABLEKS                       R9 R1 K13 ["Framework"]
       60 CALL                             R8 1 1
       61 GETTABLEKS                       R8 R8 K8 ["Util"]
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
