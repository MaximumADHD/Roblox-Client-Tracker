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
        4 GETTABLEKS                       R6 R6 K1 ["nodeWidthBinding"]
        6 NAMECALL                         R6 R6 K2 ["getValue"]
        8 CALL                             R6 1 1
        9 GETUPVAL                         R7 2
       10 NAMECALL                         R7 R7 K2 ["getValue"]
       12 CALL                             R7 1 1
       13 MUL                              R5 R6 R7
       14 SUB                              R3 R4 R5
       15 CALL                             R2 1 0
       16 GETUPVAL                         R2 3
       17 LOADB                            R3 1
       18 CALL                             R2 1 0
       19 GETUPVAL                         R2 4
       20 GETUPVAL                         R3 5
       21 GETTABLEKS                       R3 R3 K3 ["Enums"]
       23 GETTABLEKS                       R3 R3 K4 ["ControlState"]
       25 GETTABLEKS                       R3 R3 K5 ["Hover"]
       27 CALL                             R2 1 0
       28 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["X"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K1 ["DEPRECATED_nodeWidth"]
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

PROTO_3:
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

PROTO_4:
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

PROTO_5:
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
       60 GETUPVAL                         R13 6
       61 JUMPIFNOT                        R13 ; [+12]
       62 GETUPVAL                         R12 7
       63 GETTABLEKS                       R12 R12 K11 ["useEventCallback"]
       65 NEWCLOSURE                       R13 P1
       66 CAPTURE                          VAL R6
       67 CAPTURE                          VAL R0
       68 CAPTURE                          VAL R3
       69 CAPTURE                          VAL R8
       70 CAPTURE                          VAL R4
       71 CAPTURE                          UPVAL U5
       72 CALL                             R12 1 1
       73 JUMP                             ; [+20]
       74 GETUPVAL                         R12 0
       75 GETTABLEKS                       R12 R12 K10 ["useCallback"]
       77 NEWCLOSURE                       R13 P2
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R0
       80 CAPTURE                          VAL R3
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R4
       83 CAPTURE                          UPVAL U5
       84 NEWTABLE                         R14 0 4
       86 MOVE                             R15 R6
       87 MOVE                             R16 R8
       88 MOVE                             R17 R3
       89 GETTABLEKS                       R18 R0 K12 ["DEPRECATED_nodeWidth"]
       91 SETLIST                          R14 R15 4 [1]
       93 CALL                             R12 2 1
       94 GETUPVAL                         R13 0
       95 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       97 NEWCLOSURE                       R14 P3
       98 CAPTURE                          VAL R5
       99 CAPTURE                          VAL R3
      100 CAPTURE                          VAL R0
      101 CAPTURE                          UPVAL U8
      102 NEWTABLE                         R15 0 3
      104 MOVE                             R16 R3
      105 MOVE                             R17 R5
      106 GETTABLEKS                       R18 R0 K13 ["OnResized"]
      108 SETLIST                          R15 R16 3 [1]
      110 CALL                             R13 2 1
      111 GETUPVAL                         R14 0
      112 GETTABLEKS                       R14 R14 K10 ["useCallback"]
      114 NEWCLOSURE                       R15 P4
      115 CAPTURE                          VAL R4
      116 CAPTURE                          UPVAL U5
      117 CAPTURE                          VAL R8
      118 CAPTURE                          VAL R10
      119 NEWTABLE                         R16 0 2
      121 MOVE                             R17 R8
      122 MOVE                             R18 R10
      123 SETLIST                          R16 R17 2 [1]
      125 CALL                             R14 2 1
      126 GETIMPORT                        R15 K16 [NumberSequence.new]
      128 NEWTABLE                         R16 0 4
      130 GETIMPORT                        R17 K18 [NumberSequenceKeypoint.new]
      132 LOADN                            R18 0
      133 LOADN                            R19 1
      134 CALL                             R17 2 1
      135 GETIMPORT                        R18 K18 [NumberSequenceKeypoint.new]
      137 LOADK                            R19 K19 [0.5]
      138 LOADK                            R20 K19 [0.5]
      139 CALL                             R18 2 1
      140 GETIMPORT                        R19 K18 [NumberSequenceKeypoint.new]
      142 LOADK                            R20 K20 [0.5001]
      143 LOADN                            R21 1
      144 CALL                             R19 2 1
      145 GETIMPORT                        R20 K18 [NumberSequenceKeypoint.new]
      147 LOADN                            R21 1
      148 LOADN                            R22 1
      149 CALL                             R20 2 -1
      150 SETLIST                          R16 R17 -1 [1]
      152 CALL                             R15 1 1
      153 GETUPVAL                         R16 0
      154 GETTABLEKS                       R16 R16 K21 ["createElement"]
      156 GETUPVAL                         R17 0
      157 GETTABLEKS                       R17 R17 K22 ["Fragment"]
      159 NEWTABLE                         R18 0 0
      161 DUPTABLE                         R19 K24 [{"ResizeBarRight"}]
      162 GETUPVAL                         R20 0
      163 GETTABLEKS                       R20 R20 K21 ["createElement"]
      165 GETUPVAL                         R21 5
      166 GETTABLEKS                       R21 R21 K25 ["View"]
      168 DUPTABLE                         R22 K33 [{"tag", "backgroundStyle", "Size", "Position", "ZIndex", "onStateChanged", "stateLayer"}]
      169 GETTABLEKS                       R23 R0 K26 ["tag"]
      171 SETTABLEKS                       R23 R22 K26 ["tag"]
      173 GETUPVAL                         R24 5
      174 GETTABLEKS                       R24 R24 K7 ["Enums"]
      176 GETTABLEKS                       R24 R24 K8 ["ControlState"]
      178 GETTABLEKS                       R24 R24 K34 ["Hover"]
      180 JUMPIFEQ                         R9 R24 ; [+10]
      182 GETUPVAL                         R24 5
      183 GETTABLEKS                       R24 R24 K7 ["Enums"]
      185 GETTABLEKS                       R24 R24 K8 ["ControlState"]
      187 GETTABLEKS                       R24 R24 K35 ["Pressed"]
      189 JUMPIFNOTEQ                      R9 R24 ; [+4]
      191 GETTABLEKS                       R23 R0 K36 ["Style"]
      193 JUMP                             ; [+1]
      194 LOADNIL                          R23
      195 SETTABLEKS                       R23 R22 K27 ["backgroundStyle"]
      197 GETIMPORT                        R23 K38 [UDim2.new]
      199 LOADN                            R24 0
      200 LOADN                            R25 10
      201 LOADN                            R26 1
      202 LOADN                            R27 0
      203 CALL                             R23 4 1
      204 SETTABLEKS                       R23 R22 K28 ["Size"]
      206 GETIMPORT                        R23 K38 [UDim2.new]
      208 LOADN                            R24 1
      209 LOADN                            R25 -5
      210 LOADN                            R26 0
      211 LOADN                            R27 0
      212 CALL                             R23 4 1
      213 SETTABLEKS                       R23 R22 K29 ["Position"]
      215 GETTABLEKS                       R23 R0 K30 ["ZIndex"]
      217 SETTABLEKS                       R23 R22 K30 ["ZIndex"]
      219 SETTABLEKS                       R11 R22 K31 ["onStateChanged"]
      221 DUPTABLE                         R23 K40 [{"affordance"}]
      222 GETUPVAL                         R24 5
      223 GETTABLEKS                       R24 R24 K7 ["Enums"]
      225 GETTABLEKS                       R24 R24 K41 ["StateLayerAffordance"]
      227 GETTABLEKS                       R24 R24 K42 ["None"]
      229 SETTABLEKS                       R24 R23 K39 ["affordance"]
      231 SETTABLEKS                       R23 R22 K32 ["stateLayer"]
      233 DUPTABLE                         R23 K45 [{"Gradient", "DragDetector"}]
      234 GETUPVAL                         R24 0
      235 GETTABLEKS                       R24 R24 K21 ["createElement"]
      237 LOADK                            R25 K46 ["UIGradient"]
      238 DUPTABLE                         R26 K48 [{"Transparency"}]
      239 SETTABLEKS                       R15 R26 K47 ["Transparency"]
      241 CALL                             R24 2 1
      242 SETTABLEKS                       R24 R23 K43 ["Gradient"]
      244 GETUPVAL                         R24 0
      245 GETTABLEKS                       R24 R24 K21 ["createElement"]
      247 LOADK                            R25 K49 ["UIDragDetector"]
      248 NEWTABLE                         R26 8 0
      250 GETIMPORT                        R27 K53 [Enum.UIDragDetectorDragStyle.Scriptable]
      252 SETTABLEKS                       R27 R26 K54 ["DragStyle"]
      254 GETTABLEKS                       R27 R2 K55 ["getViewport"]
      256 CALL                             R27 0 1
      257 SETTABLEKS                       R27 R26 K56 ["ReferenceUIInstance"]
      259 GETUPVAL                         R27 0
      260 GETTABLEKS                       R27 R27 K57 ["Event"]
      262 GETTABLEKS                       R27 R27 K58 ["DragStart"]
      264 SETTABLE                         R12 R26 R27
      265 GETUPVAL                         R27 0
      266 GETTABLEKS                       R27 R27 K57 ["Event"]
      268 GETTABLEKS                       R27 R27 K59 ["DragContinue"]
      270 SETTABLE                         R13 R26 R27
      271 GETUPVAL                         R27 0
      272 GETTABLEKS                       R27 R27 K57 ["Event"]
      274 GETTABLEKS                       R27 R27 K60 ["DragEnd"]
      276 SETTABLE                         R14 R26 R27
      277 CALL                             R24 2 1
      278 SETTABLEKS                       R24 R23 K44 ["DragDetector"]
      280 CALL                             R20 3 1
      281 SETTABLEKS                       R20 R19 K23 ["ResizeBarRight"]
      283 CALL                             R16 3 -1
      284 RETURN                           R16 -1

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
       14 GETTABLEKS                       R3 R0 K7 ["Flags"]
       16 GETTABLEKS                       R3 R3 K8 ["FFlagAnimGraphUI_PerfFixes_7123"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K5 [require]
       21 GETTABLEKS                       R4 R0 K9 ["Parent"]
       23 GETTABLEKS                       R4 R4 K10 ["Foundation"]
       25 CALL                             R3 1 1
       26 GETIMPORT                        R4 K5 [require]
       28 GETTABLEKS                       R5 R0 K9 ["Parent"]
       30 GETTABLEKS                       R5 R5 K11 ["Graphing"]
       32 CALL                             R4 1 1
       33 GETIMPORT                        R5 K5 [require]
       35 GETTABLEKS                       R6 R0 K9 ["Parent"]
       37 GETTABLEKS                       R6 R6 K12 ["React"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K9 ["Parent"]
       44 GETTABLEKS                       R7 R7 K13 ["ReactUtils"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K9 ["Parent"]
       51 GETTABLEKS                       R8 R8 K14 ["SignalsReact"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K15 ["Components"]
       58 GETTABLEKS                       R9 R9 K16 ["ViewportRectContext"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       65 GETTABLEKS                       R10 R10 K18 ["useOnStateChangedCursor"]
       67 CALL                             R9 1 1
       68 DUPCLOSURE                       R10 K19 [PROTO_5]
       69 CAPTURE                          VAL R5
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R7
       73 CAPTURE                          VAL R9
       74 CAPTURE                          VAL R3
       75 CAPTURE                          VAL R2
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R1
       78 JUMPIFNOT                        R2 ; [+5]
       79 GETTABLEKS                       R11 R5 K20 ["memo"]
       81 MOVE                             R12 R10
       82 CALL                             R11 1 1
       83 MOVE                             R10 R11
       84 RETURN                           R10 1
