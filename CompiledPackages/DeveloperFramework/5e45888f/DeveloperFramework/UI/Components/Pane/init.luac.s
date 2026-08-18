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
       29 JUMPIFNOT                        R6 ; [+39]
       30 FASTCALL1                        TYPEOF R2 ; [+3]
       31 MOVE                             R7 R2
       32 GETIMPORT                        R6 K6 [typeof]
       34 CALL                             R6 1 1
       35 JUMPIFNOTEQKS                    R6 K7 ["string"] ; [+33]
       37 GETUPVAL                         R6 3
       38 GETTABLE                         R5 R6 R2
       39 GETIMPORT                        R6 K9 [game]
       41 LOADK                            R8 K10 ["DebugDeveloperFrameworkSdk"]
       42 NAMECALL                         R6 R6 K11 ["GetFastFlag"]
       44 CALL                             R6 2 1
       45 JUMPIFNOT                        R6 ; [+21]
       46 GETUPVAL                         R6 4
       47 LOADK                            R8 K12 ["Plugin"]
       48 NAMECALL                         R6 R6 K13 ["FindFirstAncestorWhichIsA"]
       50 CALL                             R6 2 1
       51 LOADK                            R8 K14 ["Folder"]
       52 NAMECALL                         R6 R6 K15 ["FindFirstChildWhichIsA"]
       54 CALL                             R6 2 1
       55 GETIMPORT                        R7 K17 [print]
       57 LOADK                            R9 K18 ["[DebugDeveloperFrameworkSdk] %* StyleSheets DEPRECATED: Replace Pane Style = %* with [React.Tag] = %*"]
       58 GETTABLEKS                       R11 R6 K19 ["Name"]
       60 MOVE                             R12 R2
       61 MOVE                             R13 R5
       62 NAMECALL                         R9 R9 K20 ["format"]
       64 CALL                             R9 4 1
       65 MOVE                             R8 R9
       66 CALL                             R7 1 0
       67 NEWTABLE                         R2 0 0
       69 GETTABLEKS                       R6 R1 K21 ["Padding"]
       71 JUMPIFNOT                        R6 ; [+69]
       72 FASTCALL1                        TYPE R6 ; [+3]
       73 MOVE                             R9 R6
       74 GETIMPORT                        R8 K23 [type]
       76 CALL                             R8 1 1
       77 JUMPIFEQKS                       R8 K24 ["number"] ; [+2]
       79 LOADB                            R7 0 +1
       80 LOADB                            R7 1
       81 GETUPVAL                         R8 2
       82 GETTABLEKS                       R8 R8 K25 ["createElement"]
       84 LOADK                            R9 K26 ["UIPadding"]
       85 DUPTABLE                         R10 K31 [{"PaddingTop", "PaddingBottom", "PaddingLeft", "PaddingRight"}]
       86 GETIMPORT                        R11 K34 [UDim.new]
       88 LOADN                            R12 0
       89 JUMPIFNOT                        R7 ; [+2]
       90 MOVE                             R13 R6
       91 JUMPIF                           R13 ; [+4]
       92 GETTABLEKS                       R13 R6 K35 ["Top"]
       94 JUMPIF                           R13 ; [+1]
       95 LOADN                            R13 0
       96 CALL                             R11 2 1
       97 SETTABLEKS                       R11 R10 K27 ["PaddingTop"]
       99 GETIMPORT                        R11 K34 [UDim.new]
      101 LOADN                            R12 0
      102 JUMPIFNOT                        R7 ; [+2]
      103 MOVE                             R13 R6
      104 JUMPIF                           R13 ; [+4]
      105 GETTABLEKS                       R13 R6 K36 ["Bottom"]
      107 JUMPIF                           R13 ; [+1]
      108 LOADN                            R13 0
      109 CALL                             R11 2 1
      110 SETTABLEKS                       R11 R10 K28 ["PaddingBottom"]
      112 GETIMPORT                        R11 K34 [UDim.new]
      114 LOADN                            R12 0
      115 JUMPIFNOT                        R7 ; [+2]
      116 MOVE                             R13 R6
      117 JUMPIF                           R13 ; [+4]
      118 GETTABLEKS                       R13 R6 K37 ["Left"]
      120 JUMPIF                           R13 ; [+1]
      121 LOADN                            R13 0
      122 CALL                             R11 2 1
      123 SETTABLEKS                       R11 R10 K29 ["PaddingLeft"]
      125 GETIMPORT                        R11 K34 [UDim.new]
      127 LOADN                            R12 0
      128 JUMPIFNOT                        R7 ; [+2]
      129 MOVE                             R13 R6
      130 JUMPIF                           R13 ; [+4]
      131 GETTABLEKS                       R13 R6 K38 ["Right"]
      133 JUMPIF                           R13 ; [+1]
      134 LOADN                            R13 0
      135 CALL                             R11 2 1
      136 SETTABLEKS                       R11 R10 K30 ["PaddingRight"]
      138 CALL                             R8 2 1
      139 SETTABLEKS                       R8 R4 K21 ["Padding"]
      141 GETTABLEKS                       R7 R1 K39 ["Layout"]
      143 JUMPIFNOT                        R7 ; [+48]
      144 LOADNIL                          R7
      145 GETTABLEKS                       R8 R1 K40 ["Spacing"]
      147 JUMPIFNOT                        R8 ; [+18]
      148 GETTABLEKS                       R9 R1 K40 ["Spacing"]
      150 FASTCALL1                        TYPEOF R9 ; [+2]
      151 GETIMPORT                        R8 K6 [typeof]
      153 CALL                             R8 1 1
      154 JUMPIFNOTEQKS                    R8 K24 ["number"] ; [+9]
      156 GETIMPORT                        R8 K34 [UDim.new]
      158 LOADN                            R9 0
      159 GETTABLEKS                       R10 R1 K40 ["Spacing"]
      161 CALL                             R8 2 1
      162 MOVE                             R7 R8
      163 JUMP                             ; [+2]
      164 GETTABLEKS                       R7 R1 K40 ["Spacing"]
      166 GETUPVAL                         R8 2
      167 GETTABLEKS                       R8 R8 K25 ["createElement"]
      169 LOADK                            R9 K41 ["UIListLayout"]
      170 DUPTABLE                         R10 K46 [{"SortOrder", "FillDirection", "HorizontalAlignment", "VerticalAlignment", "Padding"}]
      171 GETIMPORT                        R11 K49 [Enum.SortOrder.LayoutOrder]
      173 SETTABLEKS                       R11 R10 K42 ["SortOrder"]
      175 GETTABLEKS                       R11 R1 K39 ["Layout"]
      177 SETTABLEKS                       R11 R10 K43 ["FillDirection"]
      179 GETTABLEKS                       R11 R1 K44 ["HorizontalAlignment"]
      181 SETTABLEKS                       R11 R10 K44 ["HorizontalAlignment"]
      183 GETTABLEKS                       R11 R1 K45 ["VerticalAlignment"]
      185 SETTABLEKS                       R11 R10 K45 ["VerticalAlignment"]
      187 SETTABLEKS                       R7 R10 K21 ["Padding"]
      189 CALL                             R8 2 1
      190 SETTABLEKS                       R8 R4 K39 ["Layout"]
      192 GETTABLEKS                       R7 R1 K50 ["AutomaticSize"]
      194 LOADN                            R8 1
      195 LOADN                            R9 1
      196 JUMPIFNOT                        R7 ; [+18]
      197 GETIMPORT                        R10 K52 [Enum.AutomaticSize.X]
      199 JUMPIFEQ                         R7 R10 ; [+5]
      201 GETIMPORT                        R10 K54 [Enum.AutomaticSize.XY]
      203 JUMPIFNOTEQ                      R7 R10 ; [+2]
      205 LOADN                            R8 0
      206 GETIMPORT                        R10 K56 [Enum.AutomaticSize.Y]
      208 JUMPIFEQ                         R7 R10 ; [+5]
      210 GETIMPORT                        R10 K54 [Enum.AutomaticSize.XY]
      212 JUMPIFNOTEQ                      R7 R10 ; [+2]
      214 LOADN                            R9 0
      215 MOVE                             R11 R2
      216 LOADNIL                          R12
      217 GETTABLEKS                       R13 R1 K57 ["OnClick"]
      219 JUMPIF                           R13 ; [+5]
      220 GETTABLEKS                       R13 R1 K58 ["OnRightClick"]
      222 JUMPIF                           R13 ; [+2]
      223 GETTABLEKS                       R13 R1 K59 ["OnPress"]
      225 GETUPVAL                         R14 5
      226 GETTABLEKS                       R15 R1 K60 ["Image"]
      228 GETTABLEKS                       R16 R11 K60 ["Image"]
      230 CALL                             R14 2 1
      231 JUMPIFNOT                        R14 ; [+5]
      232 JUMPIFNOT                        R13 ; [+2]
      233 LOADK                            R12 K61 ["ImageButton"]
      234 JUMP                             ; [+6]
      235 LOADK                            R12 K62 ["ImageLabel"]
      236 JUMP                             ; [+4]
      237 JUMPIFNOT                        R13 ; [+2]
      238 LOADK                            R12 K63 ["TextButton"]
      239 JUMP                             ; [+1]
      240 LOADK                            R12 K64 ["Frame"]
      241 MOVE                             R10 R12
      242 GETUPVAL                         R12 0
      243 JUMPIFNOT                        R12 ; [+18]
      244 DUPTABLE                         R11 K66 [{"Size"}]
      245 GETUPVAL                         R12 5
      246 GETTABLEKS                       R13 R1 K65 ["Size"]
      248 GETTABLEKS                       R14 R2 K65 ["Size"]
      250 JUMPIFNOT                        R7 ; [+6]
      251 GETIMPORT                        R15 K69 [UDim2.fromScale]
      253 MOVE                             R16 R8
      254 MOVE                             R17 R9
      255 CALL                             R15 2 1
      256 JUMP                             ; [+1]
      257 LOADNIL                          R15
      258 CALL                             R12 3 1
      259 SETTABLEKS                       R12 R11 K65 ["Size"]
      261 JUMP                             ; [+23]
      262 DUPTABLE                         R11 K73 [{["BackgroundTransparency"], ["BorderSizePixel"] = 0, ["Size"]}]
      263 GETUPVAL                         R12 5
      264 GETTABLEKS                       R13 R1 K74 ["Transparency"]
      266 GETTABLEKS                       R14 R2 K74 ["Transparency"]
      268 LOADN                            R15 1
      269 CALL                             R12 3 1
      270 SETTABLEKS                       R12 R11 K70 ["BackgroundTransparency"]
      272 GETUPVAL                         R12 5
      273 GETTABLEKS                       R13 R1 K65 ["Size"]
      275 GETTABLEKS                       R14 R2 K65 ["Size"]
      277 GETIMPORT                        R15 K69 [UDim2.fromScale]
      279 MOVE                             R16 R8
      280 MOVE                             R17 R9
      281 CALL                             R15 2 -1
      282 CALL                             R12 -1 1
      283 SETTABLEKS                       R12 R11 K65 ["Size"]
      285 GETTABLEKS                       R12 R1 K75 ["BackgroundColor3"]
      287 JUMPIF                           R12 ; [+5]
      288 GETTABLEKS                       R12 R1 K76 ["BackgroundColor"]
      290 JUMPIF                           R12 ; [+2]
      291 GETTABLEKS                       R12 R2 K77 ["Background"]
      293 JUMPIFNOT                        R12 ; [+15]
      294 GETUPVAL                         R14 0
      295 JUMPIFNOT                        R14 ; [+4]
      296 GETTABLEKS                       R14 R1 K74 ["Transparency"]
      298 ORK                              R13 R14 K72 [0]
      299 JUMP                             ; [+7]
      300 GETUPVAL                         R13 5
      301 GETTABLEKS                       R14 R1 K74 ["Transparency"]
      303 GETTABLEKS                       R15 R2 K74 ["Transparency"]
      305 LOADN                            R16 0
      306 CALL                             R13 3 1
      307 SETTABLEKS                       R13 R11 K70 ["BackgroundTransparency"]
      309 LOADNIL                          R13
      310 GETTABLEKS                       R14 R1 K58 ["OnRightClick"]
      312 JUMPIF                           R14 ; [+3]
      313 GETTABLEKS                       R14 R1 K59 ["OnPress"]
      315 JUMPIFNOT                        R14 ; [+2]
      316 GETTABLEKS                       R13 R0 K78 ["onInputBegan"]
      318 GETTABLEKS                       R14 R1 K57 ["OnClick"]
      320 JUMPIF                           R14 ; [+5]
      321 GETTABLEKS                       R14 R1 K58 ["OnRightClick"]
      323 JUMPIF                           R14 ; [+2]
      324 GETTABLEKS                       R14 R1 K59 ["OnPress"]
      326 GETTABLEKS                       R15 R1 K57 ["OnClick"]
      328 JUMPIFNOT                        R15 ; [+8]
      329 GETUPVAL                         R15 2
      330 GETTABLEKS                       R15 R15 K79 ["Event"]
      332 GETTABLEKS                       R15 R15 K80 ["Activated"]
      334 GETTABLEKS                       R16 R1 K57 ["OnClick"]
      336 SETTABLE                         R16 R11 R15
      337 GETUPVAL                         R15 5
      338 GETTABLEKS                       R16 R1 K60 ["Image"]
      340 GETTABLEKS                       R17 R2 K60 ["Image"]
      342 CALL                             R15 2 1
      343 JUMPIFNOT                        R14 ; [+7]
      344 JUMPIF                           R15 ; [+6]
      345 LOADB                            R16 0
      346 SETTABLEKS                       R16 R11 K81 ["AutoButtonColor"]
      348 LOADK                            R16 K82 [""]
      349 SETTABLEKS                       R16 R11 K83 ["Text"]
      351 JUMPIFNOT                        R15 ; [+17]
      352 GETUPVAL                         R16 6
      353 MOVE                             R17 R11
      354 DUPTABLE                         R18 K88 [{["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["SliceCenter"]}]
      355 SETTABLEKS                       R15 R18 K60 ["Image"]
      357 SETTABLEKS                       R12 R18 K84 ["ImageColor3"]
      359 GETIMPORT                        R19 K90 [Enum.ScaleType.Slice]
      361 SETTABLEKS                       R19 R18 K86 ["ScaleType"]
      363 GETTABLEKS                       R19 R2 K87 ["SliceCenter"]
      365 SETTABLEKS                       R19 R18 K87 ["SliceCenter"]
      367 CALL                             R16 2 0
      368 JUMP                             ; [+3]
      369 JUMPIFNOT                        R12 ; [+2]
      370 SETTABLEKS                       R12 R11 K75 ["BackgroundColor3"]
      372 GETUPVAL                         R17 0
      373 JUMPIFNOT                        R17 ; [+2]
      374 LOADNIL                          R16
      375 JUMP                             ; [+7]
      376 GETUPVAL                         R16 5
      377 GETTABLEKS                       R17 R1 K91 ["Border"]
      379 GETTABLEKS                       R18 R2 K91 ["Border"]
      381 LOADNIL                          R19
      382 CALL                             R16 3 1
      383 JUMPIFNOT                        R16 ; [+56]
      384 GETTABLEKS                       R17 R16 K60 ["Image"]
      386 JUMPIF                           R17 ; [+14]
      387 GETUPVAL                         R17 6
      388 MOVE                             R18 R11
      389 DUPTABLE                         R19 K93 [{"BorderColor3", "BorderSizePixel"}]
      390 GETTABLEKS                       R20 R16 K94 ["Color"]
      392 SETTABLEKS                       R20 R19 K92 ["BorderColor3"]
      394 GETTABLEKS                       R21 R16 K65 ["Size"]
      396 ORK                              R20 R21 K85 [1]
      397 SETTABLEKS                       R20 R19 K71 ["BorderSizePixel"]
      399 CALL                             R17 2 0
      400 JUMP                             ; [+39]
      401 DUPTABLE                         R17 K96 [{"Contents"}]
      402 GETUPVAL                         R18 2
      403 GETTABLEKS                       R18 R18 K25 ["createElement"]
      405 LOADK                            R19 K62 ["ImageLabel"]
      406 DUPTABLE                         R20 K97 [{["Size"], ["AutomaticSize"], ["Image"], ["ImageColor3"], ["BackgroundTransparency"] = 1, ["ScaleType"], ["SliceCenter"]}]
      407 GETIMPORT                        R21 K69 [UDim2.fromScale]
      409 MOVE                             R22 R8
      410 MOVE                             R23 R9
      411 CALL                             R21 2 1
      412 SETTABLEKS                       R21 R20 K65 ["Size"]
      414 SETTABLEKS                       R7 R20 K50 ["AutomaticSize"]
      416 GETTABLEKS                       R21 R16 K60 ["Image"]
      418 SETTABLEKS                       R21 R20 K60 ["Image"]
      420 GETTABLEKS                       R21 R1 K98 ["BorderColor"]
      422 JUMPIF                           R21 ; [+2]
      423 GETTABLEKS                       R21 R16 K77 ["Background"]
      425 SETTABLEKS                       R21 R20 K84 ["ImageColor3"]
      427 GETIMPORT                        R21 K90 [Enum.ScaleType.Slice]
      429 SETTABLEKS                       R21 R20 K86 ["ScaleType"]
      431 GETTABLEKS                       R21 R16 K87 ["SliceCenter"]
      433 SETTABLEKS                       R21 R20 K87 ["SliceCenter"]
      435 MOVE                             R21 R4
      436 CALL                             R18 3 1
      437 SETTABLEKS                       R18 R17 K95 ["Contents"]
      439 MOVE                             R4 R17
      440 GETTABLEKS                       R17 R2 K99 ["CornerRadius"]
      442 JUMPIFNOT                        R17 ; [+12]
      443 GETUPVAL                         R17 2
      444 GETTABLEKS                       R17 R17 K25 ["createElement"]
      446 LOADK                            R18 K100 ["UICorner"]
      447 DUPTABLE                         R19 K101 [{"CornerRadius"}]
      448 GETTABLEKS                       R20 R2 K99 ["CornerRadius"]
      450 SETTABLEKS                       R20 R19 K99 ["CornerRadius"]
      452 CALL                             R17 2 1
      453 SETTABLEKS                       R17 R4 K100 ["UICorner"]
      455 GETTABLEKS                       R17 R1 K102 ["ForwardRef"]
      457 JUMPIFNOT                        R17 ; [+6]
      458 GETUPVAL                         R17 2
      459 GETTABLEKS                       R17 R17 K103 ["Ref"]
      461 GETTABLEKS                       R18 R1 K102 ["ForwardRef"]
      463 SETTABLE                         R18 R11 R17
      464 GETUPVAL                         R17 7
      465 GETUPVAL                         R18 8
      466 MOVE                             R19 R11
      467 MOVE                             R20 R1
      468 CALL                             R18 2 1
      469 NEWTABLE                         R19 0 16
      471 GETUPVAL                         R20 2
      472 GETTABLEKS                       R20 R20 K4 ["Children"]
      474 LOADK                            R21 K104 ["StyleModifier"]
      475 LOADK                            R22 K76 ["BackgroundColor"]
      476 LOADK                            R23 K98 ["BorderColor"]
      477 LOADK                            R24 K21 ["Padding"]
      478 LOADK                            R25 K39 ["Layout"]
      479 LOADK                            R26 K40 ["Spacing"]
      480 LOADK                            R27 K1 ["Style"]
      481 LOADK                            R28 K2 ["Stylizer"]
      482 LOADK                            R29 K105 ["Theme"]
      483 LOADK                            R30 K44 ["HorizontalAlignment"]
      484 LOADK                            R31 K45 ["VerticalAlignment"]
      485 LOADK                            R32 K57 ["OnClick"]
      486 LOADK                            R33 K58 ["OnRightClick"]
      487 LOADK                            R34 K59 ["OnPress"]
      488 LOADK                            R35 K102 ["ForwardRef"]
      489 SETLIST                          R19 R20 16 [1]
      491 CALL                             R17 2 1
      492 JUMPIFNOT                        R13 ; [+6]
      493 GETUPVAL                         R18 2
      494 GETTABLEKS                       R18 R18 K79 ["Event"]
      496 GETTABLEKS                       R18 R18 K106 ["InputBegan"]
      498 SETTABLE                         R13 R17 R18
      499 GETUPVAL                         R18 0
      500 JUMPIFNOT                        R18 ; [+24]
      501 GETUPVAL                         R18 1
      502 GETTABLEKS                       R18 R18 K3 ["Tag"]
      504 GETUPVAL                         R19 9
      505 LOADK                            R20 K107 ["Component-Pane"]
      506 MOVE                             R21 R3
      507 MOVE                             R22 R5
      508 GETTABLEKS                       R24 R17 K65 ["Size"]
      510 GETUPVAL                         R25 10
      511 JUMPIFNOTEQ                      R24 R25 ; [+3]
      513 LOADK                            R23 K108 ["X-DefaultSize"]
      514 JUMP                             ; [+1]
      515 LOADNIL                          R23
      516 GETTABLEKS                       R25 R17 K70 ["BackgroundTransparency"]
      518 JUMPIFNOTEQKN                    R25 K72 [0] ; [+3]
      520 LOADK                            R24 K109 ["X-DefaultTransparency"]
      521 JUMP                             ; [+1]
      522 LOADNIL                          R24
      523 CALL                             R19 5 1
      524 SETTABLE                         R19 R17 R18
      525 GETUPVAL                         R18 2
      526 GETTABLEKS                       R18 R18 K25 ["createElement"]
      528 MOVE                             R19 R10
      529 MOVE                             R20 R17
      530 MOVE                             R21 R4
      531 CALL                             R18 3 -1
      532 RETURN                           R18 -1

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
