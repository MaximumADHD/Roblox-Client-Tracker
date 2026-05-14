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

PROTO_2:
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

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R4 R1 K0 ["X"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R6 R6 K1 ["nodeWidth"]
        6 GETUPVAL                         R7 2
        7 NAMECALL                         R7 R7 K2 ["getValue"]
        9 CALL                             R7 1 1
       10 MUL                              R5 R6 R7
       11 ADD                              R3 R4 R5
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

PROTO_4:
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
       13 GETTABLEKS                       R5 R5 K3 ["CHILD_WIDTH"]
       15 FASTCALL2                        MATH_MAX R5 R2 ; [+4]
       17 MOVE                             R6 R2
       18 GETIMPORT                        R4 K6 [math.max]
       20 CALL                             R4 2 1
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R5 R1 K0 ["X"]
        3 SUB                              R3 R4 R5
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R4 R4 K1 ["getValue"]
        7 CALL                             R4 1 1
        8 DIV                              R2 R3 R4
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["OnResized"]
       12 GETUPVAL                         R5 3
       13 GETTABLEKS                       R5 R5 K3 ["CHILD_WIDTH"]
       15 FASTCALL2                        MATH_MAX R5 R2 ; [+4]
       17 MOVE                             R6 R2
       18 GETIMPORT                        R4 K6 [math.max]
       20 CALL                             R4 2 1
       21 CALL                             R3 1 0
       22 RETURN                           R0 0

PROTO_6:
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
       21 GETUPVAL                         R2 4
       22 GETUPVAL                         R3 1
       23 GETTABLEKS                       R3 R3 K0 ["Enums"]
       25 GETTABLEKS                       R3 R3 K1 ["ControlState"]
       27 GETTABLEKS                       R3 R3 K2 ["Default"]
       29 CALL                             R2 1 0
       30 RETURN                           R0 0

PROTO_7:
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
       45 GETTABLEKS                       R11 R11 K6 ["useState"]
       47 GETUPVAL                         R12 5
       48 GETTABLEKS                       R12 R12 K7 ["Enums"]
       50 GETTABLEKS                       R12 R12 K8 ["ControlState"]
       52 GETTABLEKS                       R12 R12 K9 ["Default"]
       54 CALL                             R11 1 2
       55 GETUPVAL                         R13 0
       56 GETTABLEKS                       R13 R13 K10 ["useCallback"]
       58 NEWCLOSURE                       R14 P0
       59 CAPTURE                          UPVAL U5
       60 CAPTURE                          VAL R4
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R7
       63 NEWTABLE                         R15 0 3
       65 MOVE                             R16 R10
       66 MOVE                             R17 R4
       67 MOVE                             R18 R7
       68 SETLIST                          R15 R16 3 [1]
       70 CALL                             R13 2 1
       71 GETUPVAL                         R14 0
       72 GETTABLEKS                       R14 R14 K10 ["useCallback"]
       74 NEWCLOSURE                       R15 P1
       75 CAPTURE                          UPVAL U5
       76 CAPTURE                          VAL R4
       77 CAPTURE                          VAL R12
       78 CAPTURE                          VAL R7
       79 NEWTABLE                         R16 0 3
       81 MOVE                             R17 R12
       82 MOVE                             R18 R4
       83 MOVE                             R19 R7
       84 SETLIST                          R16 R17 3 [1]
       86 CALL                             R14 2 1
       87 GETUPVAL                         R15 0
       88 GETTABLEKS                       R15 R15 K10 ["useCallback"]
       90 NEWCLOSURE                       R16 P2
       91 CAPTURE                          VAL R6
       92 CAPTURE                          VAL R0
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R8
       95 CAPTURE                          VAL R4
       96 CAPTURE                          UPVAL U5
       97 NEWTABLE                         R17 0 4
       99 MOVE                             R18 R6
      100 MOVE                             R19 R8
      101 MOVE                             R20 R3
      102 GETTABLEKS                       R21 R0 K11 ["nodeWidth"]
      104 SETLIST                          R17 R18 4 [1]
      106 CALL                             R15 2 1
      107 GETUPVAL                         R16 0
      108 GETTABLEKS                       R16 R16 K10 ["useCallback"]
      110 NEWCLOSURE                       R17 P3
      111 CAPTURE                          VAL R6
      112 CAPTURE                          VAL R0
      113 CAPTURE                          VAL R3
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R4
      116 CAPTURE                          UPVAL U5
      117 NEWTABLE                         R18 0 4
      119 MOVE                             R19 R6
      120 MOVE                             R20 R8
      121 MOVE                             R21 R3
      122 GETTABLEKS                       R22 R0 K11 ["nodeWidth"]
      124 SETLIST                          R18 R19 4 [1]
      126 CALL                             R16 2 1
      127 GETUPVAL                         R17 0
      128 GETTABLEKS                       R17 R17 K10 ["useCallback"]
      130 NEWCLOSURE                       R18 P4
      131 CAPTURE                          VAL R5
      132 CAPTURE                          VAL R3
      133 CAPTURE                          VAL R0
      134 CAPTURE                          UPVAL U6
      135 NEWTABLE                         R19 0 3
      137 MOVE                             R20 R3
      138 MOVE                             R21 R5
      139 GETTABLEKS                       R22 R0 K12 ["OnResized"]
      141 SETLIST                          R19 R20 3 [1]
      143 CALL                             R17 2 1
      144 GETUPVAL                         R18 0
      145 GETTABLEKS                       R18 R18 K10 ["useCallback"]
      147 NEWCLOSURE                       R19 P5
      148 CAPTURE                          VAL R5
      149 CAPTURE                          VAL R3
      150 CAPTURE                          VAL R0
      151 CAPTURE                          UPVAL U6
      152 NEWTABLE                         R20 0 3
      154 MOVE                             R21 R3
      155 MOVE                             R22 R5
      156 GETTABLEKS                       R23 R0 K12 ["OnResized"]
      158 SETLIST                          R20 R21 3 [1]
      160 CALL                             R18 2 1
      161 GETUPVAL                         R19 0
      162 GETTABLEKS                       R19 R19 K10 ["useCallback"]
      164 NEWCLOSURE                       R20 P6
      165 CAPTURE                          VAL R4
      166 CAPTURE                          UPVAL U5
      167 CAPTURE                          VAL R8
      168 CAPTURE                          VAL R10
      169 CAPTURE                          VAL R12
      170 NEWTABLE                         R21 0 3
      172 MOVE                             R22 R8
      173 MOVE                             R23 R10
      174 MOVE                             R24 R12
      175 SETLIST                          R21 R22 3 [1]
      177 CALL                             R19 2 1
      178 GETIMPORT                        R20 K15 [NumberSequence.new]
      180 NEWTABLE                         R21 0 4
      182 GETIMPORT                        R22 K17 [NumberSequenceKeypoint.new]
      184 LOADN                            R23 0
      185 LOADN                            R24 1
      186 CALL                             R22 2 1
      187 GETIMPORT                        R23 K17 [NumberSequenceKeypoint.new]
      189 LOADK                            R24 K18 [0.4999]
      190 LOADN                            R25 1
      191 CALL                             R23 2 1
      192 GETIMPORT                        R24 K17 [NumberSequenceKeypoint.new]
      194 LOADK                            R25 K19 [0.5]
      195 LOADK                            R26 K19 [0.5]
      196 CALL                             R24 2 1
      197 GETIMPORT                        R25 K17 [NumberSequenceKeypoint.new]
      199 LOADN                            R26 1
      200 LOADN                            R27 1
      201 CALL                             R25 2 -1
      202 SETLIST                          R21 R22 -1 [1]
      204 CALL                             R20 1 1
      205 GETIMPORT                        R21 K15 [NumberSequence.new]
      207 NEWTABLE                         R22 0 4
      209 GETIMPORT                        R23 K17 [NumberSequenceKeypoint.new]
      211 LOADN                            R24 0
      212 LOADN                            R25 1
      213 CALL                             R23 2 1
      214 GETIMPORT                        R24 K17 [NumberSequenceKeypoint.new]
      216 LOADK                            R25 K19 [0.5]
      217 LOADK                            R26 K19 [0.5]
      218 CALL                             R24 2 1
      219 GETIMPORT                        R25 K17 [NumberSequenceKeypoint.new]
      221 LOADK                            R26 K20 [0.5001]
      222 LOADN                            R27 1
      223 CALL                             R25 2 1
      224 GETIMPORT                        R26 K17 [NumberSequenceKeypoint.new]
      226 LOADN                            R27 1
      227 LOADN                            R28 1
      228 CALL                             R26 2 -1
      229 SETLIST                          R22 R23 -1 [1]
      231 CALL                             R21 1 1
      232 GETUPVAL                         R22 0
      233 GETTABLEKS                       R22 R22 K21 ["createElement"]
      235 GETUPVAL                         R23 0
      236 GETTABLEKS                       R23 R23 K22 ["Fragment"]
      238 NEWTABLE                         R24 0 0
      240 DUPTABLE                         R25 K25 [{"ResizeBarLeft", "ResizeBarRight"}]
      241 GETUPVAL                         R27 7
      242 JUMPIFNOT                        R27 ; [+120]
      243 GETUPVAL                         R26 0
      244 GETTABLEKS                       R26 R26 K21 ["createElement"]
      246 GETUPVAL                         R27 5
      247 GETTABLEKS                       R27 R27 K26 ["View"]
      249 DUPTABLE                         R28 K34 [{"tag", "backgroundStyle", "Size", "Position", "ZIndex", "onStateChanged", "stateLayer"}]
      250 GETTABLEKS                       R29 R0 K27 ["tag"]
      252 SETTABLEKS                       R29 R28 K27 ["tag"]
      254 GETUPVAL                         R30 5
      255 GETTABLEKS                       R30 R30 K7 ["Enums"]
      257 GETTABLEKS                       R30 R30 K8 ["ControlState"]
      259 GETTABLEKS                       R30 R30 K35 ["Hover"]
      261 JUMPIFEQ                         R9 R30 ; [+10]
      263 GETUPVAL                         R30 5
      264 GETTABLEKS                       R30 R30 K7 ["Enums"]
      266 GETTABLEKS                       R30 R30 K8 ["ControlState"]
      268 GETTABLEKS                       R30 R30 K36 ["Pressed"]
      270 JUMPIFNOTEQ                      R9 R30 ; [+4]
      272 GETTABLEKS                       R29 R0 K37 ["Style"]
      274 JUMP                             ; [+1]
      275 LOADNIL                          R29
      276 SETTABLEKS                       R29 R28 K28 ["backgroundStyle"]
      278 GETIMPORT                        R29 K39 [UDim2.new]
      280 LOADN                            R30 0
      281 LOADN                            R31 5
      282 LOADN                            R32 1
      283 LOADN                            R33 0
      284 CALL                             R29 4 1
      285 SETTABLEKS                       R29 R28 K29 ["Size"]
      287 GETIMPORT                        R29 K39 [UDim2.new]
      289 LOADN                            R30 0
      290 LOADN                            R31 0
      291 LOADN                            R32 0
      292 LOADN                            R33 0
      293 CALL                             R29 4 1
      294 SETTABLEKS                       R29 R28 K30 ["Position"]
      296 GETTABLEKS                       R29 R0 K31 ["ZIndex"]
      298 SETTABLEKS                       R29 R28 K31 ["ZIndex"]
      300 SETTABLEKS                       R13 R28 K32 ["onStateChanged"]
      302 DUPTABLE                         R29 K41 [{"affordance"}]
      303 GETUPVAL                         R30 5
      304 GETTABLEKS                       R30 R30 K7 ["Enums"]
      306 GETTABLEKS                       R30 R30 K42 ["StateLayerAffordance"]
      308 GETTABLEKS                       R30 R30 K43 ["None"]
      310 SETTABLEKS                       R30 R29 K40 ["affordance"]
      312 SETTABLEKS                       R29 R28 K33 ["stateLayer"]
      314 DUPTABLE                         R29 K46 [{"Gradient", "DragDetector"}]
      315 GETUPVAL                         R30 0
      316 GETTABLEKS                       R30 R30 K21 ["createElement"]
      318 LOADK                            R31 K47 ["UIGradient"]
      319 DUPTABLE                         R32 K49 [{"Transparency"}]
      320 SETTABLEKS                       R20 R32 K48 ["Transparency"]
      322 CALL                             R30 2 1
      323 SETTABLEKS                       R30 R29 K44 ["Gradient"]
      325 GETUPVAL                         R30 0
      326 GETTABLEKS                       R30 R30 K21 ["createElement"]
      328 LOADK                            R31 K50 ["UIDragDetector"]
      329 NEWTABLE                         R32 8 0
      331 GETIMPORT                        R33 K54 [Enum.UIDragDetectorDragStyle.Scriptable]
      333 SETTABLEKS                       R33 R32 K55 ["DragStyle"]
      335 GETTABLEKS                       R33 R2 K56 ["getViewport"]
      337 CALL                             R33 0 1
      338 SETTABLEKS                       R33 R32 K57 ["ReferenceUIInstance"]
      340 GETUPVAL                         R33 0
      341 GETTABLEKS                       R33 R33 K58 ["Event"]
      343 GETTABLEKS                       R33 R33 K59 ["DragStart"]
      345 SETTABLE                         R16 R32 R33
      346 GETUPVAL                         R33 0
      347 GETTABLEKS                       R33 R33 K58 ["Event"]
      349 GETTABLEKS                       R33 R33 K60 ["DragContinue"]
      351 SETTABLE                         R18 R32 R33
      352 GETUPVAL                         R33 0
      353 GETTABLEKS                       R33 R33 K58 ["Event"]
      355 GETTABLEKS                       R33 R33 K61 ["DragEnd"]
      357 SETTABLE                         R19 R32 R33
      358 CALL                             R30 2 1
      359 SETTABLEKS                       R30 R29 K45 ["DragDetector"]
      361 CALL                             R26 3 1
      362 JUMP                             ; [+1]
      363 LOADNIL                          R26
      364 SETTABLEKS                       R26 R25 K23 ["ResizeBarLeft"]
      366 GETUPVAL                         R27 8
      367 JUMPIFNOT                        R27 ; [+120]
      368 GETUPVAL                         R26 0
      369 GETTABLEKS                       R26 R26 K21 ["createElement"]
      371 GETUPVAL                         R27 5
      372 GETTABLEKS                       R27 R27 K26 ["View"]
      374 DUPTABLE                         R28 K34 [{"tag", "backgroundStyle", "Size", "Position", "ZIndex", "onStateChanged", "stateLayer"}]
      375 GETTABLEKS                       R29 R0 K27 ["tag"]
      377 SETTABLEKS                       R29 R28 K27 ["tag"]
      379 GETUPVAL                         R30 5
      380 GETTABLEKS                       R30 R30 K7 ["Enums"]
      382 GETTABLEKS                       R30 R30 K8 ["ControlState"]
      384 GETTABLEKS                       R30 R30 K35 ["Hover"]
      386 JUMPIFEQ                         R11 R30 ; [+10]
      388 GETUPVAL                         R30 5
      389 GETTABLEKS                       R30 R30 K7 ["Enums"]
      391 GETTABLEKS                       R30 R30 K8 ["ControlState"]
      393 GETTABLEKS                       R30 R30 K36 ["Pressed"]
      395 JUMPIFNOTEQ                      R11 R30 ; [+4]
      397 GETTABLEKS                       R29 R0 K37 ["Style"]
      399 JUMP                             ; [+1]
      400 LOADNIL                          R29
      401 SETTABLEKS                       R29 R28 K28 ["backgroundStyle"]
      403 GETIMPORT                        R29 K39 [UDim2.new]
      405 LOADN                            R30 0
      406 LOADN                            R31 10
      407 LOADN                            R32 1
      408 LOADN                            R33 0
      409 CALL                             R29 4 1
      410 SETTABLEKS                       R29 R28 K29 ["Size"]
      412 GETIMPORT                        R29 K39 [UDim2.new]
      414 LOADN                            R30 1
      415 LOADN                            R31 251
      416 LOADN                            R32 0
      417 LOADN                            R33 0
      418 CALL                             R29 4 1
      419 SETTABLEKS                       R29 R28 K30 ["Position"]
      421 GETTABLEKS                       R29 R0 K31 ["ZIndex"]
      423 SETTABLEKS                       R29 R28 K31 ["ZIndex"]
      425 SETTABLEKS                       R14 R28 K32 ["onStateChanged"]
      427 DUPTABLE                         R29 K41 [{"affordance"}]
      428 GETUPVAL                         R30 5
      429 GETTABLEKS                       R30 R30 K7 ["Enums"]
      431 GETTABLEKS                       R30 R30 K42 ["StateLayerAffordance"]
      433 GETTABLEKS                       R30 R30 K43 ["None"]
      435 SETTABLEKS                       R30 R29 K40 ["affordance"]
      437 SETTABLEKS                       R29 R28 K33 ["stateLayer"]
      439 DUPTABLE                         R29 K46 [{"Gradient", "DragDetector"}]
      440 GETUPVAL                         R30 0
      441 GETTABLEKS                       R30 R30 K21 ["createElement"]
      443 LOADK                            R31 K47 ["UIGradient"]
      444 DUPTABLE                         R32 K49 [{"Transparency"}]
      445 SETTABLEKS                       R21 R32 K48 ["Transparency"]
      447 CALL                             R30 2 1
      448 SETTABLEKS                       R30 R29 K44 ["Gradient"]
      450 GETUPVAL                         R30 0
      451 GETTABLEKS                       R30 R30 K21 ["createElement"]
      453 LOADK                            R31 K50 ["UIDragDetector"]
      454 NEWTABLE                         R32 8 0
      456 GETIMPORT                        R33 K54 [Enum.UIDragDetectorDragStyle.Scriptable]
      458 SETTABLEKS                       R33 R32 K55 ["DragStyle"]
      460 GETTABLEKS                       R33 R2 K56 ["getViewport"]
      462 CALL                             R33 0 1
      463 SETTABLEKS                       R33 R32 K57 ["ReferenceUIInstance"]
      465 GETUPVAL                         R33 0
      466 GETTABLEKS                       R33 R33 K58 ["Event"]
      468 GETTABLEKS                       R33 R33 K59 ["DragStart"]
      470 SETTABLE                         R15 R32 R33
      471 GETUPVAL                         R33 0
      472 GETTABLEKS                       R33 R33 K58 ["Event"]
      474 GETTABLEKS                       R33 R33 K60 ["DragContinue"]
      476 SETTABLE                         R17 R32 R33
      477 GETUPVAL                         R33 0
      478 GETTABLEKS                       R33 R33 K58 ["Event"]
      480 GETTABLEKS                       R33 R33 K61 ["DragEnd"]
      482 SETTABLE                         R19 R32 R33
      483 CALL                             R30 2 1
      484 SETTABLEKS                       R30 R29 K45 ["DragDetector"]
      486 CALL                             R26 3 1
      487 JUMP                             ; [+1]
      488 LOADNIL                          R26
      489 SETTABLEKS                       R26 R25 K24 ["ResizeBarRight"]
      491 CALL                             R22 3 -1
      492 RETURN                           R22 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Util"]
       11 GETTABLEKS                       R2 R2 K7 ["Constants"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Parent"]
       18 GETTABLEKS                       R3 R3 K9 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Parent"]
       25 GETTABLEKS                       R4 R4 K10 ["Graphing"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K8 ["Parent"]
       32 GETTABLEKS                       R5 R5 K11 ["React"]
       34 CALL                             R4 1 1
       35 GETIMPORT                        R5 K5 [require]
       37 GETTABLEKS                       R6 R0 K8 ["Parent"]
       39 GETTABLEKS                       R6 R6 K12 ["SignalsReact"]
       41 CALL                             R5 1 1
       42 GETIMPORT                        R6 K5 [require]
       44 GETTABLEKS                       R7 R0 K13 ["Contexts"]
       46 GETTABLEKS                       R7 R7 K14 ["ViewportRectContext"]
       48 CALL                             R6 1 1
       49 GETIMPORT                        R7 K5 [require]
       51 GETTABLEKS                       R8 R0 K15 ["Hooks"]
       53 GETTABLEKS                       R8 R8 K16 ["useOnStateChangedCursor"]
       55 CALL                             R7 1 1
       56 GETIMPORT                        R8 K18 [game]
       58 LOADK                            R10 K19 ["AnimGraphDebugRightResize"]
       59 LOADB                            R11 0
       60 NAMECALL                         R8 R8 K20 ["DefineFastFlag"]
       62 CALL                             R8 3 1
       63 GETIMPORT                        R9 K18 [game]
       65 LOADK                            R11 K21 ["AnimGraphDebugLeftResize"]
       66 LOADB                            R12 0
       67 NAMECALL                         R9 R9 K20 ["DefineFastFlag"]
       69 CALL                             R9 3 1
       70 DUPCLOSURE                       R10 K22 [PROTO_7]
       71 CAPTURE                          VAL R4
       72 CAPTURE                          VAL R6
       73 CAPTURE                          VAL R3
       74 CAPTURE                          VAL R5
       75 CAPTURE                          VAL R7
       76 CAPTURE                          VAL R2
       77 CAPTURE                          VAL R1
       78 CAPTURE                          VAL R9
       79 CAPTURE                          VAL R8
       80 RETURN                           R10 1
