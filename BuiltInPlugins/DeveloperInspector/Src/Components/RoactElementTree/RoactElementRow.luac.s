PROTO_0:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovering"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isHovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["props"]
       11 GETTABLEKS                       R0 R1 K4 ["OnEnterRow"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K3 ["props"]
       16 GETTABLEKS                       R1 R2 K5 ["Row"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovering"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isHovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R1 R2 K3 ["props"]
       11 GETTABLEKS                       R0 R1 K4 ["OnLeaveRow"]
       13 GETUPVAL                         R3 0
       14 GETTABLEKS                       R2 R3 K3 ["props"]
       16 GETTABLEKS                       R1 R2 K5 ["Row"]
       18 CALL                             R0 1 0
       19 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton1]
        4 JUMPIFNOTEQ                      R2 R3 ; [+12]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["props"]
        9 GETTABLEKS                       R2 R3 K5 ["OnSelect"]
       11 GETUPVAL                         R5 0
       12 GETTABLEKS                       R4 R5 K4 ["props"]
       14 GETTABLEKS                       R3 R4 K6 ["Row"]
       16 CALL                             R2 1 0
       17 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R1 R2 K0 ["props"]
        3 GETTABLEKS                       R0 R1 K1 ["OnToggle"]
        5 GETUPVAL                         R3 0
        6 GETTABLEKS                       R2 R3 K0 ["props"]
        8 GETTABLEKS                       R1 R2 K2 ["Row"]
       10 CALL                             R0 1 0
       11 RETURN                           R0 0

PROTO_4:
        0 DUPTABLE                         R1 K1 [{"isHovering"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isHovering"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R1 R2 K3 ["createRef"]
        9 CALL                             R1 0 1
       10 SETTABLEKS                       R1 R0 K4 ["containerRef"]
       12 NEWCLOSURE                       R1 P0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K5 ["onMouseEnter"]
       16 NEWCLOSURE                       R1 P1
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K6 ["onMouseLeave"]
       20 NEWCLOSURE                       R1 P2
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K7 ["onInputBegan"]
       24 NEWCLOSURE                       R1 P3
       25 CAPTURE                          VAL R0
       26 SETTABLEKS                       R1 R0 K8 ["onToggle"]
       28 RETURN                           R0 0

PROTO_5:
        0 NAMECALL                         R1 R0 K0 ["isFlashing"]
        2 CALL                             R1 1 1
        3 JUMPIFNOT                        R1 ; [+9]
        4 GETTABLEKS                       R5 R0 K1 ["props"]
        6 GETTABLEKS                       R4 R5 K2 ["Flash"]
        8 GETTABLEKS                       R3 R4 K3 ["heat"]
       10 NAMECALL                         R1 R0 K4 ["flash"]
       12 CALL                             R1 2 0
       13 RETURN                           R0 0

PROTO_6:
        0 GETTABLEKS                       R2 R0 K0 ["props"]
        2 GETTABLEKS                       R1 R2 K1 ["Flash"]
        4 JUMPIFNOT                        R1 ; [+11]
        5 GETIMPORT                        R3 K4 [os.clock]
        7 CALL                             R3 0 1
        8 GETTABLEKS                       R4 R1 K5 ["time"]
       10 SUB                              R2 R3 R4
       11 LOADN                            R3 1
       12 JUMPIFNOTLT                      R2 R3 ; [+3]
       14 LOADB                            R3 1
       15 RETURN                           R3 1
       16 LOADB                            R2 0
       17 RETURN                           R2 1

PROTO_7:
        0 GETTABLEKS                       R2 R0 K0 ["containerRef"]
        2 NAMECALL                         R2 R2 K1 ["getValue"]
        4 CALL                             R2 1 1
        5 JUMPIF                           R2 ; [+1]
        6 RETURN                           R0 0
        7 GETTABLEKS                       R3 R0 K2 ["flashTween"]
        9 JUMPIFNOT                        R3 ; [+5]
       10 GETTABLEKS                       R3 R0 K2 ["flashTween"]
       12 NAMECALL                         R3 R3 K3 ["Cancel"]
       14 CALL                             R3 1 0
       15 GETIMPORT                        R3 K6 [TweenInfo.new]
       17 LOADN                            R4 1
       18 GETIMPORT                        R5 K10 [Enum.EasingStyle.Linear]
       20 CALL                             R3 2 1
       21 GETUPVAL                         R4 0
       22 MOVE                             R6 R2
       23 MOVE                             R7 R3
       24 DUPTABLE                         R8 K12 [{"BackgroundColor3"}]
       25 GETTABLEKS                       R11 R0 K13 ["props"]
       27 GETTABLEKS                       R10 R11 K14 ["Style"]
       29 GETTABLEKS                       R9 R10 K15 ["BackgroundColor"]
       31 SETTABLEKS                       R9 R8 K11 ["BackgroundColor3"]
       33 NAMECALL                         R4 R4 K16 ["create"]
       35 CALL                             R4 4 1
       36 SETTABLEKS                       R4 R0 K2 ["flashTween"]
       38 LOADN                            R5 0
       39 MULK                             R7 R1 K18 [10]
       40 SUBRK                            R6 R17 K7 ["Enum"]
       41 FASTCALL2                        MATH_MAX R5 R6 ; [+3]
       43 GETIMPORT                        R4 K21 [math.max]
       45 CALL                             R4 2 1
       46 GETIMPORT                        R5 K24 [Color3.fromRGB]
       48 LOADN                            R6 255
       49 MOVE                             R7 R4
       50 LOADN                            R8 100
       51 CALL                             R5 3 1
       52 SETTABLEKS                       R5 R2 K11 ["BackgroundColor3"]
       54 GETTABLEKS                       R5 R0 K2 ["flashTween"]
       56 NAMECALL                         R5 R5 K25 ["Play"]
       58 CALL                             R5 1 0
       59 RETURN                           R0 0

PROTO_8:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Style"]
        4 GETTABLEKS                       R3 R1 K2 ["IsExpanded"]
        6 GETTABLEKS                       R4 R1 K3 ["IsSelected"]
        8 GETTABLEKS                       R5 R1 K4 ["Row"]
       10 GETTABLEKS                       R6 R5 K5 ["item"]
       12 GETTABLEKS                       R7 R6 K6 ["Children"]
       14 JUMPIFNOT                        R7 ; [+8]
       15 GETUPVAL                         R8 0
       16 GETTABLEKS                       R9 R6 K6 ["Children"]
       18 CALL                             R8 1 1
       19 JUMPIFNOTEQKNIL                  R8 ; [+2]
       21 LOADB                            R7 0 +1
       22 LOADB                            R7 1
       23 GETTABLEKS                       R9 R5 K7 ["depth"]
       25 GETTABLEKS                       R10 R2 K8 ["Indent"]
       27 MUL                              R8 R9 R10
       28 GETTABLEKS                       R10 R2 K9 ["Arrow"]
       30 GETTABLEKS                       R9 R10 K10 ["Size"]
       32 GETTABLEKS                       R10 R2 K11 ["IconPadding"]
       34 GETUPVAL                         R11 1
       35 GETTABLEKS                       R12 R6 K12 ["Icon"]
       37 CALL                             R11 1 1
       38 GETTABLEKS                       R12 R11 K13 ["ImageRectSize"]
       40 JUMPIF                           R12 ; [+3]
       41 GETIMPORT                        R12 K16 [Vector2.new]
       43 CALL                             R12 0 1
       44 ADD                              R14 R8 R9
       45 LOADN                            R16 2
       46 MUL                              R15 R16 R10
       47 ADD                              R13 R14 R15
       48 GETTABLEKS                       R15 R12 K17 ["X"]
       50 LOADN                            R17 3
       51 MUL                              R16 R17 R10
       52 ADD                              R14 R15 R16
       53 GETUPVAL                         R16 2
       54 GETTABLEKS                       R15 R16 K18 ["createElement"]
       56 GETUPVAL                         R16 3
       57 NEWTABLE                         R17 8 0
       59 GETIMPORT                        R18 K21 [Enum.AutomaticSize.X]
       61 SETTABLEKS                       R18 R17 K20 ["AutomaticSize"]
       63 GETTABLEKS                       R18 R1 K22 ["Position"]
       65 SETTABLEKS                       R18 R17 K22 ["Position"]
       67 GETTABLEKS                       R18 R1 K10 ["Size"]
       69 SETTABLEKS                       R18 R17 K10 ["Size"]
       71 GETTABLEKS                       R18 R5 K23 ["index"]
       73 SETTABLEKS                       R18 R17 K24 ["LayoutOrder"]
       75 GETUPVAL                         R19 2
       76 GETTABLEKS                       R18 R19 K25 ["Ref"]
       78 GETTABLEKS                       R19 R0 K26 ["containerRef"]
       80 SETTABLE                         R19 R17 R18
       81 DUPTABLE                         R18 K29 [{"Toggle", "Label"}]
       82 JUMPIFNOT                        R7 ; [+75]
       83 GETUPVAL                         R20 2
       84 GETTABLEKS                       R19 R20 K18 ["createElement"]
       86 LOADK                            R20 K30 ["ImageButton"]
       87 NEWTABLE                         R21 16 0
       89 GETIMPORT                        R22 K32 [UDim2.new]
       91 LOADN                            R23 0
       92 ADD                              R24 R8 R10
       93 LOADK                            R25 K33 [0.5]
       94 LOADN                            R26 0
       95 CALL                             R22 4 1
       96 SETTABLEKS                       R22 R21 K22 ["Position"]
       98 GETIMPORT                        R22 K16 [Vector2.new]
      100 LOADN                            R23 0
      101 LOADK                            R24 K33 [0.5]
      102 CALL                             R22 2 1
      103 SETTABLEKS                       R22 R21 K34 ["AnchorPoint"]
      105 GETIMPORT                        R22 K32 [UDim2.new]
      107 LOADN                            R23 0
      108 MOVE                             R24 R9
      109 LOADN                            R25 0
      110 MOVE                             R26 R9
      111 CALL                             R22 4 1
      112 SETTABLEKS                       R22 R21 K10 ["Size"]
      114 LOADN                            R22 1
      115 SETTABLEKS                       R22 R21 K35 ["BackgroundTransparency"]
      117 GETTABLEKS                       R23 R2 K9 ["Arrow"]
      119 GETTABLEKS                       R22 R23 K36 ["Image"]
      121 SETTABLEKS                       R22 R21 K36 ["Image"]
      123 GETTABLEKS                       R23 R2 K9 ["Arrow"]
      125 GETTABLEKS                       R22 R23 K37 ["Color"]
      127 SETTABLEKS                       R22 R21 K38 ["ImageColor3"]
      129 GETIMPORT                        R22 K16 [Vector2.new]
      131 MOVE                             R23 R9
      132 MOVE                             R24 R9
      133 CALL                             R22 2 1
      134 SETTABLEKS                       R22 R21 K13 ["ImageRectSize"]
      136 JUMPIFNOT                        R3 ; [+5]
      137 GETTABLEKS                       R23 R2 K9 ["Arrow"]
      139 GETTABLEKS                       R22 R23 K39 ["ExpandedOffset"]
      141 JUMPIF                           R22 ; [+4]
      142 GETTABLEKS                       R23 R2 K9 ["Arrow"]
      144 GETTABLEKS                       R22 R23 K40 ["CollapsedOffset"]
      146 SETTABLEKS                       R22 R21 K41 ["ImageRectOffset"]
      148 GETUPVAL                         R24 2
      149 GETTABLEKS                       R23 R24 K42 ["Event"]
      151 GETTABLEKS                       R22 R23 K43 ["Activated"]
      153 GETTABLEKS                       R23 R0 K44 ["onToggle"]
      155 SETTABLE                         R23 R21 R22
      156 CALL                             R19 2 1
      157 JUMPIF                           R19 ; [+1]
      158 LOADNIL                          R19
      159 SETTABLEKS                       R19 R18 K27 ["Toggle"]
      161 GETUPVAL                         R20 2
      162 GETTABLEKS                       R19 R20 K18 ["createElement"]
      164 LOADK                            R20 K45 ["Frame"]
      165 NEWTABLE                         R21 16 0
      167 GETIMPORT                        R22 K21 [Enum.AutomaticSize.X]
      169 SETTABLEKS                       R22 R21 K20 ["AutomaticSize"]
      171 GETUPVAL                         R24 2
      172 GETTABLEKS                       R23 R24 K42 ["Event"]
      174 GETTABLEKS                       R22 R23 K46 ["MouseEnter"]
      176 GETTABLEKS                       R23 R0 K47 ["onMouseEnter"]
      178 SETTABLE                         R23 R21 R22
      179 GETUPVAL                         R24 2
      180 GETTABLEKS                       R23 R24 K42 ["Event"]
      182 GETTABLEKS                       R22 R23 K48 ["MouseLeave"]
      184 GETTABLEKS                       R23 R0 K49 ["onMouseLeave"]
      186 SETTABLE                         R23 R21 R22
      187 GETUPVAL                         R24 2
      188 GETTABLEKS                       R23 R24 K42 ["Event"]
      190 GETTABLEKS                       R22 R23 K50 ["InputBegan"]
      192 GETTABLEKS                       R23 R0 K51 ["onInputBegan"]
      194 SETTABLE                         R23 R21 R22
      195 GETTABLEKS                       R23 R0 K52 ["state"]
      197 GETTABLEKS                       R22 R23 K53 ["isHovering"]
      199 JUMPIF                           R22 ; [+4]
      200 JUMPIFNOT                        R4 ; [+2]
      201 LOADN                            R22 0
      202 JUMP                             ; [+1]
      203 LOADN                            R22 1
      204 SETTABLEKS                       R22 R21 K35 ["BackgroundTransparency"]
      206 LOADN                            R22 0
      207 SETTABLEKS                       R22 R21 K54 ["BorderSizePixel"]
      209 JUMPIFNOT                        R4 ; [+3]
      210 GETTABLEKS                       R22 R2 K55 ["SelectedColor"]
      212 JUMPIF                           R22 ; [+2]
      213 GETTABLEKS                       R22 R2 K56 ["HoverColor"]
      215 SETTABLEKS                       R22 R21 K57 ["BackgroundColor3"]
      217 GETIMPORT                        R22 K59 [UDim2.fromOffset]
      219 MOVE                             R23 R13
      220 LOADN                            R24 0
      221 CALL                             R22 2 1
      222 SETTABLEKS                       R22 R21 K22 ["Position"]
      224 GETIMPORT                        R22 K61 [UDim2.fromScale]
      226 LOADN                            R23 0
      227 LOADN                            R24 1
      228 CALL                             R22 2 1
      229 SETTABLEKS                       R22 R21 K10 ["Size"]
      231 DUPTABLE                         R22 K63 [{"Icon", "Text"}]
      232 GETUPVAL                         R24 2
      233 GETTABLEKS                       R23 R24 K18 ["createElement"]
      235 LOADK                            R24 K64 ["ImageLabel"]
      236 DUPTABLE                         R25 K65 [{"Size", "BackgroundTransparency", "Image", "ImageRectSize", "ImageRectOffset", "Position", "AnchorPoint"}]
      237 GETIMPORT                        R26 K59 [UDim2.fromOffset]
      239 GETTABLEKS                       R27 R12 K17 ["X"]
      241 GETTABLEKS                       R28 R12 K66 ["Y"]
      243 CALL                             R26 2 1
      244 SETTABLEKS                       R26 R25 K10 ["Size"]
      246 LOADN                            R26 1
      247 SETTABLEKS                       R26 R25 K35 ["BackgroundTransparency"]
      249 GETTABLEKS                       R26 R11 K36 ["Image"]
      251 SETTABLEKS                       R26 R25 K36 ["Image"]
      253 SETTABLEKS                       R12 R25 K13 ["ImageRectSize"]
      255 GETTABLEKS                       R26 R11 K41 ["ImageRectOffset"]
      257 SETTABLEKS                       R26 R25 K41 ["ImageRectOffset"]
      259 GETIMPORT                        R26 K32 [UDim2.new]
      261 LOADN                            R27 0
      262 MOVE                             R28 R10
      263 LOADK                            R29 K33 [0.5]
      264 LOADN                            R30 0
      265 CALL                             R26 4 1
      266 SETTABLEKS                       R26 R25 K22 ["Position"]
      268 GETIMPORT                        R26 K16 [Vector2.new]
      270 LOADN                            R27 0
      271 LOADK                            R28 K33 [0.5]
      272 CALL                             R26 2 1
      273 SETTABLEKS                       R26 R25 K34 ["AnchorPoint"]
      275 CALL                             R23 2 1
      276 SETTABLEKS                       R23 R22 K12 ["Icon"]
      278 GETUPVAL                         R24 2
      279 GETTABLEKS                       R23 R24 K18 ["createElement"]
      281 GETUPVAL                         R24 4
      282 DUPTABLE                         R25 K70 [{"AutomaticSize", "Style", "Text", "TextColor", "Size", "Position", "TextXAlignment", "TextYAlignment"}]
      283 GETIMPORT                        R26 K21 [Enum.AutomaticSize.X]
      285 SETTABLEKS                       R26 R25 K20 ["AutomaticSize"]
      287 GETTABLEKS                       R26 R2 K62 ["Text"]
      289 SETTABLEKS                       R26 R25 K1 ["Style"]
      291 GETTABLEKS                       R27 R6 K71 ["Name"]
      293 FASTCALL1                        TOSTRING R27 ; [+2]
      294 GETIMPORT                        R26 K73 [tostring]
      296 CALL                             R26 1 1
      297 SETTABLEKS                       R26 R25 K62 ["Text"]
      299 JUMPIFNOT                        R4 ; [+3]
      300 GETTABLEKS                       R26 R2 K74 ["SelectedTextColor"]
      302 JUMPIF                           R26 ; [+1]
      303 LOADNIL                          R26
      304 SETTABLEKS                       R26 R25 K67 ["TextColor"]
      306 GETIMPORT                        R26 K61 [UDim2.fromScale]
      308 LOADN                            R27 0
      309 LOADN                            R28 1
      310 CALL                             R26 2 1
      311 SETTABLEKS                       R26 R25 K10 ["Size"]
      313 GETIMPORT                        R26 K32 [UDim2.new]
      315 LOADN                            R27 0
      316 MOVE                             R28 R14
      317 LOADN                            R29 0
      318 LOADN                            R30 0
      319 CALL                             R26 4 1
      320 SETTABLEKS                       R26 R25 K22 ["Position"]
      322 GETIMPORT                        R26 K76 [Enum.TextXAlignment.Left]
      324 SETTABLEKS                       R26 R25 K68 ["TextXAlignment"]
      326 GETIMPORT                        R26 K78 [Enum.TextYAlignment.Center]
      328 SETTABLEKS                       R26 R25 K69 ["TextYAlignment"]
      330 CALL                             R23 2 1
      331 SETTABLEKS                       R23 R22 K62 ["Text"]
      333 CALL                             R19 3 1
      334 SETTABLEKS                       R19 R18 K28 ["Label"]
      336 CALL                             R15 3 -1
      337 RETURN                           R15 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R4 K1 [script]
        3 GETTABLEKS                       R3 R4 K2 ["Parent"]
        5 GETTABLEKS                       R2 R3 K2 ["Parent"]
        7 GETTABLEKS                       R1 R2 K2 ["Parent"]
        9 GETTABLEKS                       R0 R1 K2 ["Parent"]
       11 GETIMPORT                        R1 K4 [require]
       13 GETTABLEKS                       R3 R0 K5 ["Packages"]
       15 GETTABLEKS                       R2 R3 K6 ["Framework"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K4 [require]
       20 GETTABLEKS                       R4 R0 K5 ["Packages"]
       22 GETTABLEKS                       R3 R4 K7 ["Roact"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K4 [require]
       27 GETTABLEKS                       R6 R0 K8 ["Src"]
       29 GETTABLEKS                       R5 R6 K9 ["Util"]
       31 GETTABLEKS                       R4 R5 K10 ["getInspectorIcon"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K12 [game]
       36 LOADK                            R6 K13 ["TweenService"]
       37 NAMECALL                         R4 R4 K14 ["GetService"]
       39 CALL                             R4 2 1
       40 GETIMPORT                        R5 K4 [require]
       42 GETTABLEKS                       R7 R0 K5 ["Packages"]
       44 GETTABLEKS                       R6 R7 K15 ["Dash"]
       46 CALL                             R5 1 1
       47 GETTABLEKS                       R6 R5 K16 ["mapOne"]
       49 GETTABLEKS                       R7 R2 K17 ["PureComponent"]
       51 LOADK                            R9 K18 ["RoactElementRow"]
       52 NAMECALL                         R7 R7 K19 ["extend"]
       54 CALL                             R7 2 1
       55 GETTABLEKS                       R8 R1 K20 ["UI"]
       57 GETTABLEKS                       R9 R8 K21 ["Pane"]
       59 GETTABLEKS                       R10 R8 K22 ["TextLabel"]
       61 DUPCLOSURE                       R11 K23 [PROTO_4]
       62 CAPTURE                          VAL R2
       63 SETTABLEKS                       R11 R7 K24 ["init"]
       65 DUPCLOSURE                       R11 K25 [PROTO_5]
       66 SETTABLEKS                       R11 R7 K26 ["didUpdate"]
       68 DUPCLOSURE                       R11 K27 [PROTO_6]
       69 SETTABLEKS                       R11 R7 K28 ["isFlashing"]
       71 DUPCLOSURE                       R11 K29 [PROTO_7]
       72 CAPTURE                          VAL R4
       73 SETTABLEKS                       R11 R7 K30 ["flash"]
       75 DUPCLOSURE                       R11 K31 [PROTO_8]
       76 CAPTURE                          VAL R6
       77 CAPTURE                          VAL R3
       78 CAPTURE                          VAL R2
       79 CAPTURE                          VAL R9
       80 CAPTURE                          VAL R10
       81 SETTABLEKS                       R11 R7 K32 ["render"]
       83 RETURN                           R7 1
