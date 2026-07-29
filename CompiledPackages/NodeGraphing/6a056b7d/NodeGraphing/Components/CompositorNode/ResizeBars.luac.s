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
      126 LOADB                            R15 1
      127 GETUPVAL                         R16 5
      128 GETTABLEKS                       R16 R16 K7 ["Enums"]
      130 GETTABLEKS                       R16 R16 K8 ["ControlState"]
      132 GETTABLEKS                       R16 R16 K14 ["Hover"]
      134 JUMPIFEQ                         R9 R16 ; [+12]
      136 GETUPVAL                         R16 5
      137 GETTABLEKS                       R16 R16 K7 ["Enums"]
      139 GETTABLEKS                       R16 R16 K8 ["ControlState"]
      141 GETTABLEKS                       R16 R16 K15 ["Pressed"]
      143 JUMPIFEQ                         R9 R16 ; [+2]
      145 LOADB                            R15 0 +1
      146 LOADB                            R15 1
      147 JUMPIFNOT                        R15 ; [+28]
      148 GETIMPORT                        R16 K18 [NumberSequence.new]
      150 NEWTABLE                         R17 0 4
      152 GETIMPORT                        R18 K20 [NumberSequenceKeypoint.new]
      154 LOADN                            R19 0
      155 LOADN                            R20 1
      156 CALL                             R18 2 1
      157 GETIMPORT                        R19 K20 [NumberSequenceKeypoint.new]
      159 LOADK                            R20 K21 [0.5]
      160 LOADK                            R21 K22 [0.25]
      161 CALL                             R19 2 1
      162 GETIMPORT                        R20 K20 [NumberSequenceKeypoint.new]
      164 LOADK                            R21 K23 [0.5001]
      165 LOADN                            R22 1
      166 CALL                             R20 2 1
      167 GETIMPORT                        R21 K20 [NumberSequenceKeypoint.new]
      169 LOADN                            R22 1
      170 LOADN                            R23 1
      171 CALL                             R21 2 -1
      172 SETLIST                          R17 R18 -1 [1]
      174 CALL                             R16 1 1
      175 JUMP                             ; [+4]
      176 GETIMPORT                        R16 K18 [NumberSequence.new]
      178 LOADN                            R17 1
      179 CALL                             R16 1 1
      180 GETUPVAL                         R17 0
      181 GETTABLEKS                       R17 R17 K24 ["createElement"]
      183 GETUPVAL                         R18 0
      184 GETTABLEKS                       R18 R18 K25 ["Fragment"]
      186 NEWTABLE                         R19 0 0
      188 DUPTABLE                         R20 K27 [{"ResizeBarRight"}]
      189 GETUPVAL                         R21 0
      190 GETTABLEKS                       R21 R21 K24 ["createElement"]
      192 GETUPVAL                         R22 5
      193 GETTABLEKS                       R22 R22 K28 ["View"]
      195 DUPTABLE                         R23 K36 [{"tag", "backgroundStyle", "Size", "Position", "ZIndex", "onStateChanged", "stateLayer"}]
      196 GETTABLEKS                       R24 R0 K29 ["tag"]
      198 SETTABLEKS                       R24 R23 K29 ["tag"]
      200 GETTABLEKS                       R24 R0 K37 ["Style"]
      202 SETTABLEKS                       R24 R23 K30 ["backgroundStyle"]
      204 GETIMPORT                        R24 K39 [UDim2.new]
      206 LOADN                            R25 0
      207 LOADN                            R26 10
      208 LOADN                            R27 1
      209 LOADN                            R28 0
      210 CALL                             R24 4 1
      211 SETTABLEKS                       R24 R23 K31 ["Size"]
      213 GETIMPORT                        R24 K39 [UDim2.new]
      215 LOADN                            R25 1
      216 LOADN                            R26 -5
      217 LOADN                            R27 0
      218 LOADN                            R28 0
      219 CALL                             R24 4 1
      220 SETTABLEKS                       R24 R23 K32 ["Position"]
      222 GETTABLEKS                       R24 R0 K33 ["ZIndex"]
      224 SETTABLEKS                       R24 R23 K33 ["ZIndex"]
      226 SETTABLEKS                       R11 R23 K34 ["onStateChanged"]
      228 DUPTABLE                         R24 K41 [{"affordance"}]
      229 GETUPVAL                         R25 5
      230 GETTABLEKS                       R25 R25 K7 ["Enums"]
      232 GETTABLEKS                       R25 R25 K42 ["StateLayerAffordance"]
      234 GETTABLEKS                       R25 R25 K43 ["None"]
      236 SETTABLEKS                       R25 R24 K40 ["affordance"]
      238 SETTABLEKS                       R24 R23 K35 ["stateLayer"]
      240 DUPTABLE                         R24 K46 [{"Gradient", "DragDetector"}]
      241 GETUPVAL                         R25 0
      242 GETTABLEKS                       R25 R25 K24 ["createElement"]
      244 LOADK                            R26 K47 ["UIGradient"]
      245 DUPTABLE                         R27 K49 [{"Transparency"}]
      246 SETTABLEKS                       R16 R27 K48 ["Transparency"]
      248 CALL                             R25 2 1
      249 SETTABLEKS                       R25 R24 K44 ["Gradient"]
      251 GETUPVAL                         R25 0
      252 GETTABLEKS                       R25 R25 K24 ["createElement"]
      254 LOADK                            R26 K50 ["UIDragDetector"]
      255 NEWTABLE                         R27 8 0
      257 GETIMPORT                        R28 K54 [Enum.UIDragDetectorDragStyle.Scriptable]
      259 SETTABLEKS                       R28 R27 K55 ["DragStyle"]
      261 GETTABLEKS                       R28 R2 K56 ["getViewport"]
      263 CALL                             R28 0 1
      264 SETTABLEKS                       R28 R27 K57 ["ReferenceUIInstance"]
      266 GETUPVAL                         R28 0
      267 GETTABLEKS                       R28 R28 K58 ["Event"]
      269 GETTABLEKS                       R28 R28 K59 ["DragStart"]
      271 SETTABLE                         R12 R27 R28
      272 GETUPVAL                         R28 0
      273 GETTABLEKS                       R28 R28 K58 ["Event"]
      275 GETTABLEKS                       R28 R28 K60 ["DragContinue"]
      277 SETTABLE                         R13 R27 R28
      278 GETUPVAL                         R28 0
      279 GETTABLEKS                       R28 R28 K58 ["Event"]
      281 GETTABLEKS                       R28 R28 K61 ["DragEnd"]
      283 SETTABLE                         R14 R27 R28
      284 CALL                             R25 2 1
      285 SETTABLEKS                       R25 R24 K45 ["DragDetector"]
      287 CALL                             R21 3 1
      288 SETTABLEKS                       R21 R20 K26 ["ResizeBarRight"]
      290 CALL                             R17 3 -1
      291 RETURN                           R17 -1

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
