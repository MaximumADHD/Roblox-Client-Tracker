PROTO_0:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["props"]
        3 GETTABLEKS                       R2 R2 K1 ["OnInputBegan"]
        5 MOVE                             R3 R0
        6 MOVE                             R4 R1
        7 CALL                             R2 2 0
        8 GETTABLEKS                       R2 R1 K2 ["UserInputType"]
       10 GETIMPORT                        R3 K5 [Enum.UserInputType.MouseButton1]
       12 JUMPIFNOTEQ                      R2 R3 ; [+9]
       14 GETUPVAL                         R2 0
       15 DUPTABLE                         R4 K7 [{"Dragging"}]
       16 LOADB                            R5 1
       17 SETTABLEKS                       R5 R4 K6 ["Dragging"]
       19 NAMECALL                         R2 R2 K8 ["setState"]
       21 CALL                             R2 2 0
       22 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["state"]
        3 GETTABLEKS                       R1 R1 K1 ["Dragging"]
        5 JUMPIFNOT                        R1 ; [+13]
        6 GETUPVAL                         R1 0
        7 GETTABLEKS                       R1 R1 K2 ["props"]
        9 GETTABLEKS                       R1 R1 K3 ["OnDragMoved"]
       11 JUMPIFNOT                        R1 ; [+7]
       12 GETUPVAL                         R1 0
       13 GETTABLEKS                       R1 R1 K2 ["props"]
       15 GETTABLEKS                       R1 R1 K3 ["OnDragMoved"]
       17 MOVE                             R2 R0
       18 CALL                             R1 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"Dragging"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["Dragging"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 DUPTABLE                         R1 K1 [{"Dragging"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["Dragging"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onDragBegan"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onDragMoved"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          VAL R0
       16 SETTABLEKS                       R1 R0 K5 ["onDragEnded"]
       18 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["createElement"]
        3 LOADK                            R4 K1 ["Frame"]
        4 DUPTABLE                         R5 K8 [{"Size", "BackgroundColor3", "AnchorPoint", "Position", "BorderSizePixel", "ZIndex"}]
        5 GETIMPORT                        R6 K11 [UDim2.new]
        7 LOADN                            R7 0
        8 LOADN                            R8 2
        9 LOADN                            R9 1
       10 LOADN                            R10 0
       11 CALL                             R6 4 1
       12 SETTABLEKS                       R6 R5 K2 ["Size"]
       14 GETTABLEKS                       R6 R1 K12 ["lineColor"]
       16 SETTABLEKS                       R6 R5 K3 ["BackgroundColor3"]
       18 GETIMPORT                        R6 K14 [Vector2.new]
       20 LOADK                            R7 K15 [0.5]
       21 LOADK                            R8 K15 [0.5]
       22 CALL                             R6 2 1
       23 SETTABLEKS                       R6 R5 K4 ["AnchorPoint"]
       25 GETIMPORT                        R6 K11 [UDim2.new]
       27 LOADN                            R7 0
       28 MOVE                             R8 R2
       29 LOADK                            R9 K15 [0.5]
       30 LOADN                            R10 0
       31 CALL                             R6 4 1
       32 SETTABLEKS                       R6 R5 K5 ["Position"]
       34 LOADN                            R6 0
       35 SETTABLEKS                       R6 R5 K6 ["BorderSizePixel"]
       37 LOADN                            R6 2
       38 SETTABLEKS                       R6 R5 K7 ["ZIndex"]
       40 CALL                             R3 2 -1
       41 RETURN                           R3 -1

PROTO_5:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R2 K1 ["StartTick"]
        4 FASTCALL2K                       MATH_MAX R4 K2 ; [+4]
        6 LOADK                            R5 K2 [0]
        7 GETIMPORT                        R3 K5 [math.max]
        9 CALL                             R3 2 1
       10 JUMPIFNOTEQKN                    R3 K2 [0] ; [+7]
       12 MOVE                             R6 R1
       13 LOADN                            R7 0
       14 NAMECALL                         R4 R0 K6 ["renderSeparator"]
       16 CALL                             R4 3 -1
       17 RETURN                           R4 -1
       18 LOADNIL                          R4
       19 RETURN                           R4 1

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R4 R2 K1 ["StartTick"]
        4 FASTCALL2K                       MATH_MAX R4 K2 ; [+4]
        6 LOADK                            R5 K2 [0]
        7 GETIMPORT                        R3 K5 [math.max]
        9 CALL                             R3 2 1
       10 GETTABLEKS                       R5 R2 K6 ["EndTick"]
       12 FASTCALL2K                       MATH_MAX R5 K2 ; [+4]
       14 LOADK                            R6 K2 [0]
       15 GETIMPORT                        R4 K5 [math.max]
       17 CALL                             R4 2 1
       18 GETTABLEKS                       R6 R2 K7 ["LastTick"]
       20 OR                               R5 R6 R4
       21 GETTABLEKS                       R6 R2 K8 ["Width"]
       23 SUB                              R8 R5 R3
       24 SUB                              R9 R4 R3
       25 DIV                              R7 R8 R9
       26 JUMPIFNOTLE                      R3 R5 ; [+13]
       28 JUMPIFNOTLE                      R5 R4 ; [+11]
       30 MOVE                             R10 R1
       31 MUL                              R12 R7 R6
       32 FASTCALL1                        MATH_FLOOR R12 ; [+2]
       33 GETIMPORT                        R11 K10 [math.floor]
       35 CALL                             R11 1 1
       36 NAMECALL                         R8 R0 K11 ["renderSeparator"]
       38 CALL                             R8 3 -1
       39 RETURN                           R8 -1
       40 LOADNIL                          R8
       41 RETURN                           R8 1

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R2 K2 ["timelineTheme"]
        6 GETTABLEKS                       R4 R0 K3 ["state"]
        8 GETTABLEKS                       R6 R1 K4 ["StartTick"]
       10 FASTCALL2K                       MATH_MAX R6 K5 ; [+4]
       12 LOADK                            R7 K5 [0]
       13 GETIMPORT                        R5 K8 [math.max]
       15 CALL                             R5 2 1
       16 GETTABLEKS                       R7 R1 K9 ["EndTick"]
       18 FASTCALL2K                       MATH_MAX R7 K5 ; [+4]
       20 LOADK                            R8 K5 [0]
       21 GETIMPORT                        R6 K8 [math.max]
       23 CALL                             R6 2 1
       24 GETTABLEKS                       R8 R1 K10 ["LastTick"]
       26 OR                               R7 R8 R6
       27 GETTABLEKS                       R9 R1 K11 ["MajorInterval"]
       29 LOADN                            R10 1
       30 LOADN                            R11 44
       31 FASTCALL                         MATH_CLAMP ; [+2]
       32 GETIMPORT                        R8 K13 [math.clamp]
       34 CALL                             R8 3 1
       35 GETTABLEKS                       R10 R1 K14 ["MinorInterval"]
       37 LOADN                            R11 1
       38 LOADN                            R12 44
       39 FASTCALL                         MATH_CLAMP ; [+2]
       40 GETIMPORT                        R9 K13 [math.clamp]
       42 CALL                             R9 3 1
       43 GETTABLEKS                       R10 R1 K15 ["Position"]
       45 GETTABLEKS                       R11 R1 K16 ["AnchorPoint"]
       47 GETTABLEKS                       R12 R1 K17 ["ZIndex"]
       49 GETTABLEKS                       R13 R1 K18 ["Height"]
       51 GETTABLEKS                       R14 R1 K19 ["Width"]
       53 GETTABLEKS                       R15 R1 K20 ["TickLabelSize"]
       55 GETTABLEKS                       R16 R1 K21 ["TickLabelPosition"]
       57 GETTABLEKS                       R17 R1 K22 ["TickHeightScale"]
       59 GETTABLEKS                       R18 R1 K23 ["SmallTickHeightScale"]
       61 GETTABLEKS                       R19 R1 K24 ["TimelineUnit"]
       63 GETTABLEKS                       R20 R1 K25 ["FrameRate"]
       65 JUMPIF                           R20 ; [+3]
       66 GETUPVAL                         R20 0
       67 GETTABLEKS                       R20 R20 K26 ["DEFAULT_FRAMERATE"]
       69 GETUPVAL                         R22 1
       70 GETTABLEKS                       R22 R22 K27 ["Children"]
       72 GETTABLE                         R21 R1 R22
       73 JUMPIF                           R21 ; [+2]
       74 NEWTABLE                         R21 0 0
       76 LOADN                            R22 0
       77 LOADN                            R23 0
       78 JUMPIFNOTLT                      R23 R5 ; [+6]
       80 MOD                              R23 R5 R9
       81 JUMPIFEQKN                       R23 K5 [0] ; [+3]
       83 MOD                              R23 R5 R9
       84 SUB                              R22 R9 R23
       85 ADD                              R25 R5 R22
       86 MOVE                             R23 R6
       87 MOVE                             R24 R9
       88 FORNPREP                         R23
       89 SUB                              R27 R25 R5
       90 SUB                              R28 R6 R5
       91 DIV                              R26 R27 R28
       92 MOD                              R28 R25 R8
       93 JUMPIFEQKN                       R28 K5 [0] ; [+2]
       95 LOADB                            R27 0 +1
       96 LOADB                            R27 1
       97 DIV                              R29 R25 R20
       98 FASTCALL1                        MATH_FLOOR R29 ; [+2]
       99 GETIMPORT                        R28 K29 [math.floor]
      101 CALL                             R28 1 1
      102 MUL                              R30 R28 R20
      103 SUB                              R29 R25 R30
      104 GETUPVAL                         R30 1
      105 GETTABLEKS                       R30 R30 K30 ["createElement"]
      107 GETUPVAL                         R31 2
      108 DUPTABLE                         R32 K39 [{"Time", "Highlight", "Height", "Position", "Font", "LabelSize", "LabelPosition", "TickHeightScale", "ShowTime", "PastEnd", "TimeInSeconds"}]
      109 GETUPVAL                         R33 3
      110 GETTABLEKS                       R33 R33 K40 ["formatTime"]
      112 GETUPVAL                         R36 0
      113 GETTABLEKS                       R36 R36 K41 ["TICK_FREQUENCY"]
      115 MUL                              R35 R25 R36
      116 DIV                              R34 R35 R20
      117 MOVE                             R35 R20
      118 MOVE                             R36 R19
      119 CALL                             R33 3 1
      120 SETTABLEKS                       R33 R32 K31 ["Time"]
      122 JUMPIFEQKN                       R29 K5 [0] ; [+2]
      124 LOADB                            R33 0 +1
      125 LOADB                            R33 1
      126 SETTABLEKS                       R33 R32 K32 ["Highlight"]
      128 SETTABLEKS                       R13 R32 K18 ["Height"]
      130 GETIMPORT                        R33 K44 [UDim2.new]
      132 LOADN                            R34 0
      133 MUL                              R36 R26 R14
      134 FASTCALL1                        MATH_FLOOR R36 ; [+2]
      135 GETIMPORT                        R35 K29 [math.floor]
      137 CALL                             R35 1 1
      138 LOADN                            R36 0
      139 LOADN                            R37 0
      140 CALL                             R33 4 1
      141 SETTABLEKS                       R33 R32 K15 ["Position"]
      143 GETTABLEKS                       R33 R2 K45 ["font"]
      145 SETTABLEKS                       R33 R32 K33 ["Font"]
      147 SETTABLEKS                       R15 R32 K34 ["LabelSize"]
      149 SETTABLEKS                       R16 R32 K35 ["LabelPosition"]
      151 JUMPIFNOT                        R27 ; [+2]
      152 MOVE                             R33 R17
      153 JUMPIF                           R33 ; [+1]
      154 MOVE                             R33 R18
      155 SETTABLEKS                       R33 R32 K22 ["TickHeightScale"]
      157 SETTABLEKS                       R27 R32 K36 ["ShowTime"]
      159 JUMPIFLT                         R7 R25 ; [+2]
      161 LOADB                            R33 0 +1
      162 LOADB                            R33 1
      163 SETTABLEKS                       R33 R32 K37 ["PastEnd"]
      165 GETUPVAL                         R33 3
      166 GETTABLEKS                       R33 R33 K46 ["formatTimeInSeconds"]
      168 MOVE                             R34 R29
      169 MOVE                             R35 R20
      170 CALL                             R33 2 1
      171 SETTABLEKS                       R33 R32 K38 ["TimeInSeconds"]
      173 CALL                             R30 2 1
      174 SETTABLE                         R30 R21 R25
      175 FORNLOOP                         R23
      176 GETTABLEKS                       R23 R4 K47 ["Dragging"]
      178 JUMPIFNOT                        R23 ; [+14]
      179 GETUPVAL                         R23 1
      180 GETTABLEKS                       R23 R23 K30 ["createElement"]
      182 GETUPVAL                         R24 4
      183 DUPTABLE                         R25 K50 [{"OnDragMoved", "OnDragEnded"}]
      184 GETTABLEKS                       R26 R0 K51 ["onDragMoved"]
      186 SETTABLEKS                       R26 R25 K48 ["OnDragMoved"]
      188 GETTABLEKS                       R26 R0 K52 ["onDragEnded"]
      190 SETTABLEKS                       R26 R25 K49 ["OnDragEnded"]
      192 CALL                             R23 2 1
      193 SETTABLEKS                       R23 R21 K53 ["DragTarget"]
      195 LOADNIL                          R23
      196 JUMPIFNOT                        R7 ; [+12]
      197 LOADN                            R25 0
      198 SUB                              R28 R7 R5
      199 MUL                              R27 R14 R28
      200 SUB                              R28 R6 R5
      201 DIV                              R26 R27 R28
      202 FASTCALL2                        MATH_MAX R25 R26 ; [+3]
      204 GETIMPORT                        R24 K8 [math.max]
      206 CALL                             R24 2 1
      207 MOVE                             R23 R24
      208 JUMP                             ; [+1]
      209 MOVE                             R23 R14
      210 GETUPVAL                         R24 1
      211 GETTABLEKS                       R24 R24 K30 ["createElement"]
      213 LOADK                            R25 K54 ["Frame"]
      214 NEWTABLE                         R26 8 0
      216 SETTABLEKS                       R10 R26 K15 ["Position"]
      218 SETTABLEKS                       R11 R26 K16 ["AnchorPoint"]
      220 GETIMPORT                        R27 K44 [UDim2.new]
      222 LOADN                            R28 0
      223 MOVE                             R29 R14
      224 LOADN                            R30 0
      225 MOVE                             R31 R13
      226 CALL                             R27 4 1
      227 SETTABLEKS                       R27 R26 K55 ["Size"]
      229 LOADN                            R27 1
      230 SETTABLEKS                       R27 R26 K56 ["BackgroundTransparency"]
      232 SETTABLEKS                       R12 R26 K17 ["ZIndex"]
      234 GETUPVAL                         R27 1
      235 GETTABLEKS                       R27 R27 K57 ["Event"]
      237 GETTABLEKS                       R27 R27 K58 ["InputBegan"]
      239 GETTABLEKS                       R28 R0 K59 ["onDragBegan"]
      241 SETTABLE                         R28 R26 R27
      242 DUPTABLE                         R27 K62 [{"Ticks", "FirstTick", "LastTick"}]
      243 GETUPVAL                         R28 1
      244 GETTABLEKS                       R28 R28 K30 ["createElement"]
      246 LOADK                            R29 K54 ["Frame"]
      247 DUPTABLE                         R30 K65 [{"Size", "BackgroundColor3", "BorderSizePixel"}]
      248 GETIMPORT                        R31 K44 [UDim2.new]
      250 LOADN                            R32 0
      251 FASTCALL2                        MATH_MIN R23 R14 ; [+5]
      253 MOVE                             R34 R23
      254 MOVE                             R35 R14
      255 GETIMPORT                        R33 K67 [math.min]
      257 CALL                             R33 2 1
      258 LOADN                            R34 1
      259 LOADN                            R35 0
      260 CALL                             R31 4 1
      261 SETTABLEKS                       R31 R30 K55 ["Size"]
      263 GETTABLEKS                       R31 R3 K68 ["barColor"]
      265 SETTABLEKS                       R31 R30 K63 ["BackgroundColor3"]
      267 LOADN                            R31 0
      268 SETTABLEKS                       R31 R30 K64 ["BorderSizePixel"]
      270 MOVE                             R31 R21
      271 CALL                             R28 3 1
      272 SETTABLEKS                       R28 R27 K60 ["Ticks"]
      274 MOVE                             R30 R3
      275 NAMECALL                         R28 R0 K69 ["renderFirstTick"]
      277 CALL                             R28 2 1
      278 SETTABLEKS                       R28 R27 K61 ["FirstTick"]
      280 MOVE                             R30 R3
      281 NAMECALL                         R28 R0 K70 ["renderLastTick"]
      283 CALL                             R28 2 1
      284 SETTABLEKS                       R28 R27 K10 ["LastTick"]
      286 CALL                             R24 3 -1
      287 RETURN                           R24 -1

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
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["UI"]
       23 GETTABLEKS                       R3 R3 K10 ["DragListener"]
       25 GETTABLEKS                       R4 R2 K11 ["ContextServices"]
       27 GETTABLEKS                       R5 R4 K12 ["withContext"]
       29 GETIMPORT                        R6 K5 [require]
       31 GETTABLEKS                       R7 R0 K13 ["Src"]
       33 GETTABLEKS                       R7 R7 K14 ["Util"]
       35 GETTABLEKS                       R7 R7 K15 ["Constants"]
       37 CALL                             R6 1 1
       38 GETIMPORT                        R7 K5 [require]
       40 GETTABLEKS                       R8 R0 K13 ["Src"]
       42 GETTABLEKS                       R8 R8 K16 ["Components"]
       44 GETTABLEKS                       R8 R8 K17 ["Timeline"]
       46 GETTABLEKS                       R8 R8 K18 ["TimelineTick"]
       48 CALL                             R7 1 1
       49 GETIMPORT                        R8 K5 [require]
       51 GETTABLEKS                       R9 R0 K13 ["Src"]
       53 GETTABLEKS                       R9 R9 K14 ["Util"]
       55 GETTABLEKS                       R9 R9 K19 ["StringUtils"]
       57 CALL                             R8 1 1
       58 GETTABLEKS                       R9 R1 K20 ["PureComponent"]
       60 LOADK                            R11 K17 ["Timeline"]
       61 NAMECALL                         R9 R9 K21 ["extend"]
       63 CALL                             R9 2 1
       64 DUPCLOSURE                       R10 K22 [PROTO_3]
       65 SETTABLEKS                       R10 R9 K23 ["init"]
       67 DUPCLOSURE                       R10 K24 [PROTO_4]
       68 CAPTURE                          VAL R1
       69 SETTABLEKS                       R10 R9 K25 ["renderSeparator"]
       71 DUPCLOSURE                       R10 K26 [PROTO_5]
       72 SETTABLEKS                       R10 R9 K27 ["renderFirstTick"]
       74 DUPCLOSURE                       R10 K28 [PROTO_6]
       75 SETTABLEKS                       R10 R9 K29 ["renderLastTick"]
       77 DUPCLOSURE                       R10 K30 [PROTO_7]
       78 CAPTURE                          VAL R6
       79 CAPTURE                          VAL R1
       80 CAPTURE                          VAL R7
       81 CAPTURE                          VAL R8
       82 CAPTURE                          VAL R3
       83 SETTABLEKS                       R10 R9 K31 ["render"]
       85 MOVE                             R10 R5
       86 DUPTABLE                         R11 K33 [{"Stylizer"}]
       87 GETTABLEKS                       R12 R4 K32 ["Stylizer"]
       89 SETTABLEKS                       R12 R11 K32 ["Stylizer"]
       91 CALL                             R10 1 1
       92 MOVE                             R11 R9
       93 CALL                             R10 1 1
       94 MOVE                             R9 R10
       95 RETURN                           R9 1
