PROTO_0:
        0 GETUPVAL                         R0 0
        1 LOADK                            R2 K0 ["Folder"]
        2 NAMECALL                         R0 R0 K1 ["GetClassIcon"]
        4 CALL                             R0 2 -1
        5 RETURN                           R0 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 JUMPIF                           R1 ; [+2]
        2 GETUPVAL                         R1 1
        3 RETURN                           R1 1
        4 GETTABLEKS                       R1 R0 K0 ["ClassName"]
        6 GETTABLEKS                       R2 R0 K1 ["IsA"]
        8 JUMPIFNOT                        R2 ; [+15]
        9 LOADK                            R4 K2 ["JointInstance"]
       10 NAMECALL                         R2 R0 K1 ["IsA"]
       12 CALL                             R2 2 1
       13 JUMPIFNOT                        R2 ; [+2]
       14 JUMPIFEQKS                       R1 K3 ["ManualWeld"] ; [+3]
       16 JUMPIFNOTEQKS                    R1 K4 ["ManualGlue"] ; [+7]
       18 GETUPVAL                         R2 2
       19 LOADK                            R4 K2 ["JointInstance"]
       20 NAMECALL                         R2 R2 K5 ["GetClassIcon"]
       22 CALL                             R2 2 -1
       23 RETURN                           R2 -1
       24 GETUPVAL                         R2 2
       25 MOVE                             R4 R1
       26 NAMECALL                         R2 R2 K5 ["GetClassIcon"]
       28 CALL                             R2 2 -1
       29 RETURN                           R2 -1

PROTO_2:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = True}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K2 [{[1] = False}]
        2 NAMECALL                         R0 R0 K3 ["setState"]
        4 CALL                             R0 2 0
        5 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R3 R3 K0 ["props"]
        7 GETTABLEKS                       R3 R3 K1 ["onSelected"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K0 ["props"]
       12 GETTABLEKS                       R4 R4 K2 ["row"]
       14 CALL                             R3 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K2 [{[1] = False}]
        1 SETTABLEKS                       R1 R0 K3 ["state"]
        3 NEWCLOSURE                       R1 P0
        4 CAPTURE                          VAL R0
        5 SETTABLEKS                       R1 R0 K4 ["onMouseEnter"]
        7 NEWCLOSURE                       R1 P1
        8 CAPTURE                          VAL R0
        9 SETTABLEKS                       R1 R0 K5 ["onMouseLeave"]
       11 NEWCLOSURE                       R1 P2
       12 CAPTURE                          UPVAL U0
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K6 ["onInputBegan"]
       16 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 0
        3 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["row"]
        4 GETTABLEKS                       R3 R2 K2 ["item"]
        6 GETTABLEKS                       R4 R1 K3 ["style"]
        8 GETTABLEKS                       R5 R1 K4 ["isSelected"]
       10 GETTABLEKS                       R6 R1 K5 ["isExpanded"]
       12 NAMECALL                         R9 R3 K6 ["GetChildren"]
       14 CALL                             R9 1 1
       15 LENGTH                           R8 R9
       16 LOADN                            R9 0
       17 JUMPIFLT                         R9 R8 ; [+2]
       19 LOADB                            R7 0 +1
       20 LOADB                            R7 1
       21 GETTABLEKS                       R8 R1 K7 ["onToggled"]
       23 GETTABLEKS                       R10 R2 K8 ["depth"]
       25 GETTABLEKS                       R11 R4 K9 ["Indent"]
       27 MUL                              R9 R10 R11
       28 GETTABLEKS                       R10 R4 K10 ["Arrow"]
       30 GETTABLEKS                       R10 R10 K11 ["Size"]
       32 GETTABLEKS                       R11 R4 K12 ["IconPadding"]
       34 GETUPVAL                         R13 0
       35 JUMPIF                           R13 ; [+2]
       36 GETUPVAL                         R12 1
       37 JUMP                             ; [+27]
       38 GETTABLEKS                       R13 R3 K13 ["ClassName"]
       40 GETTABLEKS                       R14 R3 K14 ["IsA"]
       42 JUMPIFNOT                        R14 ; [+16]
       43 LOADK                            R16 K15 ["JointInstance"]
       44 NAMECALL                         R14 R3 K14 ["IsA"]
       46 CALL                             R14 2 1
       47 JUMPIFNOT                        R14 ; [+2]
       48 JUMPIFEQKS                       R13 K16 ["ManualWeld"] ; [+3]
       50 JUMPIFNOTEQKS                    R13 K17 ["ManualGlue"] ; [+8]
       52 GETUPVAL                         R14 2
       53 LOADK                            R16 K15 ["JointInstance"]
       54 NAMECALL                         R14 R14 K18 ["GetClassIcon"]
       56 CALL                             R14 2 1
       57 MOVE                             R12 R14
       58 JUMP                             ; [+6]
       59 GETUPVAL                         R14 2
       60 MOVE                             R16 R13
       61 NAMECALL                         R14 R14 K18 ["GetClassIcon"]
       63 CALL                             R14 2 1
       64 MOVE                             R12 R14
       65 GETTABLEKS                       R13 R12 K19 ["ImageRectSize"]
       67 JUMPIF                           R13 ; [+3]
       68 GETIMPORT                        R13 K22 [Vector2.new]
       70 CALL                             R13 0 1
       71 ADD                              R15 R9 R10
       72 LOADN                            R17 2
       73 MUL                              R16 R17 R11
       74 ADD                              R14 R15 R16
       75 GETTABLEKS                       R16 R13 K23 ["X"]
       77 LOADN                            R18 3
       78 MUL                              R17 R18 R11
       79 ADD                              R15 R16 R17
       80 GETUPVAL                         R16 3
       81 GETTABLEKS                       R16 R16 K24 ["createElement"]
       83 GETUPVAL                         R17 4
       84 DUPTABLE                         R18 K27 [{"Padding", "Position", "Size"}]
       85 DUPTABLE                         R19 K29 [{"Left"}]
       86 SETTABLEKS                       R9 R19 K28 ["Left"]
       88 SETTABLEKS                       R19 R18 K25 ["Padding"]
       90 GETTABLEKS                       R19 R1 K26 ["Position"]
       92 SETTABLEKS                       R19 R18 K26 ["Position"]
       94 GETTABLEKS                       R19 R1 K11 ["Size"]
       96 SETTABLEKS                       R19 R18 K11 ["Size"]
       98 DUPTABLE                         R19 K32 [{"Toggle", "Label"}]
       99 JUMPIFNOT                        R7 ; [+76]
      100 GETUPVAL                         R20 3
      101 GETTABLEKS                       R20 R20 K24 ["createElement"]
      103 LOADK                            R21 K33 ["ImageButton"]
      104 NEWTABLE                         R22 16 0
      106 GETIMPORT                        R23 K35 [UDim2.new]
      108 LOADN                            R24 0
      109 ADD                              R25 R9 R11
      110 LOADK                            R26 K36 [0.5]
      111 LOADN                            R27 0
      112 CALL                             R23 4 1
      113 SETTABLEKS                       R23 R22 K26 ["Position"]
      115 GETIMPORT                        R23 K22 [Vector2.new]
      117 LOADN                            R24 0
      118 LOADK                            R25 K36 [0.5]
      119 CALL                             R23 2 1
      120 SETTABLEKS                       R23 R22 K37 ["AnchorPoint"]
      122 GETIMPORT                        R23 K35 [UDim2.new]
      124 LOADN                            R24 0
      125 MOVE                             R25 R10
      126 LOADN                            R26 0
      127 MOVE                             R27 R10
      128 CALL                             R23 4 1
      129 SETTABLEKS                       R23 R22 K11 ["Size"]
      131 LOADN                            R23 1
      132 SETTABLEKS                       R23 R22 K38 ["BackgroundTransparency"]
      134 GETTABLEKS                       R23 R4 K10 ["Arrow"]
      136 GETTABLEKS                       R23 R23 K39 ["Image"]
      138 SETTABLEKS                       R23 R22 K39 ["Image"]
      140 GETTABLEKS                       R23 R4 K10 ["Arrow"]
      142 GETTABLEKS                       R23 R23 K40 ["Color"]
      144 SETTABLEKS                       R23 R22 K41 ["ImageColor3"]
      146 GETIMPORT                        R23 K22 [Vector2.new]
      148 MOVE                             R24 R10
      149 MOVE                             R25 R10
      150 CALL                             R23 2 1
      151 SETTABLEKS                       R23 R22 K19 ["ImageRectSize"]
      153 JUMPIFNOT                        R6 ; [+5]
      154 GETTABLEKS                       R23 R4 K10 ["Arrow"]
      156 GETTABLEKS                       R23 R23 K42 ["ExpandedOffset"]
      158 JUMPIF                           R23 ; [+4]
      159 GETTABLEKS                       R23 R4 K10 ["Arrow"]
      161 GETTABLEKS                       R23 R23 K43 ["CollapsedOffset"]
      163 SETTABLEKS                       R23 R22 K44 ["ImageRectOffset"]
      165 GETUPVAL                         R23 3
      166 GETTABLEKS                       R23 R23 K45 ["Event"]
      168 GETTABLEKS                       R23 R23 K46 ["Activated"]
      170 NEWCLOSURE                       R24 P0
      171 CAPTURE                          VAL R8
      172 CAPTURE                          VAL R2
      173 SETTABLE                         R24 R22 R23
      174 CALL                             R20 2 1
      175 JUMPIF                           R20 ; [+1]
      176 LOADNIL                          R20
      177 SETTABLEKS                       R20 R19 K30 ["Toggle"]
      179 GETUPVAL                         R20 3
      180 GETTABLEKS                       R20 R20 K24 ["createElement"]
      182 LOADK                            R21 K47 ["TextButton"]
      183 NEWTABLE                         R22 16 0
      185 GETUPVAL                         R23 3
      186 GETTABLEKS                       R23 R23 K45 ["Event"]
      188 GETTABLEKS                       R23 R23 K48 ["MouseEnter"]
      190 GETTABLEKS                       R24 R0 K49 ["onMouseEnter"]
      192 SETTABLE                         R24 R22 R23
      193 GETUPVAL                         R23 3
      194 GETTABLEKS                       R23 R23 K45 ["Event"]
      196 GETTABLEKS                       R23 R23 K50 ["MouseLeave"]
      198 GETTABLEKS                       R24 R0 K51 ["onMouseLeave"]
      200 SETTABLE                         R24 R22 R23
      201 GETUPVAL                         R23 3
      202 GETTABLEKS                       R23 R23 K45 ["Event"]
      204 GETTABLEKS                       R23 R23 K52 ["InputBegan"]
      206 GETTABLEKS                       R24 R0 K53 ["onInputBegan"]
      208 SETTABLE                         R24 R22 R23
      209 GETTABLEKS                       R24 R0 K54 ["state"]
      211 GETTABLEKS                       R24 R24 K55 ["isHovering"]
      213 JUMPIF                           R24 ; [+1]
      214 JUMPIFNOT                        R5 ; [+2]
      215 LOADN                            R23 0
      216 JUMP                             ; [+1]
      217 LOADN                            R23 1
      218 SETTABLEKS                       R23 R22 K38 ["BackgroundTransparency"]
      220 LOADN                            R23 0
      221 SETTABLEKS                       R23 R22 K56 ["BorderSizePixel"]
      223 JUMPIFNOT                        R5 ; [+3]
      224 GETTABLEKS                       R23 R4 K57 ["SelectedColor"]
      226 JUMPIF                           R23 ; [+2]
      227 GETTABLEKS                       R23 R4 K58 ["HoverColor"]
      229 SETTABLEKS                       R23 R22 K59 ["BackgroundColor3"]
      231 GETIMPORT                        R23 K61 [UDim2.fromOffset]
      233 MOVE                             R24 R14
      234 LOADN                            R25 0
      235 CALL                             R23 2 1
      236 SETTABLEKS                       R23 R22 K26 ["Position"]
      238 GETIMPORT                        R23 K35 [UDim2.new]
      240 LOADN                            R24 1
      241 MINUS                            R25 R10
      242 LOADN                            R26 1
      243 LOADN                            R27 0
      244 CALL                             R23 4 1
      245 SETTABLEKS                       R23 R22 K11 ["Size"]
      247 LOADK                            R23 K62 [""]
      248 SETTABLEKS                       R23 R22 K63 ["Text"]
      250 LOADB                            R23 0
      251 SETTABLEKS                       R23 R22 K64 ["AutoButtonColor"]
      253 DUPTABLE                         R23 K66 [{"Icon", "Text"}]
      254 GETUPVAL                         R24 3
      255 GETTABLEKS                       R24 R24 K24 ["createElement"]
      257 LOADK                            R25 K67 ["ImageLabel"]
      258 DUPTABLE                         R26 K69 [{["Size"], ["BackgroundTransparency"] = 1, ["Image"], ["ImageRectSize"], ["ImageRectOffset"], ["Position"], ["AnchorPoint"]}]
      259 GETIMPORT                        R27 K61 [UDim2.fromOffset]
      261 GETTABLEKS                       R28 R13 K23 ["X"]
      263 GETTABLEKS                       R29 R13 K70 ["Y"]
      265 CALL                             R27 2 1
      266 SETTABLEKS                       R27 R26 K11 ["Size"]
      268 GETTABLEKS                       R27 R12 K39 ["Image"]
      270 SETTABLEKS                       R27 R26 K39 ["Image"]
      272 SETTABLEKS                       R13 R26 K19 ["ImageRectSize"]
      274 GETTABLEKS                       R27 R12 K44 ["ImageRectOffset"]
      276 SETTABLEKS                       R27 R26 K44 ["ImageRectOffset"]
      278 GETIMPORT                        R27 K35 [UDim2.new]
      280 LOADN                            R28 0
      281 MOVE                             R29 R11
      282 LOADK                            R30 K36 [0.5]
      283 LOADN                            R31 0
      284 CALL                             R27 4 1
      285 SETTABLEKS                       R27 R26 K26 ["Position"]
      287 GETIMPORT                        R27 K22 [Vector2.new]
      289 LOADN                            R28 0
      290 LOADK                            R29 K36 [0.5]
      291 CALL                             R27 2 1
      292 SETTABLEKS                       R27 R26 K37 ["AnchorPoint"]
      294 CALL                             R24 2 1
      295 SETTABLEKS                       R24 R23 K65 ["Icon"]
      297 GETUPVAL                         R24 3
      298 GETTABLEKS                       R24 R24 K24 ["createElement"]
      300 GETUPVAL                         R25 5
      301 DUPTABLE                         R26 K75 [{"Style", "Text", "TextColor", "Size", "Position", "TextXAlignment", "TextYAlignment"}]
      302 GETTABLEKS                       R27 R4 K63 ["Text"]
      304 SETTABLEKS                       R27 R26 K71 ["Style"]
      306 GETTABLEKS                       R27 R3 K76 ["Name"]
      308 SETTABLEKS                       R27 R26 K63 ["Text"]
      310 JUMPIFNOT                        R5 ; [+3]
      311 GETTABLEKS                       R27 R4 K77 ["SelectedTextColor"]
      313 JUMPIF                           R27 ; [+1]
      314 LOADNIL                          R27
      315 SETTABLEKS                       R27 R26 K72 ["TextColor"]
      317 GETIMPORT                        R27 K35 [UDim2.new]
      319 LOADN                            R28 1
      320 MINUS                            R29 R15
      321 LOADN                            R30 1
      322 LOADN                            R31 0
      323 CALL                             R27 4 1
      324 SETTABLEKS                       R27 R26 K11 ["Size"]
      326 GETIMPORT                        R27 K35 [UDim2.new]
      328 LOADN                            R28 0
      329 MOVE                             R29 R15
      330 LOADN                            R30 0
      331 LOADN                            R31 0
      332 CALL                             R27 4 1
      333 SETTABLEKS                       R27 R26 K26 ["Position"]
      335 GETIMPORT                        R27 K79 [Enum.TextXAlignment.Left]
      337 SETTABLEKS                       R27 R26 K73 ["TextXAlignment"]
      339 GETIMPORT                        R27 K81 [Enum.TextYAlignment.Center]
      341 SETTABLEKS                       R27 R26 K74 ["TextYAlignment"]
      343 CALL                             R24 2 1
      344 SETTABLEKS                       R24 R23 K63 ["Text"]
      346 CALL                             R20 3 1
      347 SETTABLEKS                       R20 R19 K31 ["Label"]
      349 CALL                             R16 3 -1
      350 RETURN                           R16 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K4 ["Parent"]
       13 GETTABLEKS                       R2 R2 K7 ["Roact"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K6 [require]
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K6 [require]
       23 GETTABLEKS                       R4 R0 K8 ["Util"]
       25 GETTABLEKS                       R4 R4 K9 ["Typecheck"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["isInputMainPress"]
       30 GETTABLEKS                       R5 R0 K2 ["UI"]
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R7 R5 K11 ["Components"]
       36 GETTABLEKS                       R7 R7 K12 ["Pane"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R8 R5 K11 ["Components"]
       43 GETTABLEKS                       R8 R8 K13 ["TextLabel"]
       45 CALL                             R7 1 1
       46 GETTABLEKS                       R8 R1 K14 ["PureComponent"]
       48 LOADK                            R10 K15 ["InstanceTreeRow"]
       49 NAMECALL                         R8 R8 K16 ["extend"]
       51 CALL                             R8 2 1
       52 GETTABLEKS                       R9 R3 K17 ["wrap"]
       54 MOVE                             R10 R8
       55 GETIMPORT                        R11 K1 [script]
       57 CALL                             R9 2 0
       58 DUPTABLE                         R9 K22 [{["Image"] = "rbxasset://textures/ClassImages.png", ["ImageRectOffset"], ["ImageRectSize"]}]
       59 GETIMPORT                        R10 K25 [Vector2.new]
       61 LOADN                            R11 736
       62 LOADN                            R12 0
       63 CALL                             R10 2 1
       64 SETTABLEKS                       R10 R9 K20 ["ImageRectOffset"]
       66 GETIMPORT                        R10 K25 [Vector2.new]
       68 LOADN                            R11 16
       69 LOADN                            R12 16
       70 CALL                             R10 2 1
       71 SETTABLEKS                       R10 R9 K21 ["ImageRectSize"]
       73 GETIMPORT                        R10 K27 [game]
       75 LOADK                            R12 K28 ["StudioService"]
       76 NAMECALL                         R10 R10 K29 ["GetService"]
       78 CALL                             R10 2 1
       79 GETIMPORT                        R11 K31 [pcall]
       81 DUPCLOSURE                       R12 K32 [PROTO_0]
       82 CAPTURE                          VAL R10
       83 CALL                             R11 1 1
       84 DUPCLOSURE                       R12 K33 [PROTO_1]
       85 CAPTURE                          VAL R11
       86 CAPTURE                          VAL R9
       87 CAPTURE                          VAL R10
       88 DUPCLOSURE                       R13 K34 [PROTO_5]
       89 CAPTURE                          VAL R4
       90 SETTABLEKS                       R13 R8 K35 ["init"]
       92 DUPCLOSURE                       R13 K36 [PROTO_7]
       93 CAPTURE                          VAL R11
       94 CAPTURE                          VAL R9
       95 CAPTURE                          VAL R10
       96 CAPTURE                          VAL R1
       97 CAPTURE                          VAL R6
       98 CAPTURE                          VAL R7
       99 SETTABLEKS                       R13 R8 K37 ["render"]
      101 RETURN                           R8 1
