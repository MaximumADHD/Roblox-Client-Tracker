PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["props"]
        2 GETTABLEKS                       R2 R1 K1 ["Localization"]
        4 GETTABLEKS                       R4 R1 K2 ["Stylizer"]
        6 GETTABLEKS                       R3 R4 K3 ["MaterialTileItem"]
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
       37 GETUPVAL                         R18 0
       38 GETTABLEKS                       R17 R18 K18 ["createElement"]
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
       71 GETUPVAL                         R22 0
       72 GETTABLEKS                       R21 R22 K18 ["createElement"]
       74 GETUPVAL                         R22 2
       75 DUPTABLE                         R23 K34 [{"Size"}]
       76 SETTABLEKS                       R14 R23 K25 ["Size"]
       78 DUPTABLE                         R24 K38 [{"MaterialPreview", "Gradient", "NameLabel"}]
       79 GETUPVAL                         R26 0
       80 GETTABLEKS                       R25 R26 K18 ["createElement"]
       82 GETUPVAL                         R26 3
       83 DUPTABLE                         R27 K42 [{"Clone", "Hover", "LayoutOrder", "Material", "MaterialVariant", "Position", "Size", "Static"}]
       84 LOADB                            R28 0
       85 SETTABLEKS                       R28 R27 K39 ["Clone"]
       87 SETTABLEKS                       R5 R27 K5 ["Hover"]
       89 LOADN                            R28 1
       90 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
       92 SETTABLEKS                       R11 R27 K6 ["Material"]
       94 SETTABLEKS                       R9 R27 K9 ["MaterialVariant"]
       96 GETIMPORT                        R28 K15 [UDim2.fromOffset]
       98 LOADN                            R29 0
       99 LOADN                            R30 0
      100 CALL                             R28 2 1
      101 SETTABLEKS                       R28 R27 K40 ["Position"]
      103 SETTABLEKS                       R14 R27 K25 ["Size"]
      105 LOADB                            R28 1
      106 SETTABLEKS                       R28 R27 K41 ["Static"]
      108 CALL                             R25 2 1
      109 SETTABLEKS                       R25 R24 K35 ["MaterialPreview"]
      111 LOADN                            R26 100
      112 JUMPIFNOTLE                      R26 R10 ; [+64]
      114 GETUPVAL                         R26 0
      115 GETTABLEKS                       R25 R26 K18 ["createElement"]
      117 GETUPVAL                         R26 4
      118 DUPTABLE                         R27 K47 [{"AnchorPoint", "HorizontalAlignment", "Layout", "LayoutOrder", "Position", "Size", "ZIndex"}]
      119 GETIMPORT                        R28 K50 [Vector2.new]
      121 LOADK                            R29 K51 [0.5]
      122 LOADN                            R30 1
      123 CALL                             R28 2 1
      124 SETTABLEKS                       R28 R27 K43 ["AnchorPoint"]
      126 GETIMPORT                        R28 K54 [Enum.HorizontalAlignment.Left]
      128 SETTABLEKS                       R28 R27 K44 ["HorizontalAlignment"]
      130 GETIMPORT                        R28 K57 [Enum.FillDirection.Vertical]
      132 SETTABLEKS                       R28 R27 K45 ["Layout"]
      134 LOADN                            R28 2
      135 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      137 GETTABLEKS                       R28 R3 K58 ["GradientPosition"]
      139 SETTABLEKS                       R28 R27 K40 ["Position"]
      141 GETTABLEKS                       R28 R3 K59 ["GradientSize"]
      143 SETTABLEKS                       R28 R27 K25 ["Size"]
      145 LOADN                            R28 2
      146 SETTABLEKS                       R28 R27 K46 ["ZIndex"]
      148 DUPTABLE                         R28 K60 [{"Gradient"}]
      149 GETUPVAL                         R30 0
      150 GETTABLEKS                       R29 R30 K18 ["createElement"]
      152 GETUPVAL                         R30 5
      153 DUPTABLE                         R31 K61 [{"Size", "Style"}]
      154 GETIMPORT                        R32 K63 [UDim2.fromScale]
      156 LOADN                            R33 1
      157 LOADN                            R34 1
      158 CALL                             R32 2 1
      159 SETTABLEKS                       R32 R31 K25 ["Size"]
      161 DUPTABLE                         R32 K65 [{"Image"}]
      162 JUMPIFNOT                        R5 ; [+3]
      163 GETTABLEKS                       R33 R3 K66 ["GradientHover"]
      165 JUMP                             ; [+2]
      166 GETTABLEKS                       R33 R3 K36 ["Gradient"]
      168 SETTABLEKS                       R33 R32 K64 ["Image"]
      170 SETTABLEKS                       R32 R31 K24 ["Style"]
      172 CALL                             R29 2 1
      173 SETTABLEKS                       R29 R28 K36 ["Gradient"]
      175 CALL                             R25 3 1
      176 JUMP                             ; [+1]
      177 LOADNIL                          R25
      178 SETTABLEKS                       R25 R24 K36 ["Gradient"]
      180 LOADN                            R26 100
      181 JUMPIFNOTLE                      R26 R10 ; [+98]
      183 GETUPVAL                         R26 0
      184 GETTABLEKS                       R25 R26 K18 ["createElement"]
      186 GETUPVAL                         R26 4
      187 DUPTABLE                         R27 K47 [{"AnchorPoint", "HorizontalAlignment", "Layout", "LayoutOrder", "Position", "Size", "ZIndex"}]
      188 GETIMPORT                        R28 K50 [Vector2.new]
      190 LOADN                            R29 0
      191 LOADN                            R30 1
      192 CALL                             R28 2 1
      193 SETTABLEKS                       R28 R27 K43 ["AnchorPoint"]
      195 GETIMPORT                        R28 K54 [Enum.HorizontalAlignment.Left]
      197 SETTABLEKS                       R28 R27 K44 ["HorizontalAlignment"]
      199 GETIMPORT                        R28 K57 [Enum.FillDirection.Vertical]
      201 SETTABLEKS                       R28 R27 K45 ["Layout"]
      203 LOADN                            R28 2
      204 SETTABLEKS                       R28 R27 K20 ["LayoutOrder"]
      206 GETIMPORT                        R28 K67 [UDim2.new]
      208 LOADN                            R29 0
      209 MOVE                             R30 R15
      210 LOADN                            R31 1
      211 MINUS                            R32 R15
      212 CALL                             R28 4 1
      213 SETTABLEKS                       R28 R27 K40 ["Position"]
      215 JUMPIFNOT                        R9 ; [+15]
      216 GETIMPORT                        R28 K67 [UDim2.new]
      218 LOADN                            R29 1
      219 MULK                             R31 R15 K68 [-2]
      220 GETTABLEKS                       R34 R3 K69 ["IconSize"]
      222 GETTABLEKS                       R33 R34 K70 ["X"]
      224 GETTABLEKS                       R32 R33 K71 ["Offset"]
      226 SUB                              R30 R31 R32
      227 LOADN                            R31 0
      228 MOVE                             R32 R16
      229 CALL                             R28 4 1
      230 JUMP                             ; [+7]
      231 GETIMPORT                        R28 K67 [UDim2.new]
      233 LOADN                            R29 1
      234 MULK                             R30 R15 K68 [-2]
      235 LOADN                            R31 0
      236 MOVE                             R32 R16
      237 CALL                             R28 4 1
      238 SETTABLEKS                       R28 R27 K25 ["Size"]
      240 LOADN                            R28 3
      241 SETTABLEKS                       R28 R27 K46 ["ZIndex"]
      243 DUPTABLE                         R28 K73 [{"Name"}]
      244 GETUPVAL                         R30 0
      245 GETTABLEKS                       R29 R30 K18 ["createElement"]
      247 GETUPVAL                         R30 6
      248 DUPTABLE                         R31 K79 [{"Size", "Text", "TextSize", "TextTruncate", "TextXAlignment", "TextYAlignment", "TextWrapped"}]
      249 GETIMPORT                        R32 K63 [UDim2.fromScale]
      251 LOADN                            R33 1
      252 LOADN                            R34 1
      253 CALL                             R32 2 1
      254 SETTABLEKS                       R32 R31 K25 ["Size"]
      256 SETTABLEKS                       R8 R31 K74 ["Text"]
      258 SETTABLEKS                       R16 R31 K17 ["TextSize"]
      260 GETIMPORT                        R32 K81 [Enum.TextTruncate.AtEnd]
      262 SETTABLEKS                       R32 R31 K75 ["TextTruncate"]
      264 GETIMPORT                        R32 K82 [Enum.TextXAlignment.Left]
      266 SETTABLEKS                       R32 R31 K76 ["TextXAlignment"]
      268 GETIMPORT                        R32 K84 [Enum.TextYAlignment.Top]
      270 SETTABLEKS                       R32 R31 K77 ["TextYAlignment"]
      272 LOADB                            R32 0
      273 SETTABLEKS                       R32 R31 K78 ["TextWrapped"]
      275 CALL                             R29 2 1
      276 SETTABLEKS                       R29 R28 K72 ["Name"]
      278 CALL                             R25 3 1
      279 JUMP                             ; [+1]
      280 LOADNIL                          R25
      281 SETTABLEKS                       R25 R24 K37 ["NameLabel"]
      283 CALL                             R21 3 1
      284 SETTABLEKS                       R21 R20 K30 ["Content"]
      286 GETTABLEKS                       R22 R6 K9 ["MaterialVariant"]
      288 JUMPIFNOT                        R22 ; [+48]
      289 GETUPVAL                         R22 0
      290 GETTABLEKS                       R21 R22 K18 ["createElement"]
      292 GETUPVAL                         R22 2
      293 DUPTABLE                         R23 K85 [{"AnchorPoint", "LayoutOrder", "Position", "Size", "ZIndex"}]
      294 GETTABLEKS                       R24 R3 K86 ["MaterialVariantIconAnchorPoint"]
      296 SETTABLEKS                       R24 R23 K43 ["AnchorPoint"]
      298 LOADN                            R24 2
      299 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      301 GETTABLEKS                       R24 R3 K87 ["MaterialVariantIconPosition"]
      303 SETTABLEKS                       R24 R23 K40 ["Position"]
      305 GETTABLEKS                       R24 R3 K69 ["IconSize"]
      307 SETTABLEKS                       R24 R23 K25 ["Size"]
      309 LOADN                            R24 2
      310 SETTABLEKS                       R24 R23 K46 ["ZIndex"]
      312 DUPTABLE                         R24 K89 [{"Image", "Tooltip"}]
      313 GETUPVAL                         R26 0
      314 GETTABLEKS                       R25 R26 K18 ["createElement"]
      316 GETUPVAL                         R26 5
      317 DUPTABLE                         R27 K90 [{"Style"}]
      318 GETTABLEKS                       R28 R3 K31 ["MaterialVariantIcon"]
      320 SETTABLEKS                       R28 R27 K24 ["Style"]
      322 CALL                             R25 2 1
      323 SETTABLEKS                       R25 R24 K64 ["Image"]
      325 GETUPVAL                         R26 0
      326 GETTABLEKS                       R25 R26 K18 ["createElement"]
      328 GETUPVAL                         R26 7
      329 DUPTABLE                         R27 K91 [{"Text"}]
      330 SETTABLEKS                       R7 R27 K74 ["Text"]
      332 CALL                             R25 2 1
      333 SETTABLEKS                       R25 R24 K88 ["Tooltip"]
      335 CALL                             R21 3 1
      336 JUMP                             ; [+1]
      337 LOADNIL                          R21
      338 SETTABLEKS                       R21 R20 K31 ["MaterialVariantIcon"]
      340 JUMPIFNOT                        R13 ; [+29]
      341 GETIMPORT                        R22 K94 [Enum.PropertyStatus.Ok]
      343 JUMPIFEQ                         R13 R22 ; [+26]
      345 GETUPVAL                         R22 0
      346 GETTABLEKS                       R21 R22 K18 ["createElement"]
      348 GETUPVAL                         R22 8
      349 DUPTABLE                         R23 K95 [{"LayoutOrder", "Material", "Position", "Size", "Status", "ZIndex"}]
      350 LOADN                            R24 3
      351 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      353 SETTABLEKS                       R6 R23 K6 ["Material"]
      355 GETTABLEKS                       R24 R3 K96 ["StatusIconPosition"]
      357 SETTABLEKS                       R24 R23 K40 ["Position"]
      359 GETTABLEKS                       R24 R3 K69 ["IconSize"]
      361 SETTABLEKS                       R24 R23 K25 ["Size"]
      363 SETTABLEKS                       R13 R23 K12 ["Status"]
      365 LOADN                            R24 2
      366 SETTABLEKS                       R24 R23 K46 ["ZIndex"]
      368 CALL                             R21 2 1
      369 JUMP                             ; [+1]
      370 LOADNIL                          R21
      371 SETTABLEKS                       R21 R20 K32 ["StatusIcon"]
      373 JUMPIFNOT                        R5 ; [+73]
      374 GETUPVAL                         R22 0
      375 GETTABLEKS                       R21 R22 K18 ["createElement"]
      377 GETUPVAL                         R22 1
      378 DUPTABLE                         R23 K97 [{"AnchorPoint", "LayoutOrder", "OnClick", "Position", "Size", "Style"}]
      379 GETTABLEKS                       R24 R3 K98 ["ApplyIconAnchorPoint"]
      381 SETTABLEKS                       R24 R23 K43 ["AnchorPoint"]
      383 LOADN                            R24 4
      384 SETTABLEKS                       R24 R23 K20 ["LayoutOrder"]
      386 SETTABLEKS                       R4 R23 K21 ["OnClick"]
      388 GETTABLEKS                       R24 R3 K99 ["ApplyIconPosition"]
      390 SETTABLEKS                       R24 R23 K40 ["Position"]
      392 GETTABLEKS                       R24 R3 K100 ["ButtonSize"]
      394 SETTABLEKS                       R24 R23 K25 ["Size"]
      396 LOADK                            R24 K29 ["Round"]
      397 SETTABLEKS                       R24 R23 K24 ["Style"]
      399 DUPTABLE                         R24 K89 [{"Image", "Tooltip"}]
      400 GETUPVAL                         R26 0
      401 GETTABLEKS                       R25 R26 K18 ["createElement"]
      403 GETUPVAL                         R26 5
      404 DUPTABLE                         R27 K101 [{"AnchorPoint", "Position", "Size", "Style"}]
      405 GETIMPORT                        R28 K50 [Vector2.new]
      407 LOADK                            R29 K51 [0.5]
      408 LOADK                            R30 K51 [0.5]
      409 CALL                             R28 2 1
      410 SETTABLEKS                       R28 R27 K43 ["AnchorPoint"]
      412 GETIMPORT                        R28 K63 [UDim2.fromScale]
      414 LOADK                            R29 K51 [0.5]
      415 LOADK                            R30 K51 [0.5]
      416 CALL                             R28 2 1
      417 SETTABLEKS                       R28 R27 K40 ["Position"]
      419 GETTABLEKS                       R28 R3 K69 ["IconSize"]
      421 SETTABLEKS                       R28 R27 K25 ["Size"]
      423 GETTABLEKS                       R28 R3 K102 ["ApplyIcon"]
      425 SETTABLEKS                       R28 R27 K24 ["Style"]
      427 CALL                             R25 2 1
      428 SETTABLEKS                       R25 R24 K64 ["Image"]
      430 GETUPVAL                         R26 0
      431 GETTABLEKS                       R25 R26 K18 ["createElement"]
      433 GETUPVAL                         R26 7
      434 DUPTABLE                         R27 K91 [{"Text"}]
      435 LOADK                            R30 K103 ["TopBar"]
      436 LOADK                            R31 K104 ["Apply"]
      437 NAMECALL                         R28 R2 K105 ["getText"]
      439 CALL                             R28 3 1
      440 SETTABLEKS                       R28 R27 K74 ["Text"]
      442 CALL                             R25 2 1
      443 SETTABLEKS                       R25 R24 K88 ["Tooltip"]
      445 CALL                             R21 3 1
      446 JUMP                             ; [+1]
      447 LOADNIL                          R21
      448 SETTABLEKS                       R21 R20 K4 ["ApplyToSelection"]
      450 CALL                             R17 3 -1
      451 RETURN                           R17 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R5 K1 [script]
        3 GETTABLEKS                       R4 R5 K2 ["Parent"]
        5 GETTABLEKS                       R3 R4 K2 ["Parent"]
        7 GETTABLEKS                       R2 R3 K2 ["Parent"]
        9 GETTABLEKS                       R1 R2 K2 ["Parent"]
       11 GETTABLEKS                       R0 R1 K2 ["Parent"]
       13 GETIMPORT                        R1 K4 [require]
       15 GETTABLEKS                       R3 R0 K5 ["Src"]
       17 GETTABLEKS                       R2 R3 K6 ["Types"]
       19 CALL                             R1 1 1
       20 GETIMPORT                        R2 K4 [require]
       22 GETTABLEKS                       R4 R0 K7 ["Packages"]
       24 GETTABLEKS                       R3 R4 K8 ["Roact"]
       26 CALL                             R2 1 1
       27 GETIMPORT                        R3 K4 [require]
       29 GETTABLEKS                       R5 R0 K7 ["Packages"]
       31 GETTABLEKS                       R4 R5 K9 ["Framework"]
       33 CALL                             R3 1 1
       34 GETTABLEKS                       R4 R3 K10 ["ContextServices"]
       36 GETTABLEKS                       R5 R4 K11 ["withContext"]
       38 GETTABLEKS                       R6 R4 K12 ["Analytics"]
       40 GETTABLEKS                       R7 R4 K13 ["Localization"]
       42 GETTABLEKS                       R9 R3 K14 ["Style"]
       44 GETTABLEKS                       R8 R9 K15 ["Stylizer"]
       46 GETTABLEKS                       R9 R3 K16 ["UI"]
       48 GETTABLEKS                       R10 R9 K17 ["Button"]
       50 GETTABLEKS                       R11 R9 K18 ["Container"]
       52 GETTABLEKS                       R12 R9 K19 ["Image"]
       54 GETTABLEKS                       R13 R9 K20 ["Pane"]
       56 GETTABLEKS                       R14 R9 K21 ["TruncatedTextLabel"]
       58 GETTABLEKS                       R15 R9 K22 ["Tooltip"]
       60 GETTABLEKS                       R17 R0 K5 ["Src"]
       62 GETTABLEKS                       R16 R17 K23 ["Components"]
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
