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
      214 MOVE                             R11 R2
      215 LOADNIL                          R12
      216 GETTABLEKS                       R13 R1 K57 ["OnClick"]
      218 JUMPIF                           R13 ; [+5]
      219 GETTABLEKS                       R13 R1 K58 ["OnRightClick"]
      221 JUMPIF                           R13 ; [+2]
      222 GETTABLEKS                       R13 R1 K59 ["OnPress"]
      224 GETUPVAL                         R14 5
      225 GETTABLEKS                       R15 R1 K60 ["Image"]
      227 GETTABLEKS                       R16 R11 K60 ["Image"]
      229 CALL                             R14 2 1
      230 JUMPIFNOT                        R14 ; [+5]
      231 JUMPIFNOT                        R13 ; [+2]
      232 LOADK                            R12 K61 ["ImageButton"]
      233 JUMP                             ; [+6]
      234 LOADK                            R12 K62 ["ImageLabel"]
      235 JUMP                             ; [+4]
      236 JUMPIFNOT                        R13 ; [+2]
      237 LOADK                            R12 K63 ["TextButton"]
      238 JUMP                             ; [+1]
      239 LOADK                            R12 K64 ["Frame"]
      240 MOVE                             R10 R12
      241 GETUPVAL                         R12 0
      242 JUMPIFNOT                        R12 ; [+18]
      243 DUPTABLE                         R11 K66 [{"Size"}]
      244 GETUPVAL                         R12 5
      245 GETTABLEKS                       R13 R1 K65 ["Size"]
      247 GETTABLEKS                       R14 R2 K65 ["Size"]
      249 JUMPIFNOT                        R7 ; [+6]
      250 GETIMPORT                        R15 K69 [UDim2.fromScale]
      252 MOVE                             R16 R8
      253 MOVE                             R17 R9
      254 CALL                             R15 2 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R15
      257 CALL                             R12 3 1
      258 SETTABLEKS                       R12 R11 K65 ["Size"]
      260 JUMP                             ; [+23]
      261 DUPTABLE                         R11 K73 [{["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["Size"]}]
      262 GETUPVAL                         R12 5
      263 GETTABLEKS                       R13 R1 K74 ["Transparency"]
      265 GETTABLEKS                       R14 R2 K74 ["Transparency"]
      267 LOADN                            R15 1
      268 CALL                             R12 3 1
      269 SETTABLEKS                       R12 R11 K70 ["BackgroundTransparency"]
      271 GETUPVAL                         R12 5
      272 GETTABLEKS                       R13 R1 K65 ["Size"]
      274 GETTABLEKS                       R14 R2 K65 ["Size"]
      276 GETIMPORT                        R15 K69 [UDim2.fromScale]
      278 MOVE                             R16 R8
      279 MOVE                             R17 R9
      280 CALL                             R15 2 -1
      281 CALL                             R12 -1 1
      282 SETTABLEKS                       R12 R11 K65 ["Size"]
      284 GETTABLEKS                       R12 R1 K75 ["BackgroundColor3"]
      286 JUMPIF                           R12 ; [+5]
      287 GETTABLEKS                       R12 R1 K76 ["BackgroundColor"]
      289 JUMPIF                           R12 ; [+2]
      290 GETTABLEKS                       R12 R2 K77 ["Background"]
      292 JUMPIFNOT                        R12 ; [+15]
      293 GETUPVAL                         R14 0
      294 JUMPIFNOT                        R14 ; [+4]
      295 GETTABLEKS                       R14 R1 K74 ["Transparency"]
      297 ORK                              R13 R14 K72 [0]
      298 JUMP                             ; [+7]
      299 GETUPVAL                         R13 5
      300 GETTABLEKS                       R14 R1 K74 ["Transparency"]
      302 GETTABLEKS                       R15 R2 K74 ["Transparency"]
      304 LOADN                            R16 0
      305 CALL                             R13 3 1
      306 SETTABLEKS                       R13 R11 K70 ["BackgroundTransparency"]
      308 LOADNIL                          R13
      309 GETTABLEKS                       R14 R1 K58 ["OnRightClick"]
      311 JUMPIF                           R14 ; [+3]
      312 GETTABLEKS                       R14 R1 K59 ["OnPress"]
      314 JUMPIFNOT                        R14 ; [+2]
      315 GETTABLEKS                       R13 R0 K78 ["onInputBegan"]
      317 GETTABLEKS                       R14 R1 K57 ["OnClick"]
      319 JUMPIF                           R14 ; [+5]
      320 GETTABLEKS                       R14 R1 K58 ["OnRightClick"]
      322 JUMPIF                           R14 ; [+2]
      323 GETTABLEKS                       R14 R1 K59 ["OnPress"]
      325 GETTABLEKS                       R15 R1 K57 ["OnClick"]
      327 JUMPIFNOT                        R15 ; [+8]
      328 GETUPVAL                         R15 2
      329 GETTABLEKS                       R15 R15 K79 ["Event"]
      331 GETTABLEKS                       R15 R15 K80 ["Activated"]
      333 GETTABLEKS                       R16 R1 K57 ["OnClick"]
      335 SETTABLE                         R16 R11 R15
      336 GETUPVAL                         R15 5
      337 GETTABLEKS                       R16 R1 K60 ["Image"]
      339 GETTABLEKS                       R17 R2 K60 ["Image"]
      341 CALL                             R15 2 1
      342 JUMPIFNOT                        R14 ; [+7]
      343 JUMPIF                           R15 ; [+6]
      344 LOADB                            R16 0
      345 SETTABLEKS                       R16 R11 K81 ["AutoButtonColor"]
      347 LOADK                            R16 K82 [""]
      348 SETTABLEKS                       R16 R11 K83 ["Text"]
      350 JUMPIFNOT                        R15 ; [+17]
      351 GETUPVAL                         R16 6
      352 MOVE                             R17 R11
      353 DUPTABLE                         R18 K88 [{["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["SliceCenter"]}]
      354 SETTABLEKS                       R15 R18 K60 ["Image"]
      356 SETTABLEKS                       R12 R18 K84 ["ImageColor3"]
      358 GETIMPORT                        R19 K90 [Enum.ScaleType.Slice]
      360 SETTABLEKS                       R19 R18 K86 ["ScaleType"]
      362 GETTABLEKS                       R19 R2 K87 ["SliceCenter"]
      364 SETTABLEKS                       R19 R18 K87 ["SliceCenter"]
      366 CALL                             R16 2 0
      367 JUMP                             ; [+3]
      368 JUMPIFNOT                        R12 ; [+2]
      369 SETTABLEKS                       R12 R11 K75 ["BackgroundColor3"]
      371 GETUPVAL                         R17 0
      372 JUMPIFNOT                        R17 ; [+2]
      373 LOADNIL                          R16
      374 JUMP                             ; [+7]
      375 GETUPVAL                         R16 5
      376 GETTABLEKS                       R17 R1 K91 ["Border"]
      378 GETTABLEKS                       R18 R2 K91 ["Border"]
      380 LOADNIL                          R19
      381 CALL                             R16 3 1
      382 JUMPIFNOT                        R16 ; [+56]
      383 GETTABLEKS                       R17 R16 K60 ["Image"]
      385 JUMPIF                           R17 ; [+14]
      386 GETUPVAL                         R17 6
      387 MOVE                             R18 R11
      388 DUPTABLE                         R19 K93 [{"BorderColor3", "BorderSizePixel"}]
      389 GETTABLEKS                       R20 R16 K94 ["Color"]
      391 SETTABLEKS                       R20 R19 K92 ["BorderColor3"]
      393 GETTABLEKS                       R21 R16 K65 ["Size"]
      395 ORK                              R20 R21 K85 [1]
      396 SETTABLEKS                       R20 R19 K71 ["BorderSizePixel"]
      398 CALL                             R17 2 0
      399 JUMP                             ; [+39]
      400 DUPTABLE                         R17 K96 [{"Contents"}]
      401 GETUPVAL                         R18 2
      402 GETTABLEKS                       R18 R18 K25 ["createElement"]
      404 LOADK                            R19 K62 ["ImageLabel"]
      405 DUPTABLE                         R20 K97 [{["Size"], ["AutomaticSize"], ["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["SliceCenter"]}]
      406 GETIMPORT                        R21 K69 [UDim2.fromScale]
      408 MOVE                             R22 R8
      409 MOVE                             R23 R9
      410 CALL                             R21 2 1
      411 SETTABLEKS                       R21 R20 K65 ["Size"]
      413 SETTABLEKS                       R7 R20 K50 ["AutomaticSize"]
      415 GETTABLEKS                       R21 R16 K60 ["Image"]
      417 SETTABLEKS                       R21 R20 K60 ["Image"]
      419 GETTABLEKS                       R21 R1 K98 ["BorderColor"]
      421 JUMPIF                           R21 ; [+2]
      422 GETTABLEKS                       R21 R16 K77 ["Background"]
      424 SETTABLEKS                       R21 R20 K84 ["ImageColor3"]
      426 GETIMPORT                        R21 K90 [Enum.ScaleType.Slice]
      428 SETTABLEKS                       R21 R20 K86 ["ScaleType"]
      430 GETTABLEKS                       R21 R16 K87 ["SliceCenter"]
      432 SETTABLEKS                       R21 R20 K87 ["SliceCenter"]
      434 MOVE                             R21 R4
      435 CALL                             R18 3 1
      436 SETTABLEKS                       R18 R17 K95 ["Contents"]
      438 MOVE                             R4 R17
      439 GETTABLEKS                       R17 R2 K99 ["CornerRadius"]
      441 JUMPIFNOT                        R17 ; [+12]
      442 GETUPVAL                         R17 2
      443 GETTABLEKS                       R17 R17 K25 ["createElement"]
      445 LOADK                            R18 K100 ["UICorner"]
      446 DUPTABLE                         R19 K101 [{"CornerRadius"}]
      447 GETTABLEKS                       R20 R2 K99 ["CornerRadius"]
      449 SETTABLEKS                       R20 R19 K99 ["CornerRadius"]
      451 CALL                             R17 2 1
      452 SETTABLEKS                       R17 R4 K100 ["UICorner"]
      454 GETTABLEKS                       R17 R1 K102 ["ForwardRef"]
      456 JUMPIFNOT                        R17 ; [+6]
      457 GETUPVAL                         R17 2
      458 GETTABLEKS                       R17 R17 K103 ["Ref"]
      460 GETTABLEKS                       R18 R1 K102 ["ForwardRef"]
      462 SETTABLE                         R18 R11 R17
      463 GETUPVAL                         R17 7
      464 GETUPVAL                         R18 8
      465 MOVE                             R19 R11
      466 MOVE                             R20 R1
      467 CALL                             R18 2 1
      468 NEWTABLE                         R19 0 16
      470 GETUPVAL                         R20 2
      471 GETTABLEKS                       R20 R20 K4 ["Children"]
      473 LOADK                            R21 K104 ["StyleModifier"]
      474 LOADK                            R22 K76 ["BackgroundColor"]
      475 LOADK                            R23 K98 ["BorderColor"]
      476 LOADK                            R24 K21 ["Padding"]
      477 LOADK                            R25 K39 ["Layout"]
      478 LOADK                            R26 K40 ["Spacing"]
      479 LOADK                            R27 K1 ["Style"]
      480 LOADK                            R28 K2 ["Stylizer"]
      481 LOADK                            R29 K105 ["Theme"]
      482 LOADK                            R30 K44 ["HorizontalAlignment"]
      483 LOADK                            R31 K45 ["VerticalAlignment"]
      484 LOADK                            R32 K57 ["OnClick"]
      485 LOADK                            R33 K58 ["OnRightClick"]
      486 LOADK                            R34 K59 ["OnPress"]
      487 LOADK                            R35 K102 ["ForwardRef"]
      488 SETLIST                          R19 R20 16 [1]
      490 CALL                             R17 2 1
      491 JUMPIFNOT                        R13 ; [+6]
      492 GETUPVAL                         R18 2
      493 GETTABLEKS                       R18 R18 K79 ["Event"]
      495 GETTABLEKS                       R18 R18 K106 ["InputBegan"]
      497 SETTABLE                         R13 R17 R18
      498 GETUPVAL                         R18 0
      499 JUMPIFNOT                        R18 ; [+24]
      500 GETUPVAL                         R18 1
      501 GETTABLEKS                       R18 R18 K3 ["Tag"]
      503 GETUPVAL                         R19 9
      504 LOADK                            R20 K107 ["Component-Pane"]
      505 MOVE                             R21 R3
      506 MOVE                             R22 R5
      507 GETTABLEKS                       R24 R17 K65 ["Size"]
      509 GETUPVAL                         R25 10
      510 JUMPIFNOTEQ                      R24 R25 ; [+3]
      512 LOADK                            R23 K108 ["X-DefaultSize"]
      513 JUMP                             ; [+1]
      514 LOADNIL                          R23
      515 GETTABLEKS                       R25 R17 K70 ["BackgroundTransparency"]
      517 JUMPIFNOTEQKN                    R25 K72 [0] ; [+3]
      519 LOADK                            R24 K109 ["X-DefaultTransparency"]
      520 JUMP                             ; [+1]
      521 LOADNIL                          R24
      522 CALL                             R19 5 1
      523 SETTABLE                         R19 R17 R18
      524 GETUPVAL                         R18 2
      525 GETTABLEKS                       R18 R18 K25 ["createElement"]
      527 MOVE                             R19 R10
      528 MOVE                             R20 R17
      529 MOVE                             R21 R4
      530 CALL                             R18 3 -1
      531 RETURN                           R18 -1

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
