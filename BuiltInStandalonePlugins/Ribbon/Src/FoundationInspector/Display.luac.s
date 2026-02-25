PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADK                            R3 K0 ["Frame"]
        4 NEWTABLE                         R4 2 0
        6 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        8 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       10 GETUPVAL                         R6 2
       11 GETTABLEKS                       R5 R6 K2 ["Tag"]
       13 LOADK                            R6 K3 ["Role-Surface X-Fit X-RowS"]
       14 SETTABLE                         R6 R4 R5
       15 DUPTABLE                         R5 K6 [{"ColorBox", "Token"}]
       16 GETUPVAL                         R6 1
       17 LOADK                            R7 K0 ["Frame"]
       18 NEWTABLE                         R8 4 0
       20 GETTABLEKS                       R9 R0 K7 ["Color"]
       22 SETTABLEKS                       R9 R8 K8 ["BackgroundColor3"]
       24 MOVE                             R9 R1
       25 CALL                             R9 0 1
       26 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       28 GETUPVAL                         R9 3
       29 SETTABLEKS                       R9 R8 K9 ["Size"]
       31 GETUPVAL                         R10 2
       32 GETTABLEKS                       R9 R10 K2 ["Tag"]
       34 LOADK                            R10 K10 ["Role-Surface100 X-Stroke"]
       35 SETTABLE                         R10 R8 R9
       36 CALL                             R6 2 1
       37 SETTABLEKS                       R6 R5 K4 ["ColorBox"]
       39 GETUPVAL                         R6 1
       40 GETUPVAL                         R7 4
       41 NEWTABLE                         R8 4 0
       43 MOVE                             R9 R1
       44 CALL                             R9 0 1
       45 SETTABLEKS                       R9 R8 K1 ["LayoutOrder"]
       47 GETTABLEKS                       R9 R0 K5 ["Token"]
       49 SETTABLEKS                       R9 R8 K11 ["Text"]
       51 GETUPVAL                         R10 2
       52 GETTABLEKS                       R9 R10 K2 ["Tag"]
       54 LOADK                            R10 K12 ["X-Fit"]
       55 SETTABLE                         R10 R8 R9
       56 CALL                             R6 2 1
       57 SETTABLEKS                       R6 R5 K5 ["Token"]
       59 CALL                             R2 3 -1
       60 RETURN                           R2 -1

PROTO_1:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETTABLEKS                       R2 R0 K0 ["View"]
        4 GETUPVAL                         R3 1
        5 GETTABLEKS                       R5 R2 K1 ["ClassName"]
        7 NAMECALL                         R3 R3 K2 ["GetClassIcon"]
        9 CALL                             R3 2 1
       10 JUMPIF                           R3 ; [+14]
       11 DUPTABLE                         R3 K6 [{"Image", "ImageRectSize", "ImageRectOffset"}]
       12 LOADK                            R4 K7 [""]
       13 SETTABLEKS                       R4 R3 K3 ["Image"]
       15 GETIMPORT                        R4 K10 [Vector2.new]
       17 CALL                             R4 0 1
       18 SETTABLEKS                       R4 R3 K4 ["ImageRectSize"]
       20 GETIMPORT                        R4 K10 [Vector2.new]
       22 CALL                             R4 0 1
       23 SETTABLEKS                       R4 R3 K5 ["ImageRectOffset"]
       25 GETTABLEKS                       R4 R3 K4 ["ImageRectSize"]
       27 JUMPIF                           R4 ; [+3]
       28 GETIMPORT                        R4 K10 [Vector2.new]
       30 CALL                             R4 0 1
       31 GETUPVAL                         R5 2
       32 LOADK                            R6 K11 ["ImageLabel"]
       33 NEWTABLE                         R7 8 0
       35 GETIMPORT                        R8 K14 [UDim2.fromOffset]
       37 GETTABLEKS                       R9 R4 K15 ["X"]
       39 GETTABLEKS                       R10 R4 K16 ["Y"]
       41 CALL                             R8 2 1
       42 SETTABLEKS                       R8 R7 K17 ["Size"]
       44 MOVE                             R8 R1
       45 CALL                             R8 0 1
       46 SETTABLEKS                       R8 R7 K18 ["LayoutOrder"]
       48 GETTABLEKS                       R8 R3 K3 ["Image"]
       50 SETTABLEKS                       R8 R7 K3 ["Image"]
       52 SETTABLEKS                       R4 R7 K4 ["ImageRectSize"]
       54 GETTABLEKS                       R8 R3 K5 ["ImageRectOffset"]
       56 SETTABLEKS                       R8 R7 K5 ["ImageRectOffset"]
       58 GETIMPORT                        R8 K19 [UDim2.new]
       60 LOADN                            R9 0
       61 LOADN                            R10 2
       62 LOADK                            R11 K20 [0.5]
       63 LOADN                            R12 0
       64 CALL                             R8 4 1
       65 SETTABLEKS                       R8 R7 K21 ["Position"]
       67 GETIMPORT                        R8 K10 [Vector2.new]
       69 LOADN                            R9 0
       70 LOADK                            R10 K20 [0.5]
       71 CALL                             R8 2 1
       72 SETTABLEKS                       R8 R7 K22 ["AnchorPoint"]
       74 GETUPVAL                         R9 3
       75 GETTABLEKS                       R8 R9 K23 ["Tag"]
       77 LOADK                            R9 K24 ["Role-Surface"]
       78 SETTABLE                         R9 R7 R8
       79 CALL                             R5 2 1
       80 DUPTABLE                         R6 K26 [{"Layout"}]
       81 GETUPVAL                         R7 2
       82 LOADK                            R8 K27 ["UIListLayout"]
       83 DUPTABLE                         R9 K31 [{"FillDirection", "Padding", "Wraps"}]
       84 GETIMPORT                        R10 K34 [Enum.FillDirection.Horizontal]
       86 SETTABLEKS                       R10 R9 K28 ["FillDirection"]
       88 GETIMPORT                        R10 K36 [UDim.new]
       90 LOADN                            R11 0
       91 LOADN                            R12 4
       92 CALL                             R10 2 1
       93 SETTABLEKS                       R10 R9 K29 ["Padding"]
       95 LOADB                            R10 1
       96 SETTABLEKS                       R10 R9 K30 ["Wraps"]
       98 CALL                             R7 2 1
       99 SETTABLEKS                       R7 R6 K25 ["Layout"]
      101 GETTABLEKS                       R7 R2 K37 ["Styles"]
      103 JUMPIFNOT                        R7 ; [+30]
      104 GETTABLEKS                       R7 R2 K37 ["Styles"]
      106 LOADNIL                          R8
      107 LOADNIL                          R9
      108 FORGPREP                         R7
      109 LOADK                            R13 K38 ["Pill-%*"]
      110 MOVE                             R15 R10
      111 NAMECALL                         R13 R13 K39 ["format"]
      113 CALL                             R13 2 1
      114 MOVE                             R12 R13
      115 GETUPVAL                         R13 2
      116 GETUPVAL                         R14 4
      117 NEWTABLE                         R15 4 0
      119 GETIMPORT                        R16 K42 [Enum.Font.BuilderSansMedium]
      121 SETTABLEKS                       R16 R15 K40 ["Font"]
      123 SETTABLEKS                       R11 R15 K43 ["Text"]
      125 GETUPVAL                         R17 3
      126 GETTABLEKS                       R16 R17 K23 ["Tag"]
      128 LOADK                            R17 K44 ["Role-Surface200 X-Fit X-PadS X-Corner"]
      129 SETTABLE                         R17 R15 R16
      130 CALL                             R13 2 1
      131 SETTABLE                         R13 R6 R12
      132 FORGLOOP                         R7 2 ; [-24]
      134 GETUPVAL                         R7 2
      135 LOADK                            R8 K45 ["Frame"]
      136 NEWTABLE                         R9 2 0
      138 GETTABLEKS                       R10 R0 K18 ["LayoutOrder"]
      140 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
      142 GETUPVAL                         R11 3
      143 GETTABLEKS                       R10 R11 K23 ["Tag"]
      145 LOADK                            R11 K46 ["Role-Surface X-FitY X-ColumnS"]
      146 SETTABLE                         R11 R9 R10
      147 DUPTABLE                         R10 K49 [{"Heading", "Content"}]
      148 GETUPVAL                         R11 2
      149 LOADK                            R12 K45 ["Frame"]
      150 NEWTABLE                         R13 1 0
      152 GETUPVAL                         R15 3
      153 GETTABLEKS                       R14 R15 K23 ["Tag"]
      155 LOADK                            R15 K50 ["Role-Surface X-Fit X-RowS"]
      156 SETTABLE                         R15 R13 R14
      157 DUPTABLE                         R14 K53 [{"Icon", "Label"}]
      158 SETTABLEKS                       R5 R14 K51 ["Icon"]
      160 GETUPVAL                         R15 2
      161 GETUPVAL                         R16 4
      162 NEWTABLE                         R17 4 0
      164 GETIMPORT                        R18 K42 [Enum.Font.BuilderSansMedium]
      166 SETTABLEKS                       R18 R17 K40 ["Font"]
      168 MOVE                             R18 R1
      169 CALL                             R18 0 1
      170 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      172 GETTABLEKS                       R18 R2 K54 ["Name"]
      174 SETTABLEKS                       R18 R17 K43 ["Text"]
      176 GETUPVAL                         R19 3
      177 GETTABLEKS                       R18 R19 K23 ["Tag"]
      179 LOADK                            R19 K55 ["X-Fit"]
      180 SETTABLE                         R19 R17 R18
      181 CALL                             R15 2 1
      182 SETTABLEKS                       R15 R14 K52 ["Label"]
      184 CALL                             R11 3 1
      185 SETTABLEKS                       R11 R10 K47 ["Heading"]
      187 GETUPVAL                         R11 2
      188 LOADK                            R12 K45 ["Frame"]
      189 NEWTABLE                         R13 2 0
      191 GETTABLEKS                       R14 R0 K18 ["LayoutOrder"]
      193 SETTABLEKS                       R14 R13 K18 ["LayoutOrder"]
      195 GETUPVAL                         R15 3
      196 GETTABLEKS                       R14 R15 K23 ["Tag"]
      198 LOADK                            R15 K56 ["Role-Surface X-FitY X-ColumnS X-Pad"]
      199 SETTABLE                         R15 R13 R14
      200 DUPTABLE                         R14 K60 [{"Styles", "Text", "Font", "Background", "Padding", "Layout", "Stroke", "Gradient"}]
      201 GETTABLEKS                       R16 R2 K37 ["Styles"]
      203 JUMPIFNOT                        R16 ; [+12]
      204 GETUPVAL                         R15 2
      205 LOADK                            R16 K45 ["Frame"]
      206 NEWTABLE                         R17 1 0
      208 GETUPVAL                         R19 3
      209 GETTABLEKS                       R18 R19 K23 ["Tag"]
      211 LOADK                            R19 K61 ["Role-Surface X-FitY"]
      212 SETTABLE                         R19 R17 R18
      213 MOVE                             R18 R6
      214 CALL                             R15 3 1
      215 JUMP                             ; [+1]
      216 LOADNIL                          R15
      217 SETTABLEKS                       R15 R14 K37 ["Styles"]
      219 GETTABLEKS                       R16 R2 K62 ["TextColor3"]
      221 JUMPIFNOT                        R16 ; [+18]
      222 GETUPVAL                         R15 2
      223 GETUPVAL                         R16 5
      224 DUPTABLE                         R17 K65 [{"LayoutOrder", "Color", "Token"}]
      225 MOVE                             R18 R1
      226 CALL                             R18 0 1
      227 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      229 GETTABLEKS                       R18 R2 K62 ["TextColor3"]
      231 SETTABLEKS                       R18 R17 K63 ["Color"]
      233 GETTABLEKS                       R19 R2 K66 ["TextToken"]
      235 ORK                              R18 R19 K7 [""]
      236 SETTABLEKS                       R18 R17 K64 ["Token"]
      238 CALL                             R15 2 1
      239 JUMP                             ; [+1]
      240 LOADNIL                          R15
      241 SETTABLEKS                       R15 R14 K43 ["Text"]
      243 GETTABLEKS                       R16 R2 K67 ["FontFace"]
      245 JUMPIF                           R16 ; [+3]
      246 GETTABLEKS                       R16 R2 K68 ["TextSize"]
      248 JUMPIFNOT                        R16 ; [+28]
      249 GETUPVAL                         R15 2
      250 GETUPVAL                         R16 4
      251 NEWTABLE                         R17 4 0
      253 MOVE                             R18 R1
      254 CALL                             R18 0 1
      255 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      257 LOADK                            R19 K69 ["Font %* @ %*"]
      258 GETTABLEKS                       R22 R2 K67 ["FontFace"]
      260 ORK                              R21 R22 K70 ["Default"]
      261 GETTABLEKS                       R23 R2 K68 ["TextSize"]
      263 ORK                              R22 R23 K71 ["0"]
      264 NAMECALL                         R19 R19 K39 ["format"]
      266 CALL                             R19 3 1
      267 MOVE                             R18 R19
      268 SETTABLEKS                       R18 R17 K43 ["Text"]
      270 GETUPVAL                         R19 3
      271 GETTABLEKS                       R18 R19 K23 ["Tag"]
      273 LOADK                            R19 K55 ["X-Fit"]
      274 SETTABLE                         R19 R17 R18
      275 CALL                             R15 2 1
      276 JUMP                             ; [+1]
      277 LOADNIL                          R15
      278 SETTABLEKS                       R15 R14 K40 ["Font"]
      280 GETTABLEKS                       R16 R2 K72 ["BackgroundColor3"]
      282 JUMPIFNOT                        R16 ; [+18]
      283 GETUPVAL                         R15 2
      284 GETUPVAL                         R16 5
      285 DUPTABLE                         R17 K65 [{"LayoutOrder", "Color", "Token"}]
      286 MOVE                             R18 R1
      287 CALL                             R18 0 1
      288 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      290 GETTABLEKS                       R18 R2 K72 ["BackgroundColor3"]
      292 SETTABLEKS                       R18 R17 K63 ["Color"]
      294 GETTABLEKS                       R19 R2 K73 ["BackgroundToken"]
      296 ORK                              R18 R19 K7 [""]
      297 SETTABLEKS                       R18 R17 K64 ["Token"]
      299 CALL                             R15 2 1
      300 JUMP                             ; [+1]
      301 LOADNIL                          R15
      302 SETTABLEKS                       R15 R14 K57 ["Background"]
      304 GETTABLEKS                       R16 R2 K29 ["Padding"]
      306 JUMPIFNOT                        R16 ; [+24]
      307 GETUPVAL                         R15 2
      308 GETUPVAL                         R16 4
      309 NEWTABLE                         R17 4 0
      311 MOVE                             R18 R1
      312 CALL                             R18 0 1
      313 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      315 LOADK                            R19 K74 ["Padding %*"]
      316 GETTABLEKS                       R21 R2 K29 ["Padding"]
      318 NAMECALL                         R19 R19 K39 ["format"]
      320 CALL                             R19 2 1
      321 MOVE                             R18 R19
      322 SETTABLEKS                       R18 R17 K43 ["Text"]
      324 GETUPVAL                         R19 3
      325 GETTABLEKS                       R18 R19 K23 ["Tag"]
      327 LOADK                            R19 K55 ["X-Fit"]
      328 SETTABLE                         R19 R17 R18
      329 CALL                             R15 2 1
      330 JUMP                             ; [+1]
      331 LOADNIL                          R15
      332 SETTABLEKS                       R15 R14 K29 ["Padding"]
      334 GETTABLEKS                       R16 R2 K25 ["Layout"]
      336 JUMPIFNOT                        R16 ; [+24]
      337 GETUPVAL                         R15 2
      338 GETUPVAL                         R16 4
      339 NEWTABLE                         R17 4 0
      341 MOVE                             R18 R1
      342 CALL                             R18 0 1
      343 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      345 LOADK                            R19 K75 ["Layout %*"]
      346 GETTABLEKS                       R21 R2 K25 ["Layout"]
      348 NAMECALL                         R19 R19 K39 ["format"]
      350 CALL                             R19 2 1
      351 MOVE                             R18 R19
      352 SETTABLEKS                       R18 R17 K43 ["Text"]
      354 GETUPVAL                         R19 3
      355 GETTABLEKS                       R18 R19 K23 ["Tag"]
      357 LOADK                            R19 K55 ["X-Fit"]
      358 SETTABLE                         R19 R17 R18
      359 CALL                             R15 2 1
      360 JUMP                             ; [+1]
      361 LOADNIL                          R15
      362 SETTABLEKS                       R15 R14 K25 ["Layout"]
      364 GETTABLEKS                       R16 R2 K58 ["Stroke"]
      366 JUMPIFNOT                        R16 ; [+24]
      367 GETUPVAL                         R15 2
      368 GETUPVAL                         R16 4
      369 NEWTABLE                         R17 4 0
      371 MOVE                             R18 R1
      372 CALL                             R18 0 1
      373 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      375 LOADK                            R19 K76 ["Stroke %*"]
      376 GETTABLEKS                       R21 R2 K58 ["Stroke"]
      378 NAMECALL                         R19 R19 K39 ["format"]
      380 CALL                             R19 2 1
      381 MOVE                             R18 R19
      382 SETTABLEKS                       R18 R17 K43 ["Text"]
      384 GETUPVAL                         R19 3
      385 GETTABLEKS                       R18 R19 K23 ["Tag"]
      387 LOADK                            R19 K55 ["X-Fit"]
      388 SETTABLE                         R19 R17 R18
      389 CALL                             R15 2 1
      390 JUMP                             ; [+1]
      391 LOADNIL                          R15
      392 SETTABLEKS                       R15 R14 K58 ["Stroke"]
      394 GETTABLEKS                       R16 R2 K59 ["Gradient"]
      396 JUMPIFNOT                        R16 ; [+24]
      397 GETUPVAL                         R15 2
      398 GETUPVAL                         R16 4
      399 NEWTABLE                         R17 4 0
      401 MOVE                             R18 R1
      402 CALL                             R18 0 1
      403 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      405 LOADK                            R19 K77 ["Gradient %*"]
      406 GETTABLEKS                       R21 R2 K59 ["Gradient"]
      408 NAMECALL                         R19 R19 K39 ["format"]
      410 CALL                             R19 2 1
      411 MOVE                             R18 R19
      412 SETTABLEKS                       R18 R17 K43 ["Text"]
      414 GETUPVAL                         R19 3
      415 GETTABLEKS                       R18 R19 K23 ["Tag"]
      417 LOADK                            R19 K55 ["X-Fit"]
      418 SETTABLE                         R19 R17 R18
      419 CALL                             R15 2 1
      420 JUMP                             ; [+1]
      421 LOADNIL                          R15
      422 SETTABLEKS                       R15 R14 K59 ["Gradient"]
      424 CALL                             R11 3 1
      425 SETTABLEKS                       R11 R10 K48 ["Content"]
      427 CALL                             R7 3 -1
      428 RETURN                           R7 -1

PROTO_2:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 NEWTABLE                         R2 0 0
        4 GETUPVAL                         R3 1
        5 LOADK                            R5 K0 ["Ribbon"]
        6 NAMECALL                         R3 R3 K1 ["FindFirstChild"]
        8 CALL                             R3 2 1
        9 LOADK                            R5 K2 ["Design"]
       10 NAMECALL                         R3 R3 K1 ["FindFirstChild"]
       12 CALL                             R3 2 1
       13 GETUPVAL                         R4 2
       14 GETUPVAL                         R5 3
       15 NEWTABLE                         R6 4 0
       17 MOVE                             R7 R1
       18 CALL                             R7 0 1
       19 SETTABLEKS                       R7 R6 K3 ["LayoutOrder"]
       21 GETTABLEKS                       R7 R0 K4 ["GuiName"]
       23 SETTABLEKS                       R7 R6 K5 ["Text"]
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R7 R8 K6 ["Tag"]
       28 LOADK                            R8 K7 ["Semibold X-Fit"]
       29 SETTABLE                         R8 R6 R7
       30 CALL                             R4 2 1
       31 SETTABLEKS                       R4 R2 K8 ["Title"]
       33 GETUPVAL                         R4 2
       34 LOADK                            R5 K9 ["StyleLink"]
       35 DUPTABLE                         R6 K11 [{"StyleSheet"}]
       36 SETTABLEKS                       R3 R6 K10 ["StyleSheet"]
       38 CALL                             R4 2 1
       39 SETTABLEKS                       R4 R2 K9 ["StyleLink"]
       41 GETTABLEKS                       R4 R0 K12 ["Views"]
       43 LOADNIL                          R5
       44 LOADNIL                          R6
       45 FORGPREP                         R4
       46 MOVE                             R9 R1
       47 CALL                             R9 0 1
       48 LOADK                            R11 K13 ["Child-%*"]
       49 MOVE                             R13 R9
       50 NAMECALL                         R11 R11 K14 ["format"]
       52 CALL                             R11 2 1
       53 MOVE                             R10 R11
       54 GETUPVAL                         R11 2
       55 GETUPVAL                         R12 5
       56 DUPTABLE                         R13 K16 [{"LayoutOrder", "View"}]
       57 MOVE                             R14 R1
       58 CALL                             R14 0 1
       59 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       61 SETTABLEKS                       R8 R13 K15 ["View"]
       63 CALL                             R11 2 1
       64 SETTABLE                         R11 R2 R10
       65 FORGLOOP                         R4 2 ; [-20]
       67 GETUPVAL                         R4 2
       68 LOADK                            R5 K17 ["Frame"]
       69 NEWTABLE                         R6 1 0
       71 GETUPVAL                         R8 4
       72 GETTABLEKS                       R7 R8 K6 ["Tag"]
       74 LOADK                            R8 K18 ["Role-Surface100 X-FitY X-Pad X-ColumnM"]
       75 SETTABLE                         R8 R6 R7
       76 MOVE                             R7 R2
       77 CALL                             R4 3 -1
       78 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["React"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["createElement"]
       16 GETIMPORT                        R3 K10 [game]
       18 LOADK                            R5 K11 ["StudioService"]
       19 NAMECALL                         R3 R3 K12 ["GetService"]
       21 CALL                             R3 2 1
       22 GETIMPORT                        R4 K10 [game]
       24 LOADK                            R6 K13 ["StylingService"]
       25 NAMECALL                         R4 R4 K12 ["GetService"]
       27 CALL                             R4 2 1
       28 GETIMPORT                        R5 K5 [require]
       30 GETTABLEKS                       R7 R0 K6 ["Packages"]
       32 GETTABLEKS                       R6 R7 K14 ["Framework"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R5 K15 ["UI"]
       37 GETTABLEKS                       R7 R6 K16 ["TextLabel"]
       39 GETTABLEKS                       R9 R5 K17 ["Util"]
       41 GETTABLEKS                       R8 R9 K18 ["counter"]
       43 GETIMPORT                        R9 K5 [require]
       45 GETIMPORT                        R12 K1 [script]
       47 GETTABLEKS                       R11 R12 K19 ["Parent"]
       49 GETTABLEKS                       R10 R11 K20 ["ViewData"]
       51 CALL                             R9 1 1
       52 GETIMPORT                        R10 K23 [UDim2.fromOffset]
       54 LOADN                            R11 24
       55 LOADN                            R12 24
       56 CALL                             R10 2 1
       57 DUPCLOSURE                       R11 K24 [PROTO_0]
       58 CAPTURE                          VAL R8
       59 CAPTURE                          VAL R2
       60 CAPTURE                          VAL R1
       61 CAPTURE                          VAL R10
       62 CAPTURE                          VAL R7
       63 DUPCLOSURE                       R12 K25 [PROTO_1]
       64 CAPTURE                          VAL R8
       65 CAPTURE                          VAL R3
       66 CAPTURE                          VAL R2
       67 CAPTURE                          VAL R1
       68 CAPTURE                          VAL R7
       69 CAPTURE                          VAL R11
       70 DUPCLOSURE                       R13 K26 [PROTO_2]
       71 CAPTURE                          VAL R8
       72 CAPTURE                          VAL R4
       73 CAPTURE                          VAL R2
       74 CAPTURE                          VAL R7
       75 CAPTURE                          VAL R1
       76 CAPTURE                          VAL R12
       77 RETURN                           R13 1
