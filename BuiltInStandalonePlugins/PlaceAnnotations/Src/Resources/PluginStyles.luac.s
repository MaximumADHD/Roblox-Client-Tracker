MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["PlaceAnnotations"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R3 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R3 K9 ["createStyleRule"]
       18 GETTABLEKS                       R4 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R4 K10 ["createStyleSheet"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R7 R0 K11 ["Bin"]
       26 GETTABLEKS                       R6 R7 K12 ["Common"]
       28 GETTABLEKS                       R5 R6 K13 ["defineLuaFlags"]
       30 CALL                             R4 1 1
       31 NEWTABLE                         R5 0 15
       33 MOVE                             R6 R2
       34 LOADK                            R7 K14 ["Frame"]
       35 DUPTABLE                         R8 K16 [{"BorderSizePixel"}]
       36 LOADN                            R9 0
       37 SETTABLEKS                       R9 R8 K15 ["BorderSizePixel"]
       39 CALL                             R6 2 1
       40 MOVE                             R7 R2
       41 LOADK                            R8 K17 ["GuiButton"]
       42 DUPTABLE                         R9 K19 [{"AutoButtonColor"}]
       43 LOADB                            R10 0
       44 SETTABLEKS                       R10 R9 K18 ["AutoButtonColor"]
       46 CALL                             R7 2 1
       47 MOVE                             R8 R2
       48 LOADK                            R9 K20 ["TextLabel"]
       49 DUPTABLE                         R10 K25 [{"TextColor3", "Font", "TextSize", "AutomaticSize"}]
       50 LOADK                            R11 K26 ["$TextPrimary"]
       51 SETTABLEKS                       R11 R10 K21 ["TextColor3"]
       53 LOADK                            R11 K27 ["$Font"]
       54 SETTABLEKS                       R11 R10 K22 ["Font"]
       56 LOADK                            R11 K28 ["$FontSizeM"]
       57 SETTABLEKS                       R11 R10 K23 ["TextSize"]
       59 GETIMPORT                        R11 K31 [Enum.AutomaticSize.XY]
       61 SETTABLEKS                       R11 R10 K24 ["AutomaticSize"]
       63 NEWTABLE                         R11 0 1
       65 MOVE                             R12 R2
       66 LOADK                            R13 K32 [".Disabled"]
       67 DUPTABLE                         R14 K34 [{"TextTransparency"}]
       68 LOADK                            R15 K35 [0.4]
       69 SETTABLEKS                       R15 R14 K33 ["TextTransparency"]
       71 CALL                             R12 2 -1
       72 SETLIST                          R11 R12 -1 [1]
       74 CALL                             R8 3 1
       75 MOVE                             R9 R2
       76 LOADK                            R10 K36 ["TextButton"]
       77 DUPTABLE                         R11 K37 [{"TextColor3", "Font", "TextSize"}]
       78 LOADK                            R12 K26 ["$TextPrimary"]
       79 SETTABLEKS                       R12 R11 K21 ["TextColor3"]
       81 LOADK                            R12 K27 ["$Font"]
       82 SETTABLEKS                       R12 R11 K22 ["Font"]
       84 LOADK                            R12 K28 ["$FontSizeM"]
       85 SETTABLEKS                       R12 R11 K23 ["TextSize"]
       87 CALL                             R9 2 1
       88 MOVE                             R10 R2
       89 LOADK                            R11 K38 [".Component-Avatar"]
       90 DUPTABLE                         R12 K40 [{"Size"}]
       91 GETIMPORT                        R13 K43 [UDim2.fromOffset]
       93 LOADN                            R14 32
       94 LOADN                            R15 32
       95 CALL                             R13 2 1
       96 SETTABLEKS                       R13 R12 K39 ["Size"]
       98 NEWTABLE                         R13 0 1
      100 MOVE                             R14 R2
      101 LOADK                            R15 K44 ["::UICorner"]
      102 DUPTABLE                         R16 K46 [{"CornerRadius"}]
      103 GETIMPORT                        R17 K49 [UDim.new]
      105 LOADN                            R18 1
      106 LOADN                            R19 0
      107 CALL                             R17 2 1
      108 SETTABLEKS                       R17 R16 K45 ["CornerRadius"]
      110 CALL                             R14 2 -1
      111 SETLIST                          R13 R14 -1 [1]
      113 CALL                             R10 3 1
      114 MOVE                             R11 R2
      115 LOADK                            R12 K50 [".Component-Dropdown"]
      116 DUPTABLE                         R13 K52 [{"BackgroundColor3"}]
      117 LOADK                            R14 K53 ["$ForegroundContrast"]
      118 SETTABLEKS                       R14 R13 K51 ["BackgroundColor3"]
      120 NEWTABLE                         R14 0 3
      122 MOVE                             R15 R2
      123 LOADK                            R16 K54 ["::UIStroke"]
      124 DUPTABLE                         R17 K57 [{"Thickness", "Color"}]
      125 LOADN                            R18 1
      126 SETTABLEKS                       R18 R17 K55 ["Thickness"]
      128 LOADK                            R18 K58 ["$ForegroundMain"]
      129 SETTABLEKS                       R18 R17 K56 ["Color"]
      131 CALL                             R15 2 1
      132 MOVE                             R16 R2
      133 LOADK                            R17 K59 ["::UIPadding"]
      134 DUPTABLE                         R18 K62 [{"PaddingTop", "PaddingBottom"}]
      135 GETIMPORT                        R19 K49 [UDim.new]
      137 LOADN                            R20 0
      138 LOADN                            R21 4
      139 CALL                             R19 2 1
      140 SETTABLEKS                       R19 R18 K60 ["PaddingTop"]
      142 GETIMPORT                        R19 K49 [UDim.new]
      144 LOADN                            R20 0
      145 LOADN                            R21 4
      146 CALL                             R19 2 1
      147 SETTABLEKS                       R19 R18 K61 ["PaddingBottom"]
      149 CALL                             R16 2 1
      150 MOVE                             R17 R2
      151 LOADK                            R18 K44 ["::UICorner"]
      152 DUPTABLE                         R19 K46 [{"CornerRadius"}]
      153 GETIMPORT                        R20 K49 [UDim.new]
      155 LOADN                            R21 0
      156 LOADN                            R22 4
      157 CALL                             R20 2 1
      158 SETTABLEKS                       R20 R19 K45 ["CornerRadius"]
      160 CALL                             R17 2 -1
      161 SETLIST                          R14 R15 -1 [1]
      163 CALL                             R11 3 1
      164 MOVE                             R12 R2
      165 LOADK                            R13 K63 [".Component-DropdownItem"]
      166 DUPTABLE                         R14 K65 [{"BorderSizePixel", "BackgroundColor3", "TextColor3", "Size", "AutomaticSize", "TextXAlignment"}]
      167 LOADN                            R15 0
      168 SETTABLEKS                       R15 R14 K15 ["BorderSizePixel"]
      170 LOADK                            R15 K53 ["$ForegroundContrast"]
      171 SETTABLEKS                       R15 R14 K51 ["BackgroundColor3"]
      173 LOADK                            R15 K26 ["$TextPrimary"]
      174 SETTABLEKS                       R15 R14 K21 ["TextColor3"]
      176 GETIMPORT                        R15 K67 [UDim2.fromScale]
      178 LOADN                            R16 1
      179 LOADN                            R17 0
      180 CALL                             R15 2 1
      181 SETTABLEKS                       R15 R14 K39 ["Size"]
      183 GETIMPORT                        R15 K31 [Enum.AutomaticSize.XY]
      185 SETTABLEKS                       R15 R14 K24 ["AutomaticSize"]
      187 GETIMPORT                        R15 K69 [Enum.TextXAlignment.Left]
      189 SETTABLEKS                       R15 R14 K64 ["TextXAlignment"]
      191 NEWTABLE                         R15 0 5
      193 MOVE                             R16 R2
      194 LOADK                            R17 K59 ["::UIPadding"]
      195 DUPTABLE                         R18 K72 [{"PaddingRight", "PaddingLeft", "PaddingTop", "PaddingBottom"}]
      196 GETIMPORT                        R19 K49 [UDim.new]
      198 LOADN                            R20 0
      199 LOADN                            R21 10
      200 CALL                             R19 2 1
      201 SETTABLEKS                       R19 R18 K70 ["PaddingRight"]
      203 GETIMPORT                        R19 K49 [UDim.new]
      205 LOADN                            R20 0
      206 LOADN                            R21 10
      207 CALL                             R19 2 1
      208 SETTABLEKS                       R19 R18 K71 ["PaddingLeft"]
      210 GETIMPORT                        R19 K49 [UDim.new]
      212 LOADN                            R20 0
      213 LOADN                            R21 5
      214 CALL                             R19 2 1
      215 SETTABLEKS                       R19 R18 K60 ["PaddingTop"]
      217 GETIMPORT                        R19 K49 [UDim.new]
      219 LOADN                            R20 0
      220 LOADN                            R21 5
      221 CALL                             R19 2 1
      222 SETTABLEKS                       R19 R18 K61 ["PaddingBottom"]
      224 CALL                             R16 2 1
      225 MOVE                             R17 R2
      226 LOADK                            R18 K73 [":hover"]
      227 DUPTABLE                         R19 K52 [{"BackgroundColor3"}]
      228 LOADK                            R20 K74 ["$SecondaryHoverBackground"]
      229 SETTABLEKS                       R20 R19 K51 ["BackgroundColor3"]
      231 CALL                             R17 2 1
      232 MOVE                             R18 R2
      233 LOADK                            R19 K75 [":press"]
      234 DUPTABLE                         R20 K52 [{"BackgroundColor3"}]
      235 LOADK                            R21 K76 ["$ActionActivated"]
      236 SETTABLEKS                       R21 R20 K51 ["BackgroundColor3"]
      238 CALL                             R18 2 1
      239 MOVE                             R19 R2
      240 LOADK                            R20 K77 [".Delete"]
      241 DUPTABLE                         R21 K78 [{"TextColor3"}]
      242 LOADK                            R22 K79 ["$ErrorMain"]
      243 SETTABLEKS                       R22 R21 K21 ["TextColor3"]
      245 CALL                             R19 2 1
      246 MOVE                             R20 R2
      247 LOADK                            R21 K80 [".SectionTitle"]
      248 DUPTABLE                         R22 K82 [{"Size", "FontSize", "TextColor3", "Font"}]
      249 GETIMPORT                        R23 K83 [UDim2.new]
      251 LOADN                            R24 0
      252 LOADN                            R25 200
      253 LOADN                            R26 0
      254 LOADN                            R27 0
      255 CALL                             R23 4 1
      256 SETTABLEKS                       R23 R22 K39 ["Size"]
      258 LOADK                            R23 K84 ["$FontSizeS"]
      259 SETTABLEKS                       R23 R22 K81 ["FontSize"]
      261 LOADK                            R23 K85 ["$TextSecondary"]
      262 SETTABLEKS                       R23 R22 K21 ["TextColor3"]
      264 LOADK                            R23 K86 ["$FontBold"]
      265 SETTABLEKS                       R23 R22 K22 ["Font"]
      267 NEWTABLE                         R23 0 1
      269 MOVE                             R24 R2
      270 LOADK                            R25 K59 ["::UIPadding"]
      271 DUPTABLE                         R26 K87 [{"PaddingLeft", "PaddingTop"}]
      272 GETIMPORT                        R27 K49 [UDim.new]
      274 LOADN                            R28 0
      275 LOADN                            R29 12
      276 CALL                             R27 2 1
      277 SETTABLEKS                       R27 R26 K71 ["PaddingLeft"]
      279 GETIMPORT                        R27 K49 [UDim.new]
      281 LOADN                            R28 0
      282 LOADN                            R29 8
      283 CALL                             R27 2 1
      284 SETTABLEKS                       R27 R26 K60 ["PaddingTop"]
      286 CALL                             R24 2 -1
      287 SETLIST                          R23 R24 -1 [1]
      289 CALL                             R20 3 -1
      290 SETLIST                          R15 R16 -1 [1]
      292 CALL                             R12 3 1
      293 MOVE                             R13 R2
      294 LOADK                            R14 K88 [".Component-Divider"]
      295 DUPTABLE                         R15 K90 [{"Size", "BackgroundColor3", "BackgroundTransparency"}]
      296 GETIMPORT                        R16 K83 [UDim2.new]
      298 LOADN                            R17 1
      299 LOADN                            R18 0
      300 LOADN                            R19 0
      301 LOADN                            R20 1
      302 CALL                             R16 4 1
      303 SETTABLEKS                       R16 R15 K39 ["Size"]
      305 LOADK                            R16 K91 ["$SemanticColorDivider"]
      306 SETTABLEKS                       R16 R15 K51 ["BackgroundColor3"]
      308 LOADK                            R16 K92 ["$SemanticColorDividerTransparency"]
      309 SETTABLEKS                       R16 R15 K89 ["BackgroundTransparency"]
      311 CALL                             R13 2 1
      312 MOVE                             R14 R2
      313 LOADK                            R15 K93 [".MoreIcon"]
      314 DUPTABLE                         R16 K95 [{"Image", "Size"}]
      315 LOADK                            R17 K96 ["$MoreIcon"]
      316 SETTABLEKS                       R17 R16 K94 ["Image"]
      318 GETIMPORT                        R17 K43 [UDim2.fromOffset]
      320 LOADN                            R18 16
      321 LOADN                            R19 16
      322 CALL                             R17 2 1
      323 SETTABLEKS                       R17 R16 K39 ["Size"]
      325 CALL                             R14 2 1
      326 MOVE                             R15 R2
      327 LOADK                            R16 K97 [".CheckboxOnIcon"]
      328 DUPTABLE                         R17 K95 [{"Image", "Size"}]
      329 LOADK                            R18 K98 ["$CheckboxOn"]
      330 SETTABLEKS                       R18 R17 K94 ["Image"]
      332 GETIMPORT                        R18 K43 [UDim2.fromOffset]
      334 LOADN                            R19 16
      335 LOADN                            R20 16
      336 CALL                             R18 2 1
      337 SETTABLEKS                       R18 R17 K39 ["Size"]
      339 CALL                             R15 2 1
      340 MOVE                             R16 R2
      341 LOADK                            R17 K99 [".CheckboxOffIcon"]
      342 DUPTABLE                         R18 K95 [{"Image", "Size"}]
      343 LOADK                            R19 K100 ["$CheckboxOff"]
      344 SETTABLEKS                       R19 R18 K94 ["Image"]
      346 GETIMPORT                        R19 K43 [UDim2.fromOffset]
      348 LOADN                            R20 16
      349 LOADN                            R21 16
      350 CALL                             R19 2 1
      351 SETTABLEKS                       R19 R18 K39 ["Size"]
      353 CALL                             R16 2 1
      354 MOVE                             R17 R2
      355 LOADK                            R18 K101 [".ErrorIcon"]
      356 DUPTABLE                         R19 K95 [{"Image", "Size"}]
      357 LOADK                            R20 K102 ["$Error"]
      358 SETTABLEKS                       R20 R19 K94 ["Image"]
      360 GETIMPORT                        R20 K43 [UDim2.fromOffset]
      362 LOADN                            R21 16
      363 LOADN                            R22 16
      364 CALL                             R20 2 1
      365 SETTABLEKS                       R20 R19 K39 ["Size"]
      367 CALL                             R17 2 1
      368 MOVE                             R18 R2
      369 LOADK                            R19 K103 [".CloseIcon"]
      370 DUPTABLE                         R20 K95 [{"Image", "Size"}]
      371 LOADK                            R21 K104 ["$Close"]
      372 SETTABLEKS                       R21 R20 K94 ["Image"]
      374 GETIMPORT                        R21 K43 [UDim2.fromOffset]
      376 LOADN                            R22 16
      377 LOADN                            R23 16
      378 CALL                             R21 2 1
      379 SETTABLEKS                       R21 R20 K39 ["Size"]
      381 CALL                             R18 2 1
      382 MOVE                             R19 R2
      383 LOADK                            R20 K105 [".SettingsIcon"]
      384 DUPTABLE                         R21 K95 [{"Image", "Size"}]
      385 LOADK                            R22 K106 ["$Settings"]
      386 SETTABLEKS                       R22 R21 K94 ["Image"]
      388 GETIMPORT                        R22 K43 [UDim2.fromOffset]
      390 LOADN                            R23 16
      391 LOADN                            R24 16
      392 CALL                             R22 2 1
      393 SETTABLEKS                       R22 R21 K39 ["Size"]
      395 CALL                             R19 2 1
      396 MOVE                             R20 R2
      397 LOADK                            R21 K107 [".AddAnnotationIcon"]
      398 DUPTABLE                         R22 K95 [{"Image", "Size"}]
      399 LOADK                            R23 K108 ["$AddAnnotation"]
      400 SETTABLEKS                       R23 R22 K94 ["Image"]
      402 GETIMPORT                        R23 K43 [UDim2.fromOffset]
      404 LOADN                            R24 16
      405 LOADN                            R25 16
      406 CALL                             R23 2 1
      407 SETTABLEKS                       R23 R22 K39 ["Size"]
      409 CALL                             R20 2 -1
      410 SETLIST                          R5 R6 -1 [1]
      412 DUPTABLE                         R6 K115 [{"Font", "FontBold", "FontSizeS", "FontSizeM", "FontSizeL", "Shift100Transparency", "Shift200Transparency"}]
      413 GETTABLEKS                       R8 R4 K116 ["fflagAnnotationsFontUseBuilderSans"]
      415 JUMPIFNOT                        R8 ; [+3]
      416 GETIMPORT                        R7 K118 [Enum.Font.BuilderSans]
      418 JUMP                             ; [+2]
      419 GETIMPORT                        R7 K120 [Enum.Font.SourceSans]
      421 SETTABLEKS                       R7 R6 K22 ["Font"]
      423 GETTABLEKS                       R8 R4 K116 ["fflagAnnotationsFontUseBuilderSans"]
      425 JUMPIFNOT                        R8 ; [+3]
      426 GETIMPORT                        R7 K122 [Enum.Font.BuilderSansBold]
      428 JUMP                             ; [+2]
      429 GETIMPORT                        R7 K124 [Enum.Font.SourceSansBold]
      431 SETTABLEKS                       R7 R6 K109 ["FontBold"]
      433 GETTABLEKS                       R8 R4 K116 ["fflagAnnotationsFontUseBuilderSans"]
      435 JUMPIFNOT                        R8 ; [+2]
      436 LOADN                            R7 14
      437 JUMP                             ; [+1]
      438 LOADN                            R7 15
      439 SETTABLEKS                       R7 R6 K110 ["FontSizeS"]
      441 GETTABLEKS                       R8 R4 K116 ["fflagAnnotationsFontUseBuilderSans"]
      443 JUMPIFNOT                        R8 ; [+2]
      444 LOADN                            R7 16
      445 JUMP                             ; [+1]
      446 LOADN                            R7 18
      447 SETTABLEKS                       R7 R6 K111 ["FontSizeM"]
      449 GETTABLEKS                       R8 R4 K116 ["fflagAnnotationsFontUseBuilderSans"]
      451 JUMPIFNOT                        R8 ; [+2]
      452 LOADN                            R7 18
      453 JUMP                             ; [+1]
      454 LOADN                            R7 20
      455 SETTABLEKS                       R7 R6 K112 ["FontSizeL"]
      457 LOADK                            R7 K125 [0.96]
      458 SETTABLEKS                       R7 R6 K113 ["Shift100Transparency"]
      460 LOADK                            R7 K126 [0.92]
      461 SETTABLEKS                       R7 R6 K114 ["Shift200Transparency"]
      463 MOVE                             R7 R3
      464 LOADK                            R8 K2 ["PlaceAnnotations"]
      465 MOVE                             R9 R5
      466 MOVE                             R10 R6
      467 CALL                             R7 3 -1
      468 RETURN                           R7 -1
