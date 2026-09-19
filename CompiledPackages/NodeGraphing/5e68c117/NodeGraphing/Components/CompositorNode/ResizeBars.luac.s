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

PROTO_6:
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

PROTO_7:
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

PROTO_8:
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
       84 GETUPVAL                         R20 6
       85 JUMPIFNOT                        R20 ; [+12]
       86 GETUPVAL                         R19 7
       87 GETTABLEKS                       R19 R19 K12 ["useEventCallback"]
       89 NEWCLOSURE                       R20 P1
       90 CAPTURE                          VAL R7
       91 CAPTURE                          VAL R0
       92 CAPTURE                          VAL R3
       93 CAPTURE                          VAL R9
       94 CAPTURE                          VAL R4
       95 CAPTURE                          UPVAL U5
       96 CALL                             R19 1 1
       97 JUMP                             ; [+20]
       98 GETUPVAL                         R19 0
       99 GETTABLEKS                       R19 R19 K11 ["useCallback"]
      101 NEWCLOSURE                       R20 P2
      102 CAPTURE                          VAL R7
      103 CAPTURE                          VAL R0
      104 CAPTURE                          VAL R3
      105 CAPTURE                          VAL R9
      106 CAPTURE                          VAL R4
      107 CAPTURE                          UPVAL U5
      108 NEWTABLE                         R21 0 4
      110 MOVE                             R22 R7
      111 MOVE                             R23 R9
      112 MOVE                             R24 R3
      113 GETTABLEKS                       R25 R0 K13 ["DEPRECATED_nodeWidth"]
      115 SETLIST                          R21 R22 4 [1]
      117 CALL                             R19 2 1
      118 GETUPVAL                         R20 0
      119 GETTABLEKS                       R20 R20 K11 ["useCallback"]
      121 NEWCLOSURE                       R21 P3
      122 CAPTURE                          VAL R6
      123 CAPTURE                          VAL R3
      124 CAPTURE                          VAL R0
      125 CAPTURE                          UPVAL U8
      126 NEWTABLE                         R22 0 3
      128 MOVE                             R23 R3
      129 MOVE                             R24 R6
      130 GETTABLEKS                       R25 R0 K14 ["OnResized"]
      132 SETLIST                          R22 R23 3 [1]
      134 CALL                             R20 2 1
      135 GETUPVAL                         R21 0
      136 GETTABLEKS                       R21 R21 K11 ["useCallback"]
      138 NEWCLOSURE                       R22 P4
      139 CAPTURE                          VAL R4
      140 CAPTURE                          UPVAL U5
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R11
      143 NEWTABLE                         R23 0 3
      145 MOVE                             R24 R9
      146 MOVE                             R25 R11
      147 MOVE                             R26 R4
      148 SETLIST                          R23 R24 3 [1]
      150 CALL                             R21 2 1
      151 GETUPVAL                         R22 0
      152 GETTABLEKS                       R22 R22 K11 ["useCallback"]
      154 NEWCLOSURE                       R23 P5
      155 CAPTURE                          UPVAL U5
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R17
      158 CAPTURE                          VAL R14
      159 NEWTABLE                         R24 0 3
      161 MOVE                             R25 R17
      162 MOVE                             R26 R5
      163 MOVE                             R27 R14
      164 SETLIST                          R24 R25 3 [1]
      166 CALL                             R22 2 1
      167 GETUPVAL                         R23 7
      168 GETTABLEKS                       R23 R23 K12 ["useEventCallback"]
      170 NEWCLOSURE                       R24 P6
      171 CAPTURE                          VAL R0
      172 CAPTURE                          UPVAL U8
      173 CAPTURE                          VAL R13
      174 CAPTURE                          VAL R3
      175 CAPTURE                          VAL R15
      176 CAPTURE                          VAL R5
      177 CAPTURE                          UPVAL U5
      178 CALL                             R23 1 1
      179 GETUPVAL                         R24 0
      180 GETTABLEKS                       R24 R24 K11 ["useCallback"]
      182 NEWCLOSURE                       R25 P7
      183 CAPTURE                          VAL R0
      184 CAPTURE                          VAL R12
      185 CAPTURE                          VAL R3
      186 CAPTURE                          UPVAL U8
      187 NEWTABLE                         R26 0 3
      189 MOVE                             R27 R3
      190 MOVE                             R28 R12
      191 GETTABLEKS                       R29 R0 K15 ["OnResizedVertical"]
      193 SETLIST                          R26 R27 3 [1]
      195 CALL                             R24 2 1
      196 GETUPVAL                         R25 0
      197 GETTABLEKS                       R25 R25 K11 ["useCallback"]
      199 NEWCLOSURE                       R26 P8
      200 CAPTURE                          VAL R5
      201 CAPTURE                          UPVAL U5
      202 CAPTURE                          VAL R15
      203 CAPTURE                          VAL R17
      204 NEWTABLE                         R27 0 3
      206 MOVE                             R28 R15
      207 MOVE                             R29 R17
      208 MOVE                             R30 R5
      209 SETLIST                          R27 R28 3 [1]
      211 CALL                             R25 2 1
      212 LOADB                            R26 1
      213 GETUPVAL                         R27 5
      214 GETTABLEKS                       R27 R27 K8 ["Enums"]
      216 GETTABLEKS                       R27 R27 K9 ["ControlState"]
      218 GETTABLEKS                       R27 R27 K16 ["Hover"]
      220 JUMPIFEQ                         R10 R27 ; [+12]
      222 GETUPVAL                         R27 5
      223 GETTABLEKS                       R27 R27 K8 ["Enums"]
      225 GETTABLEKS                       R27 R27 K9 ["ControlState"]
      227 GETTABLEKS                       R27 R27 K17 ["Pressed"]
      229 JUMPIFEQ                         R10 R27 ; [+2]
      231 LOADB                            R26 0 +1
      232 LOADB                            R26 1
      233 LOADB                            R27 1
      234 GETUPVAL                         R28 5
      235 GETTABLEKS                       R28 R28 K8 ["Enums"]
      237 GETTABLEKS                       R28 R28 K9 ["ControlState"]
      239 GETTABLEKS                       R28 R28 K16 ["Hover"]
      241 JUMPIFEQ                         R16 R28 ; [+12]
      243 GETUPVAL                         R28 5
      244 GETTABLEKS                       R28 R28 K8 ["Enums"]
      246 GETTABLEKS                       R28 R28 K9 ["ControlState"]
      248 GETTABLEKS                       R28 R28 K17 ["Pressed"]
      250 JUMPIFEQ                         R16 R28 ; [+2]
      252 LOADB                            R27 0 +1
      253 LOADB                            R27 1
      254 GETUPVAL                         R28 0
      255 GETTABLEKS                       R28 R28 K18 ["createElement"]
      257 GETUPVAL                         R29 0
      258 GETTABLEKS                       R29 R29 K19 ["Fragment"]
      260 NEWTABLE                         R30 0 0
      262 DUPTABLE                         R31 K22 [{"ResizeBarRight", "ResizeBarBottom"}]
      263 GETTABLEKS                       R33 R0 K23 ["showHorizontal"]
      265 JUMPIFEQKB                       R33 FALSE ; [+105]
      267 GETUPVAL                         R32 0
      268 GETTABLEKS                       R32 R32 K18 ["createElement"]
      270 GETUPVAL                         R33 5
      271 GETTABLEKS                       R33 R33 K24 ["View"]
      273 DUPTABLE                         R34 K33 [{["tag"], ["testId"] = "ResizeBarRight", ["backgroundStyle"], ["Size"], ["Position"], ["ZIndex"], ["onStateChanged"], ["stateLayer"]}]
      274 GETTABLEKS                       R35 R0 K25 ["tag"]
      276 SETTABLEKS                       R35 R34 K25 ["tag"]
      278 GETTABLEKS                       R35 R0 K34 ["Style"]
      280 SETTABLEKS                       R35 R34 K27 ["backgroundStyle"]
      282 GETIMPORT                        R35 K37 [UDim2.new]
      284 LOADN                            R36 0
      285 LOADN                            R37 10
      286 LOADN                            R38 1
      287 LOADN                            R39 0
      288 CALL                             R35 4 1
      289 SETTABLEKS                       R35 R34 K28 ["Size"]
      291 GETIMPORT                        R35 K37 [UDim2.new]
      293 LOADN                            R36 1
      294 LOADN                            R37 -5
      295 LOADN                            R38 0
      296 LOADN                            R39 0
      297 CALL                             R35 4 1
      298 SETTABLEKS                       R35 R34 K29 ["Position"]
      300 GETTABLEKS                       R35 R0 K30 ["ZIndex"]
      302 SETTABLEKS                       R35 R34 K30 ["ZIndex"]
      304 SETTABLEKS                       R18 R34 K31 ["onStateChanged"]
      306 DUPTABLE                         R35 K39 [{"affordance"}]
      307 GETUPVAL                         R36 5
      308 GETTABLEKS                       R36 R36 K8 ["Enums"]
      310 GETTABLEKS                       R36 R36 K40 ["StateLayerAffordance"]
      312 GETTABLEKS                       R36 R36 K41 ["None"]
      314 SETTABLEKS                       R36 R35 K38 ["affordance"]
      316 SETTABLEKS                       R35 R34 K32 ["stateLayer"]
      318 DUPTABLE                         R35 K44 [{"Gradient", "DragDetector"}]
      319 GETUPVAL                         R36 0
      320 GETTABLEKS                       R36 R36 K18 ["createElement"]
      322 LOADK                            R37 K45 ["UIGradient"]
      323 DUPTABLE                         R38 K47 [{"Transparency"}]
      324 JUMPIFNOT                        R26 ; [+2]
      325 GETUPVAL                         R39 9
      326 JUMP                             ; [+1]
      327 GETUPVAL                         R39 10
      328 SETTABLEKS                       R39 R38 K46 ["Transparency"]
      330 CALL                             R36 2 1
      331 SETTABLEKS                       R36 R35 K42 ["Gradient"]
      333 GETUPVAL                         R36 0
      334 GETTABLEKS                       R36 R36 K18 ["createElement"]
      336 LOADK                            R37 K48 ["UIDragDetector"]
      337 NEWTABLE                         R38 8 0
      339 GETIMPORT                        R39 K52 [Enum.UIDragDetectorDragStyle.Scriptable]
      341 SETTABLEKS                       R39 R38 K53 ["DragStyle"]
      343 GETTABLEKS                       R39 R2 K54 ["getViewport"]
      345 CALL                             R39 0 1
      346 SETTABLEKS                       R39 R38 K55 ["ReferenceUIInstance"]
      348 GETUPVAL                         R39 0
      349 GETTABLEKS                       R39 R39 K56 ["Event"]
      351 GETTABLEKS                       R39 R39 K57 ["DragStart"]
      353 SETTABLE                         R19 R38 R39
      354 GETUPVAL                         R39 0
      355 GETTABLEKS                       R39 R39 K56 ["Event"]
      357 GETTABLEKS                       R39 R39 K58 ["DragContinue"]
      359 SETTABLE                         R20 R38 R39
      360 GETUPVAL                         R39 0
      361 GETTABLEKS                       R39 R39 K56 ["Event"]
      363 GETTABLEKS                       R39 R39 K59 ["DragEnd"]
      365 SETTABLE                         R21 R38 R39
      366 CALL                             R36 2 1
      367 SETTABLEKS                       R36 R35 K43 ["DragDetector"]
      369 CALL                             R32 3 1
      370 JUMP                             ; [+1]
      371 LOADNIL                          R32
      372 SETTABLEKS                       R32 R31 K20 ["ResizeBarRight"]
      374 GETUPVAL                         R33 11
      375 CALL                             R33 0 1
      376 JUMPIFNOT                        R33 ; [+107]
      377 GETTABLEKS                       R33 R0 K60 ["showVertical"]
      379 JUMPIFNOT                        R33 ; [+104]
      380 GETUPVAL                         R32 0
      381 GETTABLEKS                       R32 R32 K18 ["createElement"]
      383 GETUPVAL                         R33 5
      384 GETTABLEKS                       R33 R33 K24 ["View"]
      386 DUPTABLE                         R34 K61 [{["tag"], ["testId"] = "ResizeBarBottom", ["backgroundStyle"], ["Size"], ["Position"], ["ZIndex"], ["onStateChanged"], ["stateLayer"]}]
      387 GETTABLEKS                       R35 R0 K25 ["tag"]
      389 SETTABLEKS                       R35 R34 K25 ["tag"]
      391 GETTABLEKS                       R35 R0 K34 ["Style"]
      393 SETTABLEKS                       R35 R34 K27 ["backgroundStyle"]
      395 GETIMPORT                        R35 K37 [UDim2.new]
      397 LOADN                            R36 1
      398 LOADN                            R37 0
      399 LOADN                            R38 0
      400 LOADN                            R39 10
      401 CALL                             R35 4 1
      402 SETTABLEKS                       R35 R34 K28 ["Size"]
      404 GETIMPORT                        R35 K37 [UDim2.new]
      406 LOADN                            R36 0
      407 LOADN                            R37 0
      408 LOADN                            R38 1
      409 LOADN                            R39 -5
      410 CALL                             R35 4 1
      411 SETTABLEKS                       R35 R34 K29 ["Position"]
      413 GETTABLEKS                       R35 R0 K30 ["ZIndex"]
      415 SETTABLEKS                       R35 R34 K30 ["ZIndex"]
      417 SETTABLEKS                       R22 R34 K31 ["onStateChanged"]
      419 DUPTABLE                         R35 K39 [{"affordance"}]
      420 GETUPVAL                         R36 5
      421 GETTABLEKS                       R36 R36 K8 ["Enums"]
      423 GETTABLEKS                       R36 R36 K40 ["StateLayerAffordance"]
      425 GETTABLEKS                       R36 R36 K41 ["None"]
      427 SETTABLEKS                       R36 R35 K38 ["affordance"]
      429 SETTABLEKS                       R35 R34 K32 ["stateLayer"]
      431 DUPTABLE                         R35 K44 [{"Gradient", "DragDetector"}]
      432 GETUPVAL                         R36 0
      433 GETTABLEKS                       R36 R36 K18 ["createElement"]
      435 LOADK                            R37 K45 ["UIGradient"]
      436 DUPTABLE                         R38 K64 [{["Rotation"] = 90, ["Transparency"]}]
      437 JUMPIFNOT                        R27 ; [+2]
      438 GETUPVAL                         R39 9
      439 JUMP                             ; [+1]
      440 GETUPVAL                         R39 10
      441 SETTABLEKS                       R39 R38 K46 ["Transparency"]
      443 CALL                             R36 2 1
      444 SETTABLEKS                       R36 R35 K42 ["Gradient"]
      446 GETUPVAL                         R36 0
      447 GETTABLEKS                       R36 R36 K18 ["createElement"]
      449 LOADK                            R37 K48 ["UIDragDetector"]
      450 NEWTABLE                         R38 8 0
      452 GETIMPORT                        R39 K52 [Enum.UIDragDetectorDragStyle.Scriptable]
      454 SETTABLEKS                       R39 R38 K53 ["DragStyle"]
      456 GETTABLEKS                       R39 R2 K54 ["getViewport"]
      458 CALL                             R39 0 1
      459 SETTABLEKS                       R39 R38 K55 ["ReferenceUIInstance"]
      461 GETUPVAL                         R39 0
      462 GETTABLEKS                       R39 R39 K56 ["Event"]
      464 GETTABLEKS                       R39 R39 K57 ["DragStart"]
      466 SETTABLE                         R23 R38 R39
      467 GETUPVAL                         R39 0
      468 GETTABLEKS                       R39 R39 K56 ["Event"]
      470 GETTABLEKS                       R39 R39 K58 ["DragContinue"]
      472 SETTABLE                         R24 R38 R39
      473 GETUPVAL                         R39 0
      474 GETTABLEKS                       R39 R39 K56 ["Event"]
      476 GETTABLEKS                       R39 R39 K59 ["DragEnd"]
      478 SETTABLE                         R25 R38 R39
      479 CALL                             R36 2 1
      480 SETTABLEKS                       R36 R35 K43 ["DragDetector"]
      482 CALL                             R32 3 1
      483 JUMP                             ; [+1]
      484 LOADNIL                          R32
      485 SETTABLEKS                       R32 R31 K21 ["ResizeBarBottom"]
      487 CALL                             R28 3 -1
      488 RETURN                           R28 -1

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
       63 GETTABLEKS                       R10 R0 K7 ["Flags"]
       65 GETTABLEKS                       R10 R10 K17 ["getFFlagAnimGraphUIEnableExpressionNodes"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K5 [require]
       70 GETTABLEKS                       R11 R0 K18 ["Hooks"]
       72 GETTABLEKS                       R11 R11 K19 ["useOnStateChangedCursor"]
       74 CALL                             R10 1 1
       75 GETIMPORT                        R11 K22 [NumberSequence.new]
       77 NEWTABLE                         R12 0 4
       79 GETIMPORT                        R13 K24 [NumberSequenceKeypoint.new]
       81 LOADN                            R14 0
       82 LOADN                            R15 1
       83 CALL                             R13 2 1
       84 GETIMPORT                        R14 K24 [NumberSequenceKeypoint.new]
       86 LOADK                            R15 K25 [0.5]
       87 LOADK                            R16 K26 [0.25]
       88 CALL                             R14 2 1
       89 GETIMPORT                        R15 K24 [NumberSequenceKeypoint.new]
       91 LOADK                            R16 K27 [0.5001]
       92 LOADN                            R17 1
       93 CALL                             R15 2 1
       94 GETIMPORT                        R16 K24 [NumberSequenceKeypoint.new]
       96 LOADN                            R17 1
       97 LOADN                            R18 1
       98 CALL                             R16 2 -1
       99 SETLIST                          R12 R13 -1 [1]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K22 [NumberSequence.new]
      104 LOADN                            R13 1
      105 CALL                             R12 1 1
      106 DUPCLOSURE                       R13 K28 [PROTO_9]
      107 CAPTURE                          VAL R5
      108 CAPTURE                          VAL R8
      109 CAPTURE                          VAL R4
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R10
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R2
      114 CAPTURE                          VAL R6
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R11
      117 CAPTURE                          VAL R12
      118 CAPTURE                          VAL R9
      119 JUMPIFNOT                        R2 ; [+5]
      120 GETTABLEKS                       R14 R5 K29 ["memo"]
      122 MOVE                             R15 R13
      123 CALL                             R14 1 1
      124 MOVE                             R13 R14
      125 RETURN                           R13 1
