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
        4 GETUPVAL                         R4 1
        5 GETTABLEKS                       R3 R4 K0 ["props"]
        7 GETTABLEKS                       R2 R3 K1 ["OnPress"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_2:
        0 GETTABLEKS                       R2 R1 K0 ["UserInputType"]
        2 GETIMPORT                        R3 K3 [Enum.UserInputType.MouseButton2]
        4 JUMPIFNOTEQ                      R2 R3 ; [+18]
        6 GETUPVAL                         R4 0
        7 GETTABLEKS                       R3 R4 K4 ["props"]
        9 GETTABLEKS                       R2 R3 K5 ["OnRightClick"]
       11 GETIMPORT                        R3 K8 [Vector2.new]
       13 GETTABLEKS                       R5 R1 K9 ["Position"]
       15 GETTABLEKS                       R4 R5 K10 ["X"]
       17 GETTABLEKS                       R6 R1 K9 ["Position"]
       19 GETTABLEKS                       R5 R6 K11 ["Y"]
       21 CALL                             R3 2 -1
       22 CALL                             R2 -1 0
       23 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R4 0
        1 GETTABLEKS                       R3 R4 K0 ["props"]
        3 GETUPVAL                         R6 1
        4 GETTABLEKS                       R5 R6 K1 ["Event"]
        6 GETTABLEKS                       R4 R5 K2 ["InputBegan"]
        8 GETTABLE                         R2 R3 R4
        9 JUMPIFNOT                        R2 ; [+12]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R3 R4 K0 ["props"]
       13 GETUPVAL                         R6 1
       14 GETTABLEKS                       R5 R6 K1 ["Event"]
       16 GETTABLEKS                       R4 R5 K2 ["InputBegan"]
       18 GETTABLE                         R2 R3 R4
       19 MOVE                             R3 R0
       20 MOVE                             R4 R1
       21 CALL                             R2 2 0
       22 GETUPVAL                         R4 0
       23 GETTABLEKS                       R3 R4 K0 ["props"]
       25 GETTABLEKS                       R2 R3 K3 ["OnPress"]
       27 JUMPIFNOT                        R2 ; [+6]
       28 GETUPVAL                         R3 0
       29 GETTABLEKS                       R2 R3 K4 ["onPress"]
       31 MOVE                             R3 R0
       32 MOVE                             R4 R1
       33 CALL                             R2 2 0
       34 GETUPVAL                         R4 0
       35 GETTABLEKS                       R3 R4 K0 ["props"]
       37 GETTABLEKS                       R2 R3 K5 ["OnRightClick"]
       39 JUMPIFNOT                        R2 ; [+6]
       40 GETUPVAL                         R3 0
       41 GETTABLEKS                       R2 R3 K6 ["onRightClick"]
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
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R4 R5 K3 ["Tag"]
       17 GETTABLE                         R3 R1 R4
       18 JUMP                             ; [+1]
       19 LOADNIL                          R3
       20 GETUPVAL                         R6 2
       21 GETTABLEKS                       R5 R6 K4 ["Children"]
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
       81 GETUPVAL                         R9 2
       82 GETTABLEKS                       R8 R9 K25 ["createElement"]
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
      166 GETUPVAL                         R9 2
      167 GETTABLEKS                       R8 R9 K25 ["createElement"]
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
      261 JUMP                             ; [+26]
      262 DUPTABLE                         R11 K72 [{"BackgroundTransparency", "BorderSizePixel", "Size"}]
      263 GETUPVAL                         R12 5
      264 GETTABLEKS                       R13 R1 K73 ["Transparency"]
      266 GETTABLEKS                       R14 R2 K73 ["Transparency"]
      268 LOADN                            R15 1
      269 CALL                             R12 3 1
      270 SETTABLEKS                       R12 R11 K70 ["BackgroundTransparency"]
      272 LOADN                            R12 0
      273 SETTABLEKS                       R12 R11 K71 ["BorderSizePixel"]
      275 GETUPVAL                         R12 5
      276 GETTABLEKS                       R13 R1 K65 ["Size"]
      278 GETTABLEKS                       R14 R2 K65 ["Size"]
      280 GETIMPORT                        R15 K69 [UDim2.fromScale]
      282 MOVE                             R16 R8
      283 MOVE                             R17 R9
      284 CALL                             R15 2 -1
      285 CALL                             R12 -1 1
      286 SETTABLEKS                       R12 R11 K65 ["Size"]
      288 GETTABLEKS                       R12 R1 K74 ["BackgroundColor3"]
      290 JUMPIF                           R12 ; [+5]
      291 GETTABLEKS                       R12 R1 K75 ["BackgroundColor"]
      293 JUMPIF                           R12 ; [+2]
      294 GETTABLEKS                       R12 R2 K76 ["Background"]
      296 JUMPIFNOT                        R12 ; [+15]
      297 GETUPVAL                         R14 0
      298 JUMPIFNOT                        R14 ; [+4]
      299 GETTABLEKS                       R14 R1 K73 ["Transparency"]
      301 ORK                              R13 R14 K77 [0]
      302 JUMP                             ; [+7]
      303 GETUPVAL                         R13 5
      304 GETTABLEKS                       R14 R1 K73 ["Transparency"]
      306 GETTABLEKS                       R15 R2 K73 ["Transparency"]
      308 LOADN                            R16 0
      309 CALL                             R13 3 1
      310 SETTABLEKS                       R13 R11 K70 ["BackgroundTransparency"]
      312 LOADNIL                          R13
      313 GETTABLEKS                       R14 R1 K58 ["OnRightClick"]
      315 JUMPIF                           R14 ; [+3]
      316 GETTABLEKS                       R14 R1 K59 ["OnPress"]
      318 JUMPIFNOT                        R14 ; [+2]
      319 GETTABLEKS                       R13 R0 K78 ["onInputBegan"]
      321 GETTABLEKS                       R14 R1 K57 ["OnClick"]
      323 JUMPIF                           R14 ; [+5]
      324 GETTABLEKS                       R14 R1 K58 ["OnRightClick"]
      326 JUMPIF                           R14 ; [+2]
      327 GETTABLEKS                       R14 R1 K59 ["OnPress"]
      329 GETTABLEKS                       R15 R1 K57 ["OnClick"]
      331 JUMPIFNOT                        R15 ; [+8]
      332 GETUPVAL                         R17 2
      333 GETTABLEKS                       R16 R17 K79 ["Event"]
      335 GETTABLEKS                       R15 R16 K80 ["Activated"]
      337 GETTABLEKS                       R16 R1 K57 ["OnClick"]
      339 SETTABLE                         R16 R11 R15
      340 GETUPVAL                         R15 5
      341 GETTABLEKS                       R16 R1 K60 ["Image"]
      343 GETTABLEKS                       R17 R2 K60 ["Image"]
      345 CALL                             R15 2 1
      346 JUMPIFNOT                        R14 ; [+7]
      347 JUMPIF                           R15 ; [+6]
      348 LOADB                            R16 0
      349 SETTABLEKS                       R16 R11 K81 ["AutoButtonColor"]
      351 LOADK                            R16 K82 [""]
      352 SETTABLEKS                       R16 R11 K83 ["Text"]
      354 JUMPIFNOT                        R15 ; [+20]
      355 GETUPVAL                         R16 6
      356 MOVE                             R17 R11
      357 DUPTABLE                         R18 K87 [{"Image", "ImageColor3", "BackgroundTransparency", "ScaleType", "SliceCenter"}]
      358 SETTABLEKS                       R15 R18 K60 ["Image"]
      360 SETTABLEKS                       R12 R18 K84 ["ImageColor3"]
      362 LOADN                            R19 1
      363 SETTABLEKS                       R19 R18 K70 ["BackgroundTransparency"]
      365 GETIMPORT                        R19 K89 [Enum.ScaleType.Slice]
      367 SETTABLEKS                       R19 R18 K85 ["ScaleType"]
      369 GETTABLEKS                       R19 R2 K86 ["SliceCenter"]
      371 SETTABLEKS                       R19 R18 K86 ["SliceCenter"]
      373 CALL                             R16 2 0
      374 JUMP                             ; [+3]
      375 JUMPIFNOT                        R12 ; [+2]
      376 SETTABLEKS                       R12 R11 K74 ["BackgroundColor3"]
      378 GETUPVAL                         R17 0
      379 JUMPIFNOT                        R17 ; [+2]
      380 LOADNIL                          R16
      381 JUMP                             ; [+7]
      382 GETUPVAL                         R16 5
      383 GETTABLEKS                       R17 R1 K90 ["Border"]
      385 GETTABLEKS                       R18 R2 K90 ["Border"]
      387 LOADNIL                          R19
      388 CALL                             R16 3 1
      389 JUMPIFNOT                        R16 ; [+59]
      390 GETTABLEKS                       R17 R16 K60 ["Image"]
      392 JUMPIF                           R17 ; [+14]
      393 GETUPVAL                         R17 6
      394 MOVE                             R18 R11
      395 DUPTABLE                         R19 K92 [{"BorderColor3", "BorderSizePixel"}]
      396 GETTABLEKS                       R20 R16 K93 ["Color"]
      398 SETTABLEKS                       R20 R19 K91 ["BorderColor3"]
      400 GETTABLEKS                       R21 R16 K65 ["Size"]
      402 ORK                              R20 R21 K94 [1]
      403 SETTABLEKS                       R20 R19 K71 ["BorderSizePixel"]
      405 CALL                             R17 2 0
      406 JUMP                             ; [+42]
      407 DUPTABLE                         R17 K96 [{"Contents"}]
      408 GETUPVAL                         R19 2
      409 GETTABLEKS                       R18 R19 K25 ["createElement"]
      411 LOADK                            R19 K62 ["ImageLabel"]
      412 DUPTABLE                         R20 K97 [{"Size", "AutomaticSize", "Image", "ImageColor3", "BackgroundTransparency", "ScaleType", "SliceCenter"}]
      413 GETIMPORT                        R21 K69 [UDim2.fromScale]
      415 MOVE                             R22 R8
      416 MOVE                             R23 R9
      417 CALL                             R21 2 1
      418 SETTABLEKS                       R21 R20 K65 ["Size"]
      420 SETTABLEKS                       R7 R20 K50 ["AutomaticSize"]
      422 GETTABLEKS                       R21 R16 K60 ["Image"]
      424 SETTABLEKS                       R21 R20 K60 ["Image"]
      426 GETTABLEKS                       R21 R1 K98 ["BorderColor"]
      428 JUMPIF                           R21 ; [+2]
      429 GETTABLEKS                       R21 R16 K76 ["Background"]
      431 SETTABLEKS                       R21 R20 K84 ["ImageColor3"]
      433 LOADN                            R21 1
      434 SETTABLEKS                       R21 R20 K70 ["BackgroundTransparency"]
      436 GETIMPORT                        R21 K89 [Enum.ScaleType.Slice]
      438 SETTABLEKS                       R21 R20 K85 ["ScaleType"]
      440 GETTABLEKS                       R21 R16 K86 ["SliceCenter"]
      442 SETTABLEKS                       R21 R20 K86 ["SliceCenter"]
      444 MOVE                             R21 R4
      445 CALL                             R18 3 1
      446 SETTABLEKS                       R18 R17 K95 ["Contents"]
      448 MOVE                             R4 R17
      449 GETTABLEKS                       R17 R2 K99 ["CornerRadius"]
      451 JUMPIFNOT                        R17 ; [+12]
      452 GETUPVAL                         R18 2
      453 GETTABLEKS                       R17 R18 K25 ["createElement"]
      455 LOADK                            R18 K100 ["UICorner"]
      456 DUPTABLE                         R19 K101 [{"CornerRadius"}]
      457 GETTABLEKS                       R20 R2 K99 ["CornerRadius"]
      459 SETTABLEKS                       R20 R19 K99 ["CornerRadius"]
      461 CALL                             R17 2 1
      462 SETTABLEKS                       R17 R4 K100 ["UICorner"]
      464 GETTABLEKS                       R17 R1 K102 ["ForwardRef"]
      466 JUMPIFNOT                        R17 ; [+6]
      467 GETUPVAL                         R18 2
      468 GETTABLEKS                       R17 R18 K103 ["Ref"]
      470 GETTABLEKS                       R18 R1 K102 ["ForwardRef"]
      472 SETTABLE                         R18 R11 R17
      473 GETUPVAL                         R17 7
      474 GETUPVAL                         R18 8
      475 MOVE                             R19 R11
      476 MOVE                             R20 R1
      477 CALL                             R18 2 1
      478 NEWTABLE                         R19 0 16
      480 GETUPVAL                         R21 2
      481 GETTABLEKS                       R20 R21 K4 ["Children"]
      483 LOADK                            R21 K104 ["StyleModifier"]
      484 LOADK                            R22 K75 ["BackgroundColor"]
      485 LOADK                            R23 K98 ["BorderColor"]
      486 LOADK                            R24 K21 ["Padding"]
      487 LOADK                            R25 K39 ["Layout"]
      488 LOADK                            R26 K40 ["Spacing"]
      489 LOADK                            R27 K1 ["Style"]
      490 LOADK                            R28 K2 ["Stylizer"]
      491 LOADK                            R29 K105 ["Theme"]
      492 LOADK                            R30 K44 ["HorizontalAlignment"]
      493 LOADK                            R31 K45 ["VerticalAlignment"]
      494 LOADK                            R32 K57 ["OnClick"]
      495 LOADK                            R33 K58 ["OnRightClick"]
      496 LOADK                            R34 K59 ["OnPress"]
      497 LOADK                            R35 K102 ["ForwardRef"]
      498 SETLIST                          R19 R20 16 [1]
      500 CALL                             R17 2 1
      501 JUMPIFNOT                        R13 ; [+6]
      502 GETUPVAL                         R20 2
      503 GETTABLEKS                       R19 R20 K79 ["Event"]
      505 GETTABLEKS                       R18 R19 K106 ["InputBegan"]
      507 SETTABLE                         R13 R17 R18
      508 GETUPVAL                         R18 0
      509 JUMPIFNOT                        R18 ; [+24]
      510 GETUPVAL                         R19 1
      511 GETTABLEKS                       R18 R19 K3 ["Tag"]
      513 GETUPVAL                         R19 9
      514 LOADK                            R20 K107 ["Component-Pane"]
      515 MOVE                             R21 R3
      516 MOVE                             R22 R5
      517 GETTABLEKS                       R24 R17 K65 ["Size"]
      519 GETUPVAL                         R25 10
      520 JUMPIFNOTEQ                      R24 R25 ; [+3]
      522 LOADK                            R23 K108 ["X-DefaultSize"]
      523 JUMP                             ; [+1]
      524 LOADNIL                          R23
      525 GETTABLEKS                       R25 R17 K70 ["BackgroundTransparency"]
      527 JUMPIFNOTEQKN                    R25 K77 [0] ; [+3]
      529 LOADK                            R24 K109 ["X-DefaultTransparency"]
      530 JUMP                             ; [+1]
      531 LOADNIL                          R24
      532 CALL                             R19 5 1
      533 SETTABLE                         R19 R17 R18
      534 GETUPVAL                         R19 2
      535 GETTABLEKS                       R18 R19 K25 ["createElement"]
      537 MOVE                             R19 R10
      538 MOVE                             R20 R17
      539 MOVE                             R21 R4
      540 CALL                             R18 3 -1
      541 RETURN                           R18 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R1 K1 [script]
        3 LOADK                            R3 K2 ["UI"]
        4 NAMECALL                         R1 R1 K3 ["FindFirstAncestor"]
        6 CALL                             R1 2 1
        7 GETTABLEKS                       R0 R1 K4 ["Parent"]
        9 GETIMPORT                        R1 K6 [require]
       11 GETTABLEKS                       R3 R0 K2 ["UI"]
       13 GETTABLEKS                       R2 R3 K7 ["ContextServices"]
       15 CALL                             R1 1 1
       16 GETTABLEKS                       R2 R1 K8 ["withContext"]
       18 GETIMPORT                        R3 K6 [require]
       20 GETTABLEKS                       R5 R0 K4 ["Parent"]
       22 GETTABLEKS                       R4 R5 K9 ["Roact"]
       24 CALL                             R3 1 1
       25 GETTABLEKS                       R5 R0 K4 ["Parent"]
       27 LOADK                            R7 K10 ["React"]
       28 NAMECALL                         R5 R5 K11 ["FindFirstChild"]
       30 CALL                             R5 2 1
       31 JUMPIFNOT                        R5 ; [+8]
       32 GETIMPORT                        R4 K6 [require]
       34 GETTABLEKS                       R6 R0 K4 ["Parent"]
       36 GETTABLEKS                       R5 R6 K10 ["React"]
       38 CALL                             R4 1 1
       39 JUMP                             ; [+1]
       40 LOADNIL                          R4
       41 GETIMPORT                        R5 K6 [require]
       43 GETTABLEKS                       R7 R0 K12 ["Styling"]
       45 GETTABLEKS                       R6 R7 K13 ["supportsStyleSheets"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K6 [require]
       50 GETTABLEKS                       R7 R0 K14 ["Util"]
       52 CALL                             R6 1 1
       53 GETTABLEKS                       R7 R6 K15 ["isInputMainPress"]
       55 GETTABLEKS                       R8 R6 K16 ["prioritize"]
       57 GETIMPORT                        R9 K6 [require]
       59 GETTABLEKS                       R11 R0 K17 ["Wrappers"]
       61 GETTABLEKS                       R10 R11 K18 ["withForwardRef"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K6 [require]
       66 GETTABLEKS                       R12 R0 K12 ["Styling"]
       68 GETTABLEKS                       R11 R12 K19 ["joinTags"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K6 [require]
       73 GETTABLEKS                       R13 R0 K4 ["Parent"]
       75 GETTABLEKS                       R12 R13 K20 ["Dash"]
       77 CALL                             R11 1 1
       78 GETTABLEKS                       R12 R11 K21 ["assign"]
       80 GETTABLEKS                       R13 R11 K22 ["join"]
       82 GETTABLEKS                       R14 R11 K23 ["omit"]
       84 GETIMPORT                        R15 K26 [UDim2.fromScale]
       86 LOADN                            R16 0
       87 LOADN                            R17 0
       88 CALL                             R15 2 1
       89 DUPTABLE                         R16 K35 [{"Box", "BorderBox", "SubtleBox", "SubtleBorderBox", "RoundBox", "InputBox", "ErrorBorderBox", "CornerBox"}]
       90 LOADK                            R17 K36 ["Main"]
       91 SETTABLEKS                       R17 R16 K27 ["Box"]
       93 LOADK                            R17 K37 ["Main X-Border"]
       94 SETTABLEKS                       R17 R16 K28 ["BorderBox"]
       96 LOADK                            R17 K38 ["Muted"]
       97 SETTABLEKS                       R17 R16 K29 ["SubtleBox"]
       99 LOADK                            R17 K39 ["Muted X-Border"]
      100 SETTABLEKS                       R17 R16 K30 ["SubtleBorderBox"]
      102 LOADK                            R17 K40 ["Main X-Corner"]
      103 SETTABLEKS                       R17 R16 K31 ["RoundBox"]
      105 LOADK                            R17 K41 ["X-Input"]
      106 SETTABLEKS                       R17 R16 K32 ["InputBox"]
      108 LOADK                            R17 K42 ["X-Error"]
      109 SETTABLEKS                       R17 R16 K33 ["ErrorBorderBox"]
      111 LOADK                            R17 K43 ["X-Corner"]
      112 SETTABLEKS                       R17 R16 K34 ["CornerBox"]
      114 GETTABLEKS                       R17 R3 K44 ["PureComponent"]
      116 LOADK                            R19 K45 ["Pane"]
      117 NAMECALL                         R17 R17 K46 ["extend"]
      119 CALL                             R17 2 1
      120 DUPCLOSURE                       R18 K47 [PROTO_0]
      121 CAPTURE                          VAL R8
      122 DUPTABLE                         R19 K50 [{"HorizontalAlignment", "VerticalAlignment"}]
      123 GETIMPORT                        R20 K53 [Enum.HorizontalAlignment.Center]
      125 SETTABLEKS                       R20 R19 K48 ["HorizontalAlignment"]
      127 GETIMPORT                        R20 K54 [Enum.VerticalAlignment.Center]
      129 SETTABLEKS                       R20 R19 K49 ["VerticalAlignment"]
      131 SETTABLEKS                       R19 R17 K55 ["defaultProps"]
      133 DUPCLOSURE                       R19 K56 [PROTO_4]
      134 CAPTURE                          VAL R7
      135 CAPTURE                          VAL R3
      136 SETTABLEKS                       R19 R17 K57 ["init"]
      138 DUPCLOSURE                       R19 K58 [PROTO_5]
      139 CAPTURE                          VAL R5
      140 CAPTURE                          VAL R4
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R16
      143 CAPTURE                          VAL R0
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R12
      146 CAPTURE                          VAL R14
      147 CAPTURE                          VAL R13
      148 CAPTURE                          VAL R10
      149 CAPTURE                          VAL R15
      150 SETTABLEKS                       R19 R17 K59 ["render"]
      152 MOVE                             R19 R2
      153 DUPTABLE                         R20 K61 [{"Stylizer"}]
      154 JUMPIFNOT                        R5 ; [+2]
      155 LOADNIL                          R21
      156 JUMP                             ; [+2]
      157 GETTABLEKS                       R21 R1 K60 ["Stylizer"]
      159 SETTABLEKS                       R21 R20 K60 ["Stylizer"]
      161 CALL                             R19 1 1
      162 MOVE                             R20 R17
      163 CALL                             R19 1 1
      164 MOVE                             R17 R19
      165 MOVE                             R19 R9
      166 MOVE                             R20 R17
      167 CALL                             R19 1 -1
      168 RETURN                           R19 -1
