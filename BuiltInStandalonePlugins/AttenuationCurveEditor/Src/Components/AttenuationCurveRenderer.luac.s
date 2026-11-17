PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["OnChanged"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["curveToTable"]
        6 MOVE                             R3 R0
        7 CALL                             R2 1 -1
        8 CALL                             R1 -1 0
        9 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["reset"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["tableToCurve"]
        6 GETUPVAL                         R2 2
        7 GETTABLEKS                       R2 R2 K2 ["CurveData"]
        9 CALL                             R1 1 -1
       10 CALL                             R0 -1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["tableToCurve"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["CurveData"]
        6 CALL                             R0 1 1
        7 GETTABLEKS                       R0 R0 K2 ["Keypoints"]
        9 GETUPVAL                         R1 2
       10 GETTABLEKS                       R1 R1 K3 ["Max"]
       12 LENGTH                           R2 R0
       13 LOADN                            R3 0
       14 JUMPIFNOTLT                      R3 R2 ; [+15]
       16 GETUPVAL                         R3 2
       17 GETTABLEKS                       R3 R3 K3 ["Max"]
       19 LENGTH                           R6 R0
       20 GETTABLE                         R5 R0 R6
       21 GETTABLEKS                       R5 R5 K5 ["X"]
       23 MULK                             R4 R5 K4 [1.33]
       24 FASTCALL2                        MATH_MAX R3 R4 ; [+3]
       26 GETIMPORT                        R2 K8 [math.max]
       28 CALL                             R2 2 1
       29 MOVE                             R1 R2
       30 GETUPVAL                         R4 3
       31 GETUPVAL                         R5 4
       32 FASTCALL3                        MATH_CLAMP R1 R4 R5
       34 MOVE                             R3 R1
       35 GETIMPORT                        R2 K10 [math.clamp]
       37 CALL                             R2 3 1
       38 MOVE                             R1 R2
       39 GETUPVAL                         R2 5
       40 GETIMPORT                        R3 K13 [NumberRange.new]
       42 LOADN                            R4 0
       43 MOVE                             R5 R1
       44 CALL                             R3 2 -1
       45 CALL                             R2 -1 0
       46 GETUPVAL                         R2 6
       47 GETTABLEKS                       R2 R2 K14 ["select"]
       49 LOADN                            R3 1
       50 CALL                             R2 1 0
       51 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["keypoints"]
        3 LENGTH                           R0 R1
        4 LOADN                            R1 0
        5 JUMPIFNOTLT                      R1 R0 ; [+17]
        7 GETUPVAL                         R2 1
        8 GETTABLEKS                       R2 R2 K1 ["Max"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R5 R5 K0 ["keypoints"]
       13 GETTABLE                         R4 R5 R0
       14 GETTABLEKS                       R4 R4 K3 ["X"]
       16 MULK                             R3 R4 K2 [1.33]
       17 FASTCALL2                        MATH_MAX R2 R3 ; [+3]
       19 GETIMPORT                        R1 K6 [math.max]
       21 CALL                             R1 2 1
       22 RETURN                           R1 1
       23 GETUPVAL                         R1 1
       24 GETTABLEKS                       R1 R1 K1 ["Max"]
       26 RETURN                           R1 1

PROTO_4:
        0 JUMPIFNOT                        R0 ; [+4]
        1 GETUPVAL                         R1 0
        2 GETTABLEKS                       R2 R0 K0 ["AbsoluteSize"]
        4 CALL                             R1 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["remove"]
        3 CALL                             R0 0 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["update"]
        3 MOVE                             R2 R0
        4 LOADB                            R3 1
        5 CALL                             R1 2 0
        6 GETUPVAL                         R1 1
        7 GETIMPORT                        R2 K3 [NumberRange.new]
        9 GETTABLEKS                       R4 R0 K4 ["X"]
       11 GETUPVAL                         R5 2
       12 GETTABLEKS                       R5 R5 K5 ["Min"]
       14 FASTCALL2                        MATH_MIN R4 R5 ; [+3]
       16 GETIMPORT                        R3 K8 [math.min]
       18 CALL                             R3 2 1
       19 GETTABLEKS                       R5 R0 K4 ["X"]
       21 GETUPVAL                         R6 2
       22 GETTABLEKS                       R6 R6 K9 ["Max"]
       24 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       26 GETIMPORT                        R4 K11 [math.max]
       28 CALL                             R4 2 1
       29 CALL                             R2 2 -1
       30 CALL                             R1 -1 0
       31 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETIMPORT                        R2 K2 [Vector2.one]
        3 CALL                             R1 1 2
        4 GETUPVAL                         R3 1
        5 NEWCLOSURE                       R4 P0
        6 CAPTURE                          VAL R0
        7 CAPTURE                          UPVAL U2
        8 NEWTABLE                         R5 0 1
       10 GETTABLEKS                       R6 R0 K3 ["OnChanged"]
       12 SETLIST                          R5 R6 1 [1]
       14 CALL                             R3 2 1
       15 GETUPVAL                         R4 3
       16 GETUPVAL                         R5 2
       17 GETTABLEKS                       R5 R5 K4 ["tableToCurve"]
       19 GETTABLEKS                       R6 R0 K5 ["CurveData"]
       21 CALL                             R5 1 1
       22 MOVE                             R6 R3
       23 CALL                             R4 2 1
       24 GETUPVAL                         R5 4
       25 NEWCLOSURE                       R6 P1
       26 CAPTURE                          VAL R4
       27 CAPTURE                          UPVAL U2
       28 CAPTURE                          VAL R0
       29 NEWTABLE                         R7 0 1
       31 GETTABLEKS                       R8 R0 K5 ["CurveData"]
       33 SETLIST                          R7 R8 1 [1]
       35 CALL                             R5 2 0
       36 GETUPVAL                         R5 0
       37 GETUPVAL                         R6 5
       38 CALL                             R5 1 2
       39 GETUPVAL                         R7 4
       40 NEWCLOSURE                       R8 P2
       41 CAPTURE                          UPVAL U2
       42 CAPTURE                          VAL R0
       43 CAPTURE                          UPVAL U5
       44 CAPTURE                          UPVAL U6
       45 CAPTURE                          UPVAL U7
       46 CAPTURE                          VAL R6
       47 CAPTURE                          VAL R4
       48 NEWTABLE                         R9 0 1
       50 GETTABLEKS                       R10 R0 K6 ["InstanceId"]
       52 SETLIST                          R9 R10 1 [1]
       54 CALL                             R7 2 0
       55 GETUPVAL                         R7 8
       56 NEWCLOSURE                       R8 P3
       57 CAPTURE                          VAL R4
       58 CAPTURE                          UPVAL U5
       59 NEWTABLE                         R9 0 1
       61 GETTABLEKS                       R10 R4 K7 ["keypoints"]
       63 SETLIST                          R9 R10 1 [1]
       65 CALL                             R7 2 1
       66 GETUPVAL                         R8 1
       67 NEWCLOSURE                       R9 P4
       68 CAPTURE                          VAL R2
       69 NEWTABLE                         R10 0 1
       71 MOVE                             R11 R2
       72 SETLIST                          R10 R11 1 [1]
       74 CALL                             R8 2 1
       75 GETUPVAL                         R9 1
       76 NEWCLOSURE                       R10 P5
       77 CAPTURE                          VAL R4
       78 NEWTABLE                         R11 0 1
       80 MOVE                             R12 R4
       81 SETLIST                          R11 R12 1 [1]
       83 CALL                             R9 2 1
       84 GETUPVAL                         R10 1
       85 NEWCLOSURE                       R11 P6
       86 CAPTURE                          VAL R4
       87 CAPTURE                          VAL R6
       88 CAPTURE                          VAL R5
       89 NEWTABLE                         R12 0 2
       91 MOVE                             R13 R4
       92 MOVE                             R14 R5
       93 SETLIST                          R12 R13 2 [1]
       95 CALL                             R10 2 1
       96 GETTABLEKS                       R11 R0 K8 ["Enabled"]
       98 JUMPIFNOT                        R11 ; [+110]
       99 GETUPVAL                         R11 9
      100 GETTABLEKS                       R11 R11 K9 ["createElement"]
      102 GETUPVAL                         R12 10
      103 NEWTABLE                         R13 1 0
      105 GETUPVAL                         R14 9
      106 GETTABLEKS                       R14 R14 K10 ["Tag"]
      108 LOADK                            R15 K11 ["X-Pad X-ColumnM X-FitY"]
      109 SETTABLE                         R15 R13 R14
      110 DUPTABLE                         R14 K16 [{"UISizeConstraint", "PresetControls", "Canvas", "KeypointControls"}]
      111 GETUPVAL                         R15 9
      112 GETTABLEKS                       R15 R15 K9 ["createElement"]
      114 LOADK                            R16 K12 ["UISizeConstraint"]
      115 DUPTABLE                         R17 K19 [{"MinSize", "MaxSize"}]
      116 GETUPVAL                         R18 11
      117 SETTABLEKS                       R18 R17 K17 ["MinSize"]
      119 GETUPVAL                         R18 12
      120 SETTABLEKS                       R18 R17 K18 ["MaxSize"]
      122 CALL                             R15 2 1
      123 SETTABLEKS                       R15 R14 K12 ["UISizeConstraint"]
      125 GETUPVAL                         R15 9
      126 GETTABLEKS                       R15 R15 K9 ["createElement"]
      128 GETUPVAL                         R16 13
      129 DUPTABLE                         R17 K22 [{"Preset", "OnPresetChanged"}]
      130 GETTABLEKS                       R18 R4 K23 ["preset"]
      132 SETTABLEKS                       R18 R17 K20 ["Preset"]
      134 GETTABLEKS                       R18 R4 K24 ["updatePreset"]
      136 SETTABLEKS                       R18 R17 K21 ["OnPresetChanged"]
      138 CALL                             R15 2 1
      139 SETTABLEKS                       R15 R14 K13 ["PresetControls"]
      141 GETUPVAL                         R15 9
      142 GETTABLEKS                       R15 R15 K9 ["createElement"]
      144 GETUPVAL                         R16 10
      145 DUPTABLE                         R17 K29 [{["BackgroundTransparency"] = 1, ["LayoutOrder"] = 1, ["Size"]}]
      146 GETIMPORT                        R18 K32 [UDim2.new]
      148 LOADN                            R19 1
      149 LOADN                            R20 0
      150 LOADN                            R21 1
      151 LOADN                            R22 -120
      152 CALL                             R18 4 1
      153 SETTABLEKS                       R18 R17 K28 ["Size"]
      155 DUPTABLE                         R18 K35 [{"Plot", "Scrollbar"}]
      156 GETUPVAL                         R19 9
      157 GETTABLEKS                       R19 R19 K9 ["createElement"]
      159 GETUPVAL                         R20 14
      160 DUPTABLE                         R21 K41 [{"CurveHook", "PlotAbsoluteSize", "XRange", "SetXRange", "OnSizeChanged"}]
      161 SETTABLEKS                       R4 R21 K36 ["CurveHook"]
      163 SETTABLEKS                       R1 R21 K37 ["PlotAbsoluteSize"]
      165 SETTABLEKS                       R5 R21 K38 ["XRange"]
      167 SETTABLEKS                       R6 R21 K39 ["SetXRange"]
      169 SETTABLEKS                       R8 R21 K40 ["OnSizeChanged"]
      171 CALL                             R19 2 1
      172 SETTABLEKS                       R19 R18 K33 ["Plot"]
      174 GETUPVAL                         R19 9
      175 GETTABLEKS                       R19 R19 K9 ["createElement"]
      177 GETUPVAL                         R20 15
      178 DUPTABLE                         R21 K43 [{"XRange", "SetXRange", "DefaultXMax"}]
      179 SETTABLEKS                       R5 R21 K38 ["XRange"]
      181 SETTABLEKS                       R6 R21 K39 ["SetXRange"]
      183 SETTABLEKS                       R7 R21 K42 ["DefaultXMax"]
      185 CALL                             R19 2 1
      186 SETTABLEKS                       R19 R18 K34 ["Scrollbar"]
      188 CALL                             R15 3 1
      189 SETTABLEKS                       R15 R14 K14 ["Canvas"]
      191 GETUPVAL                         R15 9
      192 GETTABLEKS                       R15 R15 K9 ["createElement"]
      194 GETUPVAL                         R16 16
      195 DUPTABLE                         R17 K47 [{"Keypoint", "OnEdit", "OnDelete"}]
      196 GETTABLEKS                       R18 R4 K48 ["getSelectedKeypoint"]
      198 CALL                             R18 0 1
      199 SETTABLEKS                       R18 R17 K44 ["Keypoint"]
      201 SETTABLEKS                       R10 R17 K45 ["OnEdit"]
      203 SETTABLEKS                       R9 R17 K46 ["OnDelete"]
      205 CALL                             R15 2 1
      206 SETTABLEKS                       R15 R14 K15 ["KeypointControls"]
      208 CALL                             R11 3 1
      209 RETURN                           R11 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETIMPORT                        R1 K1 [script]
        7 LOADK                            R3 K3 ["AttenuationCurveEditor"]
        8 NAMECALL                         R1 R1 K4 ["FindFirstAncestor"]
       10 CALL                             R1 2 1
       11 GETIMPORT                        R2 K6 [require]
       13 GETTABLEKS                       R3 R1 K7 ["Packages"]
       15 GETTABLEKS                       R3 R3 K8 ["React"]
       17 CALL                             R2 1 1
       18 GETTABLEKS                       R3 R2 K9 ["useCallback"]
       20 GETTABLEKS                       R4 R2 K10 ["useEffect"]
       22 GETTABLEKS                       R5 R2 K11 ["useMemo"]
       24 GETTABLEKS                       R6 R2 K12 ["useState"]
       26 GETIMPORT                        R7 K6 [require]
       28 GETTABLEKS                       R8 R1 K7 ["Packages"]
       30 GETTABLEKS                       R8 R8 K13 ["Framework"]
       32 CALL                             R7 1 1
       33 GETTABLEKS                       R8 R7 K14 ["UI"]
       35 GETTABLEKS                       R8 R8 K15 ["Pane"]
       37 GETIMPORT                        R9 K6 [require]
       39 GETTABLEKS                       R10 R0 K16 ["useCurve"]
       41 CALL                             R9 1 1
       42 GETIMPORT                        R10 K6 [require]
       44 GETTABLEKS                       R11 R0 K17 ["CurveRenderer"]
       46 GETTABLEKS                       R11 R11 K18 ["CurvePlot"]
       48 CALL                             R10 1 1
       49 GETIMPORT                        R11 K6 [require]
       51 GETTABLEKS                       R12 R0 K19 ["KeypointControls"]
       53 CALL                             R11 1 1
       54 GETIMPORT                        R12 K6 [require]
       56 GETTABLEKS                       R13 R0 K20 ["PresetControls"]
       58 CALL                             R12 1 1
       59 GETIMPORT                        R13 K6 [require]
       61 GETTABLEKS                       R14 R0 K21 ["Scrollbar"]
       63 CALL                             R13 1 1
       64 GETIMPORT                        R14 K6 [require]
       66 GETTABLEKS                       R15 R1 K22 ["Src"]
       68 GETTABLEKS                       R15 R15 K23 ["Types"]
       70 CALL                             R14 1 1
       71 GETIMPORT                        R15 K6 [require]
       73 GETTABLEKS                       R16 R1 K22 ["Src"]
       75 GETTABLEKS                       R16 R16 K24 ["Util"]
       77 GETTABLEKS                       R16 R16 K25 ["AttenuationUtil"]
       79 CALL                             R15 1 1
       80 GETIMPORT                        R16 K28 [Vector2.new]
       82 LOADN                            R17 540
       83 LOADN                            R18 300
       84 CALL                             R16 2 1
       85 GETIMPORT                        R17 K28 [Vector2.new]
       87 LOADN                            R18 2000
       88 LOADN                            R19 2000
       89 CALL                             R17 2 1
       90 GETIMPORT                        R18 K30 [NumberRange.new]
       92 LOADN                            R19 0
       93 LOADN                            R20 100
       94 CALL                             R18 2 1
       95 GETIMPORT                        R19 K6 [require]
       97 GETTABLEKS                       R20 R0 K17 ["CurveRenderer"]
       99 GETTABLEKS                       R20 R20 K31 ["PlotRectUtil"]
      101 CALL                             R19 1 1
      102 GETTABLEKS                       R20 R19 K32 ["MIN_ZOOM"]
      104 GETTABLEKS                       R21 R19 K33 ["MAX_ZOOM"]
      106 DUPCLOSURE                       R22 K34 [PROTO_7]
      107 CAPTURE                          VAL R6
      108 CAPTURE                          VAL R3
      109 CAPTURE                          VAL R15
      110 CAPTURE                          VAL R9
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R18
      113 CAPTURE                          VAL R20
      114 CAPTURE                          VAL R21
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R2
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R17
      120 CAPTURE                          VAL R12
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R13
      123 CAPTURE                          VAL R11
      124 RETURN                           R22 1
