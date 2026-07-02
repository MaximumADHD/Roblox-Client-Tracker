PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R1 R1 K1 ["OnSizeChanged"]
        5 JUMPIFNOT                        R1 ; [+7]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K0 ["props"]
        9 GETTABLEKS                       R1 R1 K1 ["OnSizeChanged"]
       11 MOVE                             R2 R0
       12 CALL                             R1 1 0
       13 RETURN                           R0 0

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["CanvasPosition"]
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K1 ["state"]
        5 GETTABLEKS                       R2 R2 K0 ["CanvasPosition"]
        7 JUMPIFEQ                         R1 R2 ; [+10]
        9 GETUPVAL                         R1 0
       10 DUPTABLE                         R3 K2 [{"CanvasPosition"}]
       11 GETTABLEKS                       R4 R0 K0 ["CanvasPosition"]
       13 SETTABLEKS                       R4 R3 K0 ["CanvasPosition"]
       15 NAMECALL                         R1 R1 K3 ["setState"]
       17 CALL                             R1 2 0
       18 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+17]
        6 GETUPVAL                         R2 0
        7 DUPTABLE                         R4 K7 [{["mouseXOffset"], ["dragging"] = True}]
        8 GETTABLEKS                       R6 R1 K8 ["Position"]
       10 GETTABLEKS                       R6 R6 K9 ["X"]
       12 GETTABLEKS                       R7 R0 K10 ["AbsolutePosition"]
       14 GETTABLEKS                       R7 R7 K9 ["X"]
       16 SUB                              R5 R6 R7
       17 SETTABLEKS                       R5 R4 K4 ["mouseXOffset"]
       19 NAMECALL                         R2 R2 K11 ["setState"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["props"]
        3 GETTABLEKS                       R2 R1 K1 ["CanvasSize"]
        5 GETTABLEKS                       R2 R2 K2 ["X"]
        7 GETTABLEKS                       R2 R2 K3 ["Offset"]
        9 MUL                              R5 R0 R2
       10 ADDK                             R4 R5 K4 [0.5]
       11 FASTCALL1                        MATH_FLOOR R4 ; [+2]
       12 GETIMPORT                        R3 K7 [math.floor]
       14 CALL                             R3 1 1
       15 GETUPVAL                         R4 0
       16 DUPTABLE                         R6 K9 [{"CanvasPosition"}]
       17 GETIMPORT                        R7 K12 [Vector2.new]
       19 MOVE                             R8 R3
       20 LOADN                            R9 0
       21 CALL                             R7 2 1
       22 SETTABLEKS                       R7 R6 K8 ["CanvasPosition"]
       24 NAMECALL                         R4 R4 K13 ["setState"]
       26 CALL                             R4 2 0
       27 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R2 R1 K1 ["mouseXOffset"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R3 R3 K2 ["scrollArea"]
        8 GETTABLEKS                       R3 R3 K3 ["current"]
       10 GETTABLEKS                       R6 R0 K4 ["Position"]
       12 GETTABLEKS                       R6 R6 K5 ["X"]
       14 GETTABLEKS                       R7 R3 K6 ["AbsolutePosition"]
       16 GETTABLEKS                       R7 R7 K5 ["X"]
       18 SUB                              R5 R6 R7
       19 SUB                              R4 R5 R2
       20 GETTABLEKS                       R7 R3 K7 ["AbsoluteSize"]
       22 GETTABLEKS                       R7 R7 K5 ["X"]
       24 DIV                              R6 R4 R7
       25 LOADN                            R7 0
       26 LOADN                            R8 1
       27 FASTCALL                         MATH_CLAMP ; [+2]
       28 GETIMPORT                        R5 K10 [math.clamp]
       30 CALL                             R5 3 1
       31 GETUPVAL                         R6 0
       32 GETTABLEKS                       R6 R6 K11 ["setCanvasPosition"]
       34 MOVE                             R7 R5
       35 CALL                             R6 1 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R3 R2 K1 ["CanvasSize"]
        5 GETTABLEKS                       R3 R3 K2 ["X"]
        7 GETTABLEKS                       R3 R3 K3 ["Offset"]
        9 GETTABLEKS                       R6 R2 K4 ["Width"]
       11 DIV                              R5 R6 R3
       12 GETTABLEKS                       R6 R0 K5 ["AbsoluteSize"]
       14 GETTABLEKS                       R6 R6 K2 ["X"]
       16 MUL                              R4 R5 R6
       17 GETUPVAL                         R5 0
       18 DUPTABLE                         R7 K7 [{"mouseXOffset"}]
       19 DIVK                             R8 R4 K8 [2]
       20 SETTABLEKS                       R8 R7 K6 ["mouseXOffset"]
       22 NAMECALL                         R5 R5 K9 ["setState"]
       24 CALL                             R5 2 0
       25 GETUPVAL                         R5 0
       26 GETTABLEKS                       R5 R5 K10 ["onDragMoved"]
       28 MOVE                             R6 R1
       29 CALL                             R5 1 0
       30 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_9:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["OnWheelTick"]
        5 GETIMPORT                        R4 K4 [Vector2.new]
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R4 2 1
       10 LOADK                            R5 K5 ["forward"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETTABLEKS                       R3 R3 K1 ["OnWheelTick"]
        5 GETIMPORT                        R4 K4 [Vector2.new]
        7 MOVE                             R5 R1
        8 MOVE                             R6 R2
        9 CALL                             R4 2 1
       10 LOADK                            R5 K5 ["backward"]
       11 CALL                             R3 2 0
       12 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["scrollArea"]
        6 DUPTABLE                         R1 K8 [{["CanvasPosition"], ["dragging"] = False, ["mouseXOffset"] = 0, ["hovering"] = False}]
        7 GETIMPORT                        R2 K11 [Vector2.new]
        9 CALL                             R2 0 1
       10 SETTABLEKS                       R2 R1 K2 ["CanvasPosition"]
       12 SETTABLEKS                       R1 R0 K12 ["state"]
       14 NEWCLOSURE                       R1 P0
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K13 ["onSizeChanged"]
       18 NEWCLOSURE                       R1 P1
       19 CAPTURE                          VAL R0
       20 SETTABLEKS                       R1 R0 K14 ["onCanvasPositionChanged"]
       22 NEWCLOSURE                       R1 P2
       23 CAPTURE                          VAL R0
       24 SETTABLEKS                       R1 R0 K15 ["onDragStarted"]
       26 NEWCLOSURE                       R1 P3
       27 CAPTURE                          VAL R0
       28 SETTABLEKS                       R1 R0 K16 ["setCanvasPosition"]
       30 NEWCLOSURE                       R1 P4
       31 CAPTURE                          VAL R0
       32 SETTABLEKS                       R1 R0 K17 ["onDragMoved"]
       34 NEWCLOSURE                       R1 P5
       35 CAPTURE                          VAL R0
       36 SETTABLEKS                       R1 R0 K18 ["onDragEnded"]
       38 NEWCLOSURE                       R1 P6
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K19 ["scroll"]
       42 NEWCLOSURE                       R1 P7
       43 CAPTURE                          VAL R0
       44 SETTABLEKS                       R1 R0 K20 ["mouseEnter"]
       46 NEWCLOSURE                       R1 P8
       47 CAPTURE                          VAL R0
       48 SETTABLEKS                       R1 R0 K21 ["mouseLeave"]
       50 NEWCLOSURE                       R1 P9
       51 CAPTURE                          VAL R0
       52 SETTABLEKS                       R1 R0 K22 ["wheelForward"]
       54 NEWCLOSURE                       R1 P10
       55 CAPTURE                          VAL R0
       56 SETTABLEKS                       R1 R0 K23 ["wheelBackward"]
       58 RETURN                           R0 0

PROTO_12:
        0 GETUPVAL                         R2 0
        1 JUMPIF                           R2 ; [+12]
        2 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        4 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        6 JUMPIFNOTEQ                      R2 R3 ; [+7]
        8 GETUPVAL                         R2 1
        9 GETTABLEKS                       R2 R2 K4 ["scroll"]
       11 MOVE                             R3 R0
       12 MOVE                             R4 R1
       13 CALL                             R2 2 0
       14 RETURN                           R0 0

PROTO_13:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setCanvasPosition"]
        3 LOADN                            R1 0
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_14:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["setCanvasPosition"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_15:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["AnchorPoint"]
       10 GETTABLEKS                       R6 R1 K5 ["Position"]
       12 GETTABLEKS                       R7 R1 K6 ["CanvasSize"]
       14 GETTABLEKS                       R8 R1 K7 ["LayoutOrder"]
       16 GETTABLEKS                       R9 R1 K8 ["ZIndex"]
       18 GETTABLEKS                       R10 R1 K9 ["Width"]
       20 GETTABLEKS                       R12 R1 K11 ["BackgroundTransparency"]
       22 ORK                              R11 R12 K10 [0]
       23 GETTABLEKS                       R12 R3 K12 ["dragging"]
       25 GETTABLEKS                       R13 R3 K13 ["hovering"]
       27 GETTABLEKS                       R14 R3 K14 ["CanvasPosition"]
       29 GETTABLEKS                       R15 R2 K15 ["scrollBarTheme"]
       31 GETTABLEKS                       R17 R7 K16 ["X"]
       33 GETTABLEKS                       R17 R17 K17 ["Offset"]
       35 LOADN                            R18 0
       36 JUMPIFNOTLT                      R18 R17 ; [+6]
       38 GETTABLEKS                       R16 R7 K16 ["X"]
       40 GETTABLEKS                       R16 R16 K17 ["Offset"]
       42 JUMPIF                           R16 ; [+1]
       43 LOADN                            R16 1
       44 JUMPIFLT                         R10 R16 ; [+2]
       46 LOADB                            R17 0 +1
       47 LOADB                            R17 1
       48 GETTABLEKS                       R19 R14 K16 ["X"]
       50 SUB                              R20 R16 R10
       51 FASTCALL2                        MATH_MIN R19 R20 ; [+3]
       53 GETIMPORT                        R18 K20 [math.min]
       55 CALL                             R18 2 1
       56 LOADNIL                          R19
       57 JUMPIFNOT                        R12 ; [+3]
       58 GETTABLEKS                       R19 R15 K21 ["pressedColor"]
       60 JUMP                             ; [+6]
       61 JUMPIFNOT                        R13 ; [+3]
       62 GETTABLEKS                       R19 R15 K22 ["hoverColor"]
       64 JUMP                             ; [+2]
       65 GETTABLEKS                       R19 R15 K23 ["controlColor"]
       67 GETUPVAL                         R20 0
       68 GETTABLEKS                       R20 R20 K24 ["createElement"]
       70 LOADK                            R21 K25 ["Frame"]
       71 DUPTABLE                         R22 K28 [{"Size", "Position", "LayoutOrder", "AnchorPoint", "BackgroundColor3", "BorderColor3", "BackgroundTransparency", "ZIndex"}]
       72 SETTABLEKS                       R4 R22 K3 ["Size"]
       74 SETTABLEKS                       R6 R22 K5 ["Position"]
       76 SETTABLEKS                       R8 R22 K7 ["LayoutOrder"]
       78 SETTABLEKS                       R5 R22 K4 ["AnchorPoint"]
       80 GETTABLEKS                       R23 R2 K29 ["backgroundColor"]
       82 SETTABLEKS                       R23 R22 K26 ["BackgroundColor3"]
       84 GETTABLEKS                       R23 R2 K30 ["borderColor"]
       86 SETTABLEKS                       R23 R22 K27 ["BorderColor3"]
       88 SETTABLEKS                       R11 R22 K11 ["BackgroundTransparency"]
       90 SETTABLEKS                       R9 R22 K8 ["ZIndex"]
       92 DUPTABLE                         R23 K33 [{"Canvas", "Footer"}]
       93 GETUPVAL                         R24 0
       94 GETTABLEKS                       R24 R24 K24 ["createElement"]
       96 LOADK                            R25 K34 ["ScrollingFrame"]
       97 NEWTABLE                         R26 16 0
       99 GETIMPORT                        R27 K37 [UDim2.new]
      101 LOADN                            R28 1
      102 LOADN                            R29 0
      103 LOADN                            R30 1
      104 GETUPVAL                         R32 1
      105 GETTABLEKS                       R32 R32 K38 ["SCROLL_BAR_SIZE"]
      107 MINUS                            R31 R32
      108 CALL                             R27 4 1
      109 SETTABLEKS                       R27 R26 K3 ["Size"]
      111 SETTABLEKS                       R7 R26 K6 ["CanvasSize"]
      113 SETTABLEKS                       R14 R26 K14 ["CanvasPosition"]
      115 LOADN                            R27 0
      116 SETTABLEKS                       R27 R26 K39 ["ScrollBarThickness"]
      118 LOADN                            R27 1
      119 SETTABLEKS                       R27 R26 K11 ["BackgroundTransparency"]
      121 GETUPVAL                         R27 0
      122 GETTABLEKS                       R27 R27 K40 ["Change"]
      124 GETTABLEKS                       R27 R27 K41 ["AbsoluteSize"]
      126 GETTABLEKS                       R28 R0 K42 ["onSizeChanged"]
      128 SETTABLE                         R28 R26 R27
      129 GETUPVAL                         R27 0
      130 GETTABLEKS                       R27 R27 K40 ["Change"]
      132 GETTABLEKS                       R27 R27 K14 ["CanvasPosition"]
      134 GETTABLEKS                       R28 R0 K43 ["onCanvasPositionChanged"]
      136 SETTABLE                         R28 R26 R27
      137 GETUPVAL                         R27 0
      138 GETTABLEKS                       R27 R27 K44 ["Event"]
      140 GETTABLEKS                       R27 R27 K45 ["MouseWheelForward"]
      142 GETTABLEKS                       R28 R0 K46 ["wheelForward"]
      144 SETTABLE                         R28 R26 R27
      145 GETUPVAL                         R27 0
      146 GETTABLEKS                       R27 R27 K44 ["Event"]
      148 GETTABLEKS                       R27 R27 K47 ["MouseWheelBackward"]
      150 GETTABLEKS                       R28 R0 K48 ["wheelBackward"]
      152 SETTABLE                         R28 R26 R27
      153 GETUPVAL                         R28 0
      154 GETTABLEKS                       R28 R28 K49 ["Children"]
      156 GETTABLE                         R27 R1 R28
      157 CALL                             R24 3 1
      158 SETTABLEKS                       R24 R23 K31 ["Canvas"]
      160 GETUPVAL                         R24 0
      161 GETTABLEKS                       R24 R24 K24 ["createElement"]
      163 LOADK                            R25 K25 ["Frame"]
      164 DUPTABLE                         R26 K50 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderColor3"}]
      165 GETIMPORT                        R27 K37 [UDim2.new]
      167 LOADN                            R28 1
      168 LOADN                            R29 0
      169 LOADN                            R30 0
      170 GETUPVAL                         R31 1
      171 GETTABLEKS                       R31 R31 K38 ["SCROLL_BAR_SIZE"]
      173 CALL                             R27 4 1
      174 SETTABLEKS                       R27 R26 K3 ["Size"]
      176 GETIMPORT                        R27 K37 [UDim2.new]
      178 LOADN                            R28 0
      179 LOADN                            R29 0
      180 LOADN                            R30 1
      181 LOADN                            R31 0
      182 CALL                             R27 4 1
      183 SETTABLEKS                       R27 R26 K5 ["Position"]
      185 GETIMPORT                        R27 K52 [Vector2.new]
      187 LOADN                            R28 0
      188 LOADN                            R29 1
      189 CALL                             R27 2 1
      190 SETTABLEKS                       R27 R26 K4 ["AnchorPoint"]
      192 GETTABLEKS                       R27 R15 K29 ["backgroundColor"]
      194 SETTABLEKS                       R27 R26 K26 ["BackgroundColor3"]
      196 GETTABLEKS                       R27 R15 K30 ["borderColor"]
      198 SETTABLEKS                       R27 R26 K27 ["BorderColor3"]
      200 DUPTABLE                         R27 K57 [{"ScrollArea", "LeftButton", "RightButton", "DragTarget"}]
      201 MOVE                             R28 R17
      202 JUMPIFNOT                        R28 ; [+123]
      203 GETUPVAL                         R28 0
      204 GETTABLEKS                       R28 R28 K24 ["createElement"]
      206 LOADK                            R29 K25 ["Frame"]
      207 NEWTABLE                         R30 8 0
      209 GETIMPORT                        R31 K37 [UDim2.new]
      211 LOADK                            R32 K58 [0.5]
      212 LOADN                            R33 0
      213 LOADN                            R34 0
      214 LOADN                            R35 0
      215 CALL                             R31 4 1
      216 SETTABLEKS                       R31 R30 K5 ["Position"]
      218 GETIMPORT                        R31 K52 [Vector2.new]
      220 LOADK                            R32 K58 [0.5]
      221 LOADN                            R33 0
      222 CALL                             R31 2 1
      223 SETTABLEKS                       R31 R30 K4 ["AnchorPoint"]
      225 GETIMPORT                        R31 K37 [UDim2.new]
      227 LOADN                            R32 1
      228 GETUPVAL                         R36 1
      229 GETTABLEKS                       R36 R36 K38 ["SCROLL_BAR_SIZE"]
      231 MINUS                            R35 R36
      232 MULK                             R34 R35 K59 [2]
      233 GETUPVAL                         R35 1
      234 GETTABLEKS                       R35 R35 K60 ["SCROLL_BAR_PADDING"]
      236 SUB                              R33 R34 R35
      237 LOADN                            R34 1
      238 LOADN                            R35 0
      239 CALL                             R31 4 1
      240 SETTABLEKS                       R31 R30 K3 ["Size"]
      242 LOADN                            R31 1
      243 SETTABLEKS                       R31 R30 K11 ["BackgroundTransparency"]
      245 GETUPVAL                         R31 0
      246 GETTABLEKS                       R31 R31 K40 ["Change"]
      248 GETTABLEKS                       R31 R31 K41 ["AbsoluteSize"]
      250 GETTABLEKS                       R32 R0 K61 ["recalculateExtents"]
      252 SETTABLE                         R32 R30 R31
      253 GETUPVAL                         R31 0
      254 GETTABLEKS                       R31 R31 K62 ["Ref"]
      256 GETTABLEKS                       R32 R0 K63 ["scrollArea"]
      258 SETTABLE                         R32 R30 R31
      259 GETUPVAL                         R31 0
      260 GETTABLEKS                       R31 R31 K44 ["Event"]
      262 GETTABLEKS                       R31 R31 K64 ["InputBegan"]
      264 NEWCLOSURE                       R32 P0
      265 CAPTURE                          VAL R12
      266 CAPTURE                          VAL R0
      267 SETTABLE                         R32 R30 R31
      268 DUPTABLE                         R31 K66 [{"ScrollBar"}]
      269 GETUPVAL                         R32 0
      270 GETTABLEKS                       R32 R32 K24 ["createElement"]
      272 LOADK                            R33 K25 ["Frame"]
      273 NEWTABLE                         R34 8 0
      275 GETIMPORT                        R35 K37 [UDim2.new]
      277 DIV                              R36 R10 R16
      278 LOADN                            R37 0
      279 LOADN                            R38 1
      280 LOADN                            R39 0
      281 CALL                             R35 4 1
      282 SETTABLEKS                       R35 R34 K3 ["Size"]
      284 GETIMPORT                        R35 K37 [UDim2.new]
      286 DIV                              R36 R18 R16
      287 LOADN                            R37 0
      288 LOADN                            R38 0
      289 LOADN                            R39 0
      290 CALL                             R35 4 1
      291 SETTABLEKS                       R35 R34 K5 ["Position"]
      293 LOADN                            R35 0
      294 SETTABLEKS                       R35 R34 K67 ["BorderSizePixel"]
      296 SETTABLEKS                       R19 R34 K26 ["BackgroundColor3"]
      298 GETUPVAL                         R35 0
      299 GETTABLEKS                       R35 R35 K44 ["Event"]
      301 GETTABLEKS                       R35 R35 K68 ["MouseEnter"]
      303 GETTABLEKS                       R36 R0 K69 ["mouseEnter"]
      305 SETTABLE                         R36 R34 R35
      306 GETUPVAL                         R35 0
      307 GETTABLEKS                       R35 R35 K44 ["Event"]
      309 GETTABLEKS                       R35 R35 K70 ["mouseLeave"]
      311 GETTABLEKS                       R36 R0 K70 ["mouseLeave"]
      313 SETTABLE                         R36 R34 R35
      314 GETUPVAL                         R35 0
      315 GETTABLEKS                       R35 R35 K44 ["Event"]
      317 GETTABLEKS                       R35 R35 K64 ["InputBegan"]
      319 GETTABLEKS                       R36 R0 K71 ["onDragStarted"]
      321 SETTABLE                         R36 R34 R35
      322 CALL                             R32 2 1
      323 SETTABLEKS                       R32 R31 K65 ["ScrollBar"]
      325 CALL                             R28 3 1
      326 SETTABLEKS                       R28 R27 K53 ["ScrollArea"]
      328 MOVE                             R28 R17
      329 JUMPIFNOT                        R28 ; [+10]
      330 GETUPVAL                         R28 0
      331 GETTABLEKS                       R28 R28 K24 ["createElement"]
      333 GETUPVAL                         R29 2
      334 DUPTABLE                         R30 K75 [{["Rotation"] = 270, ["OnActivated"]}]
      335 NEWCLOSURE                       R31 P1
      336 CAPTURE                          VAL R0
      337 SETTABLEKS                       R31 R30 K74 ["OnActivated"]
      339 CALL                             R28 2 1
      340 SETTABLEKS                       R28 R27 K54 ["LeftButton"]
      342 MOVE                             R28 R17
      343 JUMPIFNOT                        R28 ; [+26]
      344 GETUPVAL                         R28 0
      345 GETTABLEKS                       R28 R28 K24 ["createElement"]
      347 GETUPVAL                         R29 2
      348 DUPTABLE                         R30 K77 [{["Rotation"] = 90, ["Position"], ["AnchorPoint"], ["OnActivated"]}]
      349 GETIMPORT                        R31 K37 [UDim2.new]
      351 LOADN                            R32 1
      352 LOADN                            R33 0
      353 LOADN                            R34 0
      354 LOADN                            R35 0
      355 CALL                             R31 4 1
      356 SETTABLEKS                       R31 R30 K5 ["Position"]
      358 GETIMPORT                        R31 K52 [Vector2.new]
      360 LOADN                            R32 1
      361 LOADN                            R33 0
      362 CALL                             R31 2 1
      363 SETTABLEKS                       R31 R30 K4 ["AnchorPoint"]
      365 NEWCLOSURE                       R31 P2
      366 CAPTURE                          VAL R0
      367 SETTABLEKS                       R31 R30 K74 ["OnActivated"]
      369 CALL                             R28 2 1
      370 SETTABLEKS                       R28 R27 K55 ["RightButton"]
      372 MOVE                             R28 R12
      373 JUMPIFNOT                        R28 ; [+14]
      374 GETUPVAL                         R28 0
      375 GETTABLEKS                       R28 R28 K24 ["createElement"]
      377 GETUPVAL                         R29 3
      378 DUPTABLE                         R30 K80 [{"OnDragMoved", "OnDragEnded"}]
      379 GETTABLEKS                       R31 R0 K81 ["onDragMoved"]
      381 SETTABLEKS                       R31 R30 K78 ["OnDragMoved"]
      383 GETTABLEKS                       R31 R0 K82 ["onDragEnded"]
      385 SETTABLEKS                       R31 R30 K79 ["OnDragEnded"]
      387 CALL                             R28 2 1
      388 SETTABLEKS                       R28 R27 K56 ["DragTarget"]
      390 CALL                             R24 3 1
      391 SETTABLEKS                       R24 R23 K32 ["Footer"]
      393 CALL                             R20 3 -1
      394 RETURN                           R20 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K8 ["Src"]
       18 GETTABLEKS                       R3 R3 K9 ["Util"]
       20 GETTABLEKS                       R3 R3 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R4 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R4 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETTABLEKS                       R6 R3 K14 ["UI"]
       36 GETTABLEKS                       R6 R6 K15 ["DragListener"]
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R0 K8 ["Src"]
       42 GETTABLEKS                       R8 R8 K16 ["Components"]
       44 GETTABLEKS                       R8 R8 K17 ["ArrowButton"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R1 K18 ["PureComponent"]
       49 LOADK                            R10 K19 ["WideScrollingFrame"]
       50 NAMECALL                         R8 R8 K20 ["extend"]
       52 CALL                             R8 2 1
       53 DUPCLOSURE                       R9 K21 [PROTO_11]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R9 R8 K22 ["init"]
       57 DUPCLOSURE                       R9 K23 [PROTO_15]
       58 CAPTURE                          VAL R1
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R7
       61 CAPTURE                          VAL R6
       62 SETTABLEKS                       R9 R8 K24 ["render"]
       64 MOVE                             R9 R5
       65 DUPTABLE                         R10 K26 [{"Stylizer"}]
       66 GETTABLEKS                       R11 R4 K25 ["Stylizer"]
       68 SETTABLEKS                       R11 R10 K25 ["Stylizer"]
       70 CALL                             R9 1 1
       71 MOVE                             R10 R8
       72 CALL                             R9 1 1
       73 MOVE                             R8 R9
       74 RETURN                           R8 1
