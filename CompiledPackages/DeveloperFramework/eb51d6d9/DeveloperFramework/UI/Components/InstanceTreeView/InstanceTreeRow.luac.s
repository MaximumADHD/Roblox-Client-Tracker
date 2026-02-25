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
        1 DUPTABLE                         R2 K1 [{"isHovering"}]
        2 LOADB                            R3 1
        3 SETTABLEKS                       R3 R2 K0 ["isHovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 DUPTABLE                         R2 K1 [{"isHovering"}]
        2 LOADB                            R3 0
        3 SETTABLEKS                       R3 R2 K0 ["isHovering"]
        5 NAMECALL                         R0 R0 K2 ["setState"]
        7 CALL                             R0 2 0
        8 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+11]
        4 GETUPVAL                         R5 1
        5 GETTABLEKS                       R4 R5 K0 ["props"]
        7 GETTABLEKS                       R3 R4 K1 ["onSelected"]
        9 GETUPVAL                         R6 1
       10 GETTABLEKS                       R5 R6 K0 ["props"]
       12 GETTABLEKS                       R4 R5 K2 ["row"]
       14 CALL                             R3 1 0
       15 RETURN                           R0 0

PROTO_5:
        0 DUPTABLE                         R1 K1 [{"isHovering"}]
        1 LOADB                            R2 0
        2 SETTABLEKS                       R2 R1 K0 ["isHovering"]
        4 SETTABLEKS                       R1 R0 K2 ["state"]
        6 NEWCLOSURE                       R1 P0
        7 CAPTURE                          VAL R0
        8 SETTABLEKS                       R1 R0 K3 ["onMouseEnter"]
       10 NEWCLOSURE                       R1 P1
       11 CAPTURE                          VAL R0
       12 SETTABLEKS                       R1 R0 K4 ["onMouseLeave"]
       14 NEWCLOSURE                       R1 P2
       15 CAPTURE                          UPVAL U0
       16 CAPTURE                          VAL R0
       17 SETTABLEKS                       R1 R0 K5 ["onInputBegan"]
       19 RETURN                           R0 0

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
       28 GETTABLEKS                       R11 R4 K10 ["Arrow"]
       30 GETTABLEKS                       R10 R11 K11 ["Size"]
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
       80 LOADNIL                          R16
       81 GETUPVAL                         R17 3
       82 JUMPIFNOT                        R17 ; [+9]
       83 GETTABLEKS                       R18 R0 K24 ["state"]
       85 GETTABLEKS                       R17 R18 K25 ["isHovering"]
       87 JUMPIF                           R17 ; [+1]
       88 JUMPIFNOT                        R5 ; [+2]
       89 LOADN                            R16 0
       90 JUMP                             ; [+1]
       91 LOADN                            R16 1
       92 GETUPVAL                         R18 4
       93 GETTABLEKS                       R17 R18 K26 ["createElement"]
       95 GETUPVAL                         R18 5
       96 DUPTABLE                         R19 K29 [{"Padding", "Position", "Size"}]
       97 DUPTABLE                         R20 K31 [{"Left"}]
       98 SETTABLEKS                       R9 R20 K30 ["Left"]
      100 SETTABLEKS                       R20 R19 K27 ["Padding"]
      102 GETTABLEKS                       R20 R1 K28 ["Position"]
      104 SETTABLEKS                       R20 R19 K28 ["Position"]
      106 GETTABLEKS                       R20 R1 K11 ["Size"]
      108 SETTABLEKS                       R20 R19 K11 ["Size"]
      110 DUPTABLE                         R20 K34 [{"Toggle", "Label"}]
      111 JUMPIFNOT                        R7 ; [+76]
      112 GETUPVAL                         R22 4
      113 GETTABLEKS                       R21 R22 K26 ["createElement"]
      115 LOADK                            R22 K35 ["ImageButton"]
      116 NEWTABLE                         R23 16 0
      118 GETIMPORT                        R24 K37 [UDim2.new]
      120 LOADN                            R25 0
      121 ADD                              R26 R9 R11
      122 LOADK                            R27 K38 [0.5]
      123 LOADN                            R28 0
      124 CALL                             R24 4 1
      125 SETTABLEKS                       R24 R23 K28 ["Position"]
      127 GETIMPORT                        R24 K22 [Vector2.new]
      129 LOADN                            R25 0
      130 LOADK                            R26 K38 [0.5]
      131 CALL                             R24 2 1
      132 SETTABLEKS                       R24 R23 K39 ["AnchorPoint"]
      134 GETIMPORT                        R24 K37 [UDim2.new]
      136 LOADN                            R25 0
      137 MOVE                             R26 R10
      138 LOADN                            R27 0
      139 MOVE                             R28 R10
      140 CALL                             R24 4 1
      141 SETTABLEKS                       R24 R23 K11 ["Size"]
      143 LOADN                            R24 1
      144 SETTABLEKS                       R24 R23 K40 ["BackgroundTransparency"]
      146 GETTABLEKS                       R25 R4 K10 ["Arrow"]
      148 GETTABLEKS                       R24 R25 K41 ["Image"]
      150 SETTABLEKS                       R24 R23 K41 ["Image"]
      152 GETTABLEKS                       R25 R4 K10 ["Arrow"]
      154 GETTABLEKS                       R24 R25 K42 ["Color"]
      156 SETTABLEKS                       R24 R23 K43 ["ImageColor3"]
      158 GETIMPORT                        R24 K22 [Vector2.new]
      160 MOVE                             R25 R10
      161 MOVE                             R26 R10
      162 CALL                             R24 2 1
      163 SETTABLEKS                       R24 R23 K19 ["ImageRectSize"]
      165 JUMPIFNOT                        R6 ; [+5]
      166 GETTABLEKS                       R25 R4 K10 ["Arrow"]
      168 GETTABLEKS                       R24 R25 K44 ["ExpandedOffset"]
      170 JUMPIF                           R24 ; [+4]
      171 GETTABLEKS                       R25 R4 K10 ["Arrow"]
      173 GETTABLEKS                       R24 R25 K45 ["CollapsedOffset"]
      175 SETTABLEKS                       R24 R23 K46 ["ImageRectOffset"]
      177 GETUPVAL                         R26 4
      178 GETTABLEKS                       R25 R26 K47 ["Event"]
      180 GETTABLEKS                       R24 R25 K48 ["Activated"]
      182 NEWCLOSURE                       R25 P0
      183 CAPTURE                          VAL R8
      184 CAPTURE                          VAL R2
      185 SETTABLE                         R25 R23 R24
      186 CALL                             R21 2 1
      187 JUMPIF                           R21 ; [+1]
      188 LOADNIL                          R21
      189 SETTABLEKS                       R21 R20 K32 ["Toggle"]
      191 GETUPVAL                         R22 4
      192 GETTABLEKS                       R21 R22 K26 ["createElement"]
      194 LOADK                            R22 K49 ["TextButton"]
      195 NEWTABLE                         R23 16 0
      197 GETUPVAL                         R26 4
      198 GETTABLEKS                       R25 R26 K47 ["Event"]
      200 GETTABLEKS                       R24 R25 K50 ["MouseEnter"]
      202 GETTABLEKS                       R25 R0 K51 ["onMouseEnter"]
      204 SETTABLE                         R25 R23 R24
      205 GETUPVAL                         R26 4
      206 GETTABLEKS                       R25 R26 K47 ["Event"]
      208 GETTABLEKS                       R24 R25 K52 ["MouseLeave"]
      210 GETTABLEKS                       R25 R0 K53 ["onMouseLeave"]
      212 SETTABLE                         R25 R23 R24
      213 GETUPVAL                         R26 4
      214 GETTABLEKS                       R25 R26 K47 ["Event"]
      216 GETTABLEKS                       R24 R25 K54 ["InputBegan"]
      218 GETTABLEKS                       R25 R0 K55 ["onInputBegan"]
      220 SETTABLE                         R25 R23 R24
      221 GETUPVAL                         R25 3
      222 JUMPIFNOT                        R25 ; [+2]
      223 MOVE                             R24 R16
      224 JUMP                             ; [+9]
      225 GETTABLEKS                       R25 R0 K24 ["state"]
      227 GETTABLEKS                       R24 R25 K25 ["isHovering"]
      229 JUMPIF                           R24 ; [+4]
      230 JUMPIFNOT                        R5 ; [+2]
      231 LOADN                            R24 0
      232 JUMP                             ; [+1]
      233 LOADN                            R24 1
      234 SETTABLEKS                       R24 R23 K40 ["BackgroundTransparency"]
      236 LOADN                            R24 0
      237 SETTABLEKS                       R24 R23 K56 ["BorderSizePixel"]
      239 JUMPIFNOT                        R5 ; [+3]
      240 GETTABLEKS                       R24 R4 K57 ["SelectedColor"]
      242 JUMPIF                           R24 ; [+2]
      243 GETTABLEKS                       R24 R4 K58 ["HoverColor"]
      245 SETTABLEKS                       R24 R23 K59 ["BackgroundColor3"]
      247 GETIMPORT                        R24 K61 [UDim2.fromOffset]
      249 MOVE                             R25 R14
      250 LOADN                            R26 0
      251 CALL                             R24 2 1
      252 SETTABLEKS                       R24 R23 K28 ["Position"]
      254 GETIMPORT                        R24 K37 [UDim2.new]
      256 LOADN                            R25 1
      257 MINUS                            R26 R10
      258 LOADN                            R27 1
      259 LOADN                            R28 0
      260 CALL                             R24 4 1
      261 SETTABLEKS                       R24 R23 K11 ["Size"]
      263 LOADK                            R24 K62 [""]
      264 SETTABLEKS                       R24 R23 K63 ["Text"]
      266 LOADB                            R24 0
      267 SETTABLEKS                       R24 R23 K64 ["AutoButtonColor"]
      269 DUPTABLE                         R24 K66 [{"Icon", "Text"}]
      270 GETUPVAL                         R26 4
      271 GETTABLEKS                       R25 R26 K26 ["createElement"]
      273 LOADK                            R26 K67 ["ImageLabel"]
      274 DUPTABLE                         R27 K68 [{"Size", "BackgroundTransparency", "Image", "ImageRectSize", "ImageRectOffset", "Position", "AnchorPoint"}]
      275 GETIMPORT                        R28 K61 [UDim2.fromOffset]
      277 GETTABLEKS                       R29 R13 K23 ["X"]
      279 GETTABLEKS                       R30 R13 K69 ["Y"]
      281 CALL                             R28 2 1
      282 SETTABLEKS                       R28 R27 K11 ["Size"]
      284 LOADN                            R28 1
      285 SETTABLEKS                       R28 R27 K40 ["BackgroundTransparency"]
      287 GETTABLEKS                       R28 R12 K41 ["Image"]
      289 SETTABLEKS                       R28 R27 K41 ["Image"]
      291 SETTABLEKS                       R13 R27 K19 ["ImageRectSize"]
      293 GETTABLEKS                       R28 R12 K46 ["ImageRectOffset"]
      295 SETTABLEKS                       R28 R27 K46 ["ImageRectOffset"]
      297 GETIMPORT                        R28 K37 [UDim2.new]
      299 LOADN                            R29 0
      300 MOVE                             R30 R11
      301 LOADK                            R31 K38 [0.5]
      302 LOADN                            R32 0
      303 CALL                             R28 4 1
      304 SETTABLEKS                       R28 R27 K28 ["Position"]
      306 GETIMPORT                        R28 K22 [Vector2.new]
      308 LOADN                            R29 0
      309 LOADK                            R30 K38 [0.5]
      310 CALL                             R28 2 1
      311 SETTABLEKS                       R28 R27 K39 ["AnchorPoint"]
      313 CALL                             R25 2 1
      314 SETTABLEKS                       R25 R24 K65 ["Icon"]
      316 GETUPVAL                         R26 4
      317 GETTABLEKS                       R25 R26 K26 ["createElement"]
      319 GETUPVAL                         R26 6
      320 DUPTABLE                         R27 K74 [{"Style", "Text", "TextColor", "Size", "Position", "TextXAlignment", "TextYAlignment"}]
      321 GETTABLEKS                       R28 R4 K63 ["Text"]
      323 SETTABLEKS                       R28 R27 K70 ["Style"]
      325 GETTABLEKS                       R28 R3 K75 ["Name"]
      327 SETTABLEKS                       R28 R27 K63 ["Text"]
      329 JUMPIFNOT                        R5 ; [+3]
      330 GETTABLEKS                       R28 R4 K76 ["SelectedTextColor"]
      332 JUMPIF                           R28 ; [+1]
      333 LOADNIL                          R28
      334 SETTABLEKS                       R28 R27 K71 ["TextColor"]
      336 GETIMPORT                        R28 K37 [UDim2.new]
      338 LOADN                            R29 1
      339 MINUS                            R30 R15
      340 LOADN                            R31 1
      341 LOADN                            R32 0
      342 CALL                             R28 4 1
      343 SETTABLEKS                       R28 R27 K11 ["Size"]
      345 GETIMPORT                        R28 K37 [UDim2.new]
      347 LOADN                            R29 0
      348 MOVE                             R30 R15
      349 LOADN                            R31 0
      350 LOADN                            R32 0
      351 CALL                             R28 4 1
      352 SETTABLEKS                       R28 R27 K28 ["Position"]
      354 GETIMPORT                        R28 K78 [Enum.TextXAlignment.Left]
      356 SETTABLEKS                       R28 R27 K72 ["TextXAlignment"]
      358 GETIMPORT                        R28 K80 [Enum.TextYAlignment.Center]
      360 SETTABLEKS                       R28 R27 K73 ["TextYAlignment"]
      362 CALL                             R25 2 1
      363 SETTABLEKS                       R25 R24 K63 ["Text"]
      365 CALL                             R21 3 1
      366 SETTABLEKS                       R21 R20 K33 ["Label"]
      368 CALL                             R17 3 -1
      369 RETURN                           R17 -1

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
       18 GETTABLEKS                       R3 R0 K8 ["Util"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K6 [require]
       23 GETTABLEKS                       R5 R0 K8 ["Util"]
       25 GETTABLEKS                       R4 R5 K9 ["Typecheck"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["isInputMainPress"]
       30 GETTABLEKS                       R5 R0 K2 ["UI"]
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R8 R5 K11 ["Components"]
       36 GETTABLEKS                       R7 R8 K12 ["Pane"]
       38 CALL                             R6 1 1
       39 GETIMPORT                        R7 K6 [require]
       41 GETTABLEKS                       R9 R5 K11 ["Components"]
       43 GETTABLEKS                       R8 R9 K13 ["TextLabel"]
       45 CALL                             R7 1 1
       46 GETIMPORT                        R8 K6 [require]
       48 GETTABLEKS                       R10 R0 K14 ["SharedFlags"]
       50 GETTABLEKS                       R9 R10 K15 ["getFFlagDevFrameworkFixTreeViewHover"]
       52 CALL                             R8 1 1
       53 CALL                             R8 0 1
       54 GETTABLEKS                       R9 R1 K16 ["PureComponent"]
       56 LOADK                            R11 K17 ["InstanceTreeRow"]
       57 NAMECALL                         R9 R9 K18 ["extend"]
       59 CALL                             R9 2 1
       60 GETTABLEKS                       R10 R3 K19 ["wrap"]
       62 MOVE                             R11 R9
       63 GETIMPORT                        R12 K1 [script]
       65 CALL                             R10 2 0
       66 DUPTABLE                         R10 K23 [{"Image", "ImageRectOffset", "ImageRectSize"}]
       67 LOADK                            R11 K24 ["rbxasset://textures/ClassImages.png"]
       68 SETTABLEKS                       R11 R10 K20 ["Image"]
       70 GETIMPORT                        R11 K27 [Vector2.new]
       72 LOADN                            R12 224
       73 LOADN                            R13 0
       74 CALL                             R11 2 1
       75 SETTABLEKS                       R11 R10 K21 ["ImageRectOffset"]
       77 GETIMPORT                        R11 K27 [Vector2.new]
       79 LOADN                            R12 16
       80 LOADN                            R13 16
       81 CALL                             R11 2 1
       82 SETTABLEKS                       R11 R10 K22 ["ImageRectSize"]
       84 GETIMPORT                        R11 K29 [game]
       86 LOADK                            R13 K30 ["StudioService"]
       87 NAMECALL                         R11 R11 K31 ["GetService"]
       89 CALL                             R11 2 1
       90 GETIMPORT                        R12 K33 [pcall]
       92 DUPCLOSURE                       R13 K34 [PROTO_0]
       93 CAPTURE                          VAL R11
       94 CALL                             R12 1 1
       95 DUPCLOSURE                       R13 K35 [PROTO_1]
       96 CAPTURE                          VAL R12
       97 CAPTURE                          VAL R10
       98 CAPTURE                          VAL R11
       99 DUPCLOSURE                       R14 K36 [PROTO_5]
      100 CAPTURE                          VAL R4
      101 SETTABLEKS                       R14 R9 K37 ["init"]
      103 DUPCLOSURE                       R14 K38 [PROTO_7]
      104 CAPTURE                          VAL R12
      105 CAPTURE                          VAL R10
      106 CAPTURE                          VAL R11
      107 CAPTURE                          VAL R8
      108 CAPTURE                          VAL R1
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R7
      111 SETTABLEKS                       R14 R9 K39 ["render"]
      113 RETURN                           R9 1
