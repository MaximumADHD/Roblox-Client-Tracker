PROTO_0:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Enums"]
        3 GETTABLEKS                       R2 R3 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R2 K2 ["Hover"]
        7 JUMPIFEQ                         R0 R1 ; [+10]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["Enums"]
       12 GETTABLEKS                       R2 R3 K1 ["ControlState"]
       14 GETTABLEKS                       R1 R2 K3 ["Pressed"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+14]
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K0 ["Enums"]
       22 GETTABLEKS                       R3 R4 K1 ["ControlState"]
       24 GETTABLEKS                       R2 R3 K2 ["Hover"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 2
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 3
       32 JUMPIF                           R1 ; [+18]
       33 GETUPVAL                         R1 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K0 ["Enums"]
       37 GETTABLEKS                       R3 R4 K1 ["ControlState"]
       39 GETTABLEKS                       R2 R3 K4 ["Default"]
       41 CALL                             R1 1 0
       42 GETUPVAL                         R1 2
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K0 ["Enums"]
       46 GETTABLEKS                       R3 R4 K1 ["ControlState"]
       48 GETTABLEKS                       R2 R3 K4 ["Default"]
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["Enums"]
        3 GETTABLEKS                       R2 R3 K1 ["ControlState"]
        5 GETTABLEKS                       R1 R2 K2 ["Hover"]
        7 JUMPIFEQ                         R0 R1 ; [+10]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R3 R4 K0 ["Enums"]
       12 GETTABLEKS                       R2 R3 K1 ["ControlState"]
       14 GETTABLEKS                       R1 R2 K3 ["Pressed"]
       16 JUMPIFNOTEQ                      R0 R1 ; [+14]
       18 GETUPVAL                         R1 1
       19 GETUPVAL                         R5 0
       20 GETTABLEKS                       R4 R5 K0 ["Enums"]
       22 GETTABLEKS                       R3 R4 K1 ["ControlState"]
       24 GETTABLEKS                       R2 R3 K2 ["Hover"]
       26 CALL                             R1 1 0
       27 GETUPVAL                         R1 2
       28 MOVE                             R2 R0
       29 CALL                             R1 1 0
       30 RETURN                           R0 0
       31 GETUPVAL                         R1 3
       32 JUMPIF                           R1 ; [+18]
       33 GETUPVAL                         R1 1
       34 GETUPVAL                         R5 0
       35 GETTABLEKS                       R4 R5 K0 ["Enums"]
       37 GETTABLEKS                       R3 R4 K1 ["ControlState"]
       39 GETTABLEKS                       R2 R3 K4 ["Default"]
       41 CALL                             R1 1 0
       42 GETUPVAL                         R1 2
       43 GETUPVAL                         R5 0
       44 GETTABLEKS                       R4 R5 K0 ["Enums"]
       46 GETTABLEKS                       R3 R4 K1 ["ControlState"]
       48 GETTABLEKS                       R2 R3 K4 ["Default"]
       50 CALL                             R1 1 0
       51 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeZoomRatio"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R5 R1 K1 ["X"]
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R7 R8 K2 ["nodeWidth"]
       11 MUL                              R6 R7 R2
       12 SUB                              R4 R5 R6
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 3
       15 LOADB                            R4 1
       16 CALL                             R3 1 0
       17 GETUPVAL                         R3 4
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R6 R7 K3 ["Enums"]
       21 GETTABLEKS                       R5 R6 K4 ["ControlState"]
       23 GETTABLEKS                       R4 R5 K5 ["Hover"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeZoomRatio"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R3 1
        6 GETTABLEKS                       R5 R1 K1 ["X"]
        8 GETUPVAL                         R8 2
        9 GETTABLEKS                       R7 R8 K2 ["nodeWidth"]
       11 MUL                              R6 R7 R2
       12 ADD                              R4 R5 R6
       13 CALL                             R3 1 0
       14 GETUPVAL                         R3 3
       15 LOADB                            R4 1
       16 CALL                             R3 1 0
       17 GETUPVAL                         R3 4
       18 GETUPVAL                         R7 5
       19 GETTABLEKS                       R6 R7 K3 ["Enums"]
       21 GETTABLEKS                       R5 R6 K4 ["ControlState"]
       23 GETTABLEKS                       R4 R5 K5 ["Hover"]
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeZoomRatio"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 GETTABLEKS                       R5 R1 K1 ["X"]
        7 GETUPVAL                         R6 1
        8 SUB                              R4 R5 R6
        9 DIV                              R3 R4 R2
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K2 ["OnResized"]
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K3 ["CHILD_WIDTH"]
       16 FASTCALL2                        MATH_MAX R6 R3 ; [+4]
       18 MOVE                             R7 R3
       19 GETIMPORT                        R5 K6 [math.max]
       21 CALL                             R5 2 1
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["observeZoomRatio"]
        3 LOADB                            R3 0
        4 CALL                             R2 1 1
        5 GETUPVAL                         R5 1
        6 GETTABLEKS                       R6 R1 K1 ["X"]
        8 SUB                              R4 R5 R6
        9 DIV                              R3 R4 R2
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R4 R5 K2 ["OnResized"]
       13 GETUPVAL                         R7 3
       14 GETTABLEKS                       R6 R7 K3 ["CHILD_WIDTH"]
       16 FASTCALL2                        MATH_MAX R6 R3 ; [+4]
       18 MOVE                             R7 R3
       19 GETIMPORT                        R5 K6 [math.max]
       21 CALL                             R5 2 1
       22 CALL                             R4 1 0
       23 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETUPVAL                         R6 1
        2 GETTABLEKS                       R5 R6 K0 ["Enums"]
        4 GETTABLEKS                       R4 R5 K1 ["ControlState"]
        6 GETTABLEKS                       R3 R4 K2 ["Default"]
        8 CALL                             R2 1 0
        9 GETUPVAL                         R2 2
       10 LOADB                            R3 0
       11 CALL                             R2 1 0
       12 GETUPVAL                         R2 3
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K0 ["Enums"]
       16 GETTABLEKS                       R4 R5 K1 ["ControlState"]
       18 GETTABLEKS                       R3 R4 K2 ["Default"]
       20 CALL                             R2 1 0
       21 GETUPVAL                         R2 4
       22 GETUPVAL                         R6 1
       23 GETTABLEKS                       R5 R6 K0 ["Enums"]
       25 GETTABLEKS                       R4 R5 K1 ["ControlState"]
       27 GETTABLEKS                       R3 R4 K2 ["Default"]
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["useContext"]
        3 GETUPVAL                         R3 1
        4 GETTABLEKS                       R2 R3 K1 ["Context"]
        6 CALL                             R1 1 1
        7 GETUPVAL                         R3 0
        8 GETTABLEKS                       R2 R3 K0 ["useContext"]
       10 GETUPVAL                         R4 2
       11 GETTABLEKS                       R3 R4 K2 ["CanvasContext"]
       13 CALL                             R2 1 1
       14 GETUPVAL                         R3 3
       15 LOADK                            R4 K3 ["SizeEW"]
       16 CALL                             R3 1 1
       17 GETUPVAL                         R5 0
       18 GETTABLEKS                       R4 R5 K4 ["useState"]
       20 LOADN                            R5 0
       21 CALL                             R4 1 2
       22 GETUPVAL                         R7 0
       23 GETTABLEKS                       R6 R7 K4 ["useState"]
       25 LOADB                            R7 0
       26 CALL                             R6 1 2
       27 GETUPVAL                         R9 0
       28 GETTABLEKS                       R8 R9 K4 ["useState"]
       30 GETUPVAL                         R12 4
       31 GETTABLEKS                       R11 R12 K5 ["Enums"]
       33 GETTABLEKS                       R10 R11 K6 ["ControlState"]
       35 GETTABLEKS                       R9 R10 K7 ["Default"]
       37 CALL                             R8 1 2
       38 GETUPVAL                         R11 0
       39 GETTABLEKS                       R10 R11 K4 ["useState"]
       41 GETUPVAL                         R14 4
       42 GETTABLEKS                       R13 R14 K5 ["Enums"]
       44 GETTABLEKS                       R12 R13 K6 ["ControlState"]
       46 GETTABLEKS                       R11 R12 K7 ["Default"]
       48 CALL                             R10 1 2
       49 GETUPVAL                         R13 0
       50 GETTABLEKS                       R12 R13 K8 ["useCallback"]
       52 NEWCLOSURE                       R13 P0
       53 CAPTURE                          UPVAL U4
       54 CAPTURE                          VAL R3
       55 CAPTURE                          VAL R9
       56 CAPTURE                          VAL R6
       57 NEWTABLE                         R14 0 3
       59 MOVE                             R15 R9
       60 MOVE                             R16 R3
       61 MOVE                             R17 R6
       62 SETLIST                          R14 R15 3 [1]
       64 CALL                             R12 2 1
       65 GETUPVAL                         R14 0
       66 GETTABLEKS                       R13 R14 K8 ["useCallback"]
       68 NEWCLOSURE                       R14 P1
       69 CAPTURE                          UPVAL U4
       70 CAPTURE                          VAL R3
       71 CAPTURE                          VAL R11
       72 CAPTURE                          VAL R6
       73 NEWTABLE                         R15 0 3
       75 MOVE                             R16 R11
       76 MOVE                             R17 R3
       77 MOVE                             R18 R6
       78 SETLIST                          R15 R16 3 [1]
       80 CALL                             R13 2 1
       81 GETUPVAL                         R15 0
       82 GETTABLEKS                       R14 R15 K8 ["useCallback"]
       84 NEWCLOSURE                       R15 P2
       85 CAPTURE                          VAL R1
       86 CAPTURE                          VAL R5
       87 CAPTURE                          VAL R0
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R3
       90 CAPTURE                          UPVAL U4
       91 NEWTABLE                         R16 0 4
       93 MOVE                             R17 R5
       94 MOVE                             R18 R7
       95 GETTABLEKS                       R19 R1 K9 ["observeZoomRatio"]
       97 GETTABLEKS                       R20 R0 K10 ["nodeWidth"]
       99 SETLIST                          R16 R17 4 [1]
      101 CALL                             R14 2 1
      102 GETUPVAL                         R16 0
      103 GETTABLEKS                       R15 R16 K8 ["useCallback"]
      105 NEWCLOSURE                       R16 P3
      106 CAPTURE                          VAL R1
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R0
      109 CAPTURE                          VAL R7
      110 CAPTURE                          VAL R3
      111 CAPTURE                          UPVAL U4
      112 NEWTABLE                         R17 0 4
      114 MOVE                             R18 R5
      115 MOVE                             R19 R7
      116 GETTABLEKS                       R20 R1 K9 ["observeZoomRatio"]
      118 GETTABLEKS                       R21 R0 K10 ["nodeWidth"]
      120 SETLIST                          R17 R18 4 [1]
      122 CALL                             R15 2 1
      123 GETUPVAL                         R17 0
      124 GETTABLEKS                       R16 R17 K8 ["useCallback"]
      126 NEWCLOSURE                       R17 P4
      127 CAPTURE                          VAL R1
      128 CAPTURE                          VAL R4
      129 CAPTURE                          VAL R0
      130 CAPTURE                          UPVAL U5
      131 NEWTABLE                         R18 0 3
      133 GETTABLEKS                       R19 R1 K9 ["observeZoomRatio"]
      135 MOVE                             R20 R4
      136 GETTABLEKS                       R21 R0 K11 ["OnResized"]
      138 SETLIST                          R18 R19 3 [1]
      140 CALL                             R16 2 1
      141 GETUPVAL                         R18 0
      142 GETTABLEKS                       R17 R18 K8 ["useCallback"]
      144 NEWCLOSURE                       R18 P5
      145 CAPTURE                          VAL R1
      146 CAPTURE                          VAL R4
      147 CAPTURE                          VAL R0
      148 CAPTURE                          UPVAL U5
      149 NEWTABLE                         R19 0 3
      151 GETTABLEKS                       R20 R1 K9 ["observeZoomRatio"]
      153 MOVE                             R21 R4
      154 GETTABLEKS                       R22 R0 K11 ["OnResized"]
      156 SETLIST                          R19 R20 3 [1]
      158 CALL                             R17 2 1
      159 GETUPVAL                         R19 0
      160 GETTABLEKS                       R18 R19 K8 ["useCallback"]
      162 NEWCLOSURE                       R19 P6
      163 CAPTURE                          VAL R3
      164 CAPTURE                          UPVAL U4
      165 CAPTURE                          VAL R7
      166 CAPTURE                          VAL R9
      167 CAPTURE                          VAL R11
      168 NEWTABLE                         R20 0 3
      170 MOVE                             R21 R7
      171 MOVE                             R22 R9
      172 MOVE                             R23 R11
      173 SETLIST                          R20 R21 3 [1]
      175 CALL                             R18 2 1
      176 GETIMPORT                        R19 K14 [NumberSequence.new]
      178 NEWTABLE                         R20 0 4
      180 GETIMPORT                        R21 K16 [NumberSequenceKeypoint.new]
      182 LOADN                            R22 0
      183 LOADN                            R23 1
      184 CALL                             R21 2 1
      185 GETIMPORT                        R22 K16 [NumberSequenceKeypoint.new]
      187 LOADK                            R23 K17 [0.4999]
      188 LOADN                            R24 1
      189 CALL                             R22 2 1
      190 GETIMPORT                        R23 K16 [NumberSequenceKeypoint.new]
      192 LOADK                            R24 K18 [0.5]
      193 LOADK                            R25 K18 [0.5]
      194 CALL                             R23 2 1
      195 GETIMPORT                        R24 K16 [NumberSequenceKeypoint.new]
      197 LOADN                            R25 1
      198 LOADN                            R26 1
      199 CALL                             R24 2 -1
      200 SETLIST                          R20 R21 -1 [1]
      202 CALL                             R19 1 1
      203 GETIMPORT                        R20 K14 [NumberSequence.new]
      205 NEWTABLE                         R21 0 4
      207 GETIMPORT                        R22 K16 [NumberSequenceKeypoint.new]
      209 LOADN                            R23 0
      210 LOADN                            R24 1
      211 CALL                             R22 2 1
      212 GETIMPORT                        R23 K16 [NumberSequenceKeypoint.new]
      214 LOADK                            R24 K18 [0.5]
      215 LOADK                            R25 K18 [0.5]
      216 CALL                             R23 2 1
      217 GETIMPORT                        R24 K16 [NumberSequenceKeypoint.new]
      219 LOADK                            R25 K19 [0.5001]
      220 LOADN                            R26 1
      221 CALL                             R24 2 1
      222 GETIMPORT                        R25 K16 [NumberSequenceKeypoint.new]
      224 LOADN                            R26 1
      225 LOADN                            R27 1
      226 CALL                             R25 2 -1
      227 SETLIST                          R21 R22 -1 [1]
      229 CALL                             R20 1 1
      230 GETUPVAL                         R22 0
      231 GETTABLEKS                       R21 R22 K20 ["createElement"]
      233 GETUPVAL                         R23 0
      234 GETTABLEKS                       R22 R23 K21 ["Fragment"]
      236 NEWTABLE                         R23 0 0
      238 DUPTABLE                         R24 K24 [{"ResizeBarLeft", "ResizeBarRight"}]
      239 GETUPVAL                         R26 6
      240 JUMPIFNOT                        R26 ; [+120]
      241 GETUPVAL                         R26 0
      242 GETTABLEKS                       R25 R26 K20 ["createElement"]
      244 GETUPVAL                         R27 4
      245 GETTABLEKS                       R26 R27 K25 ["View"]
      247 DUPTABLE                         R27 K33 [{"tag", "backgroundStyle", "Size", "Position", "ZIndex", "onStateChanged", "stateLayer"}]
      248 GETTABLEKS                       R28 R0 K26 ["tag"]
      250 SETTABLEKS                       R28 R27 K26 ["tag"]
      252 GETUPVAL                         R32 4
      253 GETTABLEKS                       R31 R32 K5 ["Enums"]
      255 GETTABLEKS                       R30 R31 K6 ["ControlState"]
      257 GETTABLEKS                       R29 R30 K34 ["Hover"]
      259 JUMPIFEQ                         R8 R29 ; [+10]
      261 GETUPVAL                         R32 4
      262 GETTABLEKS                       R31 R32 K5 ["Enums"]
      264 GETTABLEKS                       R30 R31 K6 ["ControlState"]
      266 GETTABLEKS                       R29 R30 K35 ["Pressed"]
      268 JUMPIFNOTEQ                      R8 R29 ; [+4]
      270 GETTABLEKS                       R28 R0 K36 ["Style"]
      272 JUMP                             ; [+1]
      273 LOADNIL                          R28
      274 SETTABLEKS                       R28 R27 K27 ["backgroundStyle"]
      276 GETIMPORT                        R28 K38 [UDim2.new]
      278 LOADN                            R29 0
      279 LOADN                            R30 5
      280 LOADN                            R31 1
      281 LOADN                            R32 0
      282 CALL                             R28 4 1
      283 SETTABLEKS                       R28 R27 K28 ["Size"]
      285 GETIMPORT                        R28 K38 [UDim2.new]
      287 LOADN                            R29 0
      288 LOADN                            R30 0
      289 LOADN                            R31 0
      290 LOADN                            R32 0
      291 CALL                             R28 4 1
      292 SETTABLEKS                       R28 R27 K29 ["Position"]
      294 GETTABLEKS                       R28 R0 K30 ["ZIndex"]
      296 SETTABLEKS                       R28 R27 K30 ["ZIndex"]
      298 SETTABLEKS                       R12 R27 K31 ["onStateChanged"]
      300 DUPTABLE                         R28 K40 [{"affordance"}]
      301 GETUPVAL                         R32 4
      302 GETTABLEKS                       R31 R32 K5 ["Enums"]
      304 GETTABLEKS                       R30 R31 K41 ["StateLayerAffordance"]
      306 GETTABLEKS                       R29 R30 K42 ["None"]
      308 SETTABLEKS                       R29 R28 K39 ["affordance"]
      310 SETTABLEKS                       R28 R27 K32 ["stateLayer"]
      312 DUPTABLE                         R28 K45 [{"Gradient", "DragDetector"}]
      313 GETUPVAL                         R30 0
      314 GETTABLEKS                       R29 R30 K20 ["createElement"]
      316 LOADK                            R30 K46 ["UIGradient"]
      317 DUPTABLE                         R31 K48 [{"Transparency"}]
      318 SETTABLEKS                       R19 R31 K47 ["Transparency"]
      320 CALL                             R29 2 1
      321 SETTABLEKS                       R29 R28 K43 ["Gradient"]
      323 GETUPVAL                         R30 0
      324 GETTABLEKS                       R29 R30 K20 ["createElement"]
      326 LOADK                            R30 K49 ["UIDragDetector"]
      327 NEWTABLE                         R31 8 0
      329 GETIMPORT                        R32 K53 [Enum.UIDragDetectorDragStyle.Scriptable]
      331 SETTABLEKS                       R32 R31 K54 ["DragStyle"]
      333 GETTABLEKS                       R32 R2 K55 ["getViewport"]
      335 CALL                             R32 0 1
      336 SETTABLEKS                       R32 R31 K56 ["ReferenceUIInstance"]
      338 GETUPVAL                         R34 0
      339 GETTABLEKS                       R33 R34 K57 ["Event"]
      341 GETTABLEKS                       R32 R33 K58 ["DragStart"]
      343 SETTABLE                         R15 R31 R32
      344 GETUPVAL                         R34 0
      345 GETTABLEKS                       R33 R34 K57 ["Event"]
      347 GETTABLEKS                       R32 R33 K59 ["DragContinue"]
      349 SETTABLE                         R17 R31 R32
      350 GETUPVAL                         R34 0
      351 GETTABLEKS                       R33 R34 K57 ["Event"]
      353 GETTABLEKS                       R32 R33 K60 ["DragEnd"]
      355 SETTABLE                         R18 R31 R32
      356 CALL                             R29 2 1
      357 SETTABLEKS                       R29 R28 K44 ["DragDetector"]
      359 CALL                             R25 3 1
      360 JUMP                             ; [+1]
      361 LOADNIL                          R25
      362 SETTABLEKS                       R25 R24 K22 ["ResizeBarLeft"]
      364 GETUPVAL                         R26 7
      365 JUMPIFNOT                        R26 ; [+120]
      366 GETUPVAL                         R26 0
      367 GETTABLEKS                       R25 R26 K20 ["createElement"]
      369 GETUPVAL                         R27 4
      370 GETTABLEKS                       R26 R27 K25 ["View"]
      372 DUPTABLE                         R27 K33 [{"tag", "backgroundStyle", "Size", "Position", "ZIndex", "onStateChanged", "stateLayer"}]
      373 GETTABLEKS                       R28 R0 K26 ["tag"]
      375 SETTABLEKS                       R28 R27 K26 ["tag"]
      377 GETUPVAL                         R32 4
      378 GETTABLEKS                       R31 R32 K5 ["Enums"]
      380 GETTABLEKS                       R30 R31 K6 ["ControlState"]
      382 GETTABLEKS                       R29 R30 K34 ["Hover"]
      384 JUMPIFEQ                         R10 R29 ; [+10]
      386 GETUPVAL                         R32 4
      387 GETTABLEKS                       R31 R32 K5 ["Enums"]
      389 GETTABLEKS                       R30 R31 K6 ["ControlState"]
      391 GETTABLEKS                       R29 R30 K35 ["Pressed"]
      393 JUMPIFNOTEQ                      R10 R29 ; [+4]
      395 GETTABLEKS                       R28 R0 K36 ["Style"]
      397 JUMP                             ; [+1]
      398 LOADNIL                          R28
      399 SETTABLEKS                       R28 R27 K27 ["backgroundStyle"]
      401 GETIMPORT                        R28 K38 [UDim2.new]
      403 LOADN                            R29 0
      404 LOADN                            R30 10
      405 LOADN                            R31 1
      406 LOADN                            R32 0
      407 CALL                             R28 4 1
      408 SETTABLEKS                       R28 R27 K28 ["Size"]
      410 GETIMPORT                        R28 K38 [UDim2.new]
      412 LOADN                            R29 1
      413 LOADN                            R30 251
      414 LOADN                            R31 0
      415 LOADN                            R32 0
      416 CALL                             R28 4 1
      417 SETTABLEKS                       R28 R27 K29 ["Position"]
      419 GETTABLEKS                       R28 R0 K30 ["ZIndex"]
      421 SETTABLEKS                       R28 R27 K30 ["ZIndex"]
      423 SETTABLEKS                       R13 R27 K31 ["onStateChanged"]
      425 DUPTABLE                         R28 K40 [{"affordance"}]
      426 GETUPVAL                         R32 4
      427 GETTABLEKS                       R31 R32 K5 ["Enums"]
      429 GETTABLEKS                       R30 R31 K41 ["StateLayerAffordance"]
      431 GETTABLEKS                       R29 R30 K42 ["None"]
      433 SETTABLEKS                       R29 R28 K39 ["affordance"]
      435 SETTABLEKS                       R28 R27 K32 ["stateLayer"]
      437 DUPTABLE                         R28 K45 [{"Gradient", "DragDetector"}]
      438 GETUPVAL                         R30 0
      439 GETTABLEKS                       R29 R30 K20 ["createElement"]
      441 LOADK                            R30 K46 ["UIGradient"]
      442 DUPTABLE                         R31 K48 [{"Transparency"}]
      443 SETTABLEKS                       R20 R31 K47 ["Transparency"]
      445 CALL                             R29 2 1
      446 SETTABLEKS                       R29 R28 K43 ["Gradient"]
      448 GETUPVAL                         R30 0
      449 GETTABLEKS                       R29 R30 K20 ["createElement"]
      451 LOADK                            R30 K49 ["UIDragDetector"]
      452 NEWTABLE                         R31 8 0
      454 GETIMPORT                        R32 K53 [Enum.UIDragDetectorDragStyle.Scriptable]
      456 SETTABLEKS                       R32 R31 K54 ["DragStyle"]
      458 GETTABLEKS                       R32 R2 K55 ["getViewport"]
      460 CALL                             R32 0 1
      461 SETTABLEKS                       R32 R31 K56 ["ReferenceUIInstance"]
      463 GETUPVAL                         R34 0
      464 GETTABLEKS                       R33 R34 K57 ["Event"]
      466 GETTABLEKS                       R32 R33 K58 ["DragStart"]
      468 SETTABLE                         R14 R31 R32
      469 GETUPVAL                         R34 0
      470 GETTABLEKS                       R33 R34 K57 ["Event"]
      472 GETTABLEKS                       R32 R33 K59 ["DragContinue"]
      474 SETTABLE                         R16 R31 R32
      475 GETUPVAL                         R34 0
      476 GETTABLEKS                       R33 R34 K57 ["Event"]
      478 GETTABLEKS                       R32 R33 K60 ["DragEnd"]
      480 SETTABLE                         R18 R31 R32
      481 CALL                             R29 2 1
      482 SETTABLEKS                       R29 R28 K44 ["DragDetector"]
      484 CALL                             R25 3 1
      485 JUMP                             ; [+1]
      486 LOADNIL                          R25
      487 SETTABLEKS                       R25 R24 K23 ["ResizeBarRight"]
      489 CALL                             R21 3 -1
      490 RETURN                           R21 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R3 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R4 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R5 K10 ["Graphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R6 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R6 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R7 R0 K12 ["Contexts"]
       39 GETTABLEKS                       R6 R7 K13 ["ViewportRectContext"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R8 R0 K14 ["Hooks"]
       46 GETTABLEKS                       R7 R8 K15 ["useOnStateChangedCursor"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K17 [game]
       51 LOADK                            R9 K18 ["AnimGraphDebugRightResize"]
       52 LOADB                            R10 0
       53 NAMECALL                         R7 R7 K19 ["DefineFastFlag"]
       55 CALL                             R7 3 1
       56 GETIMPORT                        R8 K17 [game]
       58 LOADK                            R10 K20 ["AnimGraphDebugLeftResize"]
       59 LOADB                            R11 0
       60 NAMECALL                         R8 R8 K19 ["DefineFastFlag"]
       62 CALL                             R8 3 1
       63 DUPCLOSURE                       R9 K21 [PROTO_7]
       64 CAPTURE                          VAL R4
       65 CAPTURE                          VAL R5
       66 CAPTURE                          VAL R3
       67 CAPTURE                          VAL R6
       68 CAPTURE                          VAL R2
       69 CAPTURE                          VAL R1
       70 CAPTURE                          VAL R8
       71 CAPTURE                          VAL R7
       72 RETURN                           R9 1
