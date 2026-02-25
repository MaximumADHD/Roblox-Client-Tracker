PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["pageChange"]
        3 LOADN                            R1 1
        4 CALL                             R0 1 0
        5 RETURN                           R0 0

PROTO_1:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["pageChange"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K2 ["props"]
        6 GETTABLEKS                       R2 R3 K3 ["PageIndex"]
        8 ADDK                             R1 R2 K1 [1]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["pageChange"]
        3 GETUPVAL                         R3 0
        4 GETTABLEKS                       R2 R3 K1 ["props"]
        6 GETTABLEKS                       R1 R2 K2 ["PageCount"]
        8 CALL                             R0 1 0
        9 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R0 R1 K0 ["pageChange"]
        3 GETUPVAL                         R4 0
        4 GETTABLEKS                       R3 R4 K2 ["props"]
        6 GETTABLEKS                       R2 R3 K3 ["PageIndex"]
        8 SUBK                             R1 R2 K1 [1]
        9 CALL                             R0 1 0
       10 RETURN                           R0 0

PROTO_4:
        0 FASTCALL1                        TONUMBER R0 ; [+3]
        1 MOVE                             R3 R0
        2 GETIMPORT                        R2 K2 [tonumber]
        4 CALL                             R2 1 1
        5 ORK                              R1 R2 K0 [1]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R2 R3 K3 ["pageChange"]
        9 MOVE                             R3 R1
       10 CALL                             R2 1 0
       11 RETURN                           R0 0

PROTO_5:
        0 LOADN                            R3 1
        1 GETUPVAL                         R6 0
        2 GETTABLEKS                       R5 R6 K0 ["props"]
        4 GETTABLEKS                       R4 R5 K1 ["PageCount"]
        6 FASTCALL3                        MATH_CLAMP R0 R3 R4
        8 MOVE                             R2 R0
        9 GETIMPORT                        R1 K4 [math.clamp]
       11 CALL                             R1 3 1
       12 GETUPVAL                         R4 0
       13 GETTABLEKS                       R3 R4 K0 ["props"]
       15 GETTABLEKS                       R2 R3 K5 ["PageIndex"]
       17 JUMPIFEQ                         R1 R2 ; [+8]
       19 GETUPVAL                         R4 0
       20 GETTABLEKS                       R3 R4 K0 ["props"]
       22 GETTABLEKS                       R2 R3 K6 ["OnPageChange"]
       24 MOVE                             R3 R1
       25 CALL                             R2 1 0
       26 RETURN                           R0 0

PROTO_6:
        0 NEWCLOSURE                       R1 P0
        1 CAPTURE                          VAL R0
        2 SETTABLEKS                       R1 R0 K0 ["firstPage"]
        4 NEWCLOSURE                       R1 P1
        5 CAPTURE                          VAL R0
        6 SETTABLEKS                       R1 R0 K1 ["nextPage"]
        8 NEWCLOSURE                       R1 P2
        9 CAPTURE                          VAL R0
       10 SETTABLEKS                       R1 R0 K2 ["lastPage"]
       12 NEWCLOSURE                       R1 P3
       13 CAPTURE                          VAL R0
       14 SETTABLEKS                       R1 R0 K3 ["prevPage"]
       16 NEWCLOSURE                       R1 P4
       17 CAPTURE                          VAL R0
       18 SETTABLEKS                       R1 R0 K4 ["textChanged"]
       20 NEWCLOSURE                       R1 P5
       21 CAPTURE                          VAL R0
       22 SETTABLEKS                       R1 R0 K5 ["pageChange"]
       24 RETURN                           R0 0

PROTO_7:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Stylizer"]
        4 GETTABLEKS                       R3 R1 K2 ["PageIndex"]
        6 GETTABLEKS                       R5 R0 K0 ["props"]
        8 GETTABLEKS                       R4 R5 K3 ["Localization"]
       10 JUMPIFNOTEQKN                    R3 K4 [1] ; [+5]
       12 GETUPVAL                         R6 0
       13 GETTABLEKS                       R5 R6 K5 ["Disabled"]
       15 JUMPIF                           R5 ; [+1]
       16 LOADNIL                          R5
       17 GETTABLEKS                       R7 R1 K6 ["PageCount"]
       19 JUMPIFNOTLE                      R7 R3 ; [+5]
       21 GETUPVAL                         R7 0
       22 GETTABLEKS                       R6 R7 K5 ["Disabled"]
       24 JUMPIF                           R6 ; [+1]
       25 LOADNIL                          R6
       26 GETUPVAL                         R8 1
       27 GETTABLEKS                       R7 R8 K7 ["createElement"]
       29 GETUPVAL                         R8 2
       30 DUPTABLE                         R9 K12 [{"Padding", "AutomaticSize", "Layout", "Spacing"}]
       31 GETTABLEKS                       R10 R2 K8 ["Padding"]
       33 SETTABLEKS                       R10 R9 K8 ["Padding"]
       35 GETIMPORT                        R10 K15 [Enum.AutomaticSize.XY]
       37 SETTABLEKS                       R10 R9 K9 ["AutomaticSize"]
       39 GETIMPORT                        R10 K18 [Enum.FillDirection.Horizontal]
       41 SETTABLEKS                       R10 R9 K10 ["Layout"]
       43 GETTABLEKS                       R10 R2 K11 ["Spacing"]
       45 SETTABLEKS                       R10 R9 K11 ["Spacing"]
       47 DUPTABLE                         R10 K24 [{"First", "Prev", "Page", "PageIndex", "PageCount", "Next", "Last"}]
       48 GETUPVAL                         R12 1
       49 GETTABLEKS                       R11 R12 K7 ["createElement"]
       51 GETUPVAL                         R12 3
       52 DUPTABLE                         R13 K30 [{"StyleModifier", "Style", "Size", "LayoutOrder", "OnClick"}]
       53 SETTABLEKS                       R5 R13 K25 ["StyleModifier"]
       55 LOADK                            R14 K31 ["RoundSubtle"]
       56 SETTABLEKS                       R14 R13 K26 ["Style"]
       58 GETIMPORT                        R14 K34 [UDim2.fromOffset]
       60 GETTABLEKS                       R15 R2 K35 ["ButtonSize"]
       62 GETTABLEKS                       R16 R2 K35 ["ButtonSize"]
       64 CALL                             R14 2 1
       65 SETTABLEKS                       R14 R13 K27 ["Size"]
       67 LOADN                            R14 1
       68 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
       70 GETTABLEKS                       R14 R0 K36 ["firstPage"]
       72 SETTABLEKS                       R14 R13 K29 ["OnClick"]
       74 DUPTABLE                         R14 K39 [{"Tooltip", "Icon"}]
       75 GETUPVAL                         R16 1
       76 GETTABLEKS                       R15 R16 K7 ["createElement"]
       78 GETUPVAL                         R16 4
       79 DUPTABLE                         R17 K41 [{"Text"}]
       80 GETUPVAL                         R20 5
       81 LOADK                            R21 K42 ["PageNavigation"]
       82 LOADK                            R22 K43 ["FirstPage"]
       83 NAMECALL                         R18 R4 K44 ["getProjectText"]
       85 CALL                             R18 4 1
       86 SETTABLEKS                       R18 R17 K40 ["Text"]
       88 CALL                             R15 2 1
       89 SETTABLEKS                       R15 R14 K37 ["Tooltip"]
       91 GETUPVAL                         R16 1
       92 GETTABLEKS                       R15 R16 K7 ["createElement"]
       94 GETUPVAL                         R16 6
       95 DUPTABLE                         R17 K49 [{"Size", "Position", "AnchorPoint", "ImageColor3", "Image"}]
       96 GETIMPORT                        R18 K34 [UDim2.fromOffset]
       98 GETTABLEKS                       R19 R2 K50 ["IconSize"]
      100 GETTABLEKS                       R20 R2 K50 ["IconSize"]
      102 CALL                             R18 2 1
      103 SETTABLEKS                       R18 R17 K27 ["Size"]
      105 GETIMPORT                        R18 K52 [UDim2.fromScale]
      107 LOADK                            R19 K53 [0.5]
      108 LOADK                            R20 K53 [0.5]
      109 CALL                             R18 2 1
      110 SETTABLEKS                       R18 R17 K45 ["Position"]
      112 GETIMPORT                        R18 K56 [Vector2.new]
      114 LOADK                            R19 K53 [0.5]
      115 LOADK                            R20 K53 [0.5]
      116 CALL                             R18 2 1
      117 SETTABLEKS                       R18 R17 K46 ["AnchorPoint"]
      119 GETTABLEKS                       R18 R2 K57 ["IconColor"]
      121 SETTABLEKS                       R18 R17 K47 ["ImageColor3"]
      123 LOADK                            R18 K58 ["rbxasset://textures/DeveloperFramework/PageNavigation/button_control_start.png"]
      124 SETTABLEKS                       R18 R17 K48 ["Image"]
      126 CALL                             R15 2 1
      127 SETTABLEKS                       R15 R14 K38 ["Icon"]
      129 CALL                             R11 3 1
      130 SETTABLEKS                       R11 R10 K19 ["First"]
      132 GETUPVAL                         R12 1
      133 GETTABLEKS                       R11 R12 K7 ["createElement"]
      135 GETUPVAL                         R12 3
      136 DUPTABLE                         R13 K30 [{"StyleModifier", "Style", "Size", "LayoutOrder", "OnClick"}]
      137 SETTABLEKS                       R5 R13 K25 ["StyleModifier"]
      139 LOADK                            R14 K31 ["RoundSubtle"]
      140 SETTABLEKS                       R14 R13 K26 ["Style"]
      142 GETIMPORT                        R14 K34 [UDim2.fromOffset]
      144 GETTABLEKS                       R15 R2 K35 ["ButtonSize"]
      146 GETTABLEKS                       R16 R2 K35 ["ButtonSize"]
      148 CALL                             R14 2 1
      149 SETTABLEKS                       R14 R13 K27 ["Size"]
      151 LOADN                            R14 2
      152 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
      154 GETTABLEKS                       R14 R0 K59 ["prevPage"]
      156 SETTABLEKS                       R14 R13 K29 ["OnClick"]
      158 DUPTABLE                         R14 K39 [{"Tooltip", "Icon"}]
      159 GETUPVAL                         R16 1
      160 GETTABLEKS                       R15 R16 K7 ["createElement"]
      162 GETUPVAL                         R16 4
      163 DUPTABLE                         R17 K41 [{"Text"}]
      164 GETUPVAL                         R20 5
      165 LOADK                            R21 K42 ["PageNavigation"]
      166 LOADK                            R22 K60 ["PreviousPage"]
      167 NAMECALL                         R18 R4 K44 ["getProjectText"]
      169 CALL                             R18 4 1
      170 SETTABLEKS                       R18 R17 K40 ["Text"]
      172 CALL                             R15 2 1
      173 SETTABLEKS                       R15 R14 K37 ["Tooltip"]
      175 GETUPVAL                         R16 1
      176 GETTABLEKS                       R15 R16 K7 ["createElement"]
      178 GETUPVAL                         R16 6
      179 DUPTABLE                         R17 K49 [{"Size", "Position", "AnchorPoint", "ImageColor3", "Image"}]
      180 GETIMPORT                        R18 K34 [UDim2.fromOffset]
      182 GETTABLEKS                       R19 R2 K50 ["IconSize"]
      184 GETTABLEKS                       R20 R2 K50 ["IconSize"]
      186 CALL                             R18 2 1
      187 SETTABLEKS                       R18 R17 K27 ["Size"]
      189 GETIMPORT                        R18 K52 [UDim2.fromScale]
      191 LOADK                            R19 K53 [0.5]
      192 LOADK                            R20 K53 [0.5]
      193 CALL                             R18 2 1
      194 SETTABLEKS                       R18 R17 K45 ["Position"]
      196 GETIMPORT                        R18 K56 [Vector2.new]
      198 LOADK                            R19 K53 [0.5]
      199 LOADK                            R20 K53 [0.5]
      200 CALL                             R18 2 1
      201 SETTABLEKS                       R18 R17 K46 ["AnchorPoint"]
      203 GETTABLEKS                       R18 R2 K57 ["IconColor"]
      205 SETTABLEKS                       R18 R17 K47 ["ImageColor3"]
      207 LOADK                            R18 K61 ["rbxasset://textures/DeveloperFramework/PageNavigation/button_control_previous.png"]
      208 SETTABLEKS                       R18 R17 K48 ["Image"]
      210 CALL                             R15 2 1
      211 SETTABLEKS                       R15 R14 K38 ["Icon"]
      213 CALL                             R11 3 1
      214 SETTABLEKS                       R11 R10 K20 ["Prev"]
      216 GETUPVAL                         R12 1
      217 GETTABLEKS                       R11 R12 K7 ["createElement"]
      219 GETUPVAL                         R12 7
      220 DUPTABLE                         R13 K62 [{"Text", "LayoutOrder", "AutomaticSize"}]
      221 LOADK                            R14 K21 ["Page"]
      222 SETTABLEKS                       R14 R13 K40 ["Text"]
      224 LOADN                            R14 3
      225 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
      227 GETIMPORT                        R14 K15 [Enum.AutomaticSize.XY]
      229 SETTABLEKS                       R14 R13 K9 ["AutomaticSize"]
      231 CALL                             R11 2 1
      232 SETTABLEKS                       R11 R10 K21 ["Page"]
      234 GETUPVAL                         R12 1
      235 GETTABLEKS                       R11 R12 K7 ["createElement"]
      237 GETUPVAL                         R12 8
      238 DUPTABLE                         R13 K64 [{"LayoutOrder", "Text", "OnTextChanged", "Style", "Size"}]
      239 LOADN                            R14 4
      240 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
      242 GETTABLEKS                       R15 R1 K2 ["PageIndex"]
      244 FASTCALL1                        TOSTRING R15 ; [+2]
      245 GETIMPORT                        R14 K66 [tostring]
      247 CALL                             R14 1 1
      248 SETTABLEKS                       R14 R13 K40 ["Text"]
      250 GETTABLEKS                       R14 R0 K67 ["textChanged"]
      252 SETTABLEKS                       R14 R13 K63 ["OnTextChanged"]
      254 LOADK                            R14 K68 ["RoundedBorder"]
      255 SETTABLEKS                       R14 R13 K26 ["Style"]
      257 GETIMPORT                        R14 K69 [UDim2.new]
      259 LOADN                            R15 0
      260 GETTABLEKS                       R16 R2 K70 ["InputWidth"]
      262 LOADN                            R17 0
      263 GETTABLEKS                       R18 R2 K35 ["ButtonSize"]
      265 CALL                             R14 4 1
      266 SETTABLEKS                       R14 R13 K27 ["Size"]
      268 CALL                             R11 2 1
      269 SETTABLEKS                       R11 R10 K2 ["PageIndex"]
      271 GETUPVAL                         R12 1
      272 GETTABLEKS                       R11 R12 K7 ["createElement"]
      274 GETUPVAL                         R12 7
      275 DUPTABLE                         R13 K71 [{"LayoutOrder", "Text", "AutomaticSize"}]
      276 LOADN                            R14 5
      277 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
      279 GETUPVAL                         R16 5
      280 LOADK                            R17 K42 ["PageNavigation"]
      281 LOADK                            R18 K6 ["PageCount"]
      282 DUPTABLE                         R19 K73 [{"count"}]
      283 GETTABLEKS                       R20 R1 K6 ["PageCount"]
      285 SETTABLEKS                       R20 R19 K72 ["count"]
      287 NAMECALL                         R14 R4 K44 ["getProjectText"]
      289 CALL                             R14 5 1
      290 SETTABLEKS                       R14 R13 K40 ["Text"]
      292 GETIMPORT                        R14 K15 [Enum.AutomaticSize.XY]
      294 SETTABLEKS                       R14 R13 K9 ["AutomaticSize"]
      296 CALL                             R11 2 1
      297 SETTABLEKS                       R11 R10 K6 ["PageCount"]
      299 GETUPVAL                         R12 1
      300 GETTABLEKS                       R11 R12 K7 ["createElement"]
      302 GETUPVAL                         R12 3
      303 DUPTABLE                         R13 K30 [{"StyleModifier", "Style", "Size", "LayoutOrder", "OnClick"}]
      304 SETTABLEKS                       R6 R13 K25 ["StyleModifier"]
      306 LOADK                            R14 K31 ["RoundSubtle"]
      307 SETTABLEKS                       R14 R13 K26 ["Style"]
      309 GETIMPORT                        R14 K34 [UDim2.fromOffset]
      311 GETTABLEKS                       R15 R2 K35 ["ButtonSize"]
      313 GETTABLEKS                       R16 R2 K35 ["ButtonSize"]
      315 CALL                             R14 2 1
      316 SETTABLEKS                       R14 R13 K27 ["Size"]
      318 LOADN                            R14 6
      319 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
      321 GETTABLEKS                       R14 R0 K74 ["nextPage"]
      323 SETTABLEKS                       R14 R13 K29 ["OnClick"]
      325 DUPTABLE                         R14 K39 [{"Tooltip", "Icon"}]
      326 GETUPVAL                         R16 1
      327 GETTABLEKS                       R15 R16 K7 ["createElement"]
      329 GETUPVAL                         R16 4
      330 DUPTABLE                         R17 K41 [{"Text"}]
      331 GETUPVAL                         R20 5
      332 LOADK                            R21 K42 ["PageNavigation"]
      333 LOADK                            R22 K75 ["NextPage"]
      334 NAMECALL                         R18 R4 K44 ["getProjectText"]
      336 CALL                             R18 4 1
      337 SETTABLEKS                       R18 R17 K40 ["Text"]
      339 CALL                             R15 2 1
      340 SETTABLEKS                       R15 R14 K37 ["Tooltip"]
      342 GETUPVAL                         R16 1
      343 GETTABLEKS                       R15 R16 K7 ["createElement"]
      345 GETUPVAL                         R16 6
      346 DUPTABLE                         R17 K49 [{"Size", "Position", "AnchorPoint", "ImageColor3", "Image"}]
      347 GETIMPORT                        R18 K34 [UDim2.fromOffset]
      349 GETTABLEKS                       R19 R2 K50 ["IconSize"]
      351 GETTABLEKS                       R20 R2 K50 ["IconSize"]
      353 CALL                             R18 2 1
      354 SETTABLEKS                       R18 R17 K27 ["Size"]
      356 GETIMPORT                        R18 K52 [UDim2.fromScale]
      358 LOADK                            R19 K53 [0.5]
      359 LOADK                            R20 K53 [0.5]
      360 CALL                             R18 2 1
      361 SETTABLEKS                       R18 R17 K45 ["Position"]
      363 GETIMPORT                        R18 K56 [Vector2.new]
      365 LOADK                            R19 K53 [0.5]
      366 LOADK                            R20 K53 [0.5]
      367 CALL                             R18 2 1
      368 SETTABLEKS                       R18 R17 K46 ["AnchorPoint"]
      370 GETTABLEKS                       R18 R2 K57 ["IconColor"]
      372 SETTABLEKS                       R18 R17 K47 ["ImageColor3"]
      374 LOADK                            R18 K76 ["rbxasset://textures/DeveloperFramework/PageNavigation/button_control_next.png"]
      375 SETTABLEKS                       R18 R17 K48 ["Image"]
      377 CALL                             R15 2 1
      378 SETTABLEKS                       R15 R14 K38 ["Icon"]
      380 CALL                             R11 3 1
      381 SETTABLEKS                       R11 R10 K22 ["Next"]
      383 GETUPVAL                         R12 1
      384 GETTABLEKS                       R11 R12 K7 ["createElement"]
      386 GETUPVAL                         R12 3
      387 DUPTABLE                         R13 K30 [{"StyleModifier", "Style", "Size", "LayoutOrder", "OnClick"}]
      388 SETTABLEKS                       R6 R13 K25 ["StyleModifier"]
      390 LOADK                            R14 K31 ["RoundSubtle"]
      391 SETTABLEKS                       R14 R13 K26 ["Style"]
      393 GETIMPORT                        R14 K34 [UDim2.fromOffset]
      395 GETTABLEKS                       R15 R2 K35 ["ButtonSize"]
      397 GETTABLEKS                       R16 R2 K35 ["ButtonSize"]
      399 CALL                             R14 2 1
      400 SETTABLEKS                       R14 R13 K27 ["Size"]
      402 LOADN                            R14 7
      403 SETTABLEKS                       R14 R13 K28 ["LayoutOrder"]
      405 GETTABLEKS                       R14 R0 K77 ["lastPage"]
      407 SETTABLEKS                       R14 R13 K29 ["OnClick"]
      409 DUPTABLE                         R14 K39 [{"Tooltip", "Icon"}]
      410 GETUPVAL                         R16 1
      411 GETTABLEKS                       R15 R16 K7 ["createElement"]
      413 GETUPVAL                         R16 4
      414 DUPTABLE                         R17 K41 [{"Text"}]
      415 GETUPVAL                         R20 5
      416 LOADK                            R21 K42 ["PageNavigation"]
      417 LOADK                            R22 K78 ["LastPage"]
      418 NAMECALL                         R18 R4 K44 ["getProjectText"]
      420 CALL                             R18 4 1
      421 SETTABLEKS                       R18 R17 K40 ["Text"]
      423 CALL                             R15 2 1
      424 SETTABLEKS                       R15 R14 K37 ["Tooltip"]
      426 GETUPVAL                         R16 1
      427 GETTABLEKS                       R15 R16 K7 ["createElement"]
      429 GETUPVAL                         R16 6
      430 DUPTABLE                         R17 K49 [{"Size", "Position", "AnchorPoint", "ImageColor3", "Image"}]
      431 GETIMPORT                        R18 K34 [UDim2.fromOffset]
      433 GETTABLEKS                       R19 R2 K50 ["IconSize"]
      435 GETTABLEKS                       R20 R2 K50 ["IconSize"]
      437 CALL                             R18 2 1
      438 SETTABLEKS                       R18 R17 K27 ["Size"]
      440 GETIMPORT                        R18 K52 [UDim2.fromScale]
      442 LOADK                            R19 K53 [0.5]
      443 LOADK                            R20 K53 [0.5]
      444 CALL                             R18 2 1
      445 SETTABLEKS                       R18 R17 K45 ["Position"]
      447 GETIMPORT                        R18 K56 [Vector2.new]
      449 LOADK                            R19 K53 [0.5]
      450 LOADK                            R20 K53 [0.5]
      451 CALL                             R18 2 1
      452 SETTABLEKS                       R18 R17 K46 ["AnchorPoint"]
      454 GETTABLEKS                       R18 R2 K57 ["IconColor"]
      456 SETTABLEKS                       R18 R17 K47 ["ImageColor3"]
      458 LOADK                            R18 K79 ["rbxasset://textures/DeveloperFramework/PageNavigation/button_control_end.png"]
      459 SETTABLEKS                       R18 R17 K48 ["Image"]
      461 CALL                             R15 2 1
      462 SETTABLEKS                       R15 R14 K38 ["Icon"]
      464 CALL                             R11 3 1
      465 SETTABLEKS                       R11 R10 K23 ["Last"]
      467 CALL                             R7 3 -1
      468 RETURN                           R7 -1

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
       18 GETTABLEKS                       R4 R0 K2 ["UI"]
       20 GETTABLEKS                       R3 R4 K8 ["ContextServices"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K9 ["withContext"]
       25 GETIMPORT                        R4 K6 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Resources"]
       29 CALL                             R4 1 1
       30 GETTABLEKS                       R5 R4 K11 ["LOCALIZATION_PROJECT_NAME"]
       32 GETIMPORT                        R6 K6 [require]
       34 GETTABLEKS                       R9 R0 K2 ["UI"]
       36 GETTABLEKS                       R8 R9 K12 ["Components"]
       38 GETTABLEKS                       R7 R8 K13 ["Pane"]
       40 CALL                             R6 1 1
       41 GETIMPORT                        R7 K6 [require]
       43 GETTABLEKS                       R10 R0 K2 ["UI"]
       45 GETTABLEKS                       R9 R10 K12 ["Components"]
       47 GETTABLEKS                       R8 R9 K14 ["DEPRECATED_Button"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K6 [require]
       52 GETTABLEKS                       R11 R0 K2 ["UI"]
       54 GETTABLEKS                       R10 R11 K12 ["Components"]
       56 GETTABLEKS                       R9 R10 K15 ["Tooltip"]
       58 CALL                             R8 1 1
       59 GETIMPORT                        R9 K6 [require]
       61 GETTABLEKS                       R12 R0 K2 ["UI"]
       63 GETTABLEKS                       R11 R12 K12 ["Components"]
       65 GETTABLEKS                       R10 R11 K16 ["Image"]
       67 CALL                             R9 1 1
       68 GETIMPORT                        R10 K6 [require]
       70 GETTABLEKS                       R13 R0 K2 ["UI"]
       72 GETTABLEKS                       R12 R13 K12 ["Components"]
       74 GETTABLEKS                       R11 R12 K17 ["DEPRECATED_TextInput"]
       76 CALL                             R10 1 1
       77 GETIMPORT                        R11 K6 [require]
       79 GETTABLEKS                       R14 R0 K2 ["UI"]
       81 GETTABLEKS                       R13 R14 K12 ["Components"]
       83 GETTABLEKS                       R12 R13 K18 ["TextLabel"]
       85 CALL                             R11 1 1
       86 GETIMPORT                        R12 K6 [require]
       88 GETTABLEKS                       R14 R0 K19 ["Util"]
       90 GETTABLEKS                       R13 R14 K20 ["StyleModifier"]
       92 CALL                             R12 1 1
       93 GETIMPORT                        R13 K6 [require]
       95 GETTABLEKS                       R15 R0 K19 ["Util"]
       97 GETTABLEKS                       R14 R15 K21 ["Typecheck"]
       99 CALL                             R13 1 1
      100 GETTABLEKS                       R14 R1 K22 ["PureComponent"]
      102 LOADK                            R16 K23 ["PageNavigation"]
      103 NAMECALL                         R14 R14 K24 ["extend"]
      105 CALL                             R14 2 1
      106 GETTABLEKS                       R15 R13 K25 ["wrap"]
      108 MOVE                             R16 R14
      109 GETIMPORT                        R17 K1 [script]
      111 CALL                             R15 2 0
      112 DUPCLOSURE                       R15 K26 [PROTO_6]
      113 SETTABLEKS                       R15 R14 K27 ["init"]
      115 DUPCLOSURE                       R15 K28 [PROTO_7]
      116 CAPTURE                          VAL R12
      117 CAPTURE                          VAL R1
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R7
      120 CAPTURE                          VAL R8
      121 CAPTURE                          VAL R5
      122 CAPTURE                          VAL R9
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R10
      125 SETTABLEKS                       R15 R14 K29 ["render"]
      127 MOVE                             R15 R3
      128 DUPTABLE                         R16 K32 [{"Localization", "Stylizer"}]
      129 GETTABLEKS                       R17 R2 K30 ["Localization"]
      131 SETTABLEKS                       R17 R16 K30 ["Localization"]
      133 GETTABLEKS                       R17 R2 K31 ["Stylizer"]
      135 SETTABLEKS                       R17 R16 K31 ["Stylizer"]
      137 CALL                             R15 1 1
      138 MOVE                             R16 R14
      139 CALL                             R15 1 1
      140 MOVE                             R14 R15
      141 RETURN                           R14 1
