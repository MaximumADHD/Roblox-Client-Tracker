PROTO_0:
        0 GETIMPORT                        R0 K2 [Vector2.new]
        2 GETUPVAL                         R4 0
        3 GETTABLEKS                       R3 R4 K3 ["props"]
        5 GETTABLEKS                       R2 R3 K4 ["MaxX"]
        7 GETUPVAL                         R5 0
        8 GETTABLEKS                       R4 R5 K3 ["props"]
       10 GETTABLEKS                       R3 R4 K5 ["MinX"]
       12 SUB                              R1 R2 R3
       13 GETUPVAL                         R5 0
       14 GETTABLEKS                       R4 R5 K3 ["props"]
       16 GETTABLEKS                       R3 R4 K6 ["MaxY"]
       18 GETUPVAL                         R6 0
       19 GETTABLEKS                       R5 R6 K3 ["props"]
       21 GETTABLEKS                       R4 R5 K7 ["MinY"]
       23 SUB                              R2 R3 R4
       24 CALL                             R0 2 1
       25 RETURN                           R0 1

PROTO_1:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["props"]
        3 GETTABLEKS                       R1 R2 K1 ["MinX"]
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K0 ["props"]
        8 GETTABLEKS                       R2 R3 K2 ["MaxX"]
       10 GETUPVAL                         R5 0
       11 GETTABLEKS                       R4 R5 K0 ["props"]
       13 GETTABLEKS                       R3 R4 K3 ["MinY"]
       15 GETUPVAL                         R6 0
       16 GETTABLEKS                       R5 R6 K0 ["props"]
       18 GETTABLEKS                       R4 R5 K4 ["MaxY"]
       20 GETIMPORT                        R5 K7 [Vector2.new]
       22 GETTABLEKS                       R7 R0 K8 ["X"]
       24 FASTCALL3                        MATH_CLAMP R7 R1 R2
       26 MOVE                             R8 R1
       27 MOVE                             R9 R2
       28 GETIMPORT                        R6 K11 [math.clamp]
       30 CALL                             R6 3 1
       31 GETTABLEKS                       R8 R0 K12 ["Y"]
       33 FASTCALL3                        MATH_CLAMP R8 R3 R4
       35 MOVE                             R9 R3
       36 MOVE                             R10 R4
       37 GETIMPORT                        R7 K11 [math.clamp]
       39 CALL                             R7 3 1
       40 CALL                             R5 2 -1
       41 RETURN                           R5 -1

PROTO_2:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["dragBoxFrameRef"]
        3 NAMECALL                         R1 R1 K1 ["getValue"]
        5 CALL                             R1 1 1
        6 LOADN                            R2 0
        7 LOADN                            R3 0
        8 GETIMPORT                        R4 K4 [Vector2.new]
       10 LOADN                            R5 0
       11 LOADN                            R6 0
       12 CALL                             R4 2 1
       13 GETTABLEKS                       R7 R0 K5 ["Position"]
       15 GETTABLEKS                       R6 R7 K6 ["X"]
       17 GETTABLEKS                       R8 R1 K7 ["AbsolutePosition"]
       19 GETTABLEKS                       R7 R8 K6 ["X"]
       21 SUB                              R5 R6 R7
       22 GETTABLEKS                       R8 R1 K8 ["AbsoluteSize"]
       24 GETTABLEKS                       R7 R8 K6 ["X"]
       26 DIV                              R6 R5 R7
       27 LOADN                            R9 0
       28 LOADN                            R10 1
       29 FASTCALL3                        MATH_CLAMP R6 R9 R10
       31 MOVE                             R8 R6
       32 GETIMPORT                        R7 K11 [math.clamp]
       34 CALL                             R7 3 1
       35 MOVE                             R6 R7
       36 GETUPVAL                         R9 0
       37 GETTABLEKS                       R8 R9 K12 ["props"]
       39 GETTABLEKS                       R7 R8 K13 ["MinX"]
       41 GETUPVAL                         R11 0
       42 GETTABLEKS                       R10 R11 K14 ["getTotalRange"]
       44 CALL                             R10 0 1
       45 GETTABLEKS                       R9 R10 K6 ["X"]
       47 MUL                              R8 R6 R9
       48 ADD                              R2 R7 R8
       49 GETTABLEKS                       R9 R0 K5 ["Position"]
       51 GETTABLEKS                       R8 R9 K15 ["Y"]
       53 GETTABLEKS                       R10 R1 K7 ["AbsolutePosition"]
       55 GETTABLEKS                       R9 R10 K15 ["Y"]
       57 SUB                              R7 R8 R9
       58 GETTABLEKS                       R10 R1 K8 ["AbsoluteSize"]
       60 GETTABLEKS                       R9 R10 K15 ["Y"]
       62 DIV                              R8 R7 R9
       63 LOADN                            R11 0
       64 LOADN                            R12 1
       65 FASTCALL3                        MATH_CLAMP R8 R11 R12
       67 MOVE                             R10 R8
       68 GETIMPORT                        R9 K11 [math.clamp]
       70 CALL                             R9 3 1
       71 MOVE                             R8 R9
       72 GETUPVAL                         R11 0
       73 GETTABLEKS                       R10 R11 K12 ["props"]
       75 GETTABLEKS                       R9 R10 K16 ["MinY"]
       77 GETUPVAL                         R13 0
       78 GETTABLEKS                       R12 R13 K14 ["getTotalRange"]
       80 CALL                             R12 0 1
       81 GETTABLEKS                       R11 R12 K15 ["Y"]
       83 MUL                              R10 R8 R11
       84 ADD                              R3 R9 R10
       85 GETIMPORT                        R9 K4 [Vector2.new]
       87 MOVE                             R10 R2
       88 MOVE                             R11 R3
       89 CALL                             R9 2 1
       90 MOVE                             R4 R9
       91 GETUPVAL                         R10 0
       92 GETTABLEKS                       R9 R10 K17 ["getClampedValue"]
       94 MOVE                             R10 R4
       95 CALL                             R9 1 -1
       96 RETURN                           R9 -1

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["getMouseClickValue"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 GETUPVAL                         R4 0
        6 GETTABLEKS                       R3 R4 K1 ["props"]
        8 GETTABLEKS                       R2 R3 K2 ["OnValueChanged"]
       10 MOVE                             R3 R1
       11 CALL                             R2 1 0
       12 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K1 ["Disabled"]
        8 JUMPIFNOT                        R3 ; [+1]
        9 RETURN                           R0 0
       10 JUMPIFNOT                        R2 ; [+25]
       11 GETUPVAL                         R3 1
       12 DUPTABLE                         R5 K3 [{"pressed"}]
       13 LOADB                            R6 1
       14 SETTABLEKS                       R6 R5 K2 ["pressed"]
       16 NAMECALL                         R3 R3 K4 ["setState"]
       18 CALL                             R3 2 0
       19 GETUPVAL                         R5 1
       20 GETTABLEKS                       R4 R5 K0 ["props"]
       22 GETTABLEKS                       R3 R4 K5 ["OnChangeBegan"]
       24 JUMPIFNOT                        R3 ; [+6]
       25 GETUPVAL                         R5 1
       26 GETTABLEKS                       R4 R5 K0 ["props"]
       28 GETTABLEKS                       R3 R4 K5 ["OnChangeBegan"]
       30 CALL                             R3 0 0
       31 GETUPVAL                         R4 1
       32 GETTABLEKS                       R3 R4 K6 ["setValuesFromInput"]
       34 MOVE                             R4 R1
       35 CALL                             R3 1 0
       36 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETTABLEKS                       R2 R3 K1 ["Disabled"]
        5 JUMPIFNOT                        R2 ; [+1]
        6 RETURN                           R0 0
        7 GETUPVAL                         R4 0
        8 GETTABLEKS                       R3 R4 K2 ["state"]
       10 GETTABLEKS                       R2 R3 K3 ["pressed"]
       12 JUMPIFNOT                        R2 ; [+11]
       13 GETTABLEKS                       R2 R1 K4 ["UserInputType"]
       15 GETIMPORT                        R3 K7 [Enum.UserInputType.MouseMovement]
       17 JUMPIFNOTEQ                      R2 R3 ; [+6]
       19 GETUPVAL                         R3 0
       20 GETTABLEKS                       R2 R3 K8 ["setValuesFromInput"]
       22 MOVE                             R3 R1
       23 CALL                             R2 1 0
       24 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 GETUPVAL                         R5 1
        4 GETTABLEKS                       R4 R5 K0 ["props"]
        6 GETTABLEKS                       R3 R4 K1 ["Disabled"]
        8 JUMPIF                           R3 ; [+9]
        9 JUMPIFNOT                        R2 ; [+8]
       10 GETUPVAL                         R3 1
       11 DUPTABLE                         R5 K3 [{"pressed"}]
       12 LOADB                            R6 0
       13 SETTABLEKS                       R6 R5 K2 ["pressed"]
       15 NAMECALL                         R3 R3 K4 ["setState"]
       17 CALL                             R3 2 0
       18 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["createRef"]
        3 CALL                             R1 0 1
        4 SETTABLEKS                       R1 R0 K1 ["dragBoxFrameRef"]
        6 DUPTABLE                         R1 K3 [{"pressed"}]
        7 LOADB                            R2 0
        8 SETTABLEKS                       R2 R1 K2 ["pressed"]
       10 SETTABLEKS                       R1 R0 K4 ["state"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["getTotalRange"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K6 ["getClampedValue"]
       20 NEWCLOSURE                       R1 P2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K7 ["getMouseClickValue"]
       24 NEWCLOSURE                       R1 P3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K8 ["setValuesFromInput"]
       28 NEWCLOSURE                       R1 P4
       29 CAPTURE                          UPVAL U1
       30 CAPTURE                          VAL R0
       31 SETTABLEKS                       R1 R0 K9 ["onInputBegan"]
       33 NEWCLOSURE                       R1 P5
       34 CAPTURE                          VAL R0
       35 SETTABLEKS                       R1 R0 K10 ["onInputChanged"]
       37 NEWCLOSURE                       R1 P6
       38 CAPTURE                          UPVAL U1
       39 CAPTURE                          VAL R0
       40 SETTABLEKS                       R1 R0 K11 ["onInputEnded"]
       42 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R4 R1 K3 ["Tooltip"]
        6 ORK                              R3 R4 K2 []
        7 LOADB                            R4 0
        8 JUMPIFEQKNIL                     R3 ; [+5]
       10 JUMPIFNOTEQKS                    R3 K4 [""] ; [+2]
       12 LOADB                            R4 0 +1
       13 LOADB                            R4 1
       14 GETTABLEKS                       R5 R1 K5 ["AnchorPoint"]
       16 GETTABLEKS                       R6 R1 K6 ["Disabled"]
       18 GETTABLEKS                       R7 R1 K7 ["MinX"]
       20 GETTABLEKS                       R8 R1 K8 ["MinY"]
       22 GETTABLEKS                       R9 R1 K9 ["LayoutOrder"]
       24 GETTABLEKS                       R10 R1 K10 ["Position"]
       26 GETTABLEKS                       R11 R1 K11 ["Value"]
       28 GETUPVAL                         R12 0
       29 GETTABLEKS                       R13 R1 K12 ["Size"]
       31 GETTABLEKS                       R14 R2 K12 ["Size"]
       33 GETIMPORT                        R15 K15 [UDim2.new]
       35 LOADN                            R16 1
       36 LOADN                            R17 0
       37 LOADN                            R18 1
       38 LOADN                            R19 0
       39 CALL                             R15 4 -1
       40 CALL                             R12 -1 1
       41 GETTABLEKS                       R13 R1 K16 ["HorizontalDragTolerance"]
       43 GETTABLEKS                       R14 R1 K17 ["VerticalDragTolerance"]
       45 GETTABLEKS                       R15 R2 K18 ["BackgroundStyle"]
       47 GETTABLEKS                       R16 R2 K19 ["OutlineStyle"]
       49 GETTABLEKS                       R17 R2 K20 ["KnobSize"]
       51 JUMPIF                           R17 ; [+3]
       52 GETIMPORT                        R17 K22 [Vector2.new]
       54 CALL                             R17 0 1
       55 GETTABLEKS                       R18 R2 K23 ["KnobBackground"]
       57 GETTABLEKS                       R19 R2 K24 ["KnobBackgroundStyle"]
       59 JUMPIF                           R19 ; [+2]
       60 NEWTABLE                         R19 0 0
       62 GETTABLEKS                       R20 R2 K24 ["KnobBackgroundStyle"]
       64 JUMPIF                           R20 ; [+2]
       65 NEWTABLE                         R20 0 0
       67 GETTABLEKS                       R23 R11 K25 ["X"]
       69 SUB                              R22 R23 R7
       70 GETTABLEKS                       R24 R0 K26 ["getTotalRange"]
       72 CALL                             R24 0 1
       73 GETTABLEKS                       R23 R24 K25 ["X"]
       75 DIV                              R21 R22 R23
       76 GETTABLEKS                       R24 R11 K27 ["Y"]
       78 SUB                              R23 R24 R8
       79 GETTABLEKS                       R25 R0 K26 ["getTotalRange"]
       81 CALL                             R25 0 1
       82 GETTABLEKS                       R24 R25 K27 ["Y"]
       84 DIV                              R22 R23 R24
       85 LOADNIL                          R23
       86 JUMPIFNOT                        R6 ; [+3]
       87 GETUPVAL                         R24 1
       88 GETTABLEKS                       R23 R24 K6 ["Disabled"]
       90 GETTABLEKS                       R24 R1 K28 ["OnRightClick"]
       92 GETTABLEKS                       R25 R2 K29 ["ForegroundStyle"]
       94 LOADB                            R26 0
       95 JUMPIFEQKNIL                     R25 ; [+8]
       97 LOADB                            R26 1
       98 JUMPIFNOTEQKN                    R21 K30 [0.5] ; [+5]
      100 JUMPIFNOTEQKN                    R22 K30 [0.5] ; [+2]
      102 LOADB                            R26 0 +1
      103 LOADB                            R26 1
      104 GETUPVAL                         R28 2
      105 GETTABLEKS                       R27 R28 K31 ["createElement"]
      107 LOADK                            R28 K32 ["Frame"]
      108 NEWTABLE                         R29 8 0
      110 SETTABLEKS                       R5 R29 K5 ["AnchorPoint"]
      112 LOADN                            R30 1
      113 SETTABLEKS                       R30 R29 K33 ["BackgroundTransparency"]
      115 SETTABLEKS                       R9 R29 K9 ["LayoutOrder"]
      117 SETTABLEKS                       R10 R29 K10 ["Position"]
      119 GETIMPORT                        R30 K15 [UDim2.new]
      121 GETIMPORT                        R31 K35 [UDim.new]
      123 GETTABLEKS                       R33 R12 K25 ["X"]
      125 GETTABLEKS                       R32 R33 K36 ["Scale"]
      127 GETTABLEKS                       R35 R12 K25 ["X"]
      129 GETTABLEKS                       R34 R35 K37 ["Offset"]
      131 GETTABLEKS                       R35 R17 K25 ["X"]
      133 SUB                              R33 R34 R35
      134 CALL                             R31 2 1
      135 GETTABLEKS                       R32 R12 K27 ["Y"]
      137 CALL                             R30 2 1
      138 SETTABLEKS                       R30 R29 K12 ["Size"]
      140 GETUPVAL                         R31 2
      141 GETTABLEKS                       R30 R31 K38 ["Ref"]
      143 GETTABLEKS                       R31 R0 K39 ["dragBoxFrameRef"]
      145 SETTABLE                         R31 R29 R30
      146 DUPTABLE                         R30 K45 [{"Border", "Background", "Knob", "Tooltip", "ClickHandler", "HoverArea"}]
      147 GETUPVAL                         R32 2
      148 GETTABLEKS                       R31 R32 K31 ["createElement"]
      150 LOADK                            R32 K46 ["UIStroke"]
      151 DUPTABLE                         R33 K49 [{"ApplyStrokeMode", "Color"}]
      152 GETIMPORT                        R34 K51 [Enum.ApplyStrokeMode.Border]
      154 SETTABLEKS                       R34 R33 K47 ["ApplyStrokeMode"]
      156 GETTABLEKS                       R34 R16 K48 ["Color"]
      158 SETTABLEKS                       R34 R33 K48 ["Color"]
      160 CALL                             R31 2 1
      161 SETTABLEKS                       R31 R30 K40 ["Border"]
      163 GETUPVAL                         R32 2
      164 GETTABLEKS                       R31 R32 K31 ["createElement"]
      166 GETUPVAL                         R32 3
      167 DUPTABLE                         R33 K54 [{"Style", "StyleModifier", "Size"}]
      168 SETTABLEKS                       R15 R33 K52 ["Style"]
      170 SETTABLEKS                       R23 R33 K53 ["StyleModifier"]
      172 GETIMPORT                        R34 K15 [UDim2.new]
      174 LOADN                            R35 1
      175 LOADN                            R36 0
      176 LOADN                            R37 1
      177 LOADN                            R38 0
      178 CALL                             R34 4 1
      179 SETTABLEKS                       R34 R33 K12 ["Size"]
      181 CALL                             R31 2 1
      182 SETTABLEKS                       R31 R30 K41 ["Background"]
      184 GETUPVAL                         R32 2
      185 GETTABLEKS                       R31 R32 K31 ["createElement"]
      187 GETUPVAL                         R32 4
      188 DUPTABLE                         R33 K58 [{"Background", "BackgroundStyle", "BackgroundStyleModifier", "Position", "Size", "ZIndex", "ImageColor3"}]
      189 SETTABLEKS                       R18 R33 K41 ["Background"]
      191 SETTABLEKS                       R19 R33 K18 ["BackgroundStyle"]
      193 SETTABLEKS                       R23 R33 K55 ["BackgroundStyleModifier"]
      195 GETIMPORT                        R34 K15 [UDim2.new]
      197 MOVE                             R35 R21
      198 LOADN                            R36 0
      199 MOVE                             R37 R22
      200 LOADN                            R38 0
      201 CALL                             R34 4 1
      202 SETTABLEKS                       R34 R33 K10 ["Position"]
      204 GETIMPORT                        R34 K15 [UDim2.new]
      206 LOADN                            R35 0
      207 GETTABLEKS                       R36 R17 K25 ["X"]
      209 LOADN                            R37 0
      210 GETTABLEKS                       R38 R17 K27 ["Y"]
      212 CALL                             R34 4 1
      213 SETTABLEKS                       R34 R33 K12 ["Size"]
      215 LOADN                            R34 3
      216 SETTABLEKS                       R34 R33 K56 ["ZIndex"]
      218 JUMPIFNOT                        R26 ; [+3]
      219 GETTABLEKS                       R34 R25 K48 ["Color"]
      221 JUMP                             ; [+2]
      222 GETTABLEKS                       R34 R20 K48 ["Color"]
      224 SETTABLEKS                       R34 R33 K57 ["ImageColor3"]
      226 CALL                             R31 2 1
      227 SETTABLEKS                       R31 R30 K42 ["Knob"]
      229 MOVE                             R31 R4
      230 JUMPIFNOT                        R31 ; [+18]
      231 GETUPVAL                         R32 2
      232 GETTABLEKS                       R31 R32 K31 ["createElement"]
      234 GETUPVAL                         R32 5
      235 DUPTABLE                         R33 K62 [{"MaxWidth", "Text", "TextXAlignment", "ZIndex"}]
      236 LOADN                            R34 232
      237 SETTABLEKS                       R34 R33 K59 ["MaxWidth"]
      239 SETTABLEKS                       R3 R33 K60 ["Text"]
      241 GETIMPORT                        R34 K64 [Enum.TextXAlignment.Left]
      243 SETTABLEKS                       R34 R33 K61 ["TextXAlignment"]
      245 LOADN                            R34 5
      246 SETTABLEKS                       R34 R33 K56 ["ZIndex"]
      248 CALL                             R31 2 1
      249 SETTABLEKS                       R31 R30 K3 ["Tooltip"]
      251 NOT                              R31 R6
      252 JUMPIFNOT                        R31 ; [+83]
      253 GETUPVAL                         R32 2
      254 GETTABLEKS                       R31 R32 K31 ["createElement"]
      256 LOADK                            R32 K65 ["ImageButton"]
      257 NEWTABLE                         R33 16 0
      259 GETIMPORT                        R34 K22 [Vector2.new]
      261 LOADK                            R35 K30 [0.5]
      262 LOADK                            R36 K30 [0.5]
      263 CALL                             R34 2 1
      264 SETTABLEKS                       R34 R33 K5 ["AnchorPoint"]
      266 LOADN                            R34 1
      267 SETTABLEKS                       R34 R33 K33 ["BackgroundTransparency"]
      269 GETIMPORT                        R34 K15 [UDim2.new]
      271 LOADK                            R35 K30 [0.5]
      272 LOADN                            R36 0
      273 LOADK                            R37 K30 [0.5]
      274 LOADN                            R38 0
      275 CALL                             R34 4 1
      276 SETTABLEKS                       R34 R33 K10 ["Position"]
      278 GETIMPORT                        R34 K15 [UDim2.new]
      280 LOADN                            R35 1
      281 GETTABLEKS                       R38 R0 K66 ["state"]
      283 GETTABLEKS                       R37 R38 K67 ["pressed"]
      285 JUMPIFNOT                        R37 ; [+2]
      286 MOVE                             R36 R13
      287 JUMPIF                           R36 ; [+2]
      288 GETTABLEKS                       R36 R17 K25 ["X"]
      290 LOADN                            R37 1
      291 GETTABLEKS                       R40 R0 K66 ["state"]
      293 GETTABLEKS                       R39 R40 K67 ["pressed"]
      295 JUMPIFNOT                        R39 ; [+2]
      296 MOVE                             R38 R14
      297 JUMPIF                           R38 ; [+1]
      298 LOADN                            R38 0
      299 CALL                             R34 4 1
      300 SETTABLEKS                       R34 R33 K12 ["Size"]
      302 LOADN                            R34 4
      303 SETTABLEKS                       R34 R33 K56 ["ZIndex"]
      305 GETUPVAL                         R36 2
      306 GETTABLEKS                       R35 R36 K68 ["Event"]
      308 GETTABLEKS                       R34 R35 K69 ["InputBegan"]
      310 GETTABLEKS                       R35 R0 K70 ["onInputBegan"]
      312 SETTABLE                         R35 R33 R34
      313 GETUPVAL                         R36 2
      314 GETTABLEKS                       R35 R36 K68 ["Event"]
      316 GETTABLEKS                       R34 R35 K71 ["InputChanged"]
      318 GETTABLEKS                       R35 R0 K72 ["onInputChanged"]
      320 SETTABLE                         R35 R33 R34
      321 GETUPVAL                         R36 2
      322 GETTABLEKS                       R35 R36 K68 ["Event"]
      324 GETTABLEKS                       R34 R35 K73 ["InputEnded"]
      326 GETTABLEKS                       R35 R0 K74 ["onInputEnded"]
      328 SETTABLE                         R35 R33 R34
      329 GETUPVAL                         R36 2
      330 GETTABLEKS                       R35 R36 K68 ["Event"]
      332 GETTABLEKS                       R34 R35 K75 ["MouseButton2Click"]
      334 SETTABLE                         R24 R33 R34
      335 CALL                             R31 2 1
      336 SETTABLEKS                       R31 R30 K43 ["ClickHandler"]
      338 NOT                              R31 R6
      339 JUMPIFNOT                        R31 ; [+9]
      340 GETUPVAL                         R32 2
      341 GETTABLEKS                       R31 R32 K31 ["createElement"]
      343 GETUPVAL                         R32 6
      344 DUPTABLE                         R33 K77 [{"Cursor"}]
      345 LOADK                            R34 K78 ["PointingHand"]
      346 SETTABLEKS                       R34 R33 K76 ["Cursor"]
      348 CALL                             R31 2 1
      349 SETTABLEKS                       R31 R30 K44 ["HoverArea"]
      351 CALL                             R27 3 -1
      352 RETURN                           R27 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R3 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Util"]
       29 CALL                             R4 1 1
       30 GETIMPORT                        R5 K6 [require]
       32 GETTABLEKS                       R7 R0 K10 ["Util"]
       34 GETTABLEKS                       R6 R7 K11 ["Typecheck"]
       36 CALL                             R5 1 1
       37 GETTABLEKS                       R6 R4 K12 ["prioritize"]
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R9 R0 K10 ["Util"]
       43 GETTABLEKS                       R8 R9 K13 ["StyleModifier"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R0 K2 ["UI"]
       48 GETIMPORT                        R9 K6 [require]
       50 GETTABLEKS                       R11 R8 K14 ["Components"]
       52 GETTABLEKS                       R10 R11 K15 ["Container"]
       54 CALL                             R9 1 1
       55 GETIMPORT                        R10 K6 [require]
       57 GETTABLEKS                       R12 R8 K14 ["Components"]
       59 GETTABLEKS                       R11 R12 K16 ["Pane"]
       61 CALL                             R10 1 1
       62 GETIMPORT                        R11 K6 [require]
       64 GETTABLEKS                       R13 R8 K14 ["Components"]
       66 GETTABLEKS                       R12 R13 K17 ["HoverArea"]
       68 CALL                             R11 1 1
       69 GETIMPORT                        R12 K6 [require]
       71 GETTABLEKS                       R14 R8 K14 ["Components"]
       73 GETTABLEKS                       R13 R14 K18 ["Tooltip"]
       75 CALL                             R12 1 1
       76 GETTABLEKS                       R13 R1 K19 ["PureComponent"]
       78 LOADK                            R15 K20 ["DragBox"]
       79 NAMECALL                         R13 R13 K21 ["extend"]
       81 CALL                             R13 2 1
       82 GETTABLEKS                       R14 R5 K22 ["wrap"]
       84 MOVE                             R15 R13
       85 GETIMPORT                        R16 K1 [script]
       87 CALL                             R14 2 0
       88 DUPTABLE                         R14 K30 [{"Disabled", "MinX", "MinY", "MaxX", "MaxY", "HorizontalDragTolerance", "VerticalDragTolerance"}]
       89 LOADB                            R15 0
       90 SETTABLEKS                       R15 R14 K23 ["Disabled"]
       92 LOADN                            R15 255
       93 SETTABLEKS                       R15 R14 K24 ["MinX"]
       95 LOADN                            R15 255
       96 SETTABLEKS                       R15 R14 K25 ["MinY"]
       98 LOADN                            R15 1
       99 SETTABLEKS                       R15 R14 K26 ["MaxX"]
      101 LOADN                            R15 1
      102 SETTABLEKS                       R15 R14 K27 ["MaxY"]
      104 LOADN                            R15 44
      105 SETTABLEKS                       R15 R14 K28 ["HorizontalDragTolerance"]
      107 LOADN                            R15 44
      108 SETTABLEKS                       R15 R14 K29 ["VerticalDragTolerance"]
      110 SETTABLEKS                       R14 R13 K31 ["defaultProps"]
      112 GETTABLEKS                       R14 R4 K32 ["isInputMainPress"]
      114 DUPCLOSURE                       R15 K33 [PROTO_7]
      115 CAPTURE                          VAL R1
      116 CAPTURE                          VAL R14
      117 SETTABLEKS                       R15 R13 K34 ["init"]
      119 DUPCLOSURE                       R15 K35 [PROTO_8]
      120 CAPTURE                          VAL R6
      121 CAPTURE                          VAL R7
      122 CAPTURE                          VAL R1
      123 CAPTURE                          VAL R10
      124 CAPTURE                          VAL R9
      125 CAPTURE                          VAL R12
      126 CAPTURE                          VAL R11
      127 SETTABLEKS                       R15 R13 K36 ["render"]
      129 MOVE                             R15 R3
      130 DUPTABLE                         R16 K39 [{"Mouse", "Stylizer"}]
      131 GETTABLEKS                       R17 R2 K37 ["Mouse"]
      133 SETTABLEKS                       R17 R16 K37 ["Mouse"]
      135 GETTABLEKS                       R17 R2 K38 ["Stylizer"]
      137 SETTABLEKS                       R17 R16 K38 ["Stylizer"]
      139 CALL                             R15 1 1
      140 MOVE                             R16 R13
      141 CALL                             R15 1 1
      142 MOVE                             R13 R15
      143 RETURN                           R13 1
