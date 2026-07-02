PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Data"]
        3 JUMPIFEQ                         R0 R1 ; [+10]
        5 GETUPVAL                         R1 0
        6 GETTABLEKS                       R1 R1 K1 ["OnChanged"]
        8 JUMPIFNOT                        R1 ; [+5]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K1 ["OnChanged"]
       12 MOVE                             R2 R0
       13 CALL                             R1 1 0
       14 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reset"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Data"]
        6 CALL                             R0 1 0
        7 NEWTABLE                         R0 0 0
        9 SETUPVAL                         R0 2
       10 RETURN                           R0 0

PROTO_2:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Vector2.one]
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 1
        5 LOADNIL                          R4
        6 CALL                             R3 1 1
        7 GETUPVAL                         R4 2
        8 NEWCLOSURE                       R5 P0
        9 CAPTURE                          VAL R0
       10 NEWTABLE                         R6 0 1
       12 GETTABLEKS                       R7 R0 K3 ["OnChanged"]
       14 SETLIST                          R6 R7 1 [1]
       16 CALL                             R4 2 1
       17 GETUPVAL                         R5 3
       18 GETTABLEKS                       R6 R0 K4 ["Data"]
       20 MOVE                             R7 R4
       21 CALL                             R5 2 1
       22 GETUPVAL                         R6 4
       23 NEWCLOSURE                       R7 P1
       24 CAPTURE                          VAL R5
       25 CAPTURE                          VAL R0
       26 CAPTURE                          UPVAL U5
       27 NEWTABLE                         R8 0 1
       29 GETTABLEKS                       R9 R0 K4 ["Data"]
       31 SETLIST                          R8 R9 1 [1]
       33 CALL                             R6 2 0
       34 GETUPVAL                         R6 2
       35 NEWCLOSURE                       R7 P2
       36 CAPTURE                          VAL R2
       37 NEWTABLE                         R8 0 0
       39 CALL                             R6 2 1
       40 GETUPVAL                         R7 0
       41 LOADK                            R8 K5 [""]
       42 CALL                             R7 1 2
       43 GETTABLEKS                       R9 R0 K6 ["Enabled"]
       45 JUMPIFNOT                        R9 ; [+225]
       46 GETUPVAL                         R9 6
       47 GETTABLEKS                       R9 R9 K7 ["createElement"]
       49 GETUPVAL                         R10 7
       50 NEWTABLE                         R11 2 0
       52 GETIMPORT                        R12 K10 [UDim2.fromScale]
       54 LOADN                            R13 1
       55 LOADN                            R14 1
       56 CALL                             R12 2 1
       57 SETTABLEKS                       R12 R11 K11 ["Size"]
       59 GETUPVAL                         R12 6
       60 GETTABLEKS                       R12 R12 K12 ["Tag"]
       62 LOADK                            R13 K13 ["X-Pad X-ColumnM X-FitY"]
       63 SETTABLE                         R13 R11 R12
       64 DUPTABLE                         R12 K17 [{"UISizeConstraint", "TopControls", "MainPanel"}]
       65 GETUPVAL                         R13 6
       66 GETTABLEKS                       R13 R13 K7 ["createElement"]
       68 LOADK                            R14 K14 ["UISizeConstraint"]
       69 DUPTABLE                         R15 K20 [{"MinSize", "MaxSize"}]
       70 GETUPVAL                         R16 8
       71 SETTABLEKS                       R16 R15 K18 ["MinSize"]
       73 GETUPVAL                         R16 9
       74 SETTABLEKS                       R16 R15 K19 ["MaxSize"]
       76 CALL                             R13 2 1
       77 SETTABLEKS                       R13 R12 K14 ["UISizeConstraint"]
       79 GETUPVAL                         R13 6
       80 GETTABLEKS                       R13 R13 K7 ["createElement"]
       82 GETUPVAL                         R14 10
       83 DUPTABLE                         R15 K24 [{"DataHook", "DisplaySettings", "SetDisplaySettings"}]
       84 SETTABLEKS                       R5 R15 K21 ["DataHook"]
       86 GETTABLEKS                       R16 R0 K22 ["DisplaySettings"]
       88 SETTABLEKS                       R16 R15 K22 ["DisplaySettings"]
       90 GETTABLEKS                       R16 R0 K23 ["SetDisplaySettings"]
       92 SETTABLEKS                       R16 R15 K23 ["SetDisplaySettings"]
       94 CALL                             R13 2 1
       95 SETTABLEKS                       R13 R12 K15 ["TopControls"]
       97 GETUPVAL                         R13 6
       98 GETTABLEKS                       R13 R13 K7 ["createElement"]
      100 GETUPVAL                         R14 7
      101 NEWTABLE                         R15 4 0
      103 GETIMPORT                        R16 K26 [UDim2.new]
      105 LOADN                            R17 1
      106 LOADN                            R18 0
      107 LOADN                            R19 1
      108 LOADN                            R20 -75
      109 CALL                             R16 4 1
      110 SETTABLEKS                       R16 R15 K11 ["Size"]
      112 LOADN                            R16 2
      113 SETTABLEKS                       R16 R15 K27 ["LayoutOrder"]
      115 GETUPVAL                         R16 6
      116 GETTABLEKS                       R16 R16 K12 ["Tag"]
      118 LOADK                            R17 K28 ["X-Pad X-RowM"]
      119 SETTABLE                         R17 R15 R16
      120 DUPTABLE                         R16 K31 [{"Canvas", "MainControlsPanel"}]
      121 GETUPVAL                         R17 6
      122 GETTABLEKS                       R17 R17 K7 ["createElement"]
      124 GETUPVAL                         R18 7
      125 DUPTABLE                         R19 K33 [{["Size"], ["LayoutOrder"] = 1}]
      126 GETIMPORT                        R20 K10 [UDim2.fromScale]
      128 LOADK                            R21 K34 [0.75]
      129 LOADN                            R22 1
      130 CALL                             R20 2 1
      131 SETTABLEKS                       R20 R19 K11 ["Size"]
      133 DUPTABLE                         R20 K36 [{"PlotCanvas"}]
      134 GETUPVAL                         R21 6
      135 GETTABLEKS                       R21 R21 K7 ["createElement"]
      137 GETUPVAL                         R22 7
      138 NEWTABLE                         R23 8 0
      140 GETIMPORT                        R24 K26 [UDim2.new]
      142 LOADN                            R25 0
      143 LOADN                            R26 25
      144 LOADN                            R27 0
      145 LOADN                            R28 25
      146 CALL                             R24 4 1
      147 SETTABLEKS                       R24 R23 K37 ["Position"]
      149 GETIMPORT                        R24 K26 [UDim2.new]
      151 LOADN                            R25 1
      152 LOADN                            R26 -50
      153 LOADN                            R27 1
      154 LOADN                            R28 -50
      155 CALL                             R24 4 1
      156 SETTABLEKS                       R24 R23 K11 ["Size"]
      158 LOADN                            R24 1
      159 SETTABLEKS                       R24 R23 K38 ["BackgroundTransparency"]
      161 SETTABLEKS                       R3 R23 K39 ["ForwardRef"]
      163 GETUPVAL                         R24 6
      164 GETTABLEKS                       R24 R24 K40 ["Change"]
      166 GETTABLEKS                       R24 R24 K41 ["AbsoluteSize"]
      168 SETTABLE                         R6 R23 R24
      169 DUPTABLE                         R24 K46 [{"Grid", "MeteringLine", "Curve", "Handles"}]
      170 GETUPVAL                         R25 6
      171 GETTABLEKS                       R25 R25 K7 ["createElement"]
      173 GETUPVAL                         R26 11
      174 DUPTABLE                         R27 K48 [{"PlotAbsoluteSize"}]
      175 SETTABLEKS                       R1 R27 K47 ["PlotAbsoluteSize"]
      177 CALL                             R25 2 1
      178 SETTABLEKS                       R25 R24 K42 ["Grid"]
      180 GETUPVAL                         R25 6
      181 GETTABLEKS                       R25 R25 K7 ["createElement"]
      183 GETUPVAL                         R26 12
      184 DUPTABLE                         R27 K51 [{"InstanceType", "DisplaySettings", "PlotAbsoluteSize", "ForceRefresh"}]
      185 GETTABLEKS                       R28 R5 K52 ["instanceType"]
      187 SETTABLEKS                       R28 R27 K49 ["InstanceType"]
      189 GETTABLEKS                       R28 R0 K22 ["DisplaySettings"]
      191 SETTABLEKS                       R28 R27 K22 ["DisplaySettings"]
      193 SETTABLEKS                       R1 R27 K47 ["PlotAbsoluteSize"]
      195 GETUPVAL                         R28 5
      196 SETTABLEKS                       R28 R27 K50 ["ForceRefresh"]
      198 CALL                             R25 2 1
      199 SETTABLEKS                       R25 R24 K43 ["MeteringLine"]
      201 GETUPVAL                         R25 6
      202 GETTABLEKS                       R25 R25 K7 ["createElement"]
      204 GETUPVAL                         R26 13
      205 DUPTABLE                         R27 K53 [{"Enabled", "DataHook", "PlotAbsoluteSize"}]
      206 GETTABLEKS                       R28 R0 K22 ["DisplaySettings"]
      208 GETTABLEKS                       R28 R28 K54 ["ShowEnvelope"]
      210 SETTABLEKS                       R28 R27 K6 ["Enabled"]
      212 SETTABLEKS                       R5 R27 K21 ["DataHook"]
      214 SETTABLEKS                       R1 R27 K47 ["PlotAbsoluteSize"]
      216 CALL                             R25 2 1
      217 SETTABLEKS                       R25 R24 K44 ["Curve"]
      219 GETUPVAL                         R25 6
      220 GETTABLEKS                       R25 R25 K7 ["createElement"]
      222 GETUPVAL                         R26 14
      223 DUPTABLE                         R27 K56 [{"DataHook", "ActiveControl", "PlotAbsoluteSize"}]
      224 SETTABLEKS                       R5 R27 K21 ["DataHook"]
      226 SETTABLEKS                       R7 R27 K55 ["ActiveControl"]
      228 SETTABLEKS                       R1 R27 K47 ["PlotAbsoluteSize"]
      230 CALL                             R25 2 1
      231 SETTABLEKS                       R25 R24 K45 ["Handles"]
      233 CALL                             R21 3 1
      234 SETTABLEKS                       R21 R20 K35 ["PlotCanvas"]
      236 CALL                             R17 3 1
      237 SETTABLEKS                       R17 R16 K29 ["Canvas"]
      239 GETUPVAL                         R17 6
      240 GETTABLEKS                       R17 R17 K7 ["createElement"]
      242 GETUPVAL                         R18 7
      243 DUPTABLE                         R19 K58 [{["Size"], ["LayoutOrder"] = 2}]
      244 GETIMPORT                        R20 K10 [UDim2.fromScale]
      246 LOADK                            R21 K59 [0.25]
      247 LOADN                            R22 1
      248 CALL                             R20 2 1
      249 SETTABLEKS                       R20 R19 K11 ["Size"]
      251 DUPTABLE                         R20 K61 [{"MainControls"}]
      252 GETUPVAL                         R21 6
      253 GETTABLEKS                       R21 R21 K7 ["createElement"]
      255 GETUPVAL                         R22 15
      256 DUPTABLE                         R23 K63 [{"DataHook", "SetActiveControl"}]
      257 SETTABLEKS                       R5 R23 K21 ["DataHook"]
      259 SETTABLEKS                       R8 R23 K62 ["SetActiveControl"]
      261 CALL                             R21 2 1
      262 SETTABLEKS                       R21 R20 K60 ["MainControls"]
      264 CALL                             R17 3 1
      265 SETTABLEKS                       R17 R16 K30 ["MainControlsPanel"]
      267 CALL                             R13 3 1
      268 SETTABLEKS                       R13 R12 K16 ["MainPanel"]
      270 CALL                             R9 3 1
      271 RETURN                           R9 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 LOADK                            R3 K3 ["AudioCompressorEditor"]
        6 NAMECALL                         R1 R0 K4 ["FindFirstAncestor"]
        8 CALL                             R1 2 1
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R1 K7 ["Packages"]
       13 GETTABLEKS                       R3 R3 K8 ["React"]
       15 CALL                             R2 1 1
       16 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       18 GETTABLEKS                       R4 R2 K10 ["useEffect"]
       20 GETTABLEKS                       R5 R2 K11 ["useRef"]
       22 GETTABLEKS                       R6 R2 K12 ["useState"]
       24 GETIMPORT                        R7 K6 [require]
       26 GETTABLEKS                       R8 R1 K7 ["Packages"]
       28 GETTABLEKS                       R8 R8 K13 ["Framework"]
       30 CALL                             R7 1 1
       31 GETTABLEKS                       R8 R7 K14 ["UI"]
       33 GETTABLEKS                       R8 R8 K15 ["Pane"]
       35 GETIMPORT                        R9 K6 [require]
       37 GETTABLEKS                       R10 R1 K16 ["Src"]
       39 GETTABLEKS                       R10 R10 K17 ["Types"]
       41 CALL                             R9 1 1
       42 GETIMPORT                        R10 K6 [require]
       44 GETTABLEKS                       R11 R0 K18 ["useDataHook"]
       46 CALL                             R10 1 1
       47 GETIMPORT                        R11 K6 [require]
       49 GETTABLEKS                       R12 R0 K19 ["CompressorCurve"]
       51 CALL                             R11 1 1
       52 GETIMPORT                        R12 K6 [require]
       54 GETTABLEKS                       R13 R0 K20 ["CompressorHandles"]
       56 CALL                             R12 1 1
       57 GETIMPORT                        R13 K6 [require]
       59 GETTABLEKS                       R14 R0 K21 ["Grid"]
       61 CALL                             R13 1 1
       62 GETIMPORT                        R14 K6 [require]
       64 GETTABLEKS                       R15 R0 K22 ["MainControls"]
       66 CALL                             R14 1 1
       67 GETIMPORT                        R15 K6 [require]
       69 GETTABLEKS                       R16 R0 K23 ["MeteringLine"]
       71 CALL                             R15 1 1
       72 GETIMPORT                        R16 K6 [require]
       74 GETTABLEKS                       R17 R0 K24 ["TopControls"]
       76 CALL                             R16 1 1
       77 GETIMPORT                        R17 K27 [Vector2.new]
       79 LOADN                            R18 540
       80 LOADN                            R19 300
       81 CALL                             R17 2 1
       82 GETIMPORT                        R18 K27 [Vector2.new]
       84 LOADN                            R19 2000
       85 LOADN                            R20 2000
       86 CALL                             R18 2 1
       87 NEWTABLE                         R19 0 0
       89 NEWCLOSURE                       R20 P0
       90 CAPTURE                          VAL R6
       91 CAPTURE                          VAL R5
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R4
       95 CAPTURE                          REF R19
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R17
       99 CAPTURE                          VAL R18
      100 CAPTURE                          VAL R16
      101 CAPTURE                          VAL R13
      102 CAPTURE                          VAL R15
      103 CAPTURE                          VAL R11
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R14
      106 CLOSEUPVALS                      R19
      107 RETURN                           R20 1
