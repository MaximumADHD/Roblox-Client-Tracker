PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R3 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R3 K3 ["MaterialTileItem"]
        8 GETTABLEKS                       R4 R1 K4 ["ApplyToSelection"]
       10 GETTABLEKS                       R5 R1 K5 ["Hover"]
       12 GETTABLEKS                       R6 R1 K6 ["Material"]
       14 GETTABLEKS                       R7 R1 K7 ["MaterialDescription"]
       16 GETTABLEKS                       R8 R1 K8 ["MaterialName"]
       18 GETTABLEKS                       R9 R6 K9 ["MaterialVariant"]
       20 GETTABLEKS                       R10 R1 K10 ["MaterialTileSize"]
       22 GETTABLEKS                       R11 R6 K6 ["Material"]
       24 GETTABLEKS                       R12 R1 K11 ["Selected"]
       26 GETTABLEKS                       R13 R1 K12 ["Status"]
       28 GETIMPORT                        R14 K15 [UDim2.fromOffset]
       30 MOVE                             R15 R10
       31 MOVE                             R16 R10
       32 CALL                             R14 2 1
       33 GETTABLEKS                       R15 R3 K16 ["Padding"]
       35 GETTABLEKS                       R16 R3 K17 ["TextSize"]
       37 GETUPVAL                         R17 0
       38 GETTABLEKS                       R17 R17 K18 ["createElement"]
       40 GETUPVAL                         R18 1
       41 DUPTABLE                         R19 K26 [{"DisableHover", "LayoutOrder", "OnClick", "OnMouseEnter", "OnMouseLeave", "Style", "Size"}]
       42 GETTABLEKS                       R20 R1 K27 ["MenuHover"]
       44 SETTABLEKS                       R20 R19 K19 ["DisableHover"]
       46 GETTABLEKS                       R20 R1 K20 ["LayoutOrder"]
       48 SETTABLEKS                       R20 R19 K20 ["LayoutOrder"]
       50 GETTABLEKS                       R20 R1 K21 ["OnClick"]
       52 SETTABLEKS                       R20 R19 K21 ["OnClick"]
       54 GETTABLEKS                       R20 R1 K22 ["OnMouseEnter"]
       56 SETTABLEKS                       R20 R19 K22 ["OnMouseEnter"]
       58 GETTABLEKS                       R20 R1 K23 ["OnMouseLeave"]
       60 SETTABLEKS                       R20 R19 K23 ["OnMouseLeave"]
       62 JUMPIFNOT                        R12 ; [+2]
       63 LOADK                            R20 K28 ["RoundActive"]
       64 JUMP                             ; [+1]
       65 LOADK                            R20 K29 ["Round"]
       66 SETTABLEKS                       R20 R19 K24 ["Style"]
       68 SETTABLEKS                       R14 R19 K25 ["Size"]
       70 DUPTABLE                         R20 K33 [{"Content", "MaterialVariantIcon", "StatusIcon", "ApplyToSelection"}]
       71 GETUPVAL                         R21 0
       72 GETTABLEKS                       R21 R21 K18 ["createElement"]
       74 GETUPVAL                         R22 2
       75 DUPTABLE                         R23 K34 [{"Size"}]
       76 SETTABLEKS                       R14 R23 K25 ["Size"]
       78 DUPTABLE                         R24 K38 [{"MaterialPreview", "Gradient", "NameLabel"}]
       79 GETUPVAL                         R25 0
       80 GETTABLEKS                       R25 R25 K18 ["createElement"]
       82 GETUPVAL                         R26 3
       83 DUPTABLE                         R27 K45 [{["Clone"] = False, ["Hover"], ["LayoutOrder"] = 1, ["Material"], ["MaterialVariant"], ["Position"], ["Size"], ["Static"] = True}]
       84 SETTABLEKS                       R5 R27 K5 ["Hover"]
       86 SETTABLEKS                       R11 R27 K6 ["Material"]
       88 SETTABLEKS                       R9 R27 K9 ["MaterialVariant"]
       90 GETIMPORT                        R28 K15 [UDim2.fromOffset]
       92 LOADN                            R29 0
       93 LOADN                            R30 0
       94 CALL                             R28 2 1
       95 SETTABLEKS                       R28 R27 K42 ["Position"]
       97 SETTABLEKS                       R14 R27 K25 ["Size"]
       99 CALL                             R25 2 1
      100 SETTABLEKS                       R25 R24 K35 ["MaterialPreview"]
      102 LOADN                            R26 100
      103 JUMPIFNOTLE                      R26 R10 ; [+58]
      105 GETUPVAL                         R25 0
      106 GETTABLEKS                       R25 R25 K18 ["createElement"]
      108 GETUPVAL                         R26 4
      109 DUPTABLE                         R27 K51 [{["AnchorPoint"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 2, ["Position"], ["Size"], ["ZIndex"] = 2}]
      110 GETIMPORT                        R28 K54 [Vector2.new]
      112 LOADK                            R29 K55 [0.5]
      113 LOADN                            R30 1
      114 CALL                             R28 2 1
      115 SETTABLEKS                       R28 R27 K46 ["AnchorPoint"]
      117 GETIMPORT                        R28 K58 [Enum.HorizontalAlignment.Left]
      119 SETTABLEKS                       R28 R27 K47 ["HorizontalAlignment"]
      121 GETIMPORT                        R28 K61 [Enum.FillDirection.Vertical]
      123 SETTABLEKS                       R28 R27 K48 ["Layout"]
      125 GETTABLEKS                       R28 R3 K62 ["GradientPosition"]
      127 SETTABLEKS                       R28 R27 K42 ["Position"]
      129 GETTABLEKS                       R28 R3 K63 ["GradientSize"]
      131 SETTABLEKS                       R28 R27 K25 ["Size"]
      133 DUPTABLE                         R28 K64 [{"Gradient"}]
      134 GETUPVAL                         R29 0
      135 GETTABLEKS                       R29 R29 K18 ["createElement"]
      137 GETUPVAL                         R30 5
      138 DUPTABLE                         R31 K65 [{"Size", "Style"}]
      139 GETIMPORT                        R32 K67 [UDim2.fromScale]
      141 LOADN                            R33 1
      142 LOADN                            R34 1
      143 CALL                             R32 2 1
      144 SETTABLEKS                       R32 R31 K25 ["Size"]
      146 DUPTABLE                         R32 K69 [{"Image"}]
      147 JUMPIFNOT                        R5 ; [+3]
      148 GETTABLEKS                       R33 R3 K70 ["GradientHover"]
      150 JUMP                             ; [+2]
      151 GETTABLEKS                       R33 R3 K36 ["Gradient"]
      153 SETTABLEKS                       R33 R32 K68 ["Image"]
      155 SETTABLEKS                       R32 R31 K24 ["Style"]
      157 CALL                             R29 2 1
      158 SETTABLEKS                       R29 R28 K36 ["Gradient"]
      160 CALL                             R25 3 1
      161 JUMP                             ; [+1]
      162 LOADNIL                          R25
      163 SETTABLEKS                       R25 R24 K36 ["Gradient"]
      165 LOADN                            R26 100
      166 JUMPIFNOTLE                      R26 R10 ; [+89]
      168 GETUPVAL                         R25 0
      169 GETTABLEKS                       R25 R25 K18 ["createElement"]
      171 GETUPVAL                         R26 4
      172 DUPTABLE                         R27 K72 [{["AnchorPoint"], ["HorizontalAlignment"], ["Layout"], ["LayoutOrder"] = 2, ["Position"], ["Size"], ["ZIndex"] = 3}]
      173 GETIMPORT                        R28 K54 [Vector2.new]
      175 LOADN                            R29 0
      176 LOADN                            R30 1
      177 CALL                             R28 2 1
      178 SETTABLEKS                       R28 R27 K46 ["AnchorPoint"]
      180 GETIMPORT                        R28 K58 [Enum.HorizontalAlignment.Left]
      182 SETTABLEKS                       R28 R27 K47 ["HorizontalAlignment"]
      184 GETIMPORT                        R28 K61 [Enum.FillDirection.Vertical]
      186 SETTABLEKS                       R28 R27 K48 ["Layout"]
      188 GETIMPORT                        R28 K73 [UDim2.new]
      190 LOADN                            R29 0
      191 MOVE                             R30 R15
      192 LOADN                            R31 1
      193 MINUS                            R32 R15
      194 CALL                             R28 4 1
      195 SETTABLEKS                       R28 R27 K42 ["Position"]
      197 JUMPIFNOT                        R9 ; [+15]
      198 GETIMPORT                        R28 K73 [UDim2.new]
      200 LOADN                            R29 1
      201 MULK                             R31 R15 K74 [-2]
      202 GETTABLEKS                       R32 R3 K75 ["IconSize"]
      204 GETTABLEKS                       R32 R32 K76 ["X"]
      206 GETTABLEKS                       R32 R32 K77 ["Offset"]
      208 SUB                              R30 R31 R32
      209 LOADN                            R31 0
      210 MOVE                             R32 R16
      211 CALL                             R28 4 1
      212 JUMP                             ; [+7]
      213 GETIMPORT                        R28 K73 [UDim2.new]
      215 LOADN                            R29 1
      216 MULK                             R30 R15 K74 [-2]
      217 LOADN                            R31 0
      218 MOVE                             R32 R16
      219 CALL                             R28 4 1
      220 SETTABLEKS                       R28 R27 K25 ["Size"]
      222 DUPTABLE                         R28 K79 [{"Name"}]
      223 GETUPVAL                         R29 0
      224 GETTABLEKS                       R29 R29 K18 ["createElement"]
      226 GETUPVAL                         R30 6
      227 DUPTABLE                         R31 K85 [{["Size"], ["Text"], ["TextSize"], ["TextTruncate"], ["TextXAlignment"], ["TextYAlignment"], ["TextWrapped"] = False}]
      228 GETIMPORT                        R32 K67 [UDim2.fromScale]
      230 LOADN                            R33 1
      231 LOADN                            R34 1
      232 CALL                             R32 2 1
      233 SETTABLEKS                       R32 R31 K25 ["Size"]
      235 SETTABLEKS                       R8 R31 K80 ["Text"]
      237 SETTABLEKS                       R16 R31 K17 ["TextSize"]
      239 GETIMPORT                        R32 K87 [Enum.TextTruncate.AtEnd]
      241 SETTABLEKS                       R32 R31 K81 ["TextTruncate"]
      243 GETIMPORT                        R32 K88 [Enum.TextXAlignment.Left]
      245 SETTABLEKS                       R32 R31 K82 ["TextXAlignment"]
      247 GETIMPORT                        R32 K90 [Enum.TextYAlignment.Top]
      249 SETTABLEKS                       R32 R31 K83 ["TextYAlignment"]
      251 CALL                             R29 2 1
      252 SETTABLEKS                       R29 R28 K78 ["Name"]
      254 CALL                             R25 3 1
      255 JUMP                             ; [+1]
      256 LOADNIL                          R25
      257 SETTABLEKS                       R25 R24 K37 ["NameLabel"]
      259 CALL                             R21 3 1
      260 SETTABLEKS                       R21 R20 K30 ["Content"]
      262 GETTABLEKS                       R22 R6 K9 ["MaterialVariant"]
      264 JUMPIFNOT                        R22 ; [+42]
      265 GETUPVAL                         R21 0
      266 GETTABLEKS                       R21 R21 K18 ["createElement"]
      268 GETUPVAL                         R22 2
      269 DUPTABLE                         R23 K91 [{["AnchorPoint"], ["LayoutOrder"] = 2, ["Position"], ["Size"], ["ZIndex"] = 2}]
      270 GETTABLEKS                       R24 R3 K92 ["MaterialVariantIconAnchorPoint"]
      272 SETTABLEKS                       R24 R23 K46 ["AnchorPoint"]
      274 GETTABLEKS                       R24 R3 K93 ["MaterialVariantIconPosition"]
      276 SETTABLEKS                       R24 R23 K42 ["Position"]
      278 GETTABLEKS                       R24 R3 K75 ["IconSize"]
      280 SETTABLEKS                       R24 R23 K25 ["Size"]
      282 DUPTABLE                         R24 K95 [{"Image", "Tooltip"}]
      283 GETUPVAL                         R25 0
      284 GETTABLEKS                       R25 R25 K18 ["createElement"]
      286 GETUPVAL                         R26 5
      287 DUPTABLE                         R27 K96 [{"Style"}]
      288 GETTABLEKS                       R28 R3 K31 ["MaterialVariantIcon"]
      290 SETTABLEKS                       R28 R27 K24 ["Style"]
      292 CALL                             R25 2 1
      293 SETTABLEKS                       R25 R24 K68 ["Image"]
      295 GETUPVAL                         R25 0
      296 GETTABLEKS                       R25 R25 K18 ["createElement"]
      298 GETUPVAL                         R26 7
      299 DUPTABLE                         R27 K97 [{"Text"}]
      300 SETTABLEKS                       R7 R27 K80 ["Text"]
      302 CALL                             R25 2 1
      303 SETTABLEKS                       R25 R24 K94 ["Tooltip"]
      305 CALL                             R21 3 1
      306 JUMP                             ; [+1]
      307 LOADNIL                          R21
      308 SETTABLEKS                       R21 R20 K31 ["MaterialVariantIcon"]
      310 JUMPIFNOT                        R13 ; [+23]
      311 GETIMPORT                        R22 K100 [Enum.PropertyStatus.Ok]
      313 JUMPIFEQ                         R13 R22 ; [+20]
      315 GETUPVAL                         R21 0
      316 GETTABLEKS                       R21 R21 K18 ["createElement"]
      318 GETUPVAL                         R22 8
      319 DUPTABLE                         R23 K101 [{["LayoutOrder"] = 3, ["Material"], ["Position"], ["Size"], ["Status"], ["ZIndex"] = 2}]
      320 SETTABLEKS                       R6 R23 K6 ["Material"]
      322 GETTABLEKS                       R24 R3 K102 ["StatusIconPosition"]
      324 SETTABLEKS                       R24 R23 K42 ["Position"]
      326 GETTABLEKS                       R24 R3 K75 ["IconSize"]
      328 SETTABLEKS                       R24 R23 K25 ["Size"]
      330 SETTABLEKS                       R13 R23 K12 ["Status"]
      332 CALL                             R21 2 1
      333 JUMP                             ; [+1]
      334 LOADNIL                          R21
      335 SETTABLEKS                       R21 R20 K32 ["StatusIcon"]
      337 JUMPIFNOT                        R5 ; [+67]
      338 GETUPVAL                         R21 0
      339 GETTABLEKS                       R21 R21 K18 ["createElement"]
      341 GETUPVAL                         R22 1
      342 DUPTABLE                         R23 K104 [{["AnchorPoint"], ["LayoutOrder"] = 4, ["OnClick"], ["Position"], ["Size"], ["Style"] = "Round"}]
      343 GETTABLEKS                       R24 R3 K105 ["ApplyIconAnchorPoint"]
      345 SETTABLEKS                       R24 R23 K46 ["AnchorPoint"]
      347 SETTABLEKS                       R4 R23 K21 ["OnClick"]
      349 GETTABLEKS                       R24 R3 K106 ["ApplyIconPosition"]
      351 SETTABLEKS                       R24 R23 K42 ["Position"]
      353 GETTABLEKS                       R24 R3 K107 ["ButtonSize"]
      355 SETTABLEKS                       R24 R23 K25 ["Size"]
      357 DUPTABLE                         R24 K95 [{"Image", "Tooltip"}]
      358 GETUPVAL                         R25 0
      359 GETTABLEKS                       R25 R25 K18 ["createElement"]
      361 GETUPVAL                         R26 5
      362 DUPTABLE                         R27 K108 [{"AnchorPoint", "Position", "Size", "Style"}]
      363 GETIMPORT                        R28 K54 [Vector2.new]
      365 LOADK                            R29 K55 [0.5]
      366 LOADK                            R30 K55 [0.5]
      367 CALL                             R28 2 1
      368 SETTABLEKS                       R28 R27 K46 ["AnchorPoint"]
      370 GETIMPORT                        R28 K67 [UDim2.fromScale]
      372 LOADK                            R29 K55 [0.5]
      373 LOADK                            R30 K55 [0.5]
      374 CALL                             R28 2 1
      375 SETTABLEKS                       R28 R27 K42 ["Position"]
      377 GETTABLEKS                       R28 R3 K75 ["IconSize"]
      379 SETTABLEKS                       R28 R27 K25 ["Size"]
      381 GETTABLEKS                       R28 R3 K109 ["ApplyIcon"]
      383 SETTABLEKS                       R28 R27 K24 ["Style"]
      385 CALL                             R25 2 1
      386 SETTABLEKS                       R25 R24 K68 ["Image"]
      388 GETUPVAL                         R25 0
      389 GETTABLEKS                       R25 R25 K18 ["createElement"]
      391 GETUPVAL                         R26 7
      392 DUPTABLE                         R27 K97 [{"Text"}]
      393 LOADK                            R30 K110 ["TopBar"]
      394 LOADK                            R31 K111 ["Apply"]
      395 NAMECALL                         R28 R2 K112 ["getText"]
      397 CALL                             R28 3 1
      398 SETTABLEKS                       R28 R27 K80 ["Text"]
      400 CALL                             R25 2 1
      401 SETTABLEKS                       R25 R24 K94 ["Tooltip"]
      403 CALL                             R21 3 1
      404 JUMP                             ; [+1]
      405 LOADNIL                          R21
      406 SETTABLEKS                       R21 R20 K4 ["ApplyToSelection"]
      408 CALL                             R17 3 -1
      409 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETTABLEKS                       R0 R0 K2 ["Parent"]
        9 GETTABLEKS                       R0 R0 K2 ["Parent"]
       11 GETTABLEKS                       R0 R0 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R2 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R2 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R3 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R3 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R4 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R4 K9 ["Framework"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       36 GETTABLEKS                       R5 R4 K11 ["withContext"]
       38 GETTABLEKS                       R6 R4 K12 ["Analytics"]
       40 GETTABLEKS                       R7 R4 K13 ["Localization"]
       42 GETTABLEKS                       R8 R3 K14 ["Style"]
       44 GETTABLEKS                       R8 R8 K15 ["Stylizer"]
       46 GETTABLEKS                       R9 R3 K16 ["UI"]
       48 GETTABLEKS                       R10 R9 K17 ["Button"]
       50 GETTABLEKS                       R11 R9 K18 ["Container"]
       52 GETTABLEKS                       R12 R9 K19 ["Image"]
       54 GETTABLEKS                       R13 R9 K20 ["Pane"]
       56 GETTABLEKS                       R14 R9 K21 ["TruncatedTextLabel"]
       58 GETTABLEKS                       R15 R9 K22 ["Tooltip"]
       60 GETTABLEKS                       R16 R0 K5 ["Src"]
       62 GETTABLEKS                       R16 R16 K23 ["Components"]
       64 GETIMPORT                        R17 K4 [require]
       66 GETTABLEKS                       R18 R16 K24 ["MaterialPreview"]
       68 CALL                             R17 1 1
       69 GETIMPORT                        R18 K4 [require]
       71 GETTABLEKS                       R19 R16 K25 ["StatusIcon"]
       73 CALL                             R18 1 1
       74 GETTABLEKS                       R19 R2 K26 ["PureComponent"]
       76 LOADK                            R21 K27 ["MaterialTileItem"]
       77 NAMECALL                         R19 R19 K28 ["extend"]
       79 CALL                             R19 2 1
       80 DUPCLOSURE                       R20 K29 [PROTO_0]
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R10
       83 CAPTURE                          VAL R11
       84 CAPTURE                          VAL R17
       85 CAPTURE                          VAL R13
       86 CAPTURE                          VAL R12
       87 CAPTURE                          VAL R14
       88 CAPTURE                          VAL R15
       89 CAPTURE                          VAL R18
       90 SETTABLEKS                       R20 R19 K30 ["render"]
       92 MOVE                             R20 R5
       93 DUPTABLE                         R21 K31 [{"Analytics", "Localization", "Stylizer"}]
       94 SETTABLEKS                       R6 R21 K12 ["Analytics"]
       96 SETTABLEKS                       R7 R21 K13 ["Localization"]
       98 SETTABLEKS                       R8 R21 K15 ["Stylizer"]
      100 CALL                             R20 1 1
      101 MOVE                             R21 R19
      102 CALL                             R20 1 -1
      103 RETURN                           R20 -1
