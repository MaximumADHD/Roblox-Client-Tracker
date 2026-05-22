PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Enums"]
        3 GETTABLEKS                       R1 R1 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R1 K2 ["Hover"]
        7 JUMPIFEQ                         R0 R1 ; [+10]
        9 GETUPVAL                         R1 0
       10 GETTABLEKS                       R1 R1 K0 ["Enums"]
       12 GETTABLEKS                       R1 R1 K1 ["ControlState"]
       14 GETTABLEKS                       R1 R1 K3 ["Pressed"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+14]
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R2 0
       20 GETTABLEKS                       R2 R2 K0 ["Enums"]
       22 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       24 GETTABLEKS                       R2 R2 K2 ["Hover"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 2
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 3
       32 JUMPIF                           R1 ; [+18]
       33 GETUPVAL                         R1 1
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K0 ["Enums"]
       37 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       39 GETTABLEKS                       R2 R2 K4 ["Default"]
       41 CALL                             R1 1 0
       42 GETUPVAL                         R1 2
       43 GETUPVAL                         R2 0
       44 GETTABLEKS                       R2 R2 K0 ["Enums"]
       46 GETTABLEKS                       R2 R2 K1 ["ControlState"]
       48 GETTABLEKS                       R2 R2 K4 ["Default"]
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["X"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K1 ["nodeWidth"]
        6 GETUPVAL                         R7 2
        7 NAMECALL                         R7 R7 K2 ["getValue"]
        9 CALL                             R7 1 1
       10 MUL                              R5 R6 R7
       11 SUB                              R3 R4 R5
       12 CALL                             R2 1 0
       13 GETUPVAL                         R2 3
       14 LOADB                            R3 1
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 4
       17 GETUPVAL                         R3 5
       18 GETTABLEKS                       R3 R3 K3 ["Enums"]
       20 GETTABLEKS                       R3 R3 K4 ["ControlState"]
       22 GETTABLEKS                       R3 R3 K5 ["Hover"]
       24 CALL                             R2 1 0
       25 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R4 R1 K0 ["X"]
        2 GETUPVAL                         R5 0
        3 SUB                              R3 R4 R5
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R4 R4 K1 ["getValue"]
        7 CALL                             R4 1 1
        8 DIV                              R2 R3 R4
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["OnResized"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K3 ["NODE_VIEW_CHILD_WIDTH"]
       15 FASTCALL2                        MATH_MAX R5 R2 ; [+4]
       17 MOVE                             R6 R2
       18 GETIMPORT                        R4 K6 [math.max]
       20 CALL                             R4 2 1
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R3 1
        2 GETTABLEKS                       R3 R3 K0 ["Enums"]
        4 GETTABLEKS                       R3 R3 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R3 K2 ["Default"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 2
       10 LOADB                            R3 0
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 3
       13 GETUPVAL                         R3 1
       14 GETTABLEKS                       R3 R3 K0 ["Enums"]
       16 GETTABLEKS                       R3 R3 K1 ["ControlState"]
       18 GETTABLEKS                       R3 R3 K2 ["Default"]
       20 CALL                             R2 1 0
       21 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["useContext"]
        3 GETUPVAL                         R2 1
        4 GETTABLEKS                       R2 R2 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R2 0
        8 GETTABLEKS                       R2 R2 K0 ["useContext"]
       10 GETUPVAL                         R3 2
       11 GETTABLEKS                       R3 R3 K2 ["CanvasContext"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 GETTABLEKS                       R3 R3 K3 ["useSignalBinding"]
       17 GETTABLEKS                       R4 R1 K4 ["observeZoomRatio"]
       19 CALL                             R3 1 1
       20 GETUPVAL                         R4 4
       21 LOADK                            R5 K5 ["SizeEW"]
       22 CALL                             R4 1 1
       23 GETUPVAL                         R5 0
       24 GETTABLEKS                       R5 R5 K6 ["useState"]
       26 LOADN                            R6 0
       27 CALL                             R5 1 2
       28 GETUPVAL                         R7 0
       29 GETTABLEKS                       R7 R7 K6 ["useState"]
       31 LOADB                            R8 0
       32 CALL                             R7 1 2
       33 GETUPVAL                         R9 0
       34 GETTABLEKS                       R9 R9 K6 ["useState"]
       36 GETUPVAL                         R10 5
       37 GETTABLEKS                       R10 R10 K7 ["Enums"]
       39 GETTABLEKS                       R10 R10 K8 ["ControlState"]
       41 GETTABLEKS                       R10 R10 K9 ["Default"]
       43 CALL                             R9 1 2
       44 GETUPVAL                         R11 0
       45 GETTABLEKS                       R11 R11 K10 ["useCallback"]
       47 NEWCLOSURE                       R12 P0
       48 CAPTURE                          UPVAL U5
       49 CAPTURE                          VAL R4
       50 CAPTURE                          VAL R10
       51 CAPTURE                          VAL R7
       52 NEWTABLE                         R13 0 3
       54 MOVE                             R14 R10
       55 MOVE                             R15 R4
       56 MOVE                             R16 R7
       57 SETLIST                          R13 R14 3 [1]
       59 CALL                             R11 2 1
       60 GETUPVAL                         R12 0
       61 GETTABLEKS                       R12 R12 K10 ["useCallback"]
       63 NEWCLOSURE                       R13 P1
       64 CAPTURE                          VAL R6
       65 CAPTURE                          VAL R0
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R8
       68 CAPTURE                          VAL R4
       69 CAPTURE                          UPVAL U5
       70 NEWTABLE                         R14 0 4
       72 MOVE                             R15 R6
       73 MOVE                             R16 R8
       74 MOVE                             R17 R3
       75 GETTABLEKS                       R18 R0 K11 ["nodeWidth"]
       77 SETLIST                          R14 R15 4 [1]
       79 CALL                             R12 2 1
       80 GETUPVAL                         R13 0
       81 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       83 NEWCLOSURE                       R14 P2
       84 CAPTURE                          VAL R5
       85 CAPTURE                          VAL R3
       86 CAPTURE                          VAL R0
       87 CAPTURE                          UPVAL U6
       88 NEWTABLE                         R15 0 3
       90 MOVE                             R16 R3
       91 MOVE                             R17 R5
       92 GETTABLEKS                       R18 R0 K12 ["OnResized"]
       94 SETLIST                          R15 R16 3 [1]
       96 CALL                             R13 2 1
       97 GETUPVAL                         R14 0
       98 GETTABLEKS                       R14 R14 K10 ["useCallback"]
      100 NEWCLOSURE                       R15 P3
      101 CAPTURE                          VAL R4
      102 CAPTURE                          UPVAL U5
      103 CAPTURE                          VAL R8
      104 CAPTURE                          VAL R10
      105 NEWTABLE                         R16 0 2
      107 MOVE                             R17 R8
      108 MOVE                             R18 R10
      109 SETLIST                          R16 R17 2 [1]
      111 CALL                             R14 2 1
      112 GETIMPORT                        R15 K15 [NumberSequence.new]
      114 NEWTABLE                         R16 0 4
      116 GETIMPORT                        R17 K17 [NumberSequenceKeypoint.new]
      118 LOADN                            R18 0
      119 LOADN                            R19 1
      120 CALL                             R17 2 1
      121 GETIMPORT                        R18 K17 [NumberSequenceKeypoint.new]
      123 LOADK                            R19 K18 [0.5]
      124 LOADK                            R20 K18 [0.5]
      125 CALL                             R18 2 1
      126 GETIMPORT                        R19 K17 [NumberSequenceKeypoint.new]
      128 LOADK                            R20 K19 [0.5001]
      129 LOADN                            R21 1
      130 CALL                             R19 2 1
      131 GETIMPORT                        R20 K17 [NumberSequenceKeypoint.new]
      133 LOADN                            R21 1
      134 LOADN                            R22 1
      135 CALL                             R20 2 -1
      136 SETLIST                          R16 R17 -1 [1]
      138 CALL                             R15 1 1
      139 GETUPVAL                         R16 0
      140 GETTABLEKS                       R16 R16 K20 ["createElement"]
      142 GETUPVAL                         R17 0
      143 GETTABLEKS                       R17 R17 K21 ["Fragment"]
      145 NEWTABLE                         R18 0 0
      147 DUPTABLE                         R19 K23 [{"ResizeBarRight"}]
      148 GETUPVAL                         R20 0
      149 GETTABLEKS                       R20 R20 K20 ["createElement"]
      151 GETUPVAL                         R21 5
      152 GETTABLEKS                       R21 R21 K24 ["View"]
      154 DUPTABLE                         R22 K32 [{"tag", "backgroundStyle", "Size", "Position", "ZIndex", "onStateChanged", "stateLayer"}]
      155 GETTABLEKS                       R23 R0 K25 ["tag"]
      157 SETTABLEKS                       R23 R22 K25 ["tag"]
      159 GETUPVAL                         R24 5
      160 GETTABLEKS                       R24 R24 K7 ["Enums"]
      162 GETTABLEKS                       R24 R24 K8 ["ControlState"]
      164 GETTABLEKS                       R24 R24 K33 ["Hover"]
      166 JUMPIFEQ                         R9 R24 ; [+10]
      168 GETUPVAL                         R24 5
      169 GETTABLEKS                       R24 R24 K7 ["Enums"]
      171 GETTABLEKS                       R24 R24 K8 ["ControlState"]
      173 GETTABLEKS                       R24 R24 K34 ["Pressed"]
      175 JUMPIFNOTEQ                      R9 R24 ; [+4]
      177 GETTABLEKS                       R23 R0 K35 ["Style"]
      179 JUMP                             ; [+1]
      180 LOADNIL                          R23
      181 SETTABLEKS                       R23 R22 K26 ["backgroundStyle"]
      183 GETIMPORT                        R23 K37 [UDim2.new]
      185 LOADN                            R24 0
      186 LOADN                            R25 10
      187 LOADN                            R26 1
      188 LOADN                            R27 0
      189 CALL                             R23 4 1
      190 SETTABLEKS                       R23 R22 K27 ["Size"]
      192 GETIMPORT                        R23 K37 [UDim2.new]
      194 LOADN                            R24 1
      195 LOADN                            R25 251
      196 LOADN                            R26 0
      197 LOADN                            R27 0
      198 CALL                             R23 4 1
      199 SETTABLEKS                       R23 R22 K28 ["Position"]
      201 GETTABLEKS                       R23 R0 K29 ["ZIndex"]
      203 SETTABLEKS                       R23 R22 K29 ["ZIndex"]
      205 SETTABLEKS                       R11 R22 K30 ["onStateChanged"]
      207 DUPTABLE                         R23 K39 [{"affordance"}]
      208 GETUPVAL                         R24 5
      209 GETTABLEKS                       R24 R24 K7 ["Enums"]
      211 GETTABLEKS                       R24 R24 K40 ["StateLayerAffordance"]
      213 GETTABLEKS                       R24 R24 K41 ["None"]
      215 SETTABLEKS                       R24 R23 K38 ["affordance"]
      217 SETTABLEKS                       R23 R22 K31 ["stateLayer"]
      219 DUPTABLE                         R23 K44 [{"Gradient", "DragDetector"}]
      220 GETUPVAL                         R24 0
      221 GETTABLEKS                       R24 R24 K20 ["createElement"]
      223 LOADK                            R25 K45 ["UIGradient"]
      224 DUPTABLE                         R26 K47 [{"Transparency"}]
      225 SETTABLEKS                       R15 R26 K46 ["Transparency"]
      227 CALL                             R24 2 1
      228 SETTABLEKS                       R24 R23 K42 ["Gradient"]
      230 GETUPVAL                         R24 0
      231 GETTABLEKS                       R24 R24 K20 ["createElement"]
      233 LOADK                            R25 K48 ["UIDragDetector"]
      234 NEWTABLE                         R26 8 0
      236 GETIMPORT                        R27 K52 [Enum.UIDragDetectorDragStyle.Scriptable]
      238 SETTABLEKS                       R27 R26 K53 ["DragStyle"]
      240 GETTABLEKS                       R27 R2 K54 ["getViewport"]
      242 CALL                             R27 0 1
      243 SETTABLEKS                       R27 R26 K55 ["ReferenceUIInstance"]
      245 GETUPVAL                         R27 0
      246 GETTABLEKS                       R27 R27 K56 ["Event"]
      248 GETTABLEKS                       R27 R27 K57 ["DragStart"]
      250 SETTABLE                         R12 R26 R27
      251 GETUPVAL                         R27 0
      252 GETTABLEKS                       R27 R27 K56 ["Event"]
      254 GETTABLEKS                       R27 R27 K58 ["DragContinue"]
      256 SETTABLE                         R13 R26 R27
      257 GETUPVAL                         R27 0
      258 GETTABLEKS                       R27 R27 K56 ["Event"]
      260 GETTABLEKS                       R27 R27 K59 ["DragEnd"]
      262 SETTABLE                         R14 R26 R27
      263 CALL                             R24 2 1
      264 SETTABLEKS                       R24 R23 K43 ["DragDetector"]
      266 CALL                             R20 3 1
      267 SETTABLEKS                       R20 R19 K22 ["ResizeBarRight"]
      269 CALL                             R16 3 -1
      270 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["NodeGraphing"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Constants"]
       11 CALL                             R1 1 1
       12 GETIMPORT                        R2 K5 [require]
       14 GETTABLEKS                       R3 R0 K7 ["Parent"]
       16 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K7 ["Parent"]
       23 GETTABLEKS                       R4 R4 K9 ["Graphing"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K7 ["Parent"]
       30 GETTABLEKS                       R5 R5 K10 ["React"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K7 ["Parent"]
       37 GETTABLEKS                       R6 R6 K11 ["SignalsReact"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K12 ["Components"]
       44 GETTABLEKS                       R7 R7 K13 ["ViewportRectContext"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       51 GETTABLEKS                       R8 R8 K15 ["useOnStateChangedCursor"]
       53 CALL                             R7 1 1
       54 DUPCLOSURE                       R8 K16 [PROTO_4]
       55 CAPTURE                          VAL R4
       56 CAPTURE                          VAL R6
       57 CAPTURE                          VAL R3
       58 CAPTURE                          VAL R5
       59 CAPTURE                          VAL R7
       60 CAPTURE                          VAL R2
       61 CAPTURE                          VAL R1
       62 RETURN                           R8 1
