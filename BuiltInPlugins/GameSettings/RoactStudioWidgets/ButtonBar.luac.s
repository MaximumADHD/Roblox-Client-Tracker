PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["ButtonClicked"]
        3 GETUPVAL                         R1 1
        4 GETTABLEKS                       R1 R1 K1 ["Value"]
        6 CALL                             R0 1 0
        7 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETTABLEKS                       R0 R0 K0 ["HorizontalAlignment"]
        3 GETUPVAL                         R1 0
        4 GETTABLEKS                       R1 R1 K1 ["Buttons"]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K3 ["ZIndex"]
        9 ORK                              R2 R3 K2 [1]
       10 GETUPVAL                         R4 0
       11 GETTABLEKS                       R4 R4 K4 ["Title"]
       13 JUMPIFEQKNIL                     R4 ; [+3]
       15 ADDK                             R3 R2 K2 [1]
       16 JUMPIF                           R3 ; [+1]
       17 MOVE                             R3 R2
       18 GETUPVAL                         R5 0
       19 GETTABLEKS                       R5 R5 K5 ["FillDirection"]
       21 JUMPIFNOTEQKNIL                  R5 ; [+4]
       23 GETIMPORT                        R4 K8 [Enum.FillDirection.Horizontal]
       25 JUMPIF                           R4 ; [+3]
       26 GETUPVAL                         R4 0
       27 GETTABLEKS                       R4 R4 K5 ["FillDirection"]
       29 DUPTABLE                         R5 K10 [{"Layout"}]
       30 GETUPVAL                         R6 1
       31 GETTABLEKS                       R6 R6 K11 ["createElement"]
       33 LOADK                            R7 K12 ["UIListLayout"]
       34 DUPTABLE                         R8 K15 [{"Padding", "HorizontalAlignment", "SortOrder", "FillDirection"}]
       35 GETIMPORT                        R9 K18 [UDim.new]
       37 LOADN                            R10 0
       38 GETUPVAL                         R12 0
       39 GETTABLEKS                       R12 R12 K13 ["Padding"]
       41 ORK                              R11 R12 K19 [25]
       42 CALL                             R9 2 1
       43 SETTABLEKS                       R9 R8 K13 ["Padding"]
       45 SETTABLEKS                       R0 R8 K0 ["HorizontalAlignment"]
       47 GETIMPORT                        R9 K21 [Enum.SortOrder.LayoutOrder]
       49 SETTABLEKS                       R9 R8 K14 ["SortOrder"]
       51 SETTABLEKS                       R4 R8 K5 ["FillDirection"]
       53 CALL                             R6 2 1
       54 SETTABLEKS                       R6 R5 K9 ["Layout"]
       56 GETIMPORT                        R6 K23 [Enum.HorizontalAlignment.Center]
       58 JUMPIFEQ                         R0 R6 ; [+19]
       60 MOVE                             R7 R5
       61 GETUPVAL                         R8 1
       62 GETTABLEKS                       R8 R8 K11 ["createElement"]
       64 LOADK                            R9 K24 ["UIPadding"]
       65 DUPTABLE                         R10 K26 [{"PaddingRight"}]
       66 GETIMPORT                        R11 K18 [UDim.new]
       68 LOADN                            R12 0
       69 LOADN                            R13 35
       70 CALL                             R11 2 1
       71 SETTABLEKS                       R11 R10 K25 ["PaddingRight"]
       73 CALL                             R8 2 -1
       74 FASTCALL                         TABLE_INSERT ; [+2]
       75 GETIMPORT                        R6 K29 [table.insert]
       77 CALL                             R6 -1 0
       78 GETUPVAL                         R6 2
       79 GETUPVAL                         R7 0
       80 CALL                             R6 1 1
       81 GETIMPORT                        R7 K31 [ipairs]
       83 MOVE                             R8 R1
       84 CALL                             R7 1 3
       85 FORGPREP_INEXT                   R7
       86 MOVE                             R13 R5
       87 GETUPVAL                         R14 1
       88 GETTABLEKS                       R14 R14 K11 ["createElement"]
       90 GETUPVAL                         R15 3
       91 DUPTABLE                         R16 K38 [{"LayoutOrder", "OnClick", "Size", "Style", "StyleModifier", "Text", "Tooltip", "ZIndex"}]
       92 SETTABLEKS                       R10 R16 K20 ["LayoutOrder"]
       94 NEWCLOSURE                       R17 P0
       95 CAPTURE                          UPVAL U0
       96 CAPTURE                          VAL R11
       97 SETTABLEKS                       R17 R16 K32 ["OnClick"]
       99 GETUPVAL                         R18 0
      100 GETTABLEKS                       R18 R18 K4 ["Title"]
      102 JUMPIFEQKNIL                     R18 ; [+13]
      104 GETIMPORT                        R17 K40 [UDim2.new]
      106 LOADN                            R18 0
      107 GETUPVAL                         R19 4
      108 GETTABLEKS                       R19 R19 K41 ["BUTTON_WIDTH"]
      110 LOADN                            R20 0
      111 GETUPVAL                         R21 4
      112 GETTABLEKS                       R21 R21 K42 ["BUTTON_HEIGHT"]
      114 CALL                             R17 4 1
      115 JUMP                             ; [+9]
      116 GETIMPORT                        R17 K40 [UDim2.new]
      118 LOADN                            R18 0
      119 GETUPVAL                         R19 4
      120 GETTABLEKS                       R19 R19 K41 ["BUTTON_WIDTH"]
      122 LOADN                            R20 1
      123 LOADN                            R21 0
      124 CALL                             R17 4 1
      125 SETTABLEKS                       R17 R16 K33 ["Size"]
      127 GETTABLEKS                       R18 R11 K43 ["Default"]
      129 JUMPIFNOT                        R18 ; [+2]
      130 LOADK                            R17 K44 ["RoundPrimary"]
      131 JUMP                             ; [+1]
      132 LOADK                            R17 K45 ["Round"]
      133 SETTABLEKS                       R17 R16 K34 ["Style"]
      135 GETTABLEKS                       R18 R11 K46 ["Enabled"]
      137 JUMPIFNOTEQKB                    R18 FALSE ; [+5]
      139 GETUPVAL                         R17 5
      140 GETTABLEKS                       R17 R17 K47 ["Disabled"]
      142 JUMP                             ; [+1]
      143 LOADNIL                          R17
      144 SETTABLEKS                       R17 R16 K35 ["StyleModifier"]
      146 GETTABLEKS                       R17 R11 K48 ["Name"]
      148 SETTABLEKS                       R17 R16 K36 ["Text"]
      150 GETTABLEKS                       R19 R11 K49 ["Value"]
      152 FASTCALL1                        TYPEOF R19 ; [+2]
      153 GETIMPORT                        R18 K51 [typeof]
      155 CALL                             R18 1 1
      156 JUMPIFNOTEQKS                    R18 K27 ["table"] ; [+6]
      158 GETTABLEKS                       R17 R11 K49 ["Value"]
      160 GETTABLEKS                       R17 R17 K52 ["ToolTip"]
      162 JUMP                             ; [+1]
      163 LOADNIL                          R17
      164 SETTABLEKS                       R17 R16 K37 ["Tooltip"]
      166 SETTABLEKS                       R3 R16 K3 ["ZIndex"]
      168 CALL                             R14 2 -1
      169 FASTCALL                         TABLE_INSERT ; [+2]
      170 GETIMPORT                        R12 K29 [table.insert]
      172 CALL                             R12 -1 0
      173 FORGLOOP                         R7 2 [inext] ; [-88]
      175 GETUPVAL                         R7 0
      176 GETTABLEKS                       R7 R7 K4 ["Title"]
      178 JUMPIFEQKNIL                     R7 ; [+240]
      180 LOADNIL                          R7
      181 LOADNIL                          R8
      182 GETIMPORT                        R9 K54 [Enum.FillDirection.Vertical]
      184 JUMPIFNOTEQ                      R9 R4 ; [+32]
      186 LENGTH                           R10 R1
      187 GETUPVAL                         R11 4
      188 GETTABLEKS                       R11 R11 K42 ["BUTTON_HEIGHT"]
      190 MUL                              R9 R10 R11
      191 LENGTH                           R13 R1
      192 SUBK                             R12 R13 K2 [1]
      193 FASTCALL2K                       MATH_MAX R12 K55 ; [+4]
      195 LOADK                            R13 K55 [0]
      196 GETIMPORT                        R11 K58 [math.max]
      198 CALL                             R11 2 1
      199 GETUPVAL                         R13 0
      200 GETTABLEKS                       R13 R13 K13 ["Padding"]
      202 ORK                              R12 R13 K19 [25]
      203 MUL                              R10 R11 R12
      204 GETUPVAL                         R11 4
      205 GETTABLEKS                       R11 R11 K41 ["BUTTON_WIDTH"]
      207 GETUPVAL                         R12 6
      208 GETTABLEKS                       R12 R12 K59 ["X"]
      210 ADD                              R7 R11 R12
      211 GETUPVAL                         R12 6
      212 GETTABLEKS                       R12 R12 K60 ["Y"]
      214 ADD                              R11 R12 R9
      215 ADD                              R8 R11 R10
      216 JUMP                             ; [+30]
      217 LENGTH                           R10 R1
      218 GETUPVAL                         R11 4
      219 GETTABLEKS                       R11 R11 K41 ["BUTTON_WIDTH"]
      221 MUL                              R9 R10 R11
      222 LENGTH                           R13 R1
      223 SUBK                             R12 R13 K2 [1]
      224 FASTCALL2K                       MATH_MAX R12 K55 ; [+4]
      226 LOADK                            R13 K55 [0]
      227 GETIMPORT                        R11 K58 [math.max]
      229 CALL                             R11 2 1
      230 GETUPVAL                         R13 0
      231 GETTABLEKS                       R13 R13 K13 ["Padding"]
      233 ORK                              R12 R13 K19 [25]
      234 MUL                              R10 R11 R12
      235 GETUPVAL                         R12 6
      236 GETTABLEKS                       R12 R12 K59 ["X"]
      238 ADD                              R11 R12 R9
      239 ADD                              R7 R11 R10
      240 GETUPVAL                         R11 4
      241 GETTABLEKS                       R11 R11 K42 ["BUTTON_HEIGHT"]
      243 GETUPVAL                         R12 6
      244 GETTABLEKS                       R12 R12 K60 ["Y"]
      246 ADD                              R8 R11 R12
      247 GETUPVAL                         R10 7
      248 GETTABLEKS                       R10 R10 K61 ["calculateTextSize"]
      250 GETUPVAL                         R11 0
      251 GETTABLEKS                       R11 R11 K4 ["Title"]
      253 LOADN                            R12 22
      254 GETIMPORT                        R13 K64 [Enum.Font.SourceSans]
      256 CALL                             R10 3 1
      257 GETUPVAL                         R11 8
      258 ADD                              R9 R10 R11
      259 GETUPVAL                         R10 1
      260 GETTABLEKS                       R10 R10 K11 ["createElement"]
      262 LOADK                            R11 K65 ["Frame"]
      263 DUPTABLE                         R12 K67 [{["LayoutOrder"], ["Size"], ["BackgroundTransparency"] = 1}]
      264 GETUPVAL                         R14 0
      265 GETTABLEKS                       R14 R14 K20 ["LayoutOrder"]
      267 ORK                              R13 R14 K2 [1]
      268 SETTABLEKS                       R13 R12 K20 ["LayoutOrder"]
      270 GETIMPORT                        R13 K40 [UDim2.new]
      272 LOADN                            R14 1
      273 LOADN                            R15 0
      274 LOADN                            R16 0
      275 MOVE                             R17 R8
      276 CALL                             R13 4 1
      277 SETTABLEKS                       R13 R12 K33 ["Size"]
      279 DUPTABLE                         R13 K69 [{"Border"}]
      280 GETUPVAL                         R14 1
      281 GETTABLEKS                       R14 R14 K11 ["createElement"]
      283 LOADK                            R15 K70 ["ImageLabel"]
      284 DUPTABLE                         R16 K75 [{["Size"], ["BackgroundTransparency"] = 1, ["Image"], ["ImageColor3"], ["ScaleType"], ["SliceCenter"], ["ZIndex"]}]
      285 GETIMPORT                        R17 K40 [UDim2.new]
      287 LOADN                            R18 0
      288 MOVE                             R19 R7
      289 LOADN                            R20 1
      290 LOADN                            R21 0
      291 CALL                             R17 4 1
      292 SETTABLEKS                       R17 R16 K33 ["Size"]
      294 GETUPVAL                         R17 4
      295 GETTABLEKS                       R17 R17 K76 ["ROUNDED_BORDER_IMAGE"]
      297 SETTABLEKS                       R17 R16 K71 ["Image"]
      299 GETTABLEKS                       R17 R6 K77 ["BorderDefaultColor"]
      301 SETTABLEKS                       R17 R16 K72 ["ImageColor3"]
      303 GETIMPORT                        R17 K79 [Enum.ScaleType.Slice]
      305 SETTABLEKS                       R17 R16 K73 ["ScaleType"]
      307 GETUPVAL                         R17 4
      308 GETTABLEKS                       R17 R17 K80 ["ROUNDED_FRAME_SLICE"]
      310 SETTABLEKS                       R17 R16 K74 ["SliceCenter"]
      312 SETTABLEKS                       R2 R16 K3 ["ZIndex"]
      314 NEWTABLE                         R17 1 1
      316 GETUPVAL                         R19 1
      317 GETTABLEKS                       R19 R19 K11 ["createElement"]
      319 LOADK                            R20 K81 ["TextLabel"]
      320 DUPTABLE                         R21 K91 [{["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 0, ["BackgroundColor3"], ["BorderSizePixel"] = 0, ["Size"], ["TextColor3"], ["Font"], ["TextSize"] = 22, ["TextXAlignment"], ["TextYAlignment"], ["Text"], ["ZIndex"]}]
      321 GETIMPORT                        R22 K93 [Vector2.new]
      323 LOADN                            R23 0
      324 LOADK                            R24 K94 [0.5]
      325 CALL                             R22 2 1
      326 SETTABLEKS                       R22 R21 K82 ["AnchorPoint"]
      328 GETIMPORT                        R22 K40 [UDim2.new]
      330 LOADN                            R23 0
      331 GETUPVAL                         R25 6
      332 GETTABLEKS                       R25 R25 K59 ["X"]
      334 DIVK                             R24 R25 K95 [2]
      335 LOADN                            R25 0
      336 LOADN                            R26 0
      337 CALL                             R22 4 1
      338 SETTABLEKS                       R22 R21 K83 ["Position"]
      340 GETTABLEKS                       R22 R6 K96 ["BackgroundColor"]
      342 SETTABLEKS                       R22 R21 K84 ["BackgroundColor3"]
      344 GETIMPORT                        R22 K40 [UDim2.new]
      346 LOADN                            R23 0
      347 GETTABLEKS                       R24 R9 K59 ["X"]
      349 LOADN                            R25 0
      350 GETTABLEKS                       R26 R9 K60 ["Y"]
      352 CALL                             R22 4 1
      353 SETTABLEKS                       R22 R21 K33 ["Size"]
      355 GETTABLEKS                       R22 R6 K97 ["TextColor"]
      357 SETTABLEKS                       R22 R21 K86 ["TextColor3"]
      359 GETIMPORT                        R22 K64 [Enum.Font.SourceSans]
      361 SETTABLEKS                       R22 R21 K62 ["Font"]
      363 GETIMPORT                        R22 K98 [Enum.TextXAlignment.Center]
      365 SETTABLEKS                       R22 R21 K89 ["TextXAlignment"]
      367 GETIMPORT                        R22 K99 [Enum.TextYAlignment.Center]
      369 SETTABLEKS                       R22 R21 K90 ["TextYAlignment"]
      371 GETUPVAL                         R22 0
      372 GETTABLEKS                       R22 R22 K4 ["Title"]
      374 SETTABLEKS                       R22 R21 K36 ["Text"]
      376 SETTABLEKS                       R3 R21 K3 ["ZIndex"]
      378 CALL                             R19 2 1
      379 SETTABLEKS                       R19 R17 K4 ["Title"]
      381 GETUPVAL                         R18 1
      382 GETTABLEKS                       R18 R18 K11 ["createElement"]
      384 LOADK                            R19 K65 ["Frame"]
      385 DUPTABLE                         R20 K100 [{["Position"], ["Size"], ["BackgroundTransparency"] = 1}]
      386 GETIMPORT                        R21 K40 [UDim2.new]
      388 LOADN                            R22 0
      389 GETUPVAL                         R24 6
      390 GETTABLEKS                       R24 R24 K59 ["X"]
      392 DIVK                             R23 R24 K95 [2]
      393 LOADN                            R24 0
      394 GETUPVAL                         R26 6
      395 GETTABLEKS                       R26 R26 K60 ["Y"]
      397 DIVK                             R25 R26 K95 [2]
      398 CALL                             R21 4 1
      399 SETTABLEKS                       R21 R20 K83 ["Position"]
      401 GETIMPORT                        R21 K40 [UDim2.new]
      403 LOADN                            R22 1
      404 LOADN                            R23 0
      405 LOADN                            R24 1
      406 LOADN                            R25 0
      407 CALL                             R21 4 1
      408 SETTABLEKS                       R21 R20 K33 ["Size"]
      410 MOVE                             R21 R5
      411 CALL                             R18 3 -1
      412 SETLIST                          R17 R18 -1 [1]
      414 CALL                             R14 3 1
      415 SETTABLEKS                       R14 R13 K68 ["Border"]
      417 CALL                             R10 3 -1
      418 RETURN                           R10 -1
      419 GETUPVAL                         R7 1
      420 GETTABLEKS                       R7 R7 K11 ["createElement"]
      422 LOADK                            R8 K65 ["Frame"]
      423 DUPTABLE                         R9 K101 [{["LayoutOrder"], ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
      424 GETUPVAL                         R11 0
      425 GETTABLEKS                       R11 R11 K20 ["LayoutOrder"]
      427 ORK                              R10 R11 K2 [1]
      428 SETTABLEKS                       R10 R9 K20 ["LayoutOrder"]
      430 GETIMPORT                        R10 K40 [UDim2.new]
      432 LOADN                            R11 1
      433 LOADN                            R12 0
      434 LOADN                            R13 0
      435 GETUPVAL                         R14 4
      436 GETTABLEKS                       R14 R14 K42 ["BUTTON_HEIGHT"]
      438 CALL                             R10 4 1
      439 SETTABLEKS                       R10 R9 K33 ["Size"]
      441 GETUPVAL                         R10 0
      442 GETTABLEKS                       R10 R10 K82 ["AnchorPoint"]
      444 JUMPIF                           R10 ; [+5]
      445 GETIMPORT                        R10 K93 [Vector2.new]
      447 LOADN                            R11 0
      448 LOADK                            R12 K94 [0.5]
      449 CALL                             R10 2 1
      450 SETTABLEKS                       R10 R9 K82 ["AnchorPoint"]
      452 GETUPVAL                         R10 0
      453 GETTABLEKS                       R10 R10 K83 ["Position"]
      455 JUMPIF                           R10 ; [+7]
      456 GETIMPORT                        R10 K40 [UDim2.new]
      458 LOADN                            R11 0
      459 LOADN                            R12 0
      460 LOADK                            R13 K94 [0.5]
      461 LOADN                            R14 0
      462 CALL                             R10 4 1
      463 SETTABLEKS                       R10 R9 K83 ["Position"]
      465 MOVE                             R10 R5
      466 CALL                             R7 3 -1
      467 RETURN                           R7 -1

PROTO_2:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 CAPTURE                          UPVAL U0
        3 CAPTURE                          UPVAL U1
        4 CAPTURE                          UPVAL U2
        5 CAPTURE                          UPVAL U3
        6 CAPTURE                          UPVAL U4
        7 CAPTURE                          UPVAL U5
        8 CAPTURE                          UPVAL U6
        9 CAPTURE                          UPVAL U7
       10 GETUPVAL                         R2 0
       11 GETTABLEKS                       R2 R2 K0 ["createElement"]
       13 GETUPVAL                         R3 8
       14 DUPTABLE                         R4 K2 [{"render"}]
       15 SETTABLEKS                       R1 R4 K1 ["render"]
       17 CALL                             R2 2 -1
       18 RETURN                           R2 -1

PROTO_3:
        0 NEWTABLE                         R1 4 0
        2 GETUPVAL                         R2 0
        3 GETTABLEKS                       R2 R2 K0 ["getBorderDefaultColor"]
        5 CALL                             R2 0 1
        6 SETTABLEKS                       R2 R1 K1 ["BorderDefaultColor"]
        8 GETUPVAL                         R2 0
        9 GETTABLEKS                       R2 R2 K2 ["getMainBackgroundColor"]
       11 CALL                             R2 0 1
       12 SETTABLEKS                       R2 R1 K3 ["BackgroundColor"]
       14 GETUPVAL                         R2 0
       15 GETTABLEKS                       R2 R2 K4 ["getTitleTextColor"]
       17 CALL                             R2 0 1
       18 SETTABLEKS                       R2 R1 K5 ["TextColor"]
       20 NEWTABLE                         R2 0 0
       22 GETIMPORT                        R3 K7 [pairs]
       24 MOVE                             R4 R1
       25 CALL                             R3 1 3
       26 FORGPREP_NEXT                    R3
       27 GETTABLEKS                       R9 R0 K8 ["Style"]
       29 JUMPIFNOT                        R9 ; [+4]
       30 GETTABLEKS                       R9 R0 K8 ["Style"]
       32 GETTABLE                         R8 R9 R6
       33 JUMPIF                           R8 ; [+1]
       34 MOVE                             R8 R7
       35 SETTABLE                         R8 R2 R6
       36 FORGLOOP                         R3 2 ; [-10]
       38 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Packages"]
       11 GETTABLEKS                       R1 R1 K6 ["Framework"]
       13 CALL                             R0 1 1
       14 GETIMPORT                        R1 K9 [Vector2.new]
       16 LOADN                            R2 30
       17 LOADN                            R3 40
       18 CALL                             R1 2 1
       19 GETIMPORT                        R2 K9 [Vector2.new]
       21 LOADN                            R3 8
       22 LOADN                            R4 0
       23 CALL                             R2 2 1
       24 GETIMPORT                        R3 K1 [require]
       26 GETIMPORT                        R4 K3 [script]
       28 GETTABLEKS                       R4 R4 K4 ["Parent"]
       30 GETTABLEKS                       R4 R4 K10 ["Internal"]
       32 GETTABLEKS                       R4 R4 K11 ["RequireRoact"]
       34 CALL                             R3 1 1
       35 GETIMPORT                        R4 K1 [require]
       37 GETIMPORT                        R5 K3 [script]
       39 GETTABLEKS                       R5 R5 K4 ["Parent"]
       41 GETTABLEKS                       R5 R5 K10 ["Internal"]
       43 GETTABLEKS                       R5 R5 K12 ["Constants"]
       45 CALL                             R4 1 1
       46 GETIMPORT                        R5 K1 [require]
       48 GETIMPORT                        R6 K3 [script]
       50 GETTABLEKS                       R6 R6 K4 ["Parent"]
       52 GETTABLEKS                       R6 R6 K10 ["Internal"]
       54 GETTABLEKS                       R6 R6 K13 ["ThemeChangeListener"]
       56 CALL                             R5 1 1
       57 GETIMPORT                        R6 K1 [require]
       59 GETIMPORT                        R7 K3 [script]
       61 GETTABLEKS                       R7 R7 K4 ["Parent"]
       63 GETTABLEKS                       R7 R7 K10 ["Internal"]
       65 GETTABLEKS                       R7 R7 K14 ["Theme"]
       67 CALL                             R6 1 1
       68 GETIMPORT                        R7 K1 [require]
       70 GETIMPORT                        R8 K3 [script]
       72 GETTABLEKS                       R8 R8 K4 ["Parent"]
       74 GETTABLEKS                       R8 R8 K10 ["Internal"]
       76 GETTABLEKS                       R8 R8 K15 ["Text"]
       78 CALL                             R7 1 1
       79 GETTABLEKS                       R8 R0 K16 ["UI"]
       81 GETTABLEKS                       R9 R8 K17 ["Button"]
       83 GETTABLEKS                       R10 R0 K18 ["Util"]
       85 GETTABLEKS                       R10 R10 K19 ["StyleModifier"]
       87 LOADNIL                          R11
       88 NEWCLOSURE                       R12 P0
       89 CAPTURE                          VAL R3
       90 CAPTURE                          REF R11
       91 CAPTURE                          VAL R9
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R10
       94 CAPTURE                          VAL R1
       95 CAPTURE                          VAL R7
       96 CAPTURE                          VAL R2
       97 CAPTURE                          VAL R5
       98 DUPCLOSURE                       R11 K20 [PROTO_3]
       99 CAPTURE                          VAL R6
      100 CLOSEUPVALS                      R11
      101 RETURN                           R12 1
