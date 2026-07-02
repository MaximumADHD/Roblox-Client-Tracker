PROTO_0:
        0 NEWTABLE                         R4 0 0
        2 LOADN                            R7 0
        3 LOADN                            R5 180
        4 DIVRK                            R6 K0 [180] R0
        5 FORNPREP                         R5
        6 FASTCALL1                        MATH_RAD R7 ; [+3]
        7 MOVE                             R9 R7
        8 GETIMPORT                        R8 K3 [math.rad]
       10 CALL                             R8 1 1
       11 FASTCALL1                        MATH_COS R8 ; [+3]
       12 MOVE                             R13 R8
       13 GETIMPORT                        R12 K5 [math.cos]
       15 CALL                             R12 1 1
       16 MUL                              R11 R2 R12
       17 ADD                              R10 R1 R11
       18 FASTCALL1                        MATH_SIN R8 ; [+3]
       19 MOVE                             R13 R8
       20 GETIMPORT                        R12 K7 [math.sin]
       22 CALL                             R12 1 1
       23 MUL                              R11 R3 R12
       24 ADD                              R9 R10 R11
       25 MOVE                             R11 R4
       26 GETIMPORT                        R12 K10 [Vector2.new]
       28 MOVE                             R13 R7
       29 FASTCALL1                        MATH_ABS R9 ; [+3]
       30 MOVE                             R15 R9
       31 GETIMPORT                        R14 K12 [math.abs]
       33 CALL                             R14 1 1
       34 CALL                             R12 2 -1
       35 FASTCALL                         TABLE_INSERT ; [+2]
       36 GETIMPORT                        R10 K15 [table.insert]
       38 CALL                             R10 -1 0
       39 FORNLOOP                         R5
       40 RETURN                           R4 1

PROTO_1:
        0 NEWTABLE                         R1 0 0
        2 LOADN                            R4 0
        3 LOADN                            R2 180
        4 DIVRK                            R3 K0 [180] R0
        5 FORNPREP                         R2
        6 FASTCALL1                        MATH_RAD R4 ; [+3]
        7 MOVE                             R6 R4
        8 GETIMPORT                        R5 K3 [math.rad]
       10 CALL                             R5 1 1
       11 MULK                             R11 R5 K7 [2]
       12 ADDK                             R10 R11 K6 [3.14159265358979]
       13 FASTCALL1                        MATH_COS R10 ; [+2]
       14 GETIMPORT                        R9 K9 [math.cos]
       16 CALL                             R9 1 1
       17 SUBK                             R8 R9 K5 [0.5]
       18 FASTCALL1                        MATH_COS R5 ; [+3]
       19 MOVE                             R11 R5
       20 GETIMPORT                        R10 K9 [math.cos]
       22 CALL                             R10 1 1
       23 MULK                             R9 R10 K10 [0.75]
       24 SUB                              R7 R8 R9
       25 MULK                             R6 R7 K4 [0.4375]
       26 MOVE                             R8 R1
       27 GETIMPORT                        R9 K13 [Vector2.new]
       29 MOVE                             R10 R4
       30 FASTCALL1                        MATH_ABS R6 ; [+3]
       31 MOVE                             R12 R6
       32 GETIMPORT                        R11 K15 [math.abs]
       34 CALL                             R11 1 1
       35 CALL                             R9 2 -1
       36 FASTCALL                         TABLE_INSERT ; [+2]
       37 GETIMPORT                        R7 K18 [table.insert]
       39 CALL                             R7 -1 0
       40 FORNLOOP                         R2
       41 RETURN                           R1 1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 MOVE                             R2 R0
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K1 ["ANGLE"]
        7 CALL                             R1 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Preset"]
        2 LOADK                            R3 K1 ["Custom"]
        3 NAMECALL                         R0 R0 K2 ["getText"]
        5 CALL                             R0 3 -1
        6 RETURN                           R0 -1

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_5:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_6:
        0 NEWTABLE                         R0 0 4
        2 GETUPVAL                         R1 0
        3 LOADK                            R3 K0 ["Preset"]
        4 LOADK                            R4 K1 ["Omni"]
        5 NAMECALL                         R1 R1 K2 ["getText"]
        7 CALL                             R1 3 1
        8 SETTABLEN                        R1 R0 1
        9 GETUPVAL                         R1 0
       10 LOADK                            R3 K0 ["Preset"]
       11 LOADK                            R4 K3 ["Cardioid"]
       12 NAMECALL                         R1 R1 K2 ["getText"]
       14 CALL                             R1 3 1
       15 SETTABLEN                        R1 R0 2
       16 GETUPVAL                         R1 0
       17 LOADK                            R3 K0 ["Preset"]
       18 LOADK                            R4 K4 ["Dipole"]
       19 NAMECALL                         R1 R1 K2 ["getText"]
       21 CALL                             R1 3 1
       22 SETTABLEN                        R1 R0 3
       23 GETUPVAL                         R1 0
       24 LOADK                            R3 K0 ["Preset"]
       25 LOADK                            R4 K5 ["Shotgun"]
       26 NAMECALL                         R1 R1 K2 ["getText"]
       28 CALL                             R1 3 1
       29 SETTABLEN                        R1 R0 4
       30 RETURN                           R0 1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 NEWTABLE                         R1 0 0
        5 GETUPVAL                         R3 1
        6 GETTABLEN                        R2 R3 1
        7 JUMPIFNOTEQ                      R0 R2 ; [+10]
        9 GETGLOBAL                        R2 K0 ["makeKeypointsForPolarPattern"]
       11 LOADN                            R3 1
       12 LOADN                            R4 1
       13 LOADN                            R5 0
       14 LOADN                            R6 0
       15 CALL                             R2 4 1
       16 MOVE                             R1 R2
       17 JUMP                             ; [+36]
       18 GETUPVAL                         R3 1
       19 GETTABLEN                        R2 R3 2
       20 JUMPIFNOTEQ                      R0 R2 ; [+10]
       22 GETGLOBAL                        R2 K0 ["makeKeypointsForPolarPattern"]
       24 LOADN                            R3 8
       25 LOADK                            R4 K1 [0.5]
       26 LOADK                            R5 K1 [0.5]
       27 LOADN                            R6 0
       28 CALL                             R2 4 1
       29 MOVE                             R1 R2
       30 JUMP                             ; [+23]
       31 GETUPVAL                         R3 1
       32 GETTABLEN                        R2 R3 3
       33 JUMPIFNOTEQ                      R0 R2 ; [+10]
       35 GETGLOBAL                        R2 K0 ["makeKeypointsForPolarPattern"]
       37 LOADN                            R3 16
       38 LOADN                            R4 0
       39 LOADN                            R5 1
       40 LOADN                            R6 0
       41 CALL                             R2 4 1
       42 MOVE                             R1 R2
       43 JUMP                             ; [+10]
       44 GETUPVAL                         R3 1
       45 GETTABLEN                        R2 R3 4
       46 JUMPIFNOTEQ                      R0 R2 ; [+7]
       48 GETGLOBAL                        R2 K2 ["makeKeypointsForShotgunPattern"]
       50 LOADN                            R3 16
       51 CALL                             R2 1 1
       52 MOVE                             R1 R2
       53 JUMP                             ; [0]
       54 GETUPVAL                         R2 2
       55 GETTABLEKS                       R2 R2 K3 ["reset"]
       57 MOVE                             R3 R1
       58 CALL                             R2 1 0
       59 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 MOVE                             R2 R0
        2 CALL                             R1 1 0
        3 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R1 0
        1 LOADNIL                          R2
        2 CALL                             R1 1 1
        3 GETUPVAL                         R2 1
        4 GETIMPORT                        R3 K2 [Vector2.one]
        6 CALL                             R2 1 2
        7 GETUPVAL                         R4 1
        8 GETUPVAL                         R6 2
        9 GETTABLEN                        R5 R6 1
       10 CALL                             R4 1 2
       11 GETUPVAL                         R6 2
       12 GETUPVAL                         R7 3
       13 GETUPVAL                         R8 4
       14 GETTABLEKS                       R8 R8 K3 ["Localization"]
       16 GETTABLEKS                       R8 R8 K4 ["Context"]
       18 CALL                             R7 1 1
       19 GETUPVAL                         R8 5
       20 NEWCLOSURE                       R9 P0
       21 CAPTURE                          VAL R0
       22 CAPTURE                          UPVAL U6
       23 NEWTABLE                         R10 0 2
       25 GETTABLEKS                       R11 R0 K5 ["Data"]
       27 GETTABLEKS                       R12 R0 K6 ["OnChanged"]
       29 SETLIST                          R10 R11 2 [1]
       31 CALL                             R8 2 1
       32 GETUPVAL                         R9 7
       33 NEWCLOSURE                       R10 P1
       34 CAPTURE                          VAL R7
       35 CALL                             R9 1 1
       36 GETUPVAL                         R10 8
       37 GETTABLEKS                       R10 R10 K7 ["useState"]
       39 MOVE                             R11 R9
       40 CALL                             R10 1 2
       41 GETUPVAL                         R12 5
       42 NEWCLOSURE                       R13 P2
       43 CAPTURE                          VAL R11
       44 CAPTURE                          VAL R9
       45 NEWTABLE                         R14 0 3
       47 MOVE                             R15 R9
       48 GETTABLEKS                       R16 R0 K5 ["Data"]
       50 GETTABLEKS                       R17 R0 K6 ["OnChanged"]
       52 SETLIST                          R14 R15 3 [1]
       54 CALL                             R12 2 1
       55 GETUPVAL                         R13 9
       56 GETUPVAL                         R14 10
       57 GETTABLEKS                       R14 R14 K8 ["strTableToKeypoints"]
       59 GETTABLEKS                       R15 R0 K5 ["Data"]
       61 GETTABLEKS                       R15 R15 K9 ["AngleCurve"]
       63 CALL                             R14 1 1
       64 GETUPVAL                         R15 6
       65 GETTABLEKS                       R15 R15 K10 ["ANGLE"]
       67 MOVE                             R16 R8
       68 MOVE                             R17 R12
       69 CALL                             R13 4 1
       70 LOADNIL                          R14
       71 MOVE                             R14 R13
       72 FASTCALL2K                       ASSERT R14 K11 ; [+5]
       74 MOVE                             R16 R14
       75 LOADK                            R17 K11 ["curve was nil"]
       76 GETIMPORT                        R15 K13 [assert]
       78 CALL                             R15 2 0
       79 GETUPVAL                         R15 5
       80 NEWCLOSURE                       R16 P3
       81 CAPTURE                          VAL R3
       82 NEWTABLE                         R17 0 0
       84 CALL                             R15 2 1
       85 LOADNIL                          R16
       86 LOADNIL                          R17
       87 LOADNIL                          R18
       88 LOADNIL                          R19
       89 GETTABLEKS                       R20 R4 K14 ["Label"]
       91 LOADN                            R21 0
       92 GETIMPORT                        R22 K17 [string.find]
       94 MOVE                             R23 R20
       95 LOADK                            R24 K18 ["Polar"]
       96 CALL                             R22 2 1
       97 JUMPIFNOT                        R22 ; [+6]
       98 GETUPVAL                         R16 11
       99 GETUPVAL                         R17 12
      100 GETUPVAL                         R18 13
      101 GETUPVAL                         R19 14
      102 LOADN                            R21 25
      103 JUMP                             ; [+5]
      104 GETUPVAL                         R16 15
      105 GETUPVAL                         R17 16
      106 GETUPVAL                         R18 17
      107 GETUPVAL                         R19 14
      108 LOADN                            R21 50
      109 MOVE                             R22 R16
      110 JUMPIFNOT                        R22 ; [+10]
      111 GETUPVAL                         R22 8
      112 GETTABLEKS                       R22 R22 K19 ["createElement"]
      114 MOVE                             R23 R16
      115 DUPTABLE                         R24 K24 [{["CurveHook"], ["PropertyType"] = "Angle", ["PlotAbsoluteSize"]}]
      116 SETTABLEKS                       R14 R24 K20 ["CurveHook"]
      118 SETTABLEKS                       R2 R24 K23 ["PlotAbsoluteSize"]
      120 CALL                             R22 2 1
      121 MOVE                             R23 R17
      122 JUMPIFNOT                        R23 ; [+10]
      123 GETUPVAL                         R23 8
      124 GETTABLEKS                       R23 R23 K19 ["createElement"]
      126 MOVE                             R24 R17
      127 DUPTABLE                         R25 K25 [{"CurveHook", "PlotAbsoluteSize"}]
      128 SETTABLEKS                       R14 R25 K20 ["CurveHook"]
      130 SETTABLEKS                       R2 R25 K23 ["PlotAbsoluteSize"]
      132 CALL                             R23 2 1
      133 MOVE                             R24 R18
      134 JUMPIFNOT                        R24 ; [+12]
      135 GETUPVAL                         R24 8
      136 GETTABLEKS                       R24 R24 K19 ["createElement"]
      138 MOVE                             R25 R18
      139 DUPTABLE                         R26 K27 [{"CurveHook", "PlotAbsoluteSize", "PlotRef"}]
      140 SETTABLEKS                       R14 R26 K20 ["CurveHook"]
      142 SETTABLEKS                       R2 R26 K23 ["PlotAbsoluteSize"]
      144 SETTABLEKS                       R1 R26 K26 ["PlotRef"]
      146 CALL                             R24 2 1
      147 MOVE                             R25 R19
      148 JUMPIFNOT                        R25 ; [+8]
      149 GETUPVAL                         R25 8
      150 GETTABLEKS                       R25 R25 K19 ["createElement"]
      152 MOVE                             R26 R19
      153 DUPTABLE                         R27 K28 [{"CurveHook"}]
      154 SETTABLEKS                       R14 R27 K20 ["CurveHook"]
      156 CALL                             R25 2 1
      157 GETUPVAL                         R26 7
      158 NEWCLOSURE                       R27 P4
      159 CAPTURE                          VAL R7
      160 CALL                             R26 1 1
      161 GETUPVAL                         R27 5
      162 NEWCLOSURE                       R28 P5
      163 CAPTURE                          VAL R11
      164 CAPTURE                          VAL R26
      165 CAPTURE                          REF R14
      166 NEWTABLE                         R29 0 4
      168 MOVE                             R30 R26
      169 MOVE                             R31 R10
      170 MOVE                             R32 R11
      171 MOVE                             R33 R14
      172 SETLIST                          R29 R30 4 [1]
      174 CALL                             R27 2 1
      175 GETTABLEKS                       R28 R0 K29 ["Enabled"]
      177 JUMPIFNOT                        R28 ; [+144]
      178 GETUPVAL                         R28 8
      179 GETTABLEKS                       R28 R28 K19 ["createElement"]
      181 GETUPVAL                         R29 18
      182 NEWTABLE                         R30 1 0
      184 GETUPVAL                         R31 8
      185 GETTABLEKS                       R31 R31 K30 ["Tag"]
      187 LOADK                            R32 K31 ["X-Pad X-ColumnM X-FitY"]
      188 SETTABLE                         R32 R30 R31
      189 DUPTABLE                         R31 K36 [{"UISizeConstraint", "TabsRow", "Canvas", "Controls"}]
      190 GETUPVAL                         R32 8
      191 GETTABLEKS                       R32 R32 K19 ["createElement"]
      193 LOADK                            R33 K32 ["UISizeConstraint"]
      194 DUPTABLE                         R34 K39 [{"MinSize", "MaxSize"}]
      195 GETUPVAL                         R35 19
      196 SETTABLEKS                       R35 R34 K37 ["MinSize"]
      198 GETUPVAL                         R35 20
      199 SETTABLEKS                       R35 R34 K38 ["MaxSize"]
      201 CALL                             R32 2 1
      202 SETTABLEKS                       R32 R31 K32 ["UISizeConstraint"]
      204 GETUPVAL                         R32 8
      205 GETTABLEKS                       R32 R32 K19 ["createElement"]
      207 GETUPVAL                         R33 18
      208 NEWTABLE                         R34 2 0
      210 GETUPVAL                         R35 8
      211 GETTABLEKS                       R35 R35 K30 ["Tag"]
      213 LOADK                            R36 K40 ["X-Pad X-RowM X-FitY"]
      214 SETTABLE                         R36 R34 R35
      215 LOADN                            R35 2
      216 SETTABLEKS                       R35 R34 K41 ["ZIndex"]
      218 DUPTABLE                         R35 K44 [{"EditorTypeTabs", "Presets"}]
      219 GETUPVAL                         R36 8
      220 GETTABLEKS                       R36 R36 K19 ["createElement"]
      222 GETUPVAL                         R37 21
      223 DUPTABLE                         R38 K48 [{"Tabs", "SelectedTab", "OnTabSelected"}]
      224 SETTABLEKS                       R6 R38 K45 ["Tabs"]
      226 SETTABLEKS                       R4 R38 K46 ["SelectedTab"]
      228 NEWCLOSURE                       R39 P6
      229 CAPTURE                          VAL R5
      230 SETTABLEKS                       R39 R38 K47 ["OnTabSelected"]
      232 CALL                             R36 2 1
      233 SETTABLEKS                       R36 R35 K42 ["EditorTypeTabs"]
      235 GETUPVAL                         R36 8
      236 GETTABLEKS                       R36 R36 K19 ["createElement"]
      238 GETUPVAL                         R37 22
      239 DUPTABLE                         R38 K52 [{"PlaceholderText", "Items", "OnItemActivated"}]
      240 SETTABLEKS                       R10 R38 K49 ["PlaceholderText"]
      242 SETTABLEKS                       R26 R38 K50 ["Items"]
      244 SETTABLEKS                       R27 R38 K51 ["OnItemActivated"]
      246 NEWTABLE                         R39 0 0
      248 CALL                             R36 3 1
      249 SETTABLEKS                       R36 R35 K43 ["Presets"]
      251 CALL                             R32 3 1
      252 SETTABLEKS                       R32 R31 K33 ["TabsRow"]
      254 GETUPVAL                         R32 8
      255 GETTABLEKS                       R32 R32 K19 ["createElement"]
      257 GETUPVAL                         R33 18
      258 DUPTABLE                         R34 K56 [{["Size"], ["LayoutOrder"] = 2}]
      259 GETIMPORT                        R35 K59 [UDim2.new]
      261 LOADN                            R36 1
      262 LOADN                            R37 0
      263 LOADN                            R38 1
      264 LOADN                            R39 -125
      265 CALL                             R35 4 1
      266 SETTABLEKS                       R35 R34 K53 ["Size"]
      268 DUPTABLE                         R35 K61 [{"PlotCanvas"}]
      269 GETUPVAL                         R36 8
      270 GETTABLEKS                       R36 R36 K19 ["createElement"]
      272 GETUPVAL                         R37 18
      273 NEWTABLE                         R38 8 0
      275 GETIMPORT                        R39 K59 [UDim2.new]
      277 LOADN                            R40 0
      278 MOVE                             R41 R21
      279 LOADN                            R42 0
      280 MOVE                             R43 R21
      281 CALL                             R39 4 1
      282 SETTABLEKS                       R39 R38 K62 ["Position"]
      284 GETIMPORT                        R39 K59 [UDim2.new]
      286 LOADN                            R40 1
      287 MINUS                            R42 R21
      288 MULK                             R41 R42 K55 [2]
      289 LOADN                            R42 1
      290 MINUS                            R44 R21
      291 MULK                             R43 R44 K55 [2]
      292 CALL                             R39 4 1
      293 SETTABLEKS                       R39 R38 K53 ["Size"]
      295 LOADN                            R39 1
      296 SETTABLEKS                       R39 R38 K63 ["BackgroundTransparency"]
      298 SETTABLEKS                       R1 R38 K64 ["ForwardRef"]
      300 GETUPVAL                         R39 8
      301 GETTABLEKS                       R39 R39 K65 ["Change"]
      303 GETTABLEKS                       R39 R39 K66 ["AbsoluteSize"]
      305 SETTABLE                         R15 R38 R39
      306 DUPTABLE                         R39 K70 [{"Handles", "Curve", "Grid"}]
      307 SETTABLEKS                       R24 R39 K67 ["Handles"]
      309 SETTABLEKS                       R23 R39 K68 ["Curve"]
      311 SETTABLEKS                       R22 R39 K69 ["Grid"]
      313 CALL                             R36 3 1
      314 SETTABLEKS                       R36 R35 K60 ["PlotCanvas"]
      316 CALL                             R32 3 1
      317 SETTABLEKS                       R32 R31 K34 ["Canvas"]
      319 SETTABLEKS                       R25 R31 K35 ["Controls"]
      321 CALL                             R28 3 1
      322 CLOSEUPVALS                      R14
      323 RETURN                           R28 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["DirectionalCurveEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       20 GETTABLEKS                       R4 R2 K10 ["useContext"]
       22 GETTABLEKS                       R5 R2 K11 ["useMemo"]
       24 GETTABLEKS                       R6 R2 K12 ["useRef"]
       26 GETTABLEKS                       R7 R2 K13 ["useState"]
       28 GETIMPORT                        R8 K6 [require]
       30 GETTABLEKS                       R9 R1 K7 ["Packages"]
       32 GETTABLEKS                       R9 R9 K14 ["Framework"]
       34 CALL                             R8 1 1
       35 GETTABLEKS                       R9 R8 K15 ["ContextServices"]
       37 GETTABLEKS                       R10 R8 K16 ["UI"]
       39 GETTABLEKS                       R10 R10 K17 ["Pane"]
       41 GETTABLEKS                       R11 R8 K16 ["UI"]
       43 GETTABLEKS                       R11 R11 K18 ["SelectInput"]
       45 GETTABLEKS                       R12 R8 K16 ["UI"]
       47 GETTABLEKS                       R12 R12 K19 ["Tabs"]
       49 GETIMPORT                        R13 K6 [require]
       51 GETTABLEKS                       R14 R0 K20 ["useCurve"]
       53 CALL                             R13 1 1
       54 GETIMPORT                        R14 K6 [require]
       56 GETTABLEKS                       R15 R0 K21 ["CurveRenderer"]
       58 GETTABLEKS                       R15 R15 K22 ["Curve"]
       60 CALL                             R14 1 1
       61 GETIMPORT                        R15 K6 [require]
       63 GETTABLEKS                       R16 R0 K21 ["CurveRenderer"]
       65 GETTABLEKS                       R16 R16 K23 ["Grid"]
       67 CALL                             R15 1 1
       68 GETIMPORT                        R16 K6 [require]
       70 GETTABLEKS                       R17 R0 K21 ["CurveRenderer"]
       72 GETTABLEKS                       R17 R17 K24 ["PolarCurve"]
       74 CALL                             R16 1 1
       75 GETIMPORT                        R17 K6 [require]
       77 GETTABLEKS                       R18 R0 K21 ["CurveRenderer"]
       79 GETTABLEKS                       R18 R18 K25 ["PolarGrid"]
       81 CALL                             R17 1 1
       82 GETIMPORT                        R18 K6 [require]
       84 GETTABLEKS                       R19 R0 K26 ["Editors"]
       86 GETTABLEKS                       R19 R19 K27 ["CurveHandles"]
       88 CALL                             R18 1 1
       89 GETIMPORT                        R19 K6 [require]
       91 GETTABLEKS                       R20 R0 K26 ["Editors"]
       93 GETTABLEKS                       R20 R20 K28 ["CurveControls"]
       95 CALL                             R19 1 1
       96 GETIMPORT                        R20 K6 [require]
       98 GETTABLEKS                       R21 R0 K26 ["Editors"]
      100 GETTABLEKS                       R21 R21 K29 ["PolarCurveHandles"]
      102 CALL                             R20 1 1
      103 GETIMPORT                        R21 K6 [require]
      105 GETTABLEKS                       R22 R1 K30 ["Src"]
      107 GETTABLEKS                       R22 R22 K31 ["Types"]
      109 CALL                             R21 1 1
      110 GETIMPORT                        R22 K6 [require]
      112 GETTABLEKS                       R23 R1 K30 ["Src"]
      114 GETTABLEKS                       R23 R23 K32 ["Util"]
      116 GETTABLEKS                       R23 R23 K33 ["AttenuationUtil"]
      118 CALL                             R22 1 1
      119 GETIMPORT                        R23 K36 [Vector2.new]
      121 LOADN                            R24 540
      122 LOADN                            R25 300
      123 CALL                             R23 2 1
      124 GETIMPORT                        R24 K36 [Vector2.new]
      126 LOADN                            R25 2000
      127 LOADN                            R26 2000
      128 CALL                             R24 2 1
      129 NEWTABLE                         R25 0 2
      131 DUPTABLE                         R26 K39 [{["Label"] = "Curve (Polar)"}]
      132 DUPTABLE                         R27 K40 [{["Label"] = "Curve"}]
      133 SETLIST                          R25 R26 2 [1]
      135 DUPCLOSURE                       R26 K41 [PROTO_0]
      136 SETGLOBAL                        R26 K42 ["makeKeypointsForPolarPattern"]
      138 DUPCLOSURE                       R26 K43 [PROTO_1]
      139 SETGLOBAL                        R26 K44 ["makeKeypointsForShotgunPattern"]
      141 DUPCLOSURE                       R26 K45 [PROTO_9]
      142 CAPTURE                          VAL R6
      143 CAPTURE                          VAL R7
      144 CAPTURE                          VAL R25
      145 CAPTURE                          VAL R4
      146 CAPTURE                          VAL R9
      147 CAPTURE                          VAL R3
      148 CAPTURE                          VAL R21
      149 CAPTURE                          VAL R5
      150 CAPTURE                          VAL R2
      151 CAPTURE                          VAL R13
      152 CAPTURE                          VAL R22
      153 CAPTURE                          VAL R17
      154 CAPTURE                          VAL R16
      155 CAPTURE                          VAL R20
      156 CAPTURE                          VAL R19
      157 CAPTURE                          VAL R15
      158 CAPTURE                          VAL R14
      159 CAPTURE                          VAL R18
      160 CAPTURE                          VAL R10
      161 CAPTURE                          VAL R23
      162 CAPTURE                          VAL R24
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R11
      165 RETURN                           R26 1
