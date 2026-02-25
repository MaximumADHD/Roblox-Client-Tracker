PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"dragging"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["dragging"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"dragging"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["dragging"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hovering"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["hovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"hovering"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["hovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K1 ["scrollArea"]
        6 GETTABLEKS                       R2 R3 K2 ["current"]
        8 GETTABLEKS                       R3 R2 K3 ["AbsolutePosition"]
       10 GETTABLEKS                       R4 R2 K4 ["AbsoluteSize"]
       12 GETTABLEKS                       R7 R0 K5 ["Position"]
       14 GETTABLEKS                       R6 R7 K6 ["Y"]
       16 GETTABLEKS                       R7 R3 K6 ["Y"]
       18 SUB                              R5 R6 R7
       19 GETTABLEKS                       R7 R4 K6 ["Y"]
       21 DIV                              R6 R5 R7
       22 GETTABLEKS                       R8 R1 K7 ["NumTracks"]
       24 MUL                              R7 R6 R8
       25 GETTABLEKS                       R8 R1 K8 ["SetTopTrackIndex"]
       27 ADDK                             R10 R7 K9 [0.5]
       28 FASTCALL1                        MATH_FLOOR R10 ; [+2]
       29 GETIMPORT                        R9 K12 [math.floor]
       31 CALL                             R9 1 1
       32 CALL                             R8 1 0
       33 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["scrollArea"]
        6 DUPTABLE                         R1 K4 [{"dragging", "hovering"}]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["dragging"]
       10 LOADB                            R2 0
       11 SETTABLEKS                       R2 R1 K3 ["hovering"]
       13 SETTABLEKS                       R1 R0 K5 ["state"]
       15 NEWCLOSURE                       R1 P0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K6 ["onDragStarted"]
       19 NEWCLOSURE                       R1 P1
       20 CAPTURE                          VAL R0
       21 SETTABLEKS                       R1 R0 K7 ["onDragEnded"]
       23 NEWCLOSURE                       R1 P2
       24 CAPTURE                          VAL R0
       25 SETTABLEKS                       R1 R0 K8 ["mouseEnter"]
       27 NEWCLOSURE                       R1 P3
       28 CAPTURE                          VAL R0
       29 SETTABLEKS                       R1 R0 K9 ["mouseLeave"]
       31 NEWCLOSURE                       R1 P4
       32 CAPTURE                          VAL R0
       33 SETTABLEKS                       R1 R0 K10 ["scroll"]
       35 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+6]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["scroll"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["OnWheelTick"]
        3 GETIMPORT                        R4 K3 [Vector2.new]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 CALL                             R4 2 1
        8 LOADK                            R5 K4 ["forward"]
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["OnWheelTick"]
        3 GETIMPORT                        R4 K3 [Vector2.new]
        5 MOVE                             R5 R1
        6 MOVE                             R6 R2
        7 CALL                             R4 2 1
        8 LOADK                            R5 K4 ["backward"]
        9 CALL                             R3 2 0
       10 RETURN                           R0 0

PROTO_9:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+5]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K4 ["onDragStarted"]
        9 CALL                             R2 0 0
       10 RETURN                           R0 0

PROTO_10:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetTopTrackIndex"]
        3 GETUPVAL                         R2 1
        4 SUBK                             R1 R2 K1 [1]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_11:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["SetTopTrackIndex"]
        3 GETUPVAL                         R2 1
        4 ADDK                             R1 R2 K1 [1]
        5 CALL                             R0 1 0
        6 RETURN                           R0 0

PROTO_12:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R0 K2 ["state"]
        6 GETTABLEKS                       R4 R1 K3 ["Size"]
        8 GETTABLEKS                       R5 R1 K4 ["AnchorPoint"]
       10 GETTABLEKS                       R6 R1 K5 ["Position"]
       12 GETTABLEKS                       R7 R1 K6 ["TopTrackIndex"]
       14 GETTABLEKS                       R8 R1 K7 ["NumTracks"]
       16 GETTABLEKS                       R9 R3 K8 ["dragging"]
       18 GETTABLEKS                       R10 R3 K9 ["hovering"]
       20 GETTABLEKS                       R11 R2 K10 ["scrollBarTheme"]
       22 MOVE                             R12 R7
       23 JUMPIFNOT                        R12 ; [+5]
       24 LOADN                            R13 1
       25 JUMPIFLT                         R13 R8 ; [+2]
       27 LOADB                            R12 0 +1
       28 LOADB                            R12 1
       29 LOADNIL                          R13
       30 JUMPIFNOT                        R9 ; [+3]
       31 GETTABLEKS                       R13 R11 K11 ["pressedColor"]
       33 JUMP                             ; [+6]
       34 JUMPIFNOT                        R10 ; [+3]
       35 GETTABLEKS                       R13 R11 K12 ["hoverColor"]
       37 JUMP                             ; [+2]
       38 GETTABLEKS                       R13 R11 K13 ["controlColor"]
       40 GETUPVAL                         R15 0
       41 GETTABLEKS                       R14 R15 K14 ["createElement"]
       43 LOADK                            R15 K15 ["Frame"]
       44 DUPTABLE                         R16 K18 [{"Size", "Position", "AnchorPoint", "BackgroundColor3", "BorderColor3"}]
       45 SETTABLEKS                       R4 R16 K3 ["Size"]
       47 SETTABLEKS                       R6 R16 K5 ["Position"]
       49 SETTABLEKS                       R5 R16 K4 ["AnchorPoint"]
       51 GETTABLEKS                       R17 R11 K19 ["backgroundColor"]
       53 SETTABLEKS                       R17 R16 K16 ["BackgroundColor3"]
       55 GETTABLEKS                       R17 R11 K20 ["borderColor"]
       57 SETTABLEKS                       R17 R16 K17 ["BorderColor3"]
       59 DUPTABLE                         R17 K25 [{"ScrollArea", "UpButton", "DownButton", "DragTarget"}]
       60 GETUPVAL                         R19 0
       61 GETTABLEKS                       R18 R19 K14 ["createElement"]
       63 LOADK                            R19 K15 ["Frame"]
       64 NEWTABLE                         R20 16 0
       66 GETIMPORT                        R21 K28 [UDim2.new]
       68 LOADN                            R22 0
       69 LOADN                            R23 0
       70 LOADK                            R24 K29 [0.5]
       71 LOADN                            R25 0
       72 CALL                             R21 4 1
       73 SETTABLEKS                       R21 R20 K5 ["Position"]
       75 GETIMPORT                        R21 K31 [Vector2.new]
       77 LOADN                            R22 0
       78 LOADK                            R23 K29 [0.5]
       79 CALL                             R21 2 1
       80 SETTABLEKS                       R21 R20 K4 ["AnchorPoint"]
       82 GETIMPORT                        R21 K28 [UDim2.new]
       84 LOADN                            R22 1
       85 LOADN                            R23 0
       86 LOADN                            R24 1
       87 GETUPVAL                         R29 1
       88 GETTABLEKS                       R28 R29 K33 ["SCROLL_BAR_SIZE"]
       90 MINUS                            R27 R28
       91 MULK                             R26 R27 K32 [2]
       92 GETUPVAL                         R28 1
       93 GETTABLEKS                       R27 R28 K34 ["SCROLL_BAR_PADDING"]
       95 SUB                              R25 R26 R27
       96 CALL                             R21 4 1
       97 SETTABLEKS                       R21 R20 K3 ["Size"]
       99 LOADN                            R21 1
      100 SETTABLEKS                       R21 R20 K35 ["BackgroundTransparency"]
      102 GETUPVAL                         R23 0
      103 GETTABLEKS                       R22 R23 K36 ["Change"]
      105 GETTABLEKS                       R21 R22 K37 ["AbsoluteSize"]
      107 GETTABLEKS                       R22 R0 K38 ["recalculateExtents"]
      109 SETTABLE                         R22 R20 R21
      110 GETUPVAL                         R22 0
      111 GETTABLEKS                       R21 R22 K39 ["Ref"]
      113 GETTABLEKS                       R22 R0 K40 ["scrollArea"]
      115 SETTABLE                         R22 R20 R21
      116 GETUPVAL                         R23 0
      117 GETTABLEKS                       R22 R23 K41 ["Event"]
      119 GETTABLEKS                       R21 R22 K42 ["InputBegan"]
      121 NEWCLOSURE                       R22 P0
      122 CAPTURE                          VAL R0
      123 SETTABLE                         R22 R20 R21
      124 GETUPVAL                         R23 0
      125 GETTABLEKS                       R22 R23 K41 ["Event"]
      127 GETTABLEKS                       R21 R22 K43 ["MouseWheelForward"]
      129 NEWCLOSURE                       R22 P1
      130 CAPTURE                          VAL R1
      131 SETTABLE                         R22 R20 R21
      132 GETUPVAL                         R23 0
      133 GETTABLEKS                       R22 R23 K41 ["Event"]
      135 GETTABLEKS                       R21 R22 K44 ["MouseWheelBackward"]
      137 NEWCLOSURE                       R22 P2
      138 CAPTURE                          VAL R1
      139 SETTABLE                         R22 R20 R21
      140 DUPTABLE                         R21 K46 [{"ScrollBar"}]
      141 MOVE                             R22 R12
      142 JUMPIFNOT                        R22 ; [+59]
      143 GETUPVAL                         R23 0
      144 GETTABLEKS                       R22 R23 K14 ["createElement"]
      146 LOADK                            R23 K15 ["Frame"]
      147 NEWTABLE                         R24 8 0
      149 GETIMPORT                        R25 K28 [UDim2.new]
      151 LOADN                            R26 1
      152 LOADN                            R27 0
      153 DIVRK                            R28 R47 K8 ["dragging"]
      154 LOADN                            R29 0
      155 CALL                             R25 4 1
      156 SETTABLEKS                       R25 R24 K3 ["Size"]
      158 GETIMPORT                        R25 K28 [UDim2.new]
      160 LOADN                            R26 0
      161 LOADN                            R27 0
      162 SUBK                             R29 R7 K47 [1]
      163 DIV                              R28 R29 R8
      164 LOADN                            R29 0
      165 CALL                             R25 4 1
      166 SETTABLEKS                       R25 R24 K5 ["Position"]
      168 LOADN                            R25 1
      169 SETTABLEKS                       R25 R24 K48 ["BorderSizePixel"]
      171 GETTABLEKS                       R25 R11 K20 ["borderColor"]
      173 SETTABLEKS                       R25 R24 K17 ["BorderColor3"]
      175 SETTABLEKS                       R13 R24 K16 ["BackgroundColor3"]
      177 GETUPVAL                         R27 0
      178 GETTABLEKS                       R26 R27 K41 ["Event"]
      180 GETTABLEKS                       R25 R26 K49 ["MouseEnter"]
      182 GETTABLEKS                       R26 R0 K50 ["mouseEnter"]
      184 SETTABLE                         R26 R24 R25
      185 GETUPVAL                         R27 0
      186 GETTABLEKS                       R26 R27 K41 ["Event"]
      188 GETTABLEKS                       R25 R26 K51 ["mouseLeave"]
      190 GETTABLEKS                       R26 R0 K51 ["mouseLeave"]
      192 SETTABLE                         R26 R24 R25
      193 GETUPVAL                         R27 0
      194 GETTABLEKS                       R26 R27 K41 ["Event"]
      196 GETTABLEKS                       R25 R26 K42 ["InputBegan"]
      198 NEWCLOSURE                       R26 P3
      199 CAPTURE                          VAL R0
      200 SETTABLE                         R26 R24 R25
      201 CALL                             R22 2 1
      202 SETTABLEKS                       R22 R21 K45 ["ScrollBar"]
      204 CALL                             R18 3 1
      205 SETTABLEKS                       R18 R17 K21 ["ScrollArea"]
      207 MOVE                             R18 R12
      208 JUMPIFNOT                        R18 ; [+14]
      209 GETUPVAL                         R19 0
      210 GETTABLEKS                       R18 R19 K14 ["createElement"]
      212 GETUPVAL                         R19 2
      213 DUPTABLE                         R20 K54 [{"Rotation", "OnActivated"}]
      214 LOADN                            R21 0
      215 SETTABLEKS                       R21 R20 K52 ["Rotation"]
      217 NEWCLOSURE                       R21 P4
      218 CAPTURE                          VAL R1
      219 CAPTURE                          VAL R7
      220 SETTABLEKS                       R21 R20 K53 ["OnActivated"]
      222 CALL                             R18 2 1
      223 SETTABLEKS                       R18 R17 K22 ["UpButton"]
      225 MOVE                             R18 R12
      226 JUMPIFNOT                        R18 ; [+30]
      227 GETUPVAL                         R19 0
      228 GETTABLEKS                       R18 R19 K14 ["createElement"]
      230 GETUPVAL                         R19 2
      231 DUPTABLE                         R20 K55 [{"Rotation", "Position", "AnchorPoint", "OnActivated"}]
      232 LOADN                            R21 180
      233 SETTABLEKS                       R21 R20 K52 ["Rotation"]
      235 GETIMPORT                        R21 K28 [UDim2.new]
      237 LOADN                            R22 0
      238 LOADN                            R23 0
      239 LOADN                            R24 1
      240 LOADN                            R25 0
      241 CALL                             R21 4 1
      242 SETTABLEKS                       R21 R20 K5 ["Position"]
      244 GETIMPORT                        R21 K31 [Vector2.new]
      246 LOADN                            R22 0
      247 LOADN                            R23 1
      248 CALL                             R21 2 1
      249 SETTABLEKS                       R21 R20 K4 ["AnchorPoint"]
      251 NEWCLOSURE                       R21 P5
      252 CAPTURE                          VAL R1
      253 CAPTURE                          VAL R7
      254 SETTABLEKS                       R21 R20 K53 ["OnActivated"]
      256 CALL                             R18 2 1
      257 SETTABLEKS                       R18 R17 K23 ["DownButton"]
      259 MOVE                             R18 R9
      260 JUMPIFNOT                        R18 ; [+14]
      261 GETUPVAL                         R19 0
      262 GETTABLEKS                       R18 R19 K14 ["createElement"]
      264 GETUPVAL                         R19 3
      265 DUPTABLE                         R20 K58 [{"OnDragMoved", "OnDragEnded"}]
      266 GETTABLEKS                       R21 R0 K59 ["scroll"]
      268 SETTABLEKS                       R21 R20 K56 ["OnDragMoved"]
      270 GETTABLEKS                       R21 R0 K60 ["onDragEnded"]
      272 SETTABLEKS                       R21 R20 K57 ["OnDragEnded"]
      274 CALL                             R18 2 1
      275 SETTABLEKS                       R18 R17 K24 ["DragTarget"]
      277 CALL                             R14 3 -1
      278 RETURN                           R14 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AnimationClipEditor"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Roact"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R5 R0 K8 ["Src"]
       18 GETTABLEKS                       R4 R5 K9 ["Util"]
       20 GETTABLEKS                       R3 R4 K10 ["Constants"]
       22 CALL                             R2 1 1
       23 GETIMPORT                        R3 K5 [require]
       25 GETTABLEKS                       R5 R0 K6 ["Packages"]
       27 GETTABLEKS                       R4 R5 K11 ["Framework"]
       29 CALL                             R3 1 1
       30 GETTABLEKS                       R4 R3 K12 ["ContextServices"]
       32 GETTABLEKS                       R5 R4 K13 ["withContext"]
       34 GETTABLEKS                       R7 R3 K14 ["UI"]
       36 GETTABLEKS                       R6 R7 K15 ["DragListener"]
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R10 R0 K8 ["Src"]
       42 GETTABLEKS                       R9 R10 K16 ["Components"]
       44 GETTABLEKS                       R8 R9 K17 ["ArrowButton"]
       46 CALL                             R7 1 1
       47 GETTABLEKS                       R8 R1 K18 ["PureComponent"]
       49 LOADK                            R10 K19 ["TrackScrollbar"]
       50 NAMECALL                         R8 R8 K20 ["extend"]
       52 CALL                             R8 2 1
       53 DUPCLOSURE                       R9 K21 [PROTO_5]
       54 CAPTURE                          VAL R1
       55 SETTABLEKS                       R9 R8 K22 ["init"]
       57 DUPCLOSURE                       R9 K23 [PROTO_12]
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
