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
       97 JUMPIFNOT                        R7 ; [+30]
       98 GETTABLEKS                       R7 R2 K38 ["Styles"]
      100 LOADNIL                          R8
      101 LOADNIL                          R9
      102 FORGPREP                         R7
      103 LOADK                            R13 K39 ["Pill-%*"]
      104 MOVE                             R15 R10
      105 NAMECALL                         R13 R13 K40 ["format"]
      107 CALL                             R13 2 1
      108 MOVE                             R12 R13
      109 GETUPVAL                         R13 2
      110 GETUPVAL                         R14 4
      111 NEWTABLE                         R15 4 0
      113 GETIMPORT                        R16 K43 [Enum.Font.BuilderSansMedium]
      115 SETTABLEKS                       R16 R15 K41 ["Font"]
      117 SETTABLEKS                       R11 R15 K44 ["Text"]
      119 GETUPVAL                         R16 3
      120 GETTABLEKS                       R16 R16 K23 ["Tag"]
      122 LOADK                            R17 K45 ["Role-Surface200 X-Fit X-PadS X-Corner"]
      123 SETTABLE                         R17 R15 R16
      124 CALL                             R13 2 1
      125 SETTABLE                         R13 R6 R12
      126 FORGLOOP                         R7 2 ; [-24]
      128 GETUPVAL                         R7 2
      129 LOADK                            R8 K46 ["Frame"]
      130 NEWTABLE                         R9 2 0
      132 GETTABLEKS                       R10 R0 K18 ["LayoutOrder"]
      134 SETTABLEKS                       R10 R9 K18 ["LayoutOrder"]
      136 GETUPVAL                         R10 3
      137 GETTABLEKS                       R10 R10 K23 ["Tag"]
      139 LOADK                            R11 K47 ["Role-Surface X-FitY X-ColumnS"]
      140 SETTABLE                         R11 R9 R10
      141 DUPTABLE                         R10 K50 [{"Heading", "Content"}]
      142 GETUPVAL                         R11 2
      143 LOADK                            R12 K46 ["Frame"]
      144 NEWTABLE                         R13 1 0
      146 GETUPVAL                         R14 3
      147 GETTABLEKS                       R14 R14 K23 ["Tag"]
      149 LOADK                            R15 K51 ["Role-Surface X-Fit X-RowS"]
      150 SETTABLE                         R15 R13 R14
      151 DUPTABLE                         R14 K54 [{"Icon", "Label"}]
      152 SETTABLEKS                       R5 R14 K52 ["Icon"]
      154 GETUPVAL                         R15 2
      155 GETUPVAL                         R16 4
      156 NEWTABLE                         R17 4 0
      158 GETIMPORT                        R18 K43 [Enum.Font.BuilderSansMedium]
      160 SETTABLEKS                       R18 R17 K41 ["Font"]
      162 MOVE                             R18 R1
      163 CALL                             R18 0 1
      164 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      166 GETTABLEKS                       R18 R2 K55 ["Name"]
      168 SETTABLEKS                       R18 R17 K44 ["Text"]
      170 GETUPVAL                         R18 3
      171 GETTABLEKS                       R18 R18 K23 ["Tag"]
      173 LOADK                            R19 K56 ["X-Fit"]
      174 SETTABLE                         R19 R17 R18
      175 CALL                             R15 2 1
      176 SETTABLEKS                       R15 R14 K53 ["Label"]
      178 CALL                             R11 3 1
      179 SETTABLEKS                       R11 R10 K48 ["Heading"]
      181 GETUPVAL                         R11 2
      182 LOADK                            R12 K46 ["Frame"]
      183 NEWTABLE                         R13 2 0
      185 GETTABLEKS                       R14 R0 K18 ["LayoutOrder"]
      187 SETTABLEKS                       R14 R13 K18 ["LayoutOrder"]
      189 GETUPVAL                         R14 3
      190 GETTABLEKS                       R14 R14 K23 ["Tag"]
      192 LOADK                            R15 K57 ["Role-Surface X-FitY X-ColumnS X-Pad"]
      193 SETTABLE                         R15 R13 R14
      194 DUPTABLE                         R14 K61 [{"Styles", "Text", "Font", "Background", "Padding", "Layout", "Stroke", "Gradient"}]
      195 GETTABLEKS                       R16 R2 K38 ["Styles"]
      197 JUMPIFNOT                        R16 ; [+12]
      198 GETUPVAL                         R15 2
      199 LOADK                            R16 K46 ["Frame"]
      200 NEWTABLE                         R17 1 0
      202 GETUPVAL                         R18 3
      203 GETTABLEKS                       R18 R18 K23 ["Tag"]
      205 LOADK                            R19 K62 ["Role-Surface X-FitY"]
      206 SETTABLE                         R19 R17 R18
      207 MOVE                             R18 R6
      208 CALL                             R15 3 1
      209 JUMP                             ; [+1]
      210 LOADNIL                          R15
      211 SETTABLEKS                       R15 R14 K38 ["Styles"]
      213 GETTABLEKS                       R16 R2 K63 ["TextColor3"]
      215 JUMPIFNOT                        R16 ; [+18]
      216 GETUPVAL                         R15 2
      217 GETUPVAL                         R16 5
      218 DUPTABLE                         R17 K66 [{"LayoutOrder", "Color", "Token"}]
      219 MOVE                             R18 R1
      220 CALL                             R18 0 1
      221 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      223 GETTABLEKS                       R18 R2 K63 ["TextColor3"]
      225 SETTABLEKS                       R18 R17 K64 ["Color"]
      227 GETTABLEKS                       R19 R2 K67 ["TextToken"]
      229 ORK                              R18 R19 K4 [""]
      230 SETTABLEKS                       R18 R17 K65 ["Token"]
      232 CALL                             R15 2 1
      233 JUMP                             ; [+1]
      234 LOADNIL                          R15
      235 SETTABLEKS                       R15 R14 K44 ["Text"]
      237 GETTABLEKS                       R16 R2 K68 ["FontFace"]
      239 JUMPIF                           R16 ; [+3]
      240 GETTABLEKS                       R16 R2 K69 ["TextSize"]
      242 JUMPIFNOT                        R16 ; [+28]
      243 GETUPVAL                         R15 2
      244 GETUPVAL                         R16 4
      245 NEWTABLE                         R17 4 0
      247 MOVE                             R18 R1
      248 CALL                             R18 0 1
      249 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      251 LOADK                            R19 K70 ["Font %* @ %*"]
      252 GETTABLEKS                       R22 R2 K68 ["FontFace"]
      254 ORK                              R21 R22 K71 ["Default"]
      255 GETTABLEKS                       R23 R2 K69 ["TextSize"]
      257 ORK                              R22 R23 K72 ["0"]
      258 NAMECALL                         R19 R19 K40 ["format"]
      260 CALL                             R19 3 1
      261 MOVE                             R18 R19
      262 SETTABLEKS                       R18 R17 K44 ["Text"]
      264 GETUPVAL                         R18 3
      265 GETTABLEKS                       R18 R18 K23 ["Tag"]
      267 LOADK                            R19 K56 ["X-Fit"]
      268 SETTABLE                         R19 R17 R18
      269 CALL                             R15 2 1
      270 JUMP                             ; [+1]
      271 LOADNIL                          R15
      272 SETTABLEKS                       R15 R14 K41 ["Font"]
      274 GETTABLEKS                       R16 R2 K73 ["BackgroundColor3"]
      276 JUMPIFNOT                        R16 ; [+18]
      277 GETUPVAL                         R15 2
      278 GETUPVAL                         R16 5
      279 DUPTABLE                         R17 K66 [{"LayoutOrder", "Color", "Token"}]
      280 MOVE                             R18 R1
      281 CALL                             R18 0 1
      282 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      284 GETTABLEKS                       R18 R2 K73 ["BackgroundColor3"]
      286 SETTABLEKS                       R18 R17 K64 ["Color"]
      288 GETTABLEKS                       R19 R2 K74 ["BackgroundToken"]
      290 ORK                              R18 R19 K4 [""]
      291 SETTABLEKS                       R18 R17 K65 ["Token"]
      293 CALL                             R15 2 1
      294 JUMP                             ; [+1]
      295 LOADNIL                          R15
      296 SETTABLEKS                       R15 R14 K58 ["Background"]
      298 GETTABLEKS                       R16 R2 K29 ["Padding"]
      300 JUMPIFNOT                        R16 ; [+24]
      301 GETUPVAL                         R15 2
      302 GETUPVAL                         R16 4
      303 NEWTABLE                         R17 4 0
      305 MOVE                             R18 R1
      306 CALL                             R18 0 1
      307 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      309 LOADK                            R19 K75 ["Padding %*"]
      310 GETTABLEKS                       R21 R2 K29 ["Padding"]
      312 NAMECALL                         R19 R19 K40 ["format"]
      314 CALL                             R19 2 1
      315 MOVE                             R18 R19
      316 SETTABLEKS                       R18 R17 K44 ["Text"]
      318 GETUPVAL                         R18 3
      319 GETTABLEKS                       R18 R18 K23 ["Tag"]
      321 LOADK                            R19 K56 ["X-Fit"]
      322 SETTABLE                         R19 R17 R18
      323 CALL                             R15 2 1
      324 JUMP                             ; [+1]
      325 LOADNIL                          R15
      326 SETTABLEKS                       R15 R14 K29 ["Padding"]
      328 GETTABLEKS                       R16 R2 K25 ["Layout"]
      330 JUMPIFNOT                        R16 ; [+24]
      331 GETUPVAL                         R15 2
      332 GETUPVAL                         R16 4
      333 NEWTABLE                         R17 4 0
      335 MOVE                             R18 R1
      336 CALL                             R18 0 1
      337 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      339 LOADK                            R19 K76 ["Layout %*"]
      340 GETTABLEKS                       R21 R2 K25 ["Layout"]
      342 NAMECALL                         R19 R19 K40 ["format"]
      344 CALL                             R19 2 1
      345 MOVE                             R18 R19
      346 SETTABLEKS                       R18 R17 K44 ["Text"]
      348 GETUPVAL                         R18 3
      349 GETTABLEKS                       R18 R18 K23 ["Tag"]
      351 LOADK                            R19 K56 ["X-Fit"]
      352 SETTABLE                         R19 R17 R18
      353 CALL                             R15 2 1
      354 JUMP                             ; [+1]
      355 LOADNIL                          R15
      356 SETTABLEKS                       R15 R14 K25 ["Layout"]
      358 GETTABLEKS                       R16 R2 K59 ["Stroke"]
      360 JUMPIFNOT                        R16 ; [+24]
      361 GETUPVAL                         R15 2
      362 GETUPVAL                         R16 4
      363 NEWTABLE                         R17 4 0
      365 MOVE                             R18 R1
      366 CALL                             R18 0 1
      367 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      369 LOADK                            R19 K77 ["Stroke %*"]
      370 GETTABLEKS                       R21 R2 K59 ["Stroke"]
      372 NAMECALL                         R19 R19 K40 ["format"]
      374 CALL                             R19 2 1
      375 MOVE                             R18 R19
      376 SETTABLEKS                       R18 R17 K44 ["Text"]
      378 GETUPVAL                         R18 3
      379 GETTABLEKS                       R18 R18 K23 ["Tag"]
      381 LOADK                            R19 K56 ["X-Fit"]
      382 SETTABLE                         R19 R17 R18
      383 CALL                             R15 2 1
      384 JUMP                             ; [+1]
      385 LOADNIL                          R15
      386 SETTABLEKS                       R15 R14 K59 ["Stroke"]
      388 GETTABLEKS                       R16 R2 K60 ["Gradient"]
      390 JUMPIFNOT                        R16 ; [+24]
      391 GETUPVAL                         R15 2
      392 GETUPVAL                         R16 4
      393 NEWTABLE                         R17 4 0
      395 MOVE                             R18 R1
      396 CALL                             R18 0 1
      397 SETTABLEKS                       R18 R17 K18 ["LayoutOrder"]
      399 LOADK                            R19 K78 ["Gradient %*"]
      400 GETTABLEKS                       R21 R2 K60 ["Gradient"]
      402 NAMECALL                         R19 R19 K40 ["format"]
      404 CALL                             R19 2 1
      405 MOVE                             R18 R19
      406 SETTABLEKS                       R18 R17 K44 ["Text"]
      408 GETUPVAL                         R18 3
      409 GETTABLEKS                       R18 R18 K23 ["Tag"]
      411 LOADK                            R19 K56 ["X-Fit"]
      412 SETTABLE                         R19 R17 R18
      413 CALL                             R15 2 1
      414 JUMP                             ; [+1]
      415 LOADNIL                          R15
      416 SETTABLEKS                       R15 R14 K60 ["Gradient"]
      418 CALL                             R11 3 1
      419 SETTABLEKS                       R11 R10 K49 ["Content"]
      421 CALL                             R7 3 -1
      422 RETURN                           R7 -1

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
       71 GETUPVAL                         R7 4
       72 GETTABLEKS                       R7 R7 K6 ["Tag"]
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
