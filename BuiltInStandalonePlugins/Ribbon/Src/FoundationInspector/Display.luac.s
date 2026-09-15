PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 LOADK                            R3 K0 ["Frame"]
        4 NEWTABLE                         R4 2 0
        6 GETTABLEKS                       R5 R0 K1 ["LayoutOrder"]
        8 SETTABLEKS                       R5 R4 K1 ["LayoutOrder"]
       10 GETUPVAL                         R5 2
       11 GETTABLEKS                       R5 R5 K2 ["Tag"]
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
       31 GETUPVAL                         R9 2
       32 GETTABLEKS                       R9 R9 K2 ["Tag"]
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
       51 GETUPVAL                         R9 2
       52 GETTABLEKS                       R9 R9 K2 ["Tag"]
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
       10 JUMPIF                           R3 ; [+11]
       11 DUPTABLE                         R3 K7 [{["Image"] = "", ["ImageRectSize"], ["ImageRectOffset"]}]
       12 GETIMPORT                        R4 K10 [Vector2.new]
       14 CALL                             R4 0 1
       15 SETTABLEKS                       R4 R3 K5 ["ImageRectSize"]
       17 GETIMPORT                        R4 K10 [Vector2.new]
       19 CALL                             R4 0 1
       20 SETTABLEKS                       R4 R3 K6 ["ImageRectOffset"]
       22 GETTABLEKS                       R4 R3 K5 ["ImageRectSize"]
       24 JUMPIF                           R4 ; [+3]
       25 GETIMPORT                        R4 K10 [Vector2.new]
       27 CALL                             R4 0 1
       28 GETUPVAL                         R5 2
       29 LOADK                            R6 K11 ["ImageLabel"]
       30 NEWTABLE                         R7 8 0
       32 GETIMPORT                        R8 K14 [UDim2.fromOffset]
       34 GETTABLEKS                       R9 R4 K15 ["X"]
       36 GETTABLEKS                       R10 R4 K16 ["Y"]
       38 CALL                             R8 2 1
       39 SETTABLEKS                       R8 R7 K17 ["Size"]
       41 MOVE                             R8 R1
       42 CALL                             R8 0 1
       43 SETTABLEKS                       R8 R7 K18 ["LayoutOrder"]
       45 GETTABLEKS                       R8 R3 K3 ["Image"]
       47 SETTABLEKS                       R8 R7 K3 ["Image"]
       49 SETTABLEKS                       R4 R7 K5 ["ImageRectSize"]
       51 GETTABLEKS                       R8 R3 K6 ["ImageRectOffset"]
       53 SETTABLEKS                       R8 R7 K6 ["ImageRectOffset"]
       55 GETIMPORT                        R8 K19 [UDim2.new]
       57 LOADN                            R9 0
       58 LOADN                            R10 2
       59 LOADK                            R11 K20 [0.5]
       60 LOADN                            R12 0
       61 CALL                             R8 4 1
       62 SETTABLEKS                       R8 R7 K21 ["Position"]
       64 GETIMPORT                        R8 K10 [Vector2.new]
       66 LOADN                            R9 0
       67 LOADK                            R10 K20 [0.5]
       68 CALL                             R8 2 1
       69 SETTABLEKS                       R8 R7 K22 ["AnchorPoint"]
       71 GETUPVAL                         R8 3
       72 GETTABLEKS                       R8 R8 K23 ["Tag"]
       74 LOADK                            R9 K24 ["Role-Surface"]
       75 SETTABLE                         R9 R7 R8
       76 CALL                             R5 2 1
       77 DUPTABLE                         R6 K26 [{"Layout"}]
       78 GETUPVAL                         R7 2
       79 LOADK                            R8 K27 ["UIListLayout"]
       80 DUPTABLE                         R9 K32 [{["FillDirection"], ["Padding"], ["Wraps"] = True}]
       81 GETIMPORT                        R10 K35 [Enum.FillDirection.Horizontal]
       83 SETTABLEKS                       R10 R9 K28 ["FillDirection"]
       85 GETIMPORT                        R10 K37 [UDim.new]
       87 LOADN                            R11 0
       88 LOADN                            R12 4
       89 CALL                             R10 2 1
       90 SETTABLEKS                       R10 R9 K29 ["Padding"]
       92 CALL                             R7 2 1
       93 SETTABLEKS                       R7 R6 K25 ["Layout"]
       95 GETTABLEKS                       R7 R2 K38 ["Styles"]
       97 JUMPIFNOT                        R7 ; [+29]
       98 GETTABLEKS                       R7 R2 K38 ["Styles"]
      100 LOADNIL                          R8
      101 LOADNIL                          R9
      102 FORGPREP                         R7
      103 LOADK                            R12 K39 ["Pill-%*"]
      104 MOVE                             R14 R10
      105 NAMECALL                         R12 R12 K40 ["format"]
      107 CALL                             R12 2 1
      108 GETUPVAL                         R13 2
      109 GETUPVAL                         R14 4
      110 NEWTABLE                         R15 4 0
      112 GETIMPORT                        R16 K43 [Enum.Font.BuilderSansMedium]
      114 SETTABLEKS                       R16 R15 K41 ["Font"]
      116 SETTABLEKS                       R11 R15 K44 ["Text"]
      118 GETUPVAL                         R16 3
      119 GETTABLEKS                       R16 R16 K23 ["Tag"]
      121 LOADK                            R17 K45 ["Role-Surface200 X-Fit X-PadS X-Corner"]
      122 SETTABLE                         R17 R15 R16
      123 CALL                             R13 2 1
      124 SETTABLE                         R13 R6 R12
      125 FORGLOOP                         R7 2 ; [-23]
      127 GETUPVAL                         R7 2
      128 LOADK                            R8 K46 ["Frame"]
      129 NEWTABLE                         R9 2 0
      131 GETTABLEKS                       R10 R0 K18 ["LayoutOrder"]
      133 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
      135 GETUPVAL                         R10 3
      136 GETTABLEKS                       R10 R10 K23 ["Tag"]
      138 LOADK                            R11 K47 ["Role-Surface X-FitY X-ColumnS"]
      139 SETTABLE                         R11 R9 R10
      140 DUPTABLE                         R10 K50 [{"Heading", "Content"}]
      141 GETUPVAL                         R11 2
      142 LOADK                            R12 K46 ["Frame"]
      143 NEWTABLE                         R13 1 0
      145 GETUPVAL                         R14 3
      146 GETTABLEKS                       R14 R14 K23 ["Tag"]
      148 LOADK                            R15 K51 ["Role-Surface X-Fit X-RowS"]
      149 SETTABLE                         R15 R13 R14
      150 DUPTABLE                         R14 K54 [{"Icon", "Label"}]
      151 SETTABLEKS                       R5 R14 K52 ["Icon"]
      153 GETUPVAL                         R15 2
      154 GETUPVAL                         R16 4
      155 NEWTABLE                         R17 4 0
      157 GETIMPORT                        R18 K43 [Enum.Font.BuilderSansMedium]
      159 SETTABLEKS                       R18 R17 K41 ["Font"]
      161 MOVE                             R18 R1
      162 CALL                             R18 0 1
      163 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      165 GETTABLEKS                       R18 R2 K55 ["Name"]
      167 SETTABLEKS                       R18 R17 K44 ["Text"]
      169 GETUPVAL                         R18 3
      170 GETTABLEKS                       R18 R18 K23 ["Tag"]
      172 LOADK                            R19 K56 ["X-Fit"]
      173 SETTABLE                         R19 R17 R18
      174 CALL                             R15 2 1
      175 SETTABLEKS                       R15 R14 K53 ["Label"]
      177 CALL                             R11 3 1
      178 SETTABLEKS                       R11 R10 K48 ["Heading"]
      180 GETUPVAL                         R11 2
      181 LOADK                            R12 K46 ["Frame"]
      182 NEWTABLE                         R13 2 0
      184 GETTABLEKS                       R14 R0 K18 ["LayoutOrder"]
      186 SETTABLEKS                       R14 R13 K18 ["LayoutOrder"]
      188 GETUPVAL                         R14 3
      189 GETTABLEKS                       R14 R14 K23 ["Tag"]
      191 LOADK                            R15 K57 ["Role-Surface X-FitY X-ColumnS X-Pad"]
      192 SETTABLE                         R15 R13 R14
      193 DUPTABLE                         R14 K61 [{"Styles", "Text", "Font", "Background", "Padding", "Layout", "Stroke", "Gradient"}]
      194 GETTABLEKS                       R16 R2 K38 ["Styles"]
      196 JUMPIFNOT                        R16 ; [+12]
      197 GETUPVAL                         R15 2
      198 LOADK                            R16 K46 ["Frame"]
      199 NEWTABLE                         R17 1 0
      201 GETUPVAL                         R18 3
      202 GETTABLEKS                       R18 R18 K23 ["Tag"]
      204 LOADK                            R19 K62 ["Role-Surface X-FitY"]
      205 SETTABLE                         R19 R17 R18
      206 MOVE                             R18 R6
      207 CALL                             R15 3 1
      208 JUMP                             ; [+1]
      209 LOADNIL                          R15
      210 SETTABLEKS                       R15 R14 K38 ["Styles"]
      212 GETTABLEKS                       R16 R2 K63 ["TextColor3"]
      214 JUMPIFNOT                        R16 ; [+18]
      215 GETUPVAL                         R15 2
      216 GETUPVAL                         R16 5
      217 DUPTABLE                         R17 K66 [{"LayoutOrder", "Color", "Token"}]
      218 MOVE                             R18 R1
      219 CALL                             R18 0 1
      220 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      222 GETTABLEKS                       R18 R2 K63 ["TextColor3"]
      224 SETTABLEKS                       R18 R17 K64 ["Color"]
      226 GETTABLEKS                       R19 R2 K67 ["TextToken"]
      228 ORK                              R18 R19 K4 [""]
      229 SETTABLEKS                       R18 R17 K65 ["Token"]
      231 CALL                             R15 2 1
      232 JUMP                             ; [+1]
      233 LOADNIL                          R15
      234 SETTABLEKS                       R15 R14 K44 ["Text"]
      236 GETTABLEKS                       R16 R2 K68 ["FontFace"]
      238 JUMPIF                           R16 ; [+3]
      239 GETTABLEKS                       R16 R2 K69 ["TextSize"]
      241 JUMPIFNOT                        R16 ; [+27]
      242 GETUPVAL                         R15 2
      243 GETUPVAL                         R16 4
      244 NEWTABLE                         R17 4 0
      246 MOVE                             R18 R1
      247 CALL                             R18 0 1
      248 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      250 LOADK                            R18 K70 ["Font %* @ %*"]
      251 GETTABLEKS                       R21 R2 K68 ["FontFace"]
      253 ORK                              R20 R21 K71 ["Default"]
      254 GETTABLEKS                       R22 R2 K69 ["TextSize"]
      256 ORK                              R21 R22 K72 ["0"]
      257 NAMECALL                         R18 R18 K40 ["format"]
      259 CALL                             R18 3 1
      260 SETTABLEKS                       R18 R17 K44 ["Text"]
      262 GETUPVAL                         R18 3
      263 GETTABLEKS                       R18 R18 K23 ["Tag"]
      265 LOADK                            R19 K56 ["X-Fit"]
      266 SETTABLE                         R19 R17 R18
      267 CALL                             R15 2 1
      268 JUMP                             ; [+1]
      269 LOADNIL                          R15
      270 SETTABLEKS                       R15 R14 K41 ["Font"]
      272 GETTABLEKS                       R16 R2 K73 ["BackgroundColor3"]
      274 JUMPIFNOT                        R16 ; [+18]
      275 GETUPVAL                         R15 2
      276 GETUPVAL                         R16 5
      277 DUPTABLE                         R17 K66 [{"LayoutOrder", "Color", "Token"}]
      278 MOVE                             R18 R1
      279 CALL                             R18 0 1
      280 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      282 GETTABLEKS                       R18 R2 K73 ["BackgroundColor3"]
      284 SETTABLEKS                       R18 R17 K64 ["Color"]
      286 GETTABLEKS                       R19 R2 K74 ["BackgroundToken"]
      288 ORK                              R18 R19 K4 [""]
      289 SETTABLEKS                       R18 R17 K65 ["Token"]
      291 CALL                             R15 2 1
      292 JUMP                             ; [+1]
      293 LOADNIL                          R15
      294 SETTABLEKS                       R15 R14 K58 ["Background"]
      296 GETTABLEKS                       R16 R2 K29 ["Padding"]
      298 JUMPIFNOT                        R16 ; [+23]
      299 GETUPVAL                         R15 2
      300 GETUPVAL                         R16 4
      301 NEWTABLE                         R17 4 0
      303 MOVE                             R18 R1
      304 CALL                             R18 0 1
      305 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      307 LOADK                            R18 K75 ["Padding %*"]
      308 GETTABLEKS                       R20 R2 K29 ["Padding"]
      310 NAMECALL                         R18 R18 K40 ["format"]
      312 CALL                             R18 2 1
      313 SETTABLEKS                       R18 R17 K44 ["Text"]
      315 GETUPVAL                         R18 3
      316 GETTABLEKS                       R18 R18 K23 ["Tag"]
      318 LOADK                            R19 K56 ["X-Fit"]
      319 SETTABLE                         R19 R17 R18
      320 CALL                             R15 2 1
      321 JUMP                             ; [+1]
      322 LOADNIL                          R15
      323 SETTABLEKS                       R15 R14 K29 ["Padding"]
      325 GETTABLEKS                       R16 R2 K25 ["Layout"]
      327 JUMPIFNOT                        R16 ; [+23]
      328 GETUPVAL                         R15 2
      329 GETUPVAL                         R16 4
      330 NEWTABLE                         R17 4 0
      332 MOVE                             R18 R1
      333 CALL                             R18 0 1
      334 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      336 LOADK                            R18 K76 ["Layout %*"]
      337 GETTABLEKS                       R20 R2 K25 ["Layout"]
      339 NAMECALL                         R18 R18 K40 ["format"]
      341 CALL                             R18 2 1
      342 SETTABLEKS                       R18 R17 K44 ["Text"]
      344 GETUPVAL                         R18 3
      345 GETTABLEKS                       R18 R18 K23 ["Tag"]
      347 LOADK                            R19 K56 ["X-Fit"]
      348 SETTABLE                         R19 R17 R18
      349 CALL                             R15 2 1
      350 JUMP                             ; [+1]
      351 LOADNIL                          R15
      352 SETTABLEKS                       R15 R14 K25 ["Layout"]
      354 GETTABLEKS                       R16 R2 K59 ["Stroke"]
      356 JUMPIFNOT                        R16 ; [+23]
      357 GETUPVAL                         R15 2
      358 GETUPVAL                         R16 4
      359 NEWTABLE                         R17 4 0
      361 MOVE                             R18 R1
      362 CALL                             R18 0 1
      363 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      365 LOADK                            R18 K77 ["Stroke %*"]
      366 GETTABLEKS                       R20 R2 K59 ["Stroke"]
      368 NAMECALL                         R18 R18 K40 ["format"]
      370 CALL                             R18 2 1
      371 SETTABLEKS                       R18 R17 K44 ["Text"]
      373 GETUPVAL                         R18 3
      374 GETTABLEKS                       R18 R18 K23 ["Tag"]
      376 LOADK                            R19 K56 ["X-Fit"]
      377 SETTABLE                         R19 R17 R18
      378 CALL                             R15 2 1
      379 JUMP                             ; [+1]
      380 LOADNIL                          R15
      381 SETTABLEKS                       R15 R14 K59 ["Stroke"]
      383 GETTABLEKS                       R16 R2 K60 ["Gradient"]
      385 JUMPIFNOT                        R16 ; [+23]
      386 GETUPVAL                         R15 2
      387 GETUPVAL                         R16 4
      388 NEWTABLE                         R17 4 0
      390 MOVE                             R18 R1
      391 CALL                             R18 0 1
      392 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      394 LOADK                            R18 K78 ["Gradient %*"]
      395 GETTABLEKS                       R20 R2 K60 ["Gradient"]
      397 NAMECALL                         R18 R18 K40 ["format"]
      399 CALL                             R18 2 1
      400 SETTABLEKS                       R18 R17 K44 ["Text"]
      402 GETUPVAL                         R18 3
      403 GETTABLEKS                       R18 R18 K23 ["Tag"]
      405 LOADK                            R19 K56 ["X-Fit"]
      406 SETTABLE                         R19 R17 R18
      407 CALL                             R15 2 1
      408 JUMP                             ; [+1]
      409 LOADNIL                          R15
      410 SETTABLEKS                       R15 R14 K60 ["Gradient"]
      412 CALL                             R11 3 1
      413 SETTABLEKS                       R11 R10 K49 ["Content"]
      415 CALL                             R7 3 -1
      416 RETURN                           R7 -1

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
       25 GETUPVAL                         R7 4
       26 GETTABLEKS                       R7 R7 K6 ["Tag"]
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
       48 LOADK                            R10 K13 ["Child-%*"]
       49 MOVE                             R12 R9
       50 NAMECALL                         R10 R10 K14 ["format"]
       52 CALL                             R10 2 1
       53 GETUPVAL                         R11 2
       54 GETUPVAL                         R12 5
       55 DUPTABLE                         R13 K16 [{"LayoutOrder", "View"}]
       56 MOVE                             R14 R1
       57 CALL                             R14 0 1
       58 SETTABLEKS                       R14 R13 K3 ["LayoutOrder"]
       60 SETTABLEKS                       R8 R13 K15 ["View"]
       62 CALL                             R11 2 1
       63 SETTABLE                         R11 R2 R10
       64 FORGLOOP                         R4 2 ; [-19]
       66 GETUPVAL                         R4 2
       67 LOADK                            R5 K17 ["Frame"]
       68 NEWTABLE                         R6 1 0
       70 GETUPVAL                         R7 4
       71 GETTABLEKS                       R7 R7 K6 ["Tag"]
       73 LOADK                            R8 K18 ["Role-Surface100 X-FitY X-Pad X-ColumnM"]
       74 SETTABLE                         R8 R6 R7
       75 MOVE                             R7 R2
       76 CALL                             R4 3 -1
       77 RETURN                           R4 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["Ribbon"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["React"]
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
       30 GETTABLEKS                       R6 R0 K6 ["Packages"]
       32 GETTABLEKS                       R6 R6 K14 ["Framework"]
       34 CALL                             R5 1 1
       35 GETTABLEKS                       R6 R5 K15 ["UI"]
       37 GETTABLEKS                       R7 R6 K16 ["TextLabel"]
       39 GETTABLEKS                       R8 R5 K17 ["Util"]
       41 GETTABLEKS                       R8 R8 K18 ["counter"]
       43 GETIMPORT                        R9 K5 [require]
       45 GETIMPORT                        R10 K1 [script]
       47 GETTABLEKS                       R10 R10 K19 ["Parent"]
       49 GETTABLEKS                       R10 R10 K20 ["ViewData"]
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
