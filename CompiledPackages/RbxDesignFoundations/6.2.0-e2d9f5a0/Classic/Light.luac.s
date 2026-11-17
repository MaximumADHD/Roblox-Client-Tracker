PROTO_0:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Tokens"]
        3 MOVE                             R2 R0
        4 CALL                             R1 1 1
        5 DUPTABLE                         R2 K24 [{"Color", "Config", "DarkMode", "Ease", "FontSize", "FontWeight", "Gap", "Gutter", "IconSize", "InputSize", "Inverse", "LetterSpacing", "LightMode", "LineHeight", "Margin", "Padding", "Platform", "Radius", "Size", "Stroke", "Time", "ToggleSize", "Typography"}]
        6 GETUPVAL                         R3 0
        7 GETTABLEKS                       R3 R3 K25 ["withExtended"]
        9 GETUPVAL                         R4 1
       10 GETTABLEKS                       R4 R4 K26 ["Light"]
       12 CALL                             R4 0 -1
       13 CALL                             R3 -1 1
       14 SETTABLEKS                       R3 R2 K1 ["Color"]
       16 DUPTABLE                         R3 K31 [{"ColorMode", "Text", "Theme", "UI"}]
       17 DUPTABLE                         R4 K37 [{["Name"] = "Light", ["IsDark"] = "false", ["IsLight"] = "true"}]
       18 SETTABLEKS                       R4 R3 K27 ["ColorMode"]
       20 DUPTABLE                         R4 K46 [{["Font"] = "rbxassetid://127896232205472", ["Interval"], ["InverseScale"] = 0.8271298593879238, ["NominalScale"] = 1.209, ["Scale"]}]
       21 LOADK                            R6 K47 [4.836]
       22 MUL                              R5 R6 R0
       23 SETTABLEKS                       R5 R4 K40 ["Interval"]
       25 SETTABLEKS                       R0 R4 K45 ["Scale"]
       27 SETTABLEKS                       R4 R3 K28 ["Text"]
       29 DUPTABLE                         R4 K54 [{["Name"] = "Classic", ["Text"], ["IsClassic"] = "true", ["IsDefault"] = "false", ["IsFoundation"] = "false", ["IsKids"] = "false", ["IsUIBlox"] = "false"}]
       30 DUPTABLE                         R5 K55 [{["Font"] = "rbxassetid://127896232205472", ["FontWeight"], ["NominalScale"] = 1.209}]
       31 DUPTABLE                         R6 K64 [{["FontWeight_300"] = "Regular", ["FontWeight_400"] = "Regular", ["FontWeight_500"] = "Regular", ["FontWeight_600"] = "Bold", ["FontWeight_700"] = "Bold", ["FontWeight_800"] = "Bold"}]
       32 SETTABLEKS                       R6 R5 K6 ["FontWeight"]
       34 SETTABLEKS                       R5 R4 K28 ["Text"]
       36 SETTABLEKS                       R4 R3 K29 ["Theme"]
       38 DUPTABLE                         R4 K68 [{["Interval"] = 4, ["Scale"], ["StrokeBase"] = 1}]
       39 SETTABLEKS                       R0 R4 K45 ["Scale"]
       41 SETTABLEKS                       R4 R3 K30 ["UI"]
       43 SETTABLEKS                       R3 R2 K2 ["Config"]
       45 GETUPVAL                         R3 1
       46 GETTABLEKS                       R3 R3 K69 ["Dark"]
       48 CALL                             R3 0 1
       49 SETTABLEKS                       R3 R2 K3 ["DarkMode"]
       51 GETTABLEKS                       R3 R1 K4 ["Ease"]
       53 SETTABLEKS                       R3 R2 K4 ["Ease"]
       55 DUPTABLE                         R3 K101 [{"FontSize_200", "FontSize_250", "FontSize_300", "FontSize_350", "FontSize_400", "FontSize_500", "FontSize_600", "FontSize_700", "FontSize_800", "FontSize_900", "FontSize_1000", "FontSize_1100", "FontSize_1200", "FontSize_1300", "FontSize_1400", "FontSize_1500", "FontSize_1600", "FontSize_1700", "FontSize_1800", "FontSize_1900", "FontSize_2000", "FontSize_2100", "FontSize_2200", "FontSize_2300", "FontSize_2400", "FontSize_2500", "FontSize_2600", "FontSize_2700", "FontSize_2800", "FontSize_2900", "FontSize_3000"}]
       56 LOADN                            R5 10
       57 MUL                              R4 R5 R0
       58 SETTABLEKS                       R4 R3 K70 ["FontSize_200"]
       60 LOADN                            R5 12
       61 MUL                              R4 R5 R0
       62 SETTABLEKS                       R4 R3 K71 ["FontSize_250"]
       64 LOADN                            R5 15
       65 MUL                              R4 R5 R0
       66 SETTABLEKS                       R4 R3 K72 ["FontSize_300"]
       68 LOADN                            R5 17
       69 MUL                              R4 R5 R0
       70 SETTABLEKS                       R4 R3 K73 ["FontSize_350"]
       72 LOADN                            R5 19
       73 MUL                              R4 R5 R0
       74 SETTABLEKS                       R4 R3 K74 ["FontSize_400"]
       76 LOADN                            R5 24
       77 MUL                              R4 R5 R0
       78 SETTABLEKS                       R4 R3 K75 ["FontSize_500"]
       80 LOADN                            R5 29
       81 MUL                              R4 R5 R0
       82 SETTABLEKS                       R4 R3 K76 ["FontSize_600"]
       84 LOADN                            R5 34
       85 MUL                              R4 R5 R0
       86 SETTABLEKS                       R4 R3 K77 ["FontSize_700"]
       88 LOADN                            R5 39
       89 MUL                              R4 R5 R0
       90 SETTABLEKS                       R4 R3 K78 ["FontSize_800"]
       92 LOADN                            R5 44
       93 MUL                              R4 R5 R0
       94 SETTABLEKS                       R4 R3 K79 ["FontSize_900"]
       96 LOADN                            R5 48
       97 MUL                              R4 R5 R0
       98 SETTABLEKS                       R4 R3 K80 ["FontSize_1000"]
      100 LOADN                            R5 53
      101 MUL                              R4 R5 R0
      102 SETTABLEKS                       R4 R3 K81 ["FontSize_1100"]
      104 LOADN                            R5 58
      105 MUL                              R4 R5 R0
      106 SETTABLEKS                       R4 R3 K82 ["FontSize_1200"]
      108 LOADN                            R5 63
      109 MUL                              R4 R5 R0
      110 SETTABLEKS                       R4 R3 K83 ["FontSize_1300"]
      112 LOADN                            R5 68
      113 MUL                              R4 R5 R0
      114 SETTABLEKS                       R4 R3 K84 ["FontSize_1400"]
      116 LOADN                            R5 73
      117 MUL                              R4 R5 R0
      118 SETTABLEKS                       R4 R3 K85 ["FontSize_1500"]
      120 LOADN                            R5 77
      121 MUL                              R4 R5 R0
      122 SETTABLEKS                       R4 R3 K86 ["FontSize_1600"]
      124 LOADN                            R5 82
      125 MUL                              R4 R5 R0
      126 SETTABLEKS                       R4 R3 K87 ["FontSize_1700"]
      128 LOADN                            R5 87
      129 MUL                              R4 R5 R0
      130 SETTABLEKS                       R4 R3 K88 ["FontSize_1800"]
      132 LOADN                            R5 92
      133 MUL                              R4 R5 R0
      134 SETTABLEKS                       R4 R3 K89 ["FontSize_1900"]
      136 LOADN                            R5 97
      137 MUL                              R4 R5 R0
      138 SETTABLEKS                       R4 R3 K90 ["FontSize_2000"]
      140 LOADN                            R5 102
      141 MUL                              R4 R5 R0
      142 SETTABLEKS                       R4 R3 K91 ["FontSize_2100"]
      144 LOADN                            R5 106
      145 MUL                              R4 R5 R0
      146 SETTABLEKS                       R4 R3 K92 ["FontSize_2200"]
      148 LOADN                            R5 111
      149 MUL                              R4 R5 R0
      150 SETTABLEKS                       R4 R3 K93 ["FontSize_2300"]
      152 LOADN                            R5 116
      153 MUL                              R4 R5 R0
      154 SETTABLEKS                       R4 R3 K94 ["FontSize_2400"]
      156 LOADN                            R5 121
      157 MUL                              R4 R5 R0
      158 SETTABLEKS                       R4 R3 K95 ["FontSize_2500"]
      160 LOADN                            R5 126
      161 MUL                              R4 R5 R0
      162 SETTABLEKS                       R4 R3 K96 ["FontSize_2600"]
      164 LOADN                            R5 131
      165 MUL                              R4 R5 R0
      166 SETTABLEKS                       R4 R3 K97 ["FontSize_2700"]
      168 LOADN                            R5 135
      169 MUL                              R4 R5 R0
      170 SETTABLEKS                       R4 R3 K98 ["FontSize_2800"]
      172 LOADN                            R5 140
      173 MUL                              R4 R5 R0
      174 SETTABLEKS                       R4 R3 K99 ["FontSize_2900"]
      176 LOADN                            R5 145
      177 MUL                              R4 R5 R0
      178 SETTABLEKS                       R4 R3 K100 ["FontSize_3000"]
      180 SETTABLEKS                       R3 R2 K5 ["FontSize"]
      182 DUPTABLE                         R3 K64 [{["FontWeight_300"] = "Regular", ["FontWeight_400"] = "Regular", ["FontWeight_500"] = "Regular", ["FontWeight_600"] = "Bold", ["FontWeight_700"] = "Bold", ["FontWeight_800"] = "Bold"}]
      183 SETTABLEKS                       R3 R2 K6 ["FontWeight"]
      185 GETTABLEKS                       R3 R1 K7 ["Gap"]
      187 SETTABLEKS                       R3 R2 K7 ["Gap"]
      189 GETTABLEKS                       R3 R1 K8 ["Gutter"]
      191 SETTABLEKS                       R3 R2 K8 ["Gutter"]
      193 GETTABLEKS                       R3 R1 K9 ["IconSize"]
      195 SETTABLEKS                       R3 R2 K9 ["IconSize"]
      197 GETTABLEKS                       R3 R1 K10 ["InputSize"]
      199 SETTABLEKS                       R3 R2 K10 ["InputSize"]
      201 GETUPVAL                         R3 1
      202 GETTABLEKS                       R3 R3 K69 ["Dark"]
      204 CALL                             R3 0 1
      205 SETTABLEKS                       R3 R2 K11 ["Inverse"]
      207 GETTABLEKS                       R3 R1 K12 ["LetterSpacing"]
      209 SETTABLEKS                       R3 R2 K12 ["LetterSpacing"]
      211 GETUPVAL                         R3 1
      212 GETTABLEKS                       R3 R3 K26 ["Light"]
      214 CALL                             R3 0 1
      215 SETTABLEKS                       R3 R2 K13 ["LightMode"]
      217 DUPTABLE                         R3 K110 [{["LineHeight_100"] = 0.827, ["LineHeight_120"] = 0.993, ["LineHeight_130"] = 1.075, ["LineHeight_140"] = 1.158}]
      218 SETTABLEKS                       R3 R2 K14 ["LineHeight"]
      220 GETTABLEKS                       R3 R1 K15 ["Margin"]
      222 SETTABLEKS                       R3 R2 K15 ["Margin"]
      224 GETTABLEKS                       R3 R1 K16 ["Padding"]
      226 SETTABLEKS                       R3 R2 K16 ["Padding"]
      228 GETTABLEKS                       R3 R1 K17 ["Platform"]
      230 SETTABLEKS                       R3 R2 K17 ["Platform"]
      232 GETTABLEKS                       R3 R1 K18 ["Radius"]
      234 SETTABLEKS                       R3 R2 K18 ["Radius"]
      236 GETTABLEKS                       R3 R1 K19 ["Size"]
      238 SETTABLEKS                       R3 R2 K19 ["Size"]
      240 GETTABLEKS                       R3 R1 K20 ["Stroke"]
      242 SETTABLEKS                       R3 R2 K20 ["Stroke"]
      244 GETTABLEKS                       R3 R1 K21 ["Time"]
      246 SETTABLEKS                       R3 R2 K21 ["Time"]
      248 GETTABLEKS                       R3 R1 K22 ["ToggleSize"]
      250 SETTABLEKS                       R3 R2 K22 ["ToggleSize"]
      252 DUPTABLE                         R3 K129 [{"BodyLarge", "BodyMedium", "BodySmall", "CaptionLarge", "CaptionMedium", "CaptionSmall", "DisplayLarge", "DisplayMedium", "DisplaySmall", "HeadingLarge", "HeadingMedium", "HeadingSmall", "LabelLarge", "LabelMedium", "LabelSmall", "TitleLarge", "TitleMedium", "TitleSmall"}]
      253 DUPTABLE                         R4 K131 [{["Font"], ["FontSize"], ["LetterSpacing"] = 0, ["LineHeight"] = 1.158}]
      254 GETIMPORT                        R5 K133 [Font.new]
      256 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      257 GETIMPORT                        R7 K135 [Enum.FontWeight.Regular]
      259 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      261 CALL                             R5 3 1
      262 SETTABLEKS                       R5 R4 K38 ["Font"]
      264 LOADN                            R6 19
      265 MUL                              R5 R6 R0
      266 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      268 SETTABLEKS                       R4 R3 K111 ["BodyLarge"]
      270 DUPTABLE                         R4 K140 [{["Font"], ["FontSize"], ["LetterSpacing"] = 0, ["LineHeight"] = 1.177}]
      271 GETIMPORT                        R5 K133 [Font.new]
      273 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      274 GETIMPORT                        R7 K135 [Enum.FontWeight.Regular]
      276 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      278 CALL                             R5 3 1
      279 SETTABLEKS                       R5 R4 K38 ["Font"]
      281 LOADN                            R6 17
      282 MUL                              R5 R6 R0
      283 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      285 SETTABLEKS                       R4 R3 K112 ["BodyMedium"]
      287 DUPTABLE                         R4 K142 [{["Font"], ["FontSize"], ["LetterSpacing"] = 0, ["LineHeight"] = 1.2}]
      288 GETIMPORT                        R5 K133 [Font.new]
      290 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      291 GETIMPORT                        R7 K135 [Enum.FontWeight.Regular]
      293 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      295 CALL                             R5 3 1
      296 SETTABLEKS                       R5 R4 K38 ["Font"]
      298 LOADN                            R6 15
      299 MUL                              R5 R6 R0
      300 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      302 SETTABLEKS                       R4 R3 K113 ["BodySmall"]
      304 DUPTABLE                         R4 K140 [{["Font"], ["FontSize"], ["LetterSpacing"] = 0, ["LineHeight"] = 1.177}]
      305 GETIMPORT                        R5 K133 [Font.new]
      307 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      308 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      310 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      312 CALL                             R5 3 1
      313 SETTABLEKS                       R5 R4 K38 ["Font"]
      315 LOADN                            R6 17
      316 MUL                              R5 R6 R0
      317 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      319 SETTABLEKS                       R4 R3 K114 ["CaptionLarge"]
      321 DUPTABLE                         R4 K142 [{["Font"], ["FontSize"], ["LetterSpacing"] = 0, ["LineHeight"] = 1.2}]
      322 GETIMPORT                        R5 K133 [Font.new]
      324 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      325 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      327 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      329 CALL                             R5 3 1
      330 SETTABLEKS                       R5 R4 K38 ["Font"]
      332 LOADN                            R6 15
      333 MUL                              R5 R6 R0
      334 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      336 SETTABLEKS                       R4 R3 K115 ["CaptionMedium"]
      338 DUPTABLE                         R4 K145 [{["Font"], ["FontSize"], ["LetterSpacing"] = 0, ["LineHeight"] = 1.167}]
      339 GETIMPORT                        R5 K133 [Font.new]
      341 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      342 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      344 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      346 CALL                             R5 3 1
      347 SETTABLEKS                       R5 R4 K38 ["Font"]
      349 LOADN                            R6 12
      350 MUL                              R5 R6 R0
      351 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      353 SETTABLEKS                       R4 R3 K116 ["CaptionSmall"]
      355 DUPTABLE                         R4 K148 [{["Font"], ["FontSize"], ["LetterSpacing"] = -0.01, ["LineHeight"] = 0.99}]
      356 GETIMPORT                        R5 K133 [Font.new]
      358 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      359 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      361 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      363 CALL                             R5 3 1
      364 SETTABLEKS                       R5 R4 K38 ["Font"]
      366 LOADN                            R6 97
      367 MUL                              R5 R6 R0
      368 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      370 SETTABLEKS                       R4 R3 K117 ["DisplayLarge"]
      372 DUPTABLE                         R4 K149 [{["Font"], ["FontSize"], ["LetterSpacing"] = -0.01, ["LineHeight"] = 1}]
      373 GETIMPORT                        R5 K133 [Font.new]
      375 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      376 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      378 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      380 CALL                             R5 3 1
      381 SETTABLEKS                       R5 R4 K38 ["Font"]
      383 LOADN                            R6 68
      384 MUL                              R5 R6 R0
      385 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      387 SETTABLEKS                       R4 R3 K118 ["DisplayMedium"]
      389 DUPTABLE                         R4 K149 [{["Font"], ["FontSize"], ["LetterSpacing"] = -0.01, ["LineHeight"] = 1}]
      390 GETIMPORT                        R5 K133 [Font.new]
      392 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      393 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      395 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      397 CALL                             R5 3 1
      398 SETTABLEKS                       R5 R4 K38 ["Font"]
      400 LOADN                            R6 48
      401 MUL                              R5 R6 R0
      402 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      404 SETTABLEKS                       R4 R3 K119 ["DisplaySmall"]
      406 DUPTABLE                         R4 K149 [{["Font"], ["FontSize"], ["LetterSpacing"] = -0.01, ["LineHeight"] = 1}]
      407 GETIMPORT                        R5 K133 [Font.new]
      409 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      410 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      412 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      414 CALL                             R5 3 1
      415 SETTABLEKS                       R5 R4 K38 ["Font"]
      417 LOADN                            R6 34
      418 MUL                              R5 R6 R0
      419 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      421 SETTABLEKS                       R4 R3 K120 ["HeadingLarge"]
      423 DUPTABLE                         R4 K151 [{["Font"], ["FontSize"], ["LetterSpacing"] = -0.01, ["LineHeight"] = 1.103}]
      424 GETIMPORT                        R5 K133 [Font.new]
      426 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      427 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      429 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      431 CALL                             R5 3 1
      432 SETTABLEKS                       R5 R4 K38 ["Font"]
      434 LOADN                            R6 29
      435 MUL                              R5 R6 R0
      436 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      438 SETTABLEKS                       R4 R3 K121 ["HeadingMedium"]
      440 DUPTABLE                         R4 K149 [{["Font"], ["FontSize"], ["LetterSpacing"] = -0.01, ["LineHeight"] = 1}]
      441 GETIMPORT                        R5 K133 [Font.new]
      443 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      444 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      446 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      448 CALL                             R5 3 1
      449 SETTABLEKS                       R5 R4 K38 ["Font"]
      451 LOADN                            R6 24
      452 MUL                              R5 R6 R0
      453 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      455 SETTABLEKS                       R4 R3 K122 ["HeadingSmall"]
      457 DUPTABLE                         R4 K153 [{["Font"], ["FontSize"], ["LetterSpacing"] = 0, ["LineHeight"] = 0.842}]
      458 GETIMPORT                        R5 K133 [Font.new]
      460 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      461 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      463 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      465 CALL                             R5 3 1
      466 SETTABLEKS                       R5 R4 K38 ["Font"]
      468 LOADN                            R6 19
      469 MUL                              R5 R6 R0
      470 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      472 SETTABLEKS                       R4 R3 K123 ["LabelLarge"]
      474 DUPTABLE                         R4 K155 [{["Font"], ["FontSize"], ["LetterSpacing"] = 0, ["LineHeight"] = 0.824}]
      475 GETIMPORT                        R5 K133 [Font.new]
      477 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      478 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      480 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      482 CALL                             R5 3 1
      483 SETTABLEKS                       R5 R4 K38 ["Font"]
      485 LOADN                            R6 17
      486 MUL                              R5 R6 R0
      487 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      489 SETTABLEKS                       R4 R3 K124 ["LabelMedium"]
      491 DUPTABLE                         R4 K157 [{["Font"], ["FontSize"], ["LetterSpacing"] = 0, ["LineHeight"] = 0.8}]
      492 GETIMPORT                        R5 K133 [Font.new]
      494 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      495 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      497 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      499 CALL                             R5 3 1
      500 SETTABLEKS                       R5 R4 K38 ["Font"]
      502 LOADN                            R6 15
      503 MUL                              R5 R6 R0
      504 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      506 SETTABLEKS                       R4 R3 K125 ["LabelSmall"]
      508 DUPTABLE                         R4 K131 [{["Font"], ["FontSize"], ["LetterSpacing"] = 0, ["LineHeight"] = 1.158}]
      509 GETIMPORT                        R5 K133 [Font.new]
      511 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      512 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      514 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      516 CALL                             R5 3 1
      517 SETTABLEKS                       R5 R4 K38 ["Font"]
      519 LOADN                            R6 19
      520 MUL                              R5 R6 R0
      521 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      523 SETTABLEKS                       R4 R3 K126 ["TitleLarge"]
      525 DUPTABLE                         R4 K140 [{["Font"], ["FontSize"], ["LetterSpacing"] = 0, ["LineHeight"] = 1.177}]
      526 GETIMPORT                        R5 K133 [Font.new]
      528 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      529 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      531 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      533 CALL                             R5 3 1
      534 SETTABLEKS                       R5 R4 K38 ["Font"]
      536 LOADN                            R6 17
      537 MUL                              R5 R6 R0
      538 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      540 SETTABLEKS                       R4 R3 K127 ["TitleMedium"]
      542 DUPTABLE                         R4 K142 [{["Font"], ["FontSize"], ["LetterSpacing"] = 0, ["LineHeight"] = 1.2}]
      543 GETIMPORT                        R5 K133 [Font.new]
      545 LOADK                            R6 K39 ["rbxassetid://127896232205472"]
      546 GETIMPORT                        R7 K143 [Enum.FontWeight.Bold]
      548 GETIMPORT                        R8 K138 [Enum.FontStyle.Normal]
      550 CALL                             R5 3 1
      551 SETTABLEKS                       R5 R4 K38 ["Font"]
      553 LOADN                            R6 15
      554 MUL                              R5 R6 R0
      555 SETTABLEKS                       R5 R4 K5 ["FontSize"]
      557 SETTABLEKS                       R4 R3 K128 ["TitleSmall"]
      559 SETTABLEKS                       R3 R2 K23 ["Typography"]
      561 RETURN                           R2 1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [require]
        3 GETIMPORT                        R1 K3 [script]
        5 GETTABLEKS                       R1 R1 K4 ["Parent"]
        7 GETTABLEKS                       R1 R1 K4 ["Parent"]
        9 GETTABLEKS                       R1 R1 K5 ["Shared"]
       11 CALL                             R0 1 1
       12 GETIMPORT                        R1 K1 [require]
       14 GETIMPORT                        R2 K3 [script]
       16 GETTABLEKS                       R2 R2 K4 ["Parent"]
       18 GETTABLEKS                       R2 R2 K6 ["Colors"]
       20 CALL                             R1 1 1
       21 DUPCLOSURE                       R2 K7 [PROTO_0]
       22 CAPTURE                          VAL R0
       23 CAPTURE                          VAL R1
       24 RETURN                           R2 1
