PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["viewportRectGetter"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 0
        5 GETUPVAL                         R1 1
        6 GETTABLEKS                       R1 R1 K1 ["calculateCurvePositions"]
        8 GETUPVAL                         R2 0
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["side"]
       12 GETUPVAL                         R4 3
       13 GETUPVAL                         R5 4
       14 GETUPVAL                         R6 5
       15 GETUPVAL                         R7 6
       16 GETUPVAL                         R8 7
       17 CALL                             R1 7 -1
       18 RETURN                           R1 -1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["createComputed"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          UPVAL U1
        5 CAPTURE                          UPVAL U2
        6 CAPTURE                          UPVAL U3
        7 CAPTURE                          UPVAL U4
        8 CAPTURE                          UPVAL U5
        9 CAPTURE                          UPVAL U6
       10 CAPTURE                          UPVAL U7
       11 CAPTURE                          UPVAL U8
       12 CALL                             R0 1 -1
       13 RETURN                           R0 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["absToPlot"]
        4 MOVE                             R4 R1
        5 CALL                             R3 1 1
        6 SETTABLEKS                       R3 R2 K1 ["current"]
        8 GETUPVAL                         R2 2
        9 GETUPVAL                         R3 3
       10 GETTABLEKS                       R3 R3 K2 ["Envelope"]
       12 SETTABLEKS                       R3 R2 K1 ["current"]
       14 GETUPVAL                         R2 4
       15 GETTABLEKS                       R2 R2 K3 ["SetDragged"]
       17 LOADK                            R3 K4 ["Start"]
       18 CALL                             R2 1 0
       19 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["absToPlot"]
        3 MOVE                             R4 R1
        4 CALL                             R3 1 1
        5 GETUPVAL                         R4 1
        6 GETTABLEKS                       R4 R4 K1 ["current"]
        8 SUB                              R2 R3 R4
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["OnEnvelopeChanged"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K1 ["current"]
       15 GETUPVAL                         R7 4
       16 GETTABLEKS                       R8 R2 K3 ["Y"]
       18 MUL                              R6 R7 R8
       19 ADD                              R4 R5 R6
       20 CALL                             R3 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["SetDragged"]
        3 LOADK                            R1 K1 ["Stop"]
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toUDim2"]
        3 GETUPVAL                         R2 1
        4 GETTABLEN                        R3 R0 1
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_6:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toUDim2"]
        3 GETUPVAL                         R2 1
        4 GETTABLEN                        R3 R0 3
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_7:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["toUDim2"]
        3 GETUPVAL                         R2 1
        4 GETTABLEN                        R3 R0 2
        5 CALL                             R1 2 -1
        6 RETURN                           R1 -1

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["plotToView"]
        3 GETTABLEN                        R2 R0 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 0
        6 GETTABLEKS                       R2 R2 K0 ["plotToView"]
        8 GETTABLEN                        R3 R0 3
        9 CALL                             R2 1 1
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K1 ["getViewport"]
       13 CALL                             R3 0 1
       14 JUMPIFNOT                        R3 ; [+15]
       15 GETTABLEKS                       R7 R2 K2 ["X"]
       17 GETTABLEKS                       R8 R1 K2 ["X"]
       19 SUB                              R6 R7 R8
       20 FASTCALL1                        MATH_ABS R6 ; [+2]
       21 GETIMPORT                        R5 K5 [math.abs]
       23 CALL                             R5 1 1
       24 GETTABLEKS                       R6 R3 K6 ["AbsoluteSize"]
       26 GETTABLEKS                       R6 R6 K2 ["X"]
       28 MUL                              R4 R5 R6
       29 JUMP                             ; [+1]
       30 LOADN                            R4 0
       31 GETIMPORT                        R5 K9 [UDim2.fromOffset]
       33 GETUPVAL                         R7 1
       34 GETTABLEKS                       R7 R7 K10 ["DetectorWidthOffsetPixels"]
       36 ADD                              R6 R4 R7
       37 GETUPVAL                         R7 1
       38 GETTABLEKS                       R7 R7 K11 ["DetectorHeightPixels"]
       40 CALL                             R5 2 -1
       41 RETURN                           R5 -1

PROTO_9:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 CALL                             R1 1 1
        5 GETUPVAL                         R2 2
        6 CALL                             R2 0 1
        7 GETTABLEKS                       R3 R2 K1 ["NumberSequence"]
        9 GETTABLEKS                       R4 R3 K2 ["EnvelopeHandles"]
       11 GETTABLEKS                       R5 R3 K3 ["CurveColor"]
       13 GETTABLEKS                       R6 R0 K4 ["keypoint"]
       15 GETTABLEKS                       R7 R0 K5 ["prevKeypoint"]
       17 GETTABLEKS                       R8 R0 K6 ["nextKeypoint"]
       19 GETTABLEKS                       R11 R3 K8 ["Point"]
       21 GETTABLEKS                       R11 R11 K9 ["SelectedStyle"]
       23 GETTABLEKS                       R11 R11 K10 ["Size"]
       25 DIVK                             R10 R11 K7 [2]
       26 GETTABLEKS                       R11 R3 K8 ["Point"]
       28 GETTABLEKS                       R11 R11 K9 ["SelectedStyle"]
       30 GETTABLEKS                       R11 R11 K11 ["OutlineThickness"]
       32 ADD                              R9 R10 R11
       33 GETTABLEKS                       R11 R0 K12 ["side"]
       35 JUMPIFNOTEQKS                    R11 K13 ["Top"] ; [+3]
       37 LOADN                            R10 1
       38 JUMP                             ; [+1]
       39 LOADN                            R10 -1
       40 GETUPVAL                         R11 0
       41 GETTABLEKS                       R11 R11 K14 ["useMemo"]
       43 NEWCLOSURE                       R12 P0
       44 CAPTURE                          UPVAL U3
       45 CAPTURE                          VAL R1
       46 CAPTURE                          UPVAL U4
       47 CAPTURE                          VAL R0
       48 CAPTURE                          VAL R6
       49 CAPTURE                          VAL R7
       50 CAPTURE                          VAL R8
       51 CAPTURE                          VAL R9
       52 CAPTURE                          VAL R4
       53 NEWTABLE                         R13 0 8
       55 MOVE                             R14 R1
       56 GETTABLEKS                       R15 R0 K12 ["side"]
       58 MOVE                             R16 R6
       59 MOVE                             R17 R7
       60 MOVE                             R18 R8
       61 MOVE                             R19 R9
       62 GETTABLEKS                       R20 R0 K15 ["viewportSize"]
       64 MOVE                             R21 R4
       65 SETLIST                          R13 R14 8 [1]
       67 CALL                             R11 2 1
       68 GETUPVAL                         R12 5
       69 GETTABLEKS                       R12 R12 K16 ["useSignalBinding"]
       71 MOVE                             R13 R11
       72 CALL                             R12 1 1
       73 GETUPVAL                         R13 0
       74 GETTABLEKS                       R13 R13 K17 ["useRef"]
       76 GETIMPORT                        R14 K20 [Vector2.zero]
       78 CALL                             R13 1 1
       79 GETUPVAL                         R14 0
       80 GETTABLEKS                       R14 R14 K17 ["useRef"]
       82 LOADN                            R15 0
       83 CALL                             R14 1 1
       84 GETUPVAL                         R15 6
       85 GETTABLEKS                       R15 R15 K21 ["useEventCallback"]
       87 NEWCLOSURE                       R16 P1
       88 CAPTURE                          VAL R13
       89 CAPTURE                          VAL R1
       90 CAPTURE                          VAL R14
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R0
       93 CALL                             R15 1 1
       94 GETUPVAL                         R16 6
       95 GETTABLEKS                       R16 R16 K21 ["useEventCallback"]
       97 NEWCLOSURE                       R17 P2
       98 CAPTURE                          VAL R1
       99 CAPTURE                          VAL R13
      100 CAPTURE                          VAL R0
      101 CAPTURE                          VAL R14
      102 CAPTURE                          VAL R10
      103 CALL                             R16 1 1
      104 GETUPVAL                         R17 6
      105 GETTABLEKS                       R17 R17 K21 ["useEventCallback"]
      107 NEWCLOSURE                       R18 P3
      108 CAPTURE                          VAL R0
      109 CALL                             R17 1 1
      110 GETUPVAL                         R18 7
      111 GETUPVAL                         R19 0
      112 GETTABLEKS                       R19 R19 K22 ["Fragment"]
      114 NEWTABLE                         R20 0 0
      116 DUPTABLE                         R21 K27 [{"Curve", "LeftPoint", "RightPoint", "Handle"}]
      117 GETUPVAL                         R22 7
      118 GETUPVAL                         R23 8
      119 DUPTABLE                         R24 K32 [{"positionsSignal", "Color3", "Thickness", "ZIndex"}]
      120 SETTABLEKS                       R11 R24 K28 ["positionsSignal"]
      122 SETTABLEKS                       R5 R24 K29 ["Color3"]
      124 GETTABLEKS                       R25 R4 K30 ["Thickness"]
      126 SETTABLEKS                       R25 R24 K30 ["Thickness"]
      128 GETTABLEKS                       R25 R0 K31 ["ZIndex"]
      130 SETTABLEKS                       R25 R24 K31 ["ZIndex"]
      132 CALL                             R22 2 1
      133 SETTABLEKS                       R22 R21 K23 ["Curve"]
      135 GETUPVAL                         R22 7
      136 GETUPVAL                         R23 9
      137 DUPTABLE                         R24 K34 [{"Position", "Color3", "Size", "ZIndex"}]
      138 GETUPVAL                         R25 6
      139 GETTABLEKS                       R25 R25 K35 ["Bindings"]
      141 GETTABLEKS                       R25 R25 K36 ["map"]
      143 MOVE                             R26 R12
      144 NEWCLOSURE                       R27 P4
      145 CAPTURE                          UPVAL U4
      146 CAPTURE                          VAL R1
      147 CALL                             R25 2 1
      148 SETTABLEKS                       R25 R24 K33 ["Position"]
      150 SETTABLEKS                       R5 R24 K29 ["Color3"]
      152 GETTABLEKS                       R26 R4 K30 ["Thickness"]
      154 SUBK                             R25 R26 K37 [1]
      155 SETTABLEKS                       R25 R24 K10 ["Size"]
      157 GETTABLEKS                       R25 R0 K31 ["ZIndex"]
      159 SETTABLEKS                       R25 R24 K31 ["ZIndex"]
      161 CALL                             R22 2 1
      162 SETTABLEKS                       R22 R21 K24 ["LeftPoint"]
      164 GETUPVAL                         R22 7
      165 GETUPVAL                         R23 9
      166 DUPTABLE                         R24 K34 [{"Position", "Color3", "Size", "ZIndex"}]
      167 GETUPVAL                         R25 6
      168 GETTABLEKS                       R25 R25 K35 ["Bindings"]
      170 GETTABLEKS                       R25 R25 K36 ["map"]
      172 MOVE                             R26 R12
      173 NEWCLOSURE                       R27 P5
      174 CAPTURE                          UPVAL U4
      175 CAPTURE                          VAL R1
      176 CALL                             R25 2 1
      177 SETTABLEKS                       R25 R24 K33 ["Position"]
      179 SETTABLEKS                       R5 R24 K29 ["Color3"]
      181 GETTABLEKS                       R26 R4 K30 ["Thickness"]
      183 SUBK                             R25 R26 K37 [1]
      184 SETTABLEKS                       R25 R24 K10 ["Size"]
      186 GETTABLEKS                       R25 R0 K31 ["ZIndex"]
      188 SETTABLEKS                       R25 R24 K31 ["ZIndex"]
      190 CALL                             R22 2 1
      191 SETTABLEKS                       R22 R21 K25 ["RightPoint"]
      193 GETUPVAL                         R22 7
      194 GETUPVAL                         R23 10
      195 DUPTABLE                         R24 K41 [{["Position"], ["tag"] = "anchor-center-center", ["Size"], ["testId"], ["ZIndex"]}]
      196 GETUPVAL                         R25 6
      197 GETTABLEKS                       R25 R25 K35 ["Bindings"]
      199 GETTABLEKS                       R25 R25 K36 ["map"]
      201 MOVE                             R26 R12
      202 NEWCLOSURE                       R27 P6
      203 CAPTURE                          UPVAL U4
      204 CAPTURE                          VAL R1
      205 CALL                             R25 2 1
      206 SETTABLEKS                       R25 R24 K33 ["Position"]
      208 GETUPVAL                         R25 6
      209 GETTABLEKS                       R25 R25 K35 ["Bindings"]
      211 GETTABLEKS                       R25 R25 K36 ["map"]
      213 MOVE                             R26 R12
      214 NEWCLOSURE                       R27 P7
      215 CAPTURE                          VAL R1
      216 CAPTURE                          VAL R4
      217 CALL                             R25 2 1
      218 SETTABLEKS                       R25 R24 K10 ["Size"]
      220 LOADK                            R26 K42 ["%*Handle"]
      221 GETTABLEKS                       R28 R0 K12 ["side"]
      223 NAMECALL                         R26 R26 K43 ["format"]
      225 CALL                             R26 2 1
      226 MOVE                             R25 R26
      227 SETTABLEKS                       R25 R24 K40 ["testId"]
      229 GETTABLEKS                       R25 R0 K31 ["ZIndex"]
      231 SETTABLEKS                       R25 R24 K31 ["ZIndex"]
      233 DUPTABLE                         R25 K45 [{"Input"}]
      234 GETUPVAL                         R26 7
      235 GETUPVAL                         R27 11
      236 DUPTABLE                         R28 K49 [{"OnDragStart", "OnDragMoved", "OnDragEnded"}]
      237 SETTABLEKS                       R15 R28 K46 ["OnDragStart"]
      239 SETTABLEKS                       R16 R28 K47 ["OnDragMoved"]
      241 SETTABLEKS                       R17 R28 K48 ["OnDragEnded"]
      243 CALL                             R26 2 1
      244 SETTABLEKS                       R26 R25 K44 ["Input"]
      246 CALL                             R22 3 1
      247 SETTABLEKS                       R22 R21 K26 ["Handle"]
      249 CALL                             R18 3 -1
      250 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Properties"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R1 R0 K4 ["Parent"]
        9 GETIMPORT                        R2 K6 [require]
       11 GETTABLEKS                       R3 R0 K7 ["Components"]
       13 GETTABLEKS                       R3 R3 K8 ["PropertyEntries"]
       15 GETTABLEKS                       R3 R3 K9 ["PropertyView"]
       17 GETTABLEKS                       R3 R3 K10 ["NumberSequencePropertyView"]
       19 GETTABLEKS                       R3 R3 K11 ["EnvelopeHandles"]
       21 GETTABLEKS                       R3 R3 K12 ["Util"]
       23 CALL                             R2 1 1
       24 GETIMPORT                        R3 K6 [require]
       26 GETTABLEKS                       R4 R1 K13 ["Foundation"]
       28 CALL                             R3 1 1
       29 GETIMPORT                        R4 K6 [require]
       31 GETTABLEKS                       R5 R1 K14 ["Graphing"]
       33 CALL                             R4 1 1
       34 GETIMPORT                        R5 K6 [require]
       36 GETTABLEKS                       R6 R0 K7 ["Components"]
       38 GETTABLEKS                       R6 R6 K8 ["PropertyEntries"]
       40 GETTABLEKS                       R6 R6 K9 ["PropertyView"]
       42 GETTABLEKS                       R6 R6 K10 ["NumberSequencePropertyView"]
       44 GETTABLEKS                       R6 R6 K11 ["EnvelopeHandles"]
       46 GETTABLEKS                       R6 R6 K15 ["HandleCurve"]
       48 CALL                             R5 1 1
       49 GETIMPORT                        R6 K6 [require]
       51 GETTABLEKS                       R7 R0 K7 ["Components"]
       53 GETTABLEKS                       R7 R7 K8 ["PropertyEntries"]
       55 GETTABLEKS                       R7 R7 K9 ["PropertyView"]
       57 GETTABLEKS                       R7 R7 K10 ["NumberSequencePropertyView"]
       59 GETTABLEKS                       R7 R7 K11 ["EnvelopeHandles"]
       61 GETTABLEKS                       R7 R7 K16 ["HandlePoint"]
       63 CALL                             R6 1 1
       64 GETIMPORT                        R7 K6 [require]
       66 GETTABLEKS                       R8 R0 K7 ["Components"]
       68 GETTABLEKS                       R8 R8 K8 ["PropertyEntries"]
       70 GETTABLEKS                       R8 R8 K9 ["PropertyView"]
       72 GETTABLEKS                       R8 R8 K10 ["NumberSequencePropertyView"]
       74 GETTABLEKS                       R8 R8 K17 ["Types"]
       76 CALL                             R7 1 1
       77 GETIMPORT                        R8 K6 [require]
       79 GETTABLEKS                       R9 R1 K18 ["React"]
       81 CALL                             R8 1 1
       82 GETIMPORT                        R9 K6 [require]
       84 GETTABLEKS                       R10 R1 K19 ["ReactUtils"]
       86 CALL                             R9 1 1
       87 GETIMPORT                        R10 K6 [require]
       89 GETTABLEKS                       R11 R1 K20 ["Signals"]
       91 CALL                             R10 1 1
       92 GETIMPORT                        R11 K6 [require]
       94 GETTABLEKS                       R12 R1 K21 ["SignalsReact"]
       96 CALL                             R11 1 1
       97 GETIMPORT                        R12 K6 [require]
       99 GETTABLEKS                       R13 R0 K22 ["Hooks"]
      101 GETTABLEKS                       R13 R13 K23 ["useVisualValues"]
      103 CALL                             R12 1 1
      104 GETTABLEKS                       R13 R4 K24 ["CanvasContext"]
      106 GETTABLEKS                       R14 R4 K25 ["InputDetector"]
      108 GETTABLEKS                       R15 R3 K26 ["View"]
      110 GETTABLEKS                       R16 R8 K27 ["createElement"]
      112 DUPCLOSURE                       R17 K28 [PROTO_9]
      113 CAPTURE                          VAL R8
      114 CAPTURE                          VAL R13
      115 CAPTURE                          VAL R12
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R2
      118 CAPTURE                          VAL R11
      119 CAPTURE                          VAL R9
      120 CAPTURE                          VAL R16
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R14
      125 RETURN                           R17 1
