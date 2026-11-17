PROTO_0:
        0 LOADNIL                          R2
        1 GETTABLEKS                       R3 R0 K0 ["OnClick"]
        3 JUMPIF                           R3 ; [+5]
        4 GETTABLEKS                       R3 R0 K1 ["OnRightClick"]
        6 JUMPIF                           R3 ; [+2]
        7 GETTABLEKS                       R3 R0 K2 ["OnPress"]
        9 GETUPVAL                         R4 0
       10 GETTABLEKS                       R5 R0 K3 ["Image"]
       12 GETTABLEKS                       R6 R1 K3 ["Image"]
       14 CALL                             R4 2 1
       15 JUMPIFNOT                        R4 ; [+5]
       16 JUMPIFNOT                        R3 ; [+2]
       17 LOADK                            R2 K4 ["ImageButton"]
       18 RETURN                           R2 1
       19 LOADK                            R2 K5 ["ImageLabel"]
       20 RETURN                           R2 1
       21 JUMPIFNOT                        R3 ; [+2]
       22 LOADK                            R2 K6 ["TextButton"]
       23 RETURN                           R2 1
       24 LOADK                            R2 K7 ["Frame"]
       25 RETURN                           R2 1

PROTO_1:
        0 GETUPVAL                         R2 0
        1 MOVE                             R3 R1
        2 CALL                             R2 1 1
        3 JUMPIFNOT                        R2 ; [+7]
        4 GETUPVAL                         R2 1
        5 GETTABLEKS                       R2 R2 K0 ["props"]
        7 GETTABLEKS                       R2 R2 K1 ["OnPress"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R2 R3 ; [+18]
        6 GETUPVAL                         R2 0
        7 GETTABLEKS                       R2 R2 K4 ["props"]
        9 GETTABLEKS                       R2 R2 K5 ["OnRightClick"]
       11 GETIMPORT                        R3 K8 [Vector2.new]
       13 GETTABLEKS                       R4 R1 K9 ["Position"]
       15 GETTABLEKS                       R4 R4 K10 ["X"]
       17 GETTABLEKS                       R5 R1 K9 ["Position"]
       19 GETTABLEKS                       R5 R5 K11 ["Y"]
       21 CALL                             R3 2 -1
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R3 R3 K0 ["props"]
        3 GETUPVAL                         R4 1
        4 GETTABLEKS                       R4 R4 K1 ["Event"]
        6 GETTABLEKS                       R4 R4 K2 ["InputBegan"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFNOT                        R2 ; [+12]
       10 GETUPVAL                         R3 0
       11 GETTABLEKS                       R3 R3 K0 ["props"]
       13 GETUPVAL                         R4 1
       14 GETTABLEKS                       R4 R4 K1 ["Event"]
       16 GETTABLEKS                       R4 R4 K2 ["InputBegan"]
       18 GETTABLE                         R2 R3 R4
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 GETUPVAL                         R2 0
       23 GETTABLEKS                       R2 R2 K0 ["props"]
       25 GETTABLEKS                       R2 R2 K3 ["OnPress"]
       27 JUMPIFNOT                        R2 ; [+6]
       28 GETUPVAL                         R2 0
       29 GETTABLEKS                       R2 R2 K4 ["onPress"]
       31 MOVE                             R3 R0
       32 MOVE                             R4 R1
       33 CALL                             R2 2 0
       34 GETUPVAL                         R2 0
       35 GETTABLEKS                       R2 R2 K0 ["props"]
       37 GETTABLEKS                       R2 R2 K5 ["OnRightClick"]
       39 JUMPIFNOT                        R2 ; [+6]
       40 GETUPVAL                         R2 0
       41 GETTABLEKS                       R2 R2 K6 ["onRightClick"]
       43 MOVE                             R3 R0
       44 MOVE                             R4 R1
       45 CALL                             R2 2 0
       46 RETURN                           R0 0

PROTO_4:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          UPVAL U0
        2 CAPTURE                          VAL R0
        3 SETTABLEKS                       R1 R0 K0 ["onPress"]
        5 NEWCLOSURE                       R1 P1
        6 CAPTURE                          VAL R0
        7 SETTABLEKS                       R1 R0 K1 ["onRightClick"]
        9 NEWCLOSURE                       R1 P2
       10 CAPTURE                          VAL R0
       11 CAPTURE                          UPVAL U1
       12 SETTABLEKS                       R1 R0 K2 ["onInputBegan"]
       14 RETURN                           R0 0

PROTO_5:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETUPVAL                         R3 0
        3 JUMPIFNOT                        R3 ; [+6]
        4 GETTABLEKS                       R2 R1 K1 ["Style"]
        6 JUMPIF                           R2 ; [+5]
        7 NEWTABLE                         R2 0 0
        9 JUMP                             ; [+2]
       10 GETTABLEKS                       R2 R1 K2 ["Stylizer"]
       12 GETUPVAL                         R4 0
       13 JUMPIFNOT                        R4 ; [+5]
       14 GETUPVAL                         R4 1
       15 GETTABLEKS                       R4 R4 K3 ["Tag"]
       17 GETTABLE                         R3 R1 R4
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 GETUPVAL                         R5 2
       21 GETTABLEKS                       R5 R5 K4 ["Children"]
       23 GETTABLE                         R4 R1 R5
       24 JUMPIF                           R4 ; [+2]
       25 NEWTABLE                         R4 0 0
       27 LOADNIL                          R5
       28 GETUPVAL                         R6 0
       29 JUMPIFNOT                        R6 ; [+38]
       30 FASTCALL1                        TYPEOF R2 ; [+3]
       31 MOVE                             R7 R2
       32 GETIMPORT                        R6 K6 [typeof]
       34 CALL                             R6 1 1
       35 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+32]
       37 GETUPVAL                         R6 3
       38 GETTABLE                         R5 R6 R2
       39 GETIMPORT                        R6 K9 [game]
       41 LOADK                            R8 K10 ["DebugDeveloperFrameworkSdk"]
       42 NAMECALL                         R6 R6 K11 ["GetFastFlag"]
       44 CALL                             R6 2 1
       45 JUMPIFNOT                        R6 ; [+20]
       46 GETUPVAL                         R6 4
       47 LOADK                            R8 K12 ["Plugin"]
       48 NAMECALL                         R6 R6 K13 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R6 2 1
       51 LOADK                            R8 K14 ["Folder"]
       52 NAMECALL                         R6 R6 K15 ["FindFirstChildWhichIsA"]
       54 CALL                             R6 2 1
       55 GETIMPORT                        R7 K17 [print]
       57 LOADK                            R8 K18 ["[DebugDeveloperFrameworkSdk] %* StyleSheets DEPRECATED: Replace Pane Style = %* with [React.Tag] = %*"]
       58 GETTABLEKS                       R10 R6 K19 ["Name"]
       60 MOVE                             R11 R2
       61 MOVE                             R12 R5
       62 NAMECALL                         R8 R8 K20 ["format"]
       64 CALL                             R8 4 1
       65 CALL                             R7 1 0
       66 NEWTABLE                         R2 0 0
       68 GETTABLEKS                       R6 R1 K21 ["Padding"]
       70 JUMPIFNOT                        R6 ; [+69]
       71 FASTCALL1                        TYPE R6 ; [+3]
       72 MOVE                             R9 R6
       73 GETIMPORT                        R8 K23 [type]
       75 CALL                             R8 1 1
       76 JUMPIFEQKS                       R8 K24 ["number"] ; [+2]
       78 LOADB                            R7 0 +1
       79 LOADB                            R7 1
       80 GETUPVAL                         R8 2
       81 GETTABLEKS                       R8 R8 K25 ["createElement"]
       83 LOADK                            R9 K26 ["UIPadding"]
       84 DUPTABLE                         R10 K31 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       85 GETIMPORT                        R11 K34 [UDim.new]
       87 LOADN                            R12 0
       88 JUMPIFNOT                        R7 ; [+2]
       89 MOVE                             R13 R6
       90 JUMPIF                           R13 ; [+4]
       91 GETTABLEKS                       R13 R6 K35 ["Top"]
       93 JUMPIF                           R13 ; [+1]
       94 LOADN                            R13 0
       95 CALL                             R11 2 1
       96 SETTABLEKS                       R11 R10 K27 ["PaddingTop"]
       98 GETIMPORT                        R11 K34 [UDim.new]
      100 LOADN                            R12 0
      101 JUMPIFNOT                        R7 ; [+2]
      102 MOVE                             R13 R6
      103 JUMPIF                           R13 ; [+4]
      104 GETTABLEKS                       R13 R6 K36 ["Bottom"]
      106 JUMPIF                           R13 ; [+1]
      107 LOADN                            R13 0
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K28 ["PaddingBottom"]
      111 GETIMPORT                        R11 K34 [UDim.new]
      113 LOADN                            R12 0
      114 JUMPIFNOT                        R7 ; [+2]
      115 MOVE                             R13 R6
      116 JUMPIF                           R13 ; [+4]
      117 GETTABLEKS                       R13 R6 K37 ["Left"]
      119 JUMPIF                           R13 ; [+1]
      120 LOADN                            R13 0
      121 CALL                             R11 2 1
      122 SETTABLEKS                       R11 R10 K29 ["PaddingLeft"]
      124 GETIMPORT                        R11 K34 [UDim.new]
      126 LOADN                            R12 0
      127 JUMPIFNOT                        R7 ; [+2]
      128 MOVE                             R13 R6
      129 JUMPIF                           R13 ; [+4]
      130 GETTABLEKS                       R13 R6 K38 ["Right"]
      132 JUMPIF                           R13 ; [+1]
      133 LOADN                            R13 0
      134 CALL                             R11 2 1
      135 SETTABLEKS                       R11 R10 K30 ["PaddingRight"]
      137 CALL                             R8 2 1
      138 SETTABLEKS                       R8 R4 K21 ["Padding"]
      140 GETTABLEKS                       R7 R1 K39 ["Layout"]
      142 JUMPIFNOT                        R7 ; [+48]
      143 LOADNIL                          R7
      144 GETTABLEKS                       R8 R1 K40 ["Spacing"]
      146 JUMPIFNOT                        R8 ; [+18]
      147 GETTABLEKS                       R9 R1 K40 ["Spacing"]
      149 FASTCALL1                        TYPEOF R9 ; [+2]
      150 GETIMPORT                        R8 K6 [typeof]
      152 CALL                             R8 1 1
      153 JUMPIFNOTEQKS                    R8 K24 ["number"] ; [+9]
      155 GETIMPORT                        R8 K34 [UDim.new]
      157 LOADN                            R9 0
      158 GETTABLEKS                       R10 R1 K40 ["Spacing"]
      160 CALL                             R8 2 1
      161 MOVE                             R7 R8
      162 JUMP                             ; [+2]
      163 GETTABLEKS                       R7 R1 K40 ["Spacing"]
      165 GETUPVAL                         R8 2
      166 GETTABLEKS                       R8 R8 K25 ["createElement"]
      168 LOADK                            R9 K41 ["UIListLayout"]
      169 DUPTABLE                         R10 K46 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      170 GETIMPORT                        R11 K49 [Enum.SortOrder.LayoutOrder]
      172 SETTABLEKS                       R11 R10 K42 ["SortOrder"]
      174 GETTABLEKS                       R11 R1 K39 ["Layout"]
      176 SETTABLEKS                       R11 R10 K43 ["FillDirection"]
      178 GETTABLEKS                       R11 R1 K44 ["HorizontalAlignment"]
      180 SETTABLEKS                       R11 R10 K44 ["HorizontalAlignment"]
      182 GETTABLEKS                       R11 R1 K45 ["VerticalAlignment"]
      184 SETTABLEKS                       R11 R10 K45 ["VerticalAlignment"]
      186 SETTABLEKS                       R7 R10 K21 ["Padding"]
      188 CALL                             R8 2 1
      189 SETTABLEKS                       R8 R4 K39 ["Layout"]
      191 GETTABLEKS                       R7 R1 K50 ["AutomaticSize"]
      193 LOADN                            R8 1
      194 LOADN                            R9 1
      195 JUMPIFNOT                        R7 ; [+18]
      196 GETIMPORT                        R10 K52 [Enum.AutomaticSize.X]
      198 JUMPIFEQ                         R7 R10 ; [+5]
      200 GETIMPORT                        R10 K54 [Enum.AutomaticSize.XY]
      202 JUMPIFNOTEQ                      R7 R10 ; [+2]
      204 LOADN                            R8 0
      205 GETIMPORT                        R10 K56 [Enum.AutomaticSize.Y]
      207 JUMPIFEQ                         R7 R10 ; [+5]
      209 GETIMPORT                        R10 K54 [Enum.AutomaticSize.XY]
      211 JUMPIFNOTEQ                      R7 R10 ; [+2]
      213 LOADN                            R9 0
      214 LOADNIL                          R12
      215 GETTABLEKS                       R13 R1 K57 ["OnClick"]
      217 JUMPIF                           R13 ; [+5]
      218 GETTABLEKS                       R13 R1 K58 ["OnRightClick"]
      220 JUMPIF                           R13 ; [+2]
      221 GETTABLEKS                       R13 R1 K59 ["OnPress"]
      223 GETUPVAL                         R14 5
      224 GETTABLEKS                       R15 R1 K60 ["Image"]
      226 GETTABLEKS                       R16 R2 K60 ["Image"]
      228 CALL                             R14 2 1
      229 JUMPIFNOT                        R14 ; [+5]
      230 JUMPIFNOT                        R13 ; [+2]
      231 LOADK                            R12 K61 ["ImageButton"]
      232 JUMP                             ; [+6]
      233 LOADK                            R12 K62 ["ImageLabel"]
      234 JUMP                             ; [+4]
      235 JUMPIFNOT                        R13 ; [+2]
      236 LOADK                            R12 K63 ["TextButton"]
      237 JUMP                             ; [+1]
      238 LOADK                            R12 K64 ["Frame"]
      239 MOVE                             R10 R12
      240 GETUPVAL                         R12 0
      241 JUMPIFNOT                        R12 ; [+18]
      242 DUPTABLE                         R11 K66 [{"Size"}]
      243 GETUPVAL                         R12 5
      244 GETTABLEKS                       R13 R1 K65 ["Size"]
      246 GETTABLEKS                       R14 R2 K65 ["Size"]
      248 JUMPIFNOT                        R7 ; [+6]
      249 GETIMPORT                        R15 K69 [UDim2.fromScale]
      251 MOVE                             R16 R8
      252 MOVE                             R17 R9
      253 CALL                             R15 2 1
      254 JUMP                             ; [+1]
      255 LOADNIL                          R15
      256 CALL                             R12 3 1
      257 SETTABLEKS                       R12 R11 K65 ["Size"]
      259 JUMP                             ; [+23]
      260 DUPTABLE                         R11 K73 [{["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["Size"]}]
      261 GETUPVAL                         R12 5
      262 GETTABLEKS                       R13 R1 K74 ["Transparency"]
      264 GETTABLEKS                       R14 R2 K74 ["Transparency"]
      266 LOADN                            R15 1
      267 CALL                             R12 3 1
      268 SETTABLEKS                       R12 R11 K70 ["BackgroundTransparency"]
      270 GETUPVAL                         R12 5
      271 GETTABLEKS                       R13 R1 K65 ["Size"]
      273 GETTABLEKS                       R14 R2 K65 ["Size"]
      275 GETIMPORT                        R15 K69 [UDim2.fromScale]
      277 MOVE                             R16 R8
      278 MOVE                             R17 R9
      279 CALL                             R15 2 -1
      280 CALL                             R12 -1 1
      281 SETTABLEKS                       R12 R11 K65 ["Size"]
      283 GETTABLEKS                       R12 R1 K75 ["BackgroundColor3"]
      285 JUMPIF                           R12 ; [+5]
      286 GETTABLEKS                       R12 R1 K76 ["BackgroundColor"]
      288 JUMPIF                           R12 ; [+2]
      289 GETTABLEKS                       R12 R2 K77 ["Background"]
      291 JUMPIFNOT                        R12 ; [+15]
      292 GETUPVAL                         R14 0
      293 JUMPIFNOT                        R14 ; [+4]
      294 GETTABLEKS                       R14 R1 K74 ["Transparency"]
      296 ORK                              R13 R14 K72 [0]
      297 JUMP                             ; [+7]
      298 GETUPVAL                         R13 5
      299 GETTABLEKS                       R14 R1 K74 ["Transparency"]
      301 GETTABLEKS                       R15 R2 K74 ["Transparency"]
      303 LOADN                            R16 0
      304 CALL                             R13 3 1
      305 SETTABLEKS                       R13 R11 K70 ["BackgroundTransparency"]
      307 LOADNIL                          R13
      308 GETTABLEKS                       R14 R1 K58 ["OnRightClick"]
      310 JUMPIF                           R14 ; [+3]
      311 GETTABLEKS                       R14 R1 K59 ["OnPress"]
      313 JUMPIFNOT                        R14 ; [+2]
      314 GETTABLEKS                       R13 R0 K78 ["onInputBegan"]
      316 GETTABLEKS                       R14 R1 K57 ["OnClick"]
      318 JUMPIF                           R14 ; [+5]
      319 GETTABLEKS                       R14 R1 K58 ["OnRightClick"]
      321 JUMPIF                           R14 ; [+2]
      322 GETTABLEKS                       R14 R1 K59 ["OnPress"]
      324 GETTABLEKS                       R15 R1 K57 ["OnClick"]
      326 JUMPIFNOT                        R15 ; [+8]
      327 GETUPVAL                         R15 2
      328 GETTABLEKS                       R15 R15 K79 ["Event"]
      330 GETTABLEKS                       R15 R15 K80 ["Activated"]
      332 GETTABLEKS                       R16 R1 K57 ["OnClick"]
      334 SETTABLE                         R16 R11 R15
      335 GETUPVAL                         R15 5
      336 GETTABLEKS                       R16 R1 K60 ["Image"]
      338 GETTABLEKS                       R17 R2 K60 ["Image"]
      340 CALL                             R15 2 1
      341 JUMPIFNOT                        R14 ; [+7]
      342 JUMPIF                           R15 ; [+6]
      343 LOADB                            R16 0
      344 SETTABLEKS                       R16 R11 K81 ["AutoButtonColor"]
      346 LOADK                            R16 K82 [""]
      347 SETTABLEKS                       R16 R11 K83 ["Text"]
      349 JUMPIFNOT                        R15 ; [+17]
      350 GETUPVAL                         R16 6
      351 MOVE                             R17 R11
      352 DUPTABLE                         R18 K88 [{["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["SliceCenter"]}]
      353 SETTABLEKS                       R15 R18 K60 ["Image"]
      355 SETTABLEKS                       R12 R18 K84 ["ImageColor3"]
      357 GETIMPORT                        R19 K90 [Enum.ScaleType.Slice]
      359 SETTABLEKS                       R19 R18 K86 ["ScaleType"]
      361 GETTABLEKS                       R19 R2 K87 ["SliceCenter"]
      363 SETTABLEKS                       R19 R18 K87 ["SliceCenter"]
      365 CALL                             R16 2 0
      366 JUMP                             ; [+3]
      367 JUMPIFNOT                        R12 ; [+2]
      368 SETTABLEKS                       R12 R11 K75 ["BackgroundColor3"]
      370 GETUPVAL                         R17 0
      371 JUMPIFNOT                        R17 ; [+2]
      372 LOADNIL                          R16
      373 JUMP                             ; [+7]
      374 GETUPVAL                         R16 5
      375 GETTABLEKS                       R17 R1 K91 ["Border"]
      377 GETTABLEKS                       R18 R2 K91 ["Border"]
      379 LOADNIL                          R19
      380 CALL                             R16 3 1
      381 JUMPIFNOT                        R16 ; [+56]
      382 GETTABLEKS                       R17 R16 K60 ["Image"]
      384 JUMPIF                           R17 ; [+14]
      385 GETUPVAL                         R17 6
      386 MOVE                             R18 R11
      387 DUPTABLE                         R19 K93 [{"BorderColor3", "BorderSizePixel"}]
      388 GETTABLEKS                       R20 R16 K94 ["Color"]
      390 SETTABLEKS                       R20 R19 K92 ["BorderColor3"]
      392 GETTABLEKS                       R21 R16 K65 ["Size"]
      394 ORK                              R20 R21 K85 [1]
      395 SETTABLEKS                       R20 R19 K71 ["BorderSizePixel"]
      397 CALL                             R17 2 0
      398 JUMP                             ; [+39]
      399 DUPTABLE                         R17 K96 [{"Contents"}]
      400 GETUPVAL                         R18 2
      401 GETTABLEKS                       R18 R18 K25 ["createElement"]
      403 LOADK                            R19 K62 ["ImageLabel"]
      404 DUPTABLE                         R20 K97 [{["Size"], ["AutomaticSize"], ["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["SliceCenter"]}]
      405 GETIMPORT                        R21 K69 [UDim2.fromScale]
      407 MOVE                             R22 R8
      408 MOVE                             R23 R9
      409 CALL                             R21 2 1
      410 SETTABLEKS                       R21 R20 K65 ["Size"]
      412 SETTABLEKS                       R7 R20 K50 ["AutomaticSize"]
      414 GETTABLEKS                       R21 R16 K60 ["Image"]
      416 SETTABLEKS                       R21 R20 K60 ["Image"]
      418 GETTABLEKS                       R21 R1 K98 ["BorderColor"]
      420 JUMPIF                           R21 ; [+2]
      421 GETTABLEKS                       R21 R16 K77 ["Background"]
      423 SETTABLEKS                       R21 R20 K84 ["ImageColor3"]
      425 GETIMPORT                        R21 K90 [Enum.ScaleType.Slice]
      427 SETTABLEKS                       R21 R20 K86 ["ScaleType"]
      429 GETTABLEKS                       R21 R16 K87 ["SliceCenter"]
      431 SETTABLEKS                       R21 R20 K87 ["SliceCenter"]
      433 MOVE                             R21 R4
      434 CALL                             R18 3 1
      435 SETTABLEKS                       R18 R17 K95 ["Contents"]
      437 MOVE                             R4 R17
      438 GETTABLEKS                       R17 R2 K99 ["CornerRadius"]
      440 JUMPIFNOT                        R17 ; [+12]
      441 GETUPVAL                         R17 2
      442 GETTABLEKS                       R17 R17 K25 ["createElement"]
      444 LOADK                            R18 K100 ["UICorner"]
      445 DUPTABLE                         R19 K101 [{"CornerRadius"}]
      446 GETTABLEKS                       R20 R2 K99 ["CornerRadius"]
      448 SETTABLEKS                       R20 R19 K99 ["CornerRadius"]
      450 CALL                             R17 2 1
      451 SETTABLEKS                       R17 R4 K100 ["UICorner"]
      453 GETTABLEKS                       R17 R1 K102 ["ForwardRef"]
      455 JUMPIFNOT                        R17 ; [+6]
      456 GETUPVAL                         R17 2
      457 GETTABLEKS                       R17 R17 K103 ["Ref"]
      459 GETTABLEKS                       R18 R1 K102 ["ForwardRef"]
      461 SETTABLE                         R18 R11 R17
      462 GETUPVAL                         R17 7
      463 GETUPVAL                         R18 8
      464 MOVE                             R19 R11
      465 MOVE                             R20 R1
      466 CALL                             R18 2 1
      467 NEWTABLE                         R19 0 16
      469 GETUPVAL                         R20 2
      470 GETTABLEKS                       R20 R20 K4 ["Children"]
      472 LOADK                            R21 K104 ["StyleModifier"]
      473 LOADK                            R22 K76 ["BackgroundColor"]
      474 LOADK                            R23 K98 ["BorderColor"]
      475 LOADK                            R24 K21 ["Padding"]
      476 LOADK                            R25 K39 ["Layout"]
      477 LOADK                            R26 K40 ["Spacing"]
      478 LOADK                            R27 K1 ["Style"]
      479 LOADK                            R28 K2 ["Stylizer"]
      480 LOADK                            R29 K105 ["Theme"]
      481 LOADK                            R30 K44 ["HorizontalAlignment"]
      482 LOADK                            R31 K45 ["VerticalAlignment"]
      483 LOADK                            R32 K57 ["OnClick"]
      484 LOADK                            R33 K58 ["OnRightClick"]
      485 LOADK                            R34 K59 ["OnPress"]
      486 LOADK                            R35 K102 ["ForwardRef"]
      487 SETLIST                          R19 R20 16 [1]
      489 CALL                             R17 2 1
      490 JUMPIFNOT                        R13 ; [+6]
      491 GETUPVAL                         R18 2
      492 GETTABLEKS                       R18 R18 K79 ["Event"]
      494 GETTABLEKS                       R18 R18 K106 ["InputBegan"]
      496 SETTABLE                         R13 R17 R18
      497 GETUPVAL                         R18 0
      498 JUMPIFNOT                        R18 ; [+24]
      499 GETUPVAL                         R18 1
      500 GETTABLEKS                       R18 R18 K3 ["Tag"]
      502 GETUPVAL                         R19 9
      503 LOADK                            R20 K107 ["Component-Pane"]
      504 MOVE                             R21 R3
      505 MOVE                             R22 R5
      506 GETTABLEKS                       R24 R17 K65 ["Size"]
      508 GETUPVAL                         R25 10
      509 JUMPIFNOTEQ                      R24 R25 ; [+3]
      511 LOADK                            R23 K108 ["X-DefaultSize"]
      512 JUMP                             ; [+1]
      513 LOADNIL                          R23
      514 GETTABLEKS                       R25 R17 K70 ["BackgroundTransparency"]
      516 JUMPIFNOTEQKN                    R25 K72 [0] ; [+3]
      518 LOADK                            R24 K109 ["X-DefaultTransparency"]
      519 JUMP                             ; [+1]
      520 LOADNIL                          R24
      521 CALL                             R19 5 1
      522 SETTABLE                         R19 R17 R18
      523 GETUPVAL                         R18 2
      524 GETTABLEKS                       R18 R18 K25 ["createElement"]
      526 MOVE                             R19 R10
      527 MOVE                             R20 R17
      528 MOVE                             R21 R4
      529 CALL                             R18 3 -1
      530 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["UI"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETTABLEKS                       R0 R0 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R2 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R2 K7 ["ContextServices"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["withContext"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R4 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R4 K9 ["Roact"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 LOADK                            R7 K10 ["React"]
       28 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+8]
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R5 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R5 K10 ["React"]
       38 CALL                             R4 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R6 R0 K12 ["Styling"]
       45 GETTABLEKS                       R6 R6 K13 ["supportsStyleSheets"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K14 ["Util"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R6 K15 ["isInputMainPress"]
       55 GETTABLEKS                       R8 R6 K16 ["prioritize"]
       57 GETIMPORT                        R9 K6 [require]
       59 GETTABLEKS                       R10 R0 K17 ["Wrappers"]
       61 GETTABLEKS                       R10 R10 K18 ["withForwardRef"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K6 [require]
       66 GETTABLEKS                       R11 R0 K12 ["Styling"]
       68 GETTABLEKS                       R11 R11 K19 ["joinTags"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K6 [require]
       73 GETTABLEKS                       R12 R0 K4 ["Parent"]
       75 GETTABLEKS                       R12 R12 K20 ["Dash"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R12 R11 K21 ["assign"]
       80 GETTABLEKS                       R13 R11 K22 ["join"]
       82 GETTABLEKS                       R14 R11 K23 ["omit"]
       84 GETIMPORT                        R15 K26 [UDim2.fromScale]
       86 LOADN                            R16 0
       87 LOADN                            R17 0
       88 CALL                             R15 2 1
       89 DUPTABLE                         R16 K43 [{["Box"] = "Main", ["BorderBox"] = "Main X-Border", ["SubtleBox"] = "Muted", ["SubtleBorderBox"] = "Muted X-Border", ["RoundBox"] = "Main X-Corner", ["InputBox"] = "X-Input", ["ErrorBorderBox"] = "X-Error", ["CornerBox"] = "X-Corner"}]
       90 GETTABLEKS                       R17 R3 K44 ["PureComponent"]
       92 LOADK                            R19 K45 ["Pane"]
       93 NAMECALL                         R17 R17 K46 ["extend"]
       95 CALL                             R17 2 1
       96 DUPCLOSURE                       R18 K47 [PROTO_0]
       97 CAPTURE                          VAL R8
       98 DUPTABLE                         R19 K50 [{"HorizontalAlignment", "VerticalAlignment"}]
       99 GETIMPORT                        R20 K53 [Enum.HorizontalAlignment.Center]
      101 SETTABLEKS                       R20 R19 K48 ["HorizontalAlignment"]
      103 GETIMPORT                        R20 K54 [Enum.VerticalAlignment.Center]
      105 SETTABLEKS                       R20 R19 K49 ["VerticalAlignment"]
      107 SETTABLEKS                       R19 R17 K55 ["defaultProps"]
      109 DUPCLOSURE                       R19 K56 [PROTO_4]
      110 CAPTURE                          VAL R7
      111 CAPTURE                          VAL R3
      112 SETTABLEKS                       R19 R17 K57 ["init"]
      114 DUPCLOSURE                       R19 K58 [PROTO_5]
      115 CAPTURE                          VAL R5
      116 CAPTURE                          VAL R4
      117 CAPTURE                          VAL R3
      118 CAPTURE                          VAL R16
      119 CAPTURE                          VAL R0
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R14
      123 CAPTURE                          VAL R13
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R15
      126 SETTABLEKS                       R19 R17 K59 ["render"]
      128 MOVE                             R19 R2
      129 DUPTABLE                         R20 K61 [{"Stylizer"}]
      130 JUMPIFNOT                        R5 ; [+2]
      131 LOADNIL                          R21
      132 JUMP                             ; [+2]
      133 GETTABLEKS                       R21 R1 K60 ["Stylizer"]
      135 SETTABLEKS                       R21 R20 K60 ["Stylizer"]
      137 CALL                             R19 1 1
      138 MOVE                             R20 R17
      139 CALL                             R19 1 1
      140 MOVE                             R17 R19
      141 MOVE                             R19 R9
      142 MOVE                             R20 R17
      143 CALL                             R19 1 -1
      144 RETURN                           R19 -1
