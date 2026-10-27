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
        0 GETTABLEKS                       R4 R1 K0 ["X"]
        2 GETUPVAL                         R5 0
        3 SUB                              R3 R4 R5
        4 GETUPVAL                         R4 1
        5 NAMECALL                         R4 R4 K1 ["getValue"]
        7 CALL                             R4 1 1
        8 DIV                              R2 R3 R4
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K2 ["OnResized"]
       12 GETUPVAL                         R5 2
       13 GETTABLEKS                       R5 R5 K3 ["minimumWidth"]
       15 JUMPIF                           R5 ; [+3]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K4 ["NODE_VIEW_CHILD_WIDTH"]
       19 FASTCALL2                        MATH_MAX R5 R2 ; [+4]
       21 MOVE                             R6 R2
       22 GETIMPORT                        R4 K7 [math.max]
       24 CALL                             R4 2 1
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

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

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["nodeHeightBinding"]
        3 JUMPIFNOT                        R2 ; [+4]
        4 NAMECALL                         R3 R2 K1 ["getValue"]
        6 CALL                             R3 1 1
        7 JUMP                             ; [+3]
        8 GETUPVAL                         R3 1
        9 GETTABLEKS                       R3 R3 K2 ["NODE_VIEW_CHILD_HEIGHT"]
       11 GETUPVAL                         R4 2
       12 GETTABLEKS                       R6 R1 K3 ["Y"]
       14 GETUPVAL                         R8 3
       15 NAMECALL                         R8 R8 K1 ["getValue"]
       17 CALL                             R8 1 1
       18 MUL                              R7 R3 R8
       19 SUB                              R5 R6 R7
       20 CALL                             R4 1 0
       21 GETUPVAL                         R4 4
       22 LOADB                            R5 1
       23 CALL                             R4 1 0
       24 GETUPVAL                         R4 5
       25 GETUPVAL                         R5 6
       26 GETTABLEKS                       R5 R5 K4 ["Enums"]
       28 GETTABLEKS                       R5 R5 K5 ["ControlState"]
       30 GETTABLEKS                       R5 R5 K6 ["Hover"]
       32 CALL                             R4 1 0
       33 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["OnResizedVertical"]
        3 JUMPIFNOT                        R2 ; [+22]
        4 GETTABLEKS                       R4 R1 K1 ["Y"]
        6 GETUPVAL                         R5 1
        7 SUB                              R3 R4 R5
        8 GETUPVAL                         R4 2
        9 NAMECALL                         R4 R4 K2 ["getValue"]
       11 CALL                             R4 1 1
       12 DIV                              R2 R3 R4
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R3 R3 K0 ["OnResizedVertical"]
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K3 ["NODE_VIEW_CHILD_HEIGHT"]
       19 FASTCALL2                        MATH_MAX R5 R2 ; [+4]
       21 MOVE                             R6 R2
       22 GETIMPORT                        R4 K6 [math.max]
       24 CALL                             R4 2 1
       25 CALL                             R3 1 0
       26 RETURN                           R0 0

PROTO_7:
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

PROTO_8:
        0 GETUPVAL                         R0 0
        1 JUMPIFNOT                        R0 ; [+5]
        2 GETUPVAL                         R0 0
        3 GETUPVAL                         R1 1
        4 JUMPIF                           R1 ; [+1]
        5 GETUPVAL                         R1 2
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_9:
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
       23 GETUPVAL                         R5 4
       24 LOADK                            R6 K6 ["SizeNS"]
       25 CALL                             R5 1 1
       26 GETUPVAL                         R6 0
       27 GETTABLEKS                       R6 R6 K7 ["useState"]
       29 LOADN                            R7 0
       30 CALL                             R6 1 2
       31 GETUPVAL                         R8 0
       32 GETTABLEKS                       R8 R8 K7 ["useState"]
       34 LOADB                            R9 0
       35 CALL                             R8 1 2
       36 GETUPVAL                         R10 0
       37 GETTABLEKS                       R10 R10 K7 ["useState"]
       39 GETUPVAL                         R11 5
       40 GETTABLEKS                       R11 R11 K8 ["Enums"]
       42 GETTABLEKS                       R11 R11 K9 ["ControlState"]
       44 GETTABLEKS                       R11 R11 K10 ["Default"]
       46 CALL                             R10 1 2
       47 GETUPVAL                         R12 0
       48 GETTABLEKS                       R12 R12 K7 ["useState"]
       50 LOADN                            R13 0
       51 CALL                             R12 1 2
       52 GETUPVAL                         R14 0
       53 GETTABLEKS                       R14 R14 K7 ["useState"]
       55 LOADB                            R15 0
       56 CALL                             R14 1 2
       57 GETUPVAL                         R16 0
       58 GETTABLEKS                       R16 R16 K7 ["useState"]
       60 GETUPVAL                         R17 5
       61 GETTABLEKS                       R17 R17 K8 ["Enums"]
       63 GETTABLEKS                       R17 R17 K9 ["ControlState"]
       65 GETTABLEKS                       R17 R17 K10 ["Default"]
       67 CALL                             R16 1 2
       68 GETUPVAL                         R18 0
       69 GETTABLEKS                       R18 R18 K11 ["useCallback"]
       71 NEWCLOSURE                       R19 P0
       72 CAPTURE                          UPVAL U5
       73 CAPTURE                          VAL R4
       74 CAPTURE                          VAL R11
       75 CAPTURE                          VAL R8
       76 NEWTABLE                         R20 0 3
       78 MOVE                             R21 R11
       79 MOVE                             R22 R4
       80 MOVE                             R23 R8
       81 SETLIST                          R20 R21 3 [1]
       83 CALL                             R18 2 1
       84 GETUPVAL                         R19 6
       85 GETTABLEKS                       R19 R19 K12 ["useEventCallback"]
       87 NEWCLOSURE                       R20 P1
       88 CAPTURE                          VAL R7
       89 CAPTURE                          VAL R0
       90 CAPTURE                          VAL R3
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R4
       93 CAPTURE                          UPVAL U5
       94 CALL                             R19 1 1
       95 GETUPVAL                         R20 0
       96 GETTABLEKS                       R20 R20 K11 ["useCallback"]
       98 NEWCLOSURE                       R21 P2
       99 CAPTURE                          VAL R6
      100 CAPTURE                          VAL R3
      101 CAPTURE                          VAL R0
      102 CAPTURE                          UPVAL U7
      103 NEWTABLE                         R22 0 4
      105 MOVE                             R23 R3
      106 MOVE                             R24 R6
      107 GETTABLEKS                       R25 R0 K13 ["OnResized"]
      109 GETTABLEKS                       R26 R0 K14 ["minimumWidth"]
      111 SETLIST                          R22 R23 4 [1]
      113 CALL                             R20 2 1
      114 GETUPVAL                         R21 0
      115 GETTABLEKS                       R21 R21 K11 ["useCallback"]
      117 NEWCLOSURE                       R22 P3
      118 CAPTURE                          VAL R4
      119 CAPTURE                          UPVAL U5
      120 CAPTURE                          VAL R9
      121 CAPTURE                          VAL R11
      122 NEWTABLE                         R23 0 3
      124 MOVE                             R24 R9
      125 MOVE                             R25 R11
      126 MOVE                             R26 R4
      127 SETLIST                          R23 R24 3 [1]
      129 CALL                             R21 2 1
      130 GETUPVAL                         R22 0
      131 GETTABLEKS                       R22 R22 K11 ["useCallback"]
      133 NEWCLOSURE                       R23 P4
      134 CAPTURE                          UPVAL U5
      135 CAPTURE                          VAL R5
      136 CAPTURE                          VAL R17
      137 CAPTURE                          VAL R14
      138 NEWTABLE                         R24 0 3
      140 MOVE                             R25 R17
      141 MOVE                             R26 R5
      142 MOVE                             R27 R14
      143 SETLIST                          R24 R25 3 [1]
      145 CALL                             R22 2 1
      146 GETUPVAL                         R23 6
      147 GETTABLEKS                       R23 R23 K12 ["useEventCallback"]
      149 NEWCLOSURE                       R24 P5
      150 CAPTURE                          VAL R0
      151 CAPTURE                          UPVAL U7
      152 CAPTURE                          VAL R13
      153 CAPTURE                          VAL R3
      154 CAPTURE                          VAL R15
      155 CAPTURE                          VAL R5
      156 CAPTURE                          UPVAL U5
      157 CALL                             R23 1 1
      158 GETUPVAL                         R24 0
      159 GETTABLEKS                       R24 R24 K11 ["useCallback"]
      161 NEWCLOSURE                       R25 P6
      162 CAPTURE                          VAL R0
      163 CAPTURE                          VAL R12
      164 CAPTURE                          VAL R3
      165 CAPTURE                          UPVAL U7
      166 NEWTABLE                         R26 0 3
      168 MOVE                             R27 R3
      169 MOVE                             R28 R12
      170 GETTABLEKS                       R29 R0 K15 ["OnResizedVertical"]
      172 SETLIST                          R26 R27 3 [1]
      174 CALL                             R24 2 1
      175 GETUPVAL                         R25 0
      176 GETTABLEKS                       R25 R25 K11 ["useCallback"]
      178 NEWCLOSURE                       R26 P7
      179 CAPTURE                          VAL R5
      180 CAPTURE                          UPVAL U5
      181 CAPTURE                          VAL R15
      182 CAPTURE                          VAL R17
      183 NEWTABLE                         R27 0 3
      185 MOVE                             R28 R15
      186 MOVE                             R29 R17
      187 MOVE                             R30 R5
      188 SETLIST                          R27 R28 3 [1]
      190 CALL                             R25 2 1
      191 GETTABLEKS                       R26 R0 K16 ["onResizingChanged"]
      193 GETUPVAL                         R27 0
      194 GETTABLEKS                       R27 R27 K17 ["useEffect"]
      196 NEWCLOSURE                       R28 P8
      197 CAPTURE                          VAL R26
      198 CAPTURE                          VAL R8
      199 CAPTURE                          VAL R14
      200 NEWTABLE                         R29 0 3
      202 MOVE                             R30 R8
      203 MOVE                             R31 R14
      204 MOVE                             R32 R26
      205 SETLIST                          R29 R30 3 [1]
      207 CALL                             R27 2 0
      208 LOADB                            R27 1
      209 GETUPVAL                         R28 5
      210 GETTABLEKS                       R28 R28 K8 ["Enums"]
      212 GETTABLEKS                       R28 R28 K9 ["ControlState"]
      214 GETTABLEKS                       R28 R28 K18 ["Hover"]
      216 JUMPIFEQ                         R10 R28 ; [+12]
      218 GETUPVAL                         R28 5
      219 GETTABLEKS                       R28 R28 K8 ["Enums"]
      221 GETTABLEKS                       R28 R28 K9 ["ControlState"]
      223 GETTABLEKS                       R28 R28 K19 ["Pressed"]
      225 JUMPIFEQ                         R10 R28 ; [+2]
      227 LOADB                            R27 0 +1
      228 LOADB                            R27 1
      229 LOADB                            R28 1
      230 GETUPVAL                         R29 5
      231 GETTABLEKS                       R29 R29 K8 ["Enums"]
      233 GETTABLEKS                       R29 R29 K9 ["ControlState"]
      235 GETTABLEKS                       R29 R29 K18 ["Hover"]
      237 JUMPIFEQ                         R16 R29 ; [+12]
      239 GETUPVAL                         R29 5
      240 GETTABLEKS                       R29 R29 K8 ["Enums"]
      242 GETTABLEKS                       R29 R29 K9 ["ControlState"]
      244 GETTABLEKS                       R29 R29 K19 ["Pressed"]
      246 JUMPIFEQ                         R16 R29 ; [+2]
      248 LOADB                            R28 0 +1
      249 LOADB                            R28 1
      250 GETUPVAL                         R29 0
      251 GETTABLEKS                       R29 R29 K20 ["createElement"]
      253 GETUPVAL                         R30 0
      254 GETTABLEKS                       R30 R30 K21 ["Fragment"]
      256 NEWTABLE                         R31 0 0
      258 DUPTABLE                         R32 K24 [{"ResizeBarRight", "ResizeBarBottom"}]
      259 GETTABLEKS                       R34 R0 K25 ["showHorizontal"]
      261 JUMPIFEQKB                       R34 FALSE ; [+105]
      263 GETUPVAL                         R33 0
      264 GETTABLEKS                       R33 R33 K20 ["createElement"]
      266 GETUPVAL                         R34 5
      267 GETTABLEKS                       R34 R34 K26 ["View"]
      269 DUPTABLE                         R35 K35 [{["tag"], ["testId"] = "ResizeBarRight", ["backgroundStyle"], ["Size"], ["Position"], ["ZIndex"], ["onStateChanged"], ["stateLayer"]}]
      270 GETTABLEKS                       R36 R0 K27 ["tag"]
      272 SETTABLEKS                       R36 R35 K27 ["tag"]
      274 GETTABLEKS                       R36 R0 K36 ["Style"]
      276 SETTABLEKS                       R36 R35 K29 ["backgroundStyle"]
      278 GETIMPORT                        R36 K39 [UDim2.new]
      280 LOADN                            R37 0
      281 LOADN                            R38 10
      282 LOADN                            R39 1
      283 LOADN                            R40 0
      284 CALL                             R36 4 1
      285 SETTABLEKS                       R36 R35 K30 ["Size"]
      287 GETIMPORT                        R36 K39 [UDim2.new]
      289 LOADN                            R37 1
      290 LOADN                            R38 -5
      291 LOADN                            R39 0
      292 LOADN                            R40 0
      293 CALL                             R36 4 1
      294 SETTABLEKS                       R36 R35 K31 ["Position"]
      296 GETTABLEKS                       R36 R0 K32 ["ZIndex"]
      298 SETTABLEKS                       R36 R35 K32 ["ZIndex"]
      300 SETTABLEKS                       R18 R35 K33 ["onStateChanged"]
      302 DUPTABLE                         R36 K41 [{"affordance"}]
      303 GETUPVAL                         R37 5
      304 GETTABLEKS                       R37 R37 K8 ["Enums"]
      306 GETTABLEKS                       R37 R37 K42 ["StateLayerAffordance"]
      308 GETTABLEKS                       R37 R37 K43 ["None"]
      310 SETTABLEKS                       R37 R36 K40 ["affordance"]
      312 SETTABLEKS                       R36 R35 K34 ["stateLayer"]
      314 DUPTABLE                         R36 K46 [{"Gradient", "DragDetector"}]
      315 GETUPVAL                         R37 0
      316 GETTABLEKS                       R37 R37 K20 ["createElement"]
      318 LOADK                            R38 K47 ["UIGradient"]
      319 DUPTABLE                         R39 K49 [{"Transparency"}]
      320 JUMPIFNOT                        R27 ; [+2]
      321 GETUPVAL                         R40 8
      322 JUMP                             ; [+1]
      323 GETUPVAL                         R40 9
      324 SETTABLEKS                       R40 R39 K48 ["Transparency"]
      326 CALL                             R37 2 1
      327 SETTABLEKS                       R37 R36 K44 ["Gradient"]
      329 GETUPVAL                         R37 0
      330 GETTABLEKS                       R37 R37 K20 ["createElement"]
      332 LOADK                            R38 K50 ["UIDragDetector"]
      333 NEWTABLE                         R39 8 0
      335 GETIMPORT                        R40 K54 [Enum.UIDragDetectorDragStyle.Scriptable]
      337 SETTABLEKS                       R40 R39 K55 ["DragStyle"]
      339 GETTABLEKS                       R40 R2 K56 ["getViewport"]
      341 CALL                             R40 0 1
      342 SETTABLEKS                       R40 R39 K57 ["ReferenceUIInstance"]
      344 GETUPVAL                         R40 0
      345 GETTABLEKS                       R40 R40 K58 ["Event"]
      347 GETTABLEKS                       R40 R40 K59 ["DragStart"]
      349 SETTABLE                         R19 R39 R40
      350 GETUPVAL                         R40 0
      351 GETTABLEKS                       R40 R40 K58 ["Event"]
      353 GETTABLEKS                       R40 R40 K60 ["DragContinue"]
      355 SETTABLE                         R20 R39 R40
      356 GETUPVAL                         R40 0
      357 GETTABLEKS                       R40 R40 K58 ["Event"]
      359 GETTABLEKS                       R40 R40 K61 ["DragEnd"]
      361 SETTABLE                         R21 R39 R40
      362 CALL                             R37 2 1
      363 SETTABLEKS                       R37 R36 K45 ["DragDetector"]
      365 CALL                             R33 3 1
      366 JUMP                             ; [+1]
      367 LOADNIL                          R33
      368 SETTABLEKS                       R33 R32 K22 ["ResizeBarRight"]
      370 GETUPVAL                         R34 10
      371 CALL                             R34 0 1
      372 JUMPIFNOT                        R34 ; [+107]
      373 GETTABLEKS                       R34 R0 K62 ["showVertical"]
      375 JUMPIFNOT                        R34 ; [+104]
      376 GETUPVAL                         R33 0
      377 GETTABLEKS                       R33 R33 K20 ["createElement"]
      379 GETUPVAL                         R34 5
      380 GETTABLEKS                       R34 R34 K26 ["View"]
      382 DUPTABLE                         R35 K63 [{["tag"], ["testId"] = "ResizeBarBottom", ["backgroundStyle"], ["Size"], ["Position"], ["ZIndex"], ["onStateChanged"], ["stateLayer"]}]
      383 GETTABLEKS                       R36 R0 K27 ["tag"]
      385 SETTABLEKS                       R36 R35 K27 ["tag"]
      387 GETTABLEKS                       R36 R0 K36 ["Style"]
      389 SETTABLEKS                       R36 R35 K29 ["backgroundStyle"]
      391 GETIMPORT                        R36 K39 [UDim2.new]
      393 LOADN                            R37 1
      394 LOADN                            R38 0
      395 LOADN                            R39 0
      396 LOADN                            R40 10
      397 CALL                             R36 4 1
      398 SETTABLEKS                       R36 R35 K30 ["Size"]
      400 GETIMPORT                        R36 K39 [UDim2.new]
      402 LOADN                            R37 0
      403 LOADN                            R38 0
      404 LOADN                            R39 1
      405 LOADN                            R40 -5
      406 CALL                             R36 4 1
      407 SETTABLEKS                       R36 R35 K31 ["Position"]
      409 GETTABLEKS                       R36 R0 K32 ["ZIndex"]
      411 SETTABLEKS                       R36 R35 K32 ["ZIndex"]
      413 SETTABLEKS                       R22 R35 K33 ["onStateChanged"]
      415 DUPTABLE                         R36 K41 [{"affordance"}]
      416 GETUPVAL                         R37 5
      417 GETTABLEKS                       R37 R37 K8 ["Enums"]
      419 GETTABLEKS                       R37 R37 K42 ["StateLayerAffordance"]
      421 GETTABLEKS                       R37 R37 K43 ["None"]
      423 SETTABLEKS                       R37 R36 K40 ["affordance"]
      425 SETTABLEKS                       R36 R35 K34 ["stateLayer"]
      427 DUPTABLE                         R36 K46 [{"Gradient", "DragDetector"}]
      428 GETUPVAL                         R37 0
      429 GETTABLEKS                       R37 R37 K20 ["createElement"]
      431 LOADK                            R38 K47 ["UIGradient"]
      432 DUPTABLE                         R39 K66 [{["Rotation"] = 90, ["Transparency"]}]
      433 JUMPIFNOT                        R28 ; [+2]
      434 GETUPVAL                         R40 8
      435 JUMP                             ; [+1]
      436 GETUPVAL                         R40 9
      437 SETTABLEKS                       R40 R39 K48 ["Transparency"]
      439 CALL                             R37 2 1
      440 SETTABLEKS                       R37 R36 K44 ["Gradient"]
      442 GETUPVAL                         R37 0
      443 GETTABLEKS                       R37 R37 K20 ["createElement"]
      445 LOADK                            R38 K50 ["UIDragDetector"]
      446 NEWTABLE                         R39 8 0
      448 GETIMPORT                        R40 K54 [Enum.UIDragDetectorDragStyle.Scriptable]
      450 SETTABLEKS                       R40 R39 K55 ["DragStyle"]
      452 GETTABLEKS                       R40 R2 K56 ["getViewport"]
      454 CALL                             R40 0 1
      455 SETTABLEKS                       R40 R39 K57 ["ReferenceUIInstance"]
      457 GETUPVAL                         R40 0
      458 GETTABLEKS                       R40 R40 K58 ["Event"]
      460 GETTABLEKS                       R40 R40 K59 ["DragStart"]
      462 SETTABLE                         R23 R39 R40
      463 GETUPVAL                         R40 0
      464 GETTABLEKS                       R40 R40 K58 ["Event"]
      466 GETTABLEKS                       R40 R40 K60 ["DragContinue"]
      468 SETTABLE                         R24 R39 R40
      469 GETUPVAL                         R40 0
      470 GETTABLEKS                       R40 R40 K58 ["Event"]
      472 GETTABLEKS                       R40 R40 K61 ["DragEnd"]
      474 SETTABLE                         R25 R39 R40
      475 CALL                             R37 2 1
      476 SETTABLEKS                       R37 R36 K45 ["DragDetector"]
      478 CALL                             R33 3 1
      479 JUMP                             ; [+1]
      480 LOADNIL                          R33
      481 SETTABLEKS                       R33 R32 K23 ["ResizeBarBottom"]
      483 CALL                             R29 3 -1
      484 RETURN                           R29 -1

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
       37 GETTABLEKS                       R6 R6 K11 ["ReactUtils"]
       39 CALL                             R5 1 1
       40 GETIMPORT                        R6 K5 [require]
       42 GETTABLEKS                       R7 R0 K7 ["Parent"]
       44 GETTABLEKS                       R7 R7 K12 ["SignalsReact"]
       46 CALL                             R6 1 1
       47 GETIMPORT                        R7 K5 [require]
       49 GETTABLEKS                       R8 R0 K13 ["Components"]
       51 GETTABLEKS                       R8 R8 K14 ["ViewportRectContext"]
       53 CALL                             R7 1 1
       54 GETIMPORT                        R8 K5 [require]
       56 GETTABLEKS                       R9 R0 K15 ["Flags"]
       58 GETTABLEKS                       R9 R9 K16 ["getFFlagAnimGraphUIEnableExpressionNodes"]
       60 CALL                             R8 1 1
       61 GETIMPORT                        R9 K5 [require]
       63 GETTABLEKS                       R10 R0 K17 ["Hooks"]
       65 GETTABLEKS                       R10 R10 K18 ["useOnStateChangedCursor"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K21 [NumberSequence.new]
       70 NEWTABLE                         R11 0 4
       72 GETIMPORT                        R12 K23 [NumberSequenceKeypoint.new]
       74 LOADN                            R13 0
       75 LOADN                            R14 1
       76 CALL                             R12 2 1
       77 GETIMPORT                        R13 K23 [NumberSequenceKeypoint.new]
       79 LOADK                            R14 K24 [0.5]
       80 LOADK                            R15 K25 [0.25]
       81 CALL                             R13 2 1
       82 GETIMPORT                        R14 K23 [NumberSequenceKeypoint.new]
       84 LOADK                            R15 K26 [0.5001]
       85 LOADN                            R16 1
       86 CALL                             R14 2 1
       87 GETIMPORT                        R15 K23 [NumberSequenceKeypoint.new]
       89 LOADN                            R16 1
       90 LOADN                            R17 1
       91 CALL                             R15 2 -1
       92 SETLIST                          R11 R12 -1 [1]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K21 [NumberSequence.new]
       97 LOADN                            R12 1
       98 CALL                             R11 1 1
       99 DUPCLOSURE                       R12 K27 [PROTO_9]
      100 CAPTURE                          VAL R4
      101 CAPTURE                          VAL R7
      102 CAPTURE                          VAL R3
      103 CAPTURE                          VAL R6
      104 CAPTURE                          VAL R9
      105 CAPTURE                          VAL R2
      106 CAPTURE                          VAL R5
      107 CAPTURE                          VAL R1
      108 CAPTURE                          VAL R10
      109 CAPTURE                          VAL R11
      110 CAPTURE                          VAL R8
      111 GETTABLEKS                       R13 R4 K28 ["memo"]
      113 MOVE                             R14 R12
      114 CALL                             R13 1 1
      115 MOVE                             R12 R13
      116 RETURN                           R12 1
