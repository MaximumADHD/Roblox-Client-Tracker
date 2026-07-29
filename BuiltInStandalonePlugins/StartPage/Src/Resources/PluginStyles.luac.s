MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["StartPage"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETTABLEKS                       R2 R1 K8 ["Styling"]
       16 GETTABLEKS                       R2 R2 K9 ["createStyleRule"]
       18 GETTABLEKS                       R3 R1 K8 ["Styling"]
       20 GETTABLEKS                       R3 R3 K10 ["createStyleSheet"]
       22 GETIMPORT                        R4 K5 [require]
       24 GETTABLEKS                       R5 R0 K11 ["Src"]
       26 GETTABLEKS                       R5 R5 K12 ["SharedFlags"]
       28 GETTABLEKS                       R5 R5 K13 ["getFFlagLuaStartPageNotFoundImageUpdate"]
       30 CALL                             R4 1 1
       31 CALL                             R4 0 1
       32 GETIMPORT                        R5 K5 [require]
       34 GETTABLEKS                       R6 R0 K11 ["Src"]
       36 GETTABLEKS                       R6 R6 K12 ["SharedFlags"]
       38 GETTABLEKS                       R6 R6 K14 ["getFFlagLuaStartPageNewListView"]
       40 CALL                             R5 1 1
       41 CALL                             R5 0 1
       42 NEWTABLE                         R6 0 38
       44 MOVE                             R7 R2
       45 LOADK                            R8 K15 [".StartPage-PageBackground"]
       46 DUPTABLE                         R9 K20 [{["BackgroundColor3"] = "$PageBackground", ["BackgroundTransparency"] = 0}]
       47 CALL                             R7 2 1
       48 MOVE                             R8 R2
       49 LOADK                            R9 K21 [".StartPage-ContextMenuBackground"]
       50 DUPTABLE                         R10 K23 [{["BackgroundColor3"] = "$ContextMenuBackground", ["BackgroundTransparency"] = 0}]
       51 CALL                             R8 2 1
       52 MOVE                             R9 R2
       53 LOADK                            R10 K24 [".StartPage-Selected"]
       54 DUPTABLE                         R11 K26 [{["BackgroundColor3"] = "$Selected"}]
       55 CALL                             R9 2 1
       56 MOVE                             R10 R2
       57 LOADK                            R11 K27 [".StartPage-Contrast"]
       58 DUPTABLE                         R12 K29 [{["BackgroundColor3"] = "$Contrast", ["BackgroundTransparency"] = 0}]
       59 CALL                             R10 2 1
       60 MOVE                             R11 R2
       61 LOADK                            R12 K30 [".StartPage-TextColor"]
       62 DUPTABLE                         R13 K33 [{["TextColor3"] = "$TextColor"}]
       63 CALL                             R11 2 1
       64 MOVE                             R12 R2
       65 LOADK                            R13 K34 [".StartPage-Font"]
       66 DUPTABLE                         R14 K38 [{["Font"], ["LineHeight"] = 1.142}]
       67 GETIMPORT                        R15 K41 [Enum.Font.BuilderSans]
       69 SETTABLEKS                       R15 R14 K35 ["Font"]
       71 CALL                             R12 2 1
       72 MOVE                             R13 R2
       73 LOADK                            R14 K42 [".StartPage-FontBold"]
       74 DUPTABLE                         R15 K44 [{["Font"], ["LineHeight"] = 1.6}]
       75 GETIMPORT                        R16 K46 [Enum.Font.BuilderSansBold]
       77 SETTABLEKS                       R16 R15 K35 ["Font"]
       79 CALL                             R13 2 1
       80 MOVE                             R14 R2
       81 LOADK                            R15 K47 [".StartPage-TextSize"]
       82 DUPTABLE                         R16 K50 [{["TextSize"] = "$TextSize"}]
       83 CALL                             R14 2 1
       84 MOVE                             R15 R2
       85 LOADK                            R16 K51 [".StartPage-IconSizeM"]
       86 DUPTABLE                         R17 K54 [{["Size"] = "$IconSizeM"}]
       87 CALL                             R15 2 1
       88 MOVE                             R16 R2
       89 LOADK                            R17 K55 [".StartPage-RoundedCorner8 ::UICorner"]
       90 DUPTABLE                         R18 K58 [{["CornerRadius"] = "$CornerSize8"}]
       91 CALL                             R16 2 1
       92 MOVE                             R17 R2
       93 LOADK                            R18 K59 [".StartPage-Circular ::UICorner"]
       94 DUPTABLE                         R19 K60 [{"CornerRadius"}]
       95 GETIMPORT                        R20 K63 [UDim.new]
       97 LOADN                            R21 1
       98 LOADN                            R22 0
       99 CALL                             R20 2 1
      100 SETTABLEKS                       R20 R19 K56 ["CornerRadius"]
      102 CALL                             R17 2 1
      103 MOVE                             R18 R2
      104 LOADK                            R19 K64 [".StartPage-PillPaddingS ::UIPadding"]
      105 DUPTABLE                         R20 K69 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      106 GETIMPORT                        R21 K63 [UDim.new]
      108 LOADN                            R22 0
      109 LOADN                            R23 10
      110 CALL                             R21 2 1
      111 SETTABLEKS                       R21 R20 K65 ["PaddingLeft"]
      113 GETIMPORT                        R21 K63 [UDim.new]
      115 LOADN                            R22 0
      116 LOADN                            R23 10
      117 CALL                             R21 2 1
      118 SETTABLEKS                       R21 R20 K66 ["PaddingRight"]
      120 GETIMPORT                        R21 K63 [UDim.new]
      122 LOADN                            R22 0
      123 LOADN                            R23 4
      124 CALL                             R21 2 1
      125 SETTABLEKS                       R21 R20 K67 ["PaddingTop"]
      127 GETIMPORT                        R21 K63 [UDim.new]
      129 LOADN                            R22 0
      130 LOADN                            R23 4
      131 CALL                             R21 2 1
      132 SETTABLEKS                       R21 R20 K68 ["PaddingBottom"]
      134 CALL                             R18 2 1
      135 MOVE                             R19 R2
      136 LOADK                            R20 K70 [".StartPage-TilePadding ::UIPadding"]
      137 DUPTABLE                         R21 K69 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      138 GETIMPORT                        R22 K63 [UDim.new]
      140 LOADN                            R23 0
      141 LOADN                            R24 12
      142 CALL                             R22 2 1
      143 SETTABLEKS                       R22 R21 K65 ["PaddingLeft"]
      145 GETIMPORT                        R22 K63 [UDim.new]
      147 LOADN                            R23 0
      148 LOADN                            R24 12
      149 CALL                             R22 2 1
      150 SETTABLEKS                       R22 R21 K66 ["PaddingRight"]
      152 GETIMPORT                        R22 K63 [UDim.new]
      154 LOADN                            R23 0
      155 LOADN                            R24 12
      156 CALL                             R22 2 1
      157 SETTABLEKS                       R22 R21 K67 ["PaddingTop"]
      159 GETIMPORT                        R22 K63 [UDim.new]
      161 LOADN                            R23 0
      162 LOADN                            R24 12
      163 CALL                             R22 2 1
      164 SETTABLEKS                       R22 R21 K68 ["PaddingBottom"]
      166 CALL                             R19 2 1
      167 MOVE                             R20 R2
      168 LOADK                            R21 K71 [".StartPage-TablePadding ::UIPadding"]
      169 DUPTABLE                         R22 K72 [{"PaddingTop", "PaddingBottom"}]
      170 GETIMPORT                        R23 K63 [UDim.new]
      172 LOADN                            R24 0
      173 LOADN                            R25 10
      174 CALL                             R23 2 1
      175 SETTABLEKS                       R23 R22 K67 ["PaddingTop"]
      177 GETIMPORT                        R23 K63 [UDim.new]
      179 LOADN                            R24 0
      180 LOADN                            R25 10
      181 CALL                             R23 2 1
      182 SETTABLEKS                       R23 R22 K68 ["PaddingBottom"]
      184 CALL                             R20 2 1
      185 MOVE                             R21 R2
      186 LOADK                            R22 K73 [".StartPage-DescPadding ::UIPadding"]
      187 DUPTABLE                         R23 K69 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      188 GETIMPORT                        R24 K63 [UDim.new]
      190 LOADN                            R25 0
      191 LOADN                            R26 0
      192 CALL                             R24 2 1
      193 SETTABLEKS                       R24 R23 K65 ["PaddingLeft"]
      195 GETIMPORT                        R24 K63 [UDim.new]
      197 LOADN                            R25 0
      198 LOADN                            R26 0
      199 CALL                             R24 2 1
      200 SETTABLEKS                       R24 R23 K66 ["PaddingRight"]
      202 GETIMPORT                        R24 K63 [UDim.new]
      204 LOADN                            R25 0
      205 LOADN                            R26 12
      206 CALL                             R24 2 1
      207 SETTABLEKS                       R24 R23 K67 ["PaddingTop"]
      209 GETIMPORT                        R24 K63 [UDim.new]
      211 LOADN                            R25 0
      212 LOADN                            R26 12
      213 CALL                             R24 2 1
      214 SETTABLEKS                       R24 R23 K68 ["PaddingBottom"]
      216 CALL                             R21 2 1
      217 MOVE                             R22 R2
      218 LOADK                            R23 K74 [".StartPage-ContextMenuPadding ::UIPadding"]
      219 DUPTABLE                         R24 K69 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      220 GETIMPORT                        R25 K63 [UDim.new]
      222 LOADN                            R26 0
      223 LOADN                            R27 8
      224 CALL                             R25 2 1
      225 SETTABLEKS                       R25 R24 K65 ["PaddingLeft"]
      227 GETIMPORT                        R25 K63 [UDim.new]
      229 LOADN                            R26 0
      230 LOADN                            R27 8
      231 CALL                             R25 2 1
      232 SETTABLEKS                       R25 R24 K66 ["PaddingRight"]
      234 GETIMPORT                        R25 K63 [UDim.new]
      236 LOADN                            R26 0
      237 LOADN                            R27 8
      238 CALL                             R25 2 1
      239 SETTABLEKS                       R25 R24 K67 ["PaddingTop"]
      241 GETIMPORT                        R25 K63 [UDim.new]
      243 LOADN                            R26 0
      244 LOADN                            R27 8
      245 CALL                             R25 2 1
      246 SETTABLEKS                       R25 R24 K68 ["PaddingBottom"]
      248 CALL                             R22 2 1
      249 SETLIST                          R6 R7 16 [1]
      251 MOVE                             R7 R2
      252 LOADK                            R8 K75 [".StartPage-ContextMenuRowPadding ::UIPadding"]
      253 DUPTABLE                         R9 K69 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      254 GETIMPORT                        R10 K63 [UDim.new]
      256 LOADN                            R11 0
      257 LOADN                            R12 8
      258 CALL                             R10 2 1
      259 SETTABLEKS                       R10 R9 K65 ["PaddingLeft"]
      261 GETIMPORT                        R10 K63 [UDim.new]
      263 LOADN                            R11 0
      264 LOADN                            R12 8
      265 CALL                             R10 2 1
      266 SETTABLEKS                       R10 R9 K66 ["PaddingRight"]
      268 GETIMPORT                        R10 K63 [UDim.new]
      270 LOADN                            R11 0
      271 LOADN                            R12 4
      272 CALL                             R10 2 1
      273 SETTABLEKS                       R10 R9 K67 ["PaddingTop"]
      275 GETIMPORT                        R10 K63 [UDim.new]
      277 LOADN                            R11 0
      278 LOADN                            R12 4
      279 CALL                             R10 2 1
      280 SETTABLEKS                       R10 R9 K68 ["PaddingBottom"]
      282 CALL                             R7 2 1
      283 MOVE                             R8 R2
      284 LOADK                            R9 K76 [".StartPage-PadScrollingCarouselLeft ::UIPadding"]
      285 DUPTABLE                         R10 K77 [{"PaddingLeft"}]
      286 GETIMPORT                        R11 K63 [UDim.new]
      288 LOADN                            R12 0
      289 LOADN                            R13 2
      290 CALL                             R11 2 1
      291 SETTABLEKS                       R11 R10 K65 ["PaddingLeft"]
      293 CALL                             R8 2 1
      294 MOVE                             R9 R2
      295 LOADK                            R10 K78 [".StartPage-Anchor-Bottom-Right"]
      296 DUPTABLE                         R11 K80 [{"AnchorPoint"}]
      297 GETIMPORT                        R12 K82 [Vector2.new]
      299 LOADN                            R13 1
      300 LOADN                            R14 1
      301 CALL                             R12 2 1
      302 SETTABLEKS                       R12 R11 K79 ["AnchorPoint"]
      304 CALL                             R9 2 1
      305 MOVE                             R10 R2
      306 LOADK                            R11 K83 [".StartPage-NoBorder"]
      307 DUPTABLE                         R12 K85 [{["BorderSizePixel"] = 0}]
      308 CALL                             R10 2 1
      309 MOVE                             R11 R2
      310 LOADK                            R12 K86 [".StartPage-StandardDarkTextColor"]
      311 DUPTABLE                         R13 K88 [{["TextColor3"] = "$StandardDark"}]
      312 CALL                             R11 2 1
      313 MOVE                             R12 R2
      314 LOADK                            R13 K89 [".StartPage-MutedTextColor"]
      315 DUPTABLE                         R14 K91 [{["TextColor3"] = "$SemanticColorContentMuted"}]
      316 CALL                             R12 2 1
      317 MOVE                             R13 R2
      318 LOADK                            R14 K92 [".StartPage-Standard"]
      319 DUPTABLE                         R15 K94 [{["BackgroundColor3"] = "$Standard"}]
      320 CALL                             R13 2 1
      321 MOVE                             R14 R2
      322 LOADK                            R15 K95 [".StartPage-StandardDarkBackground"]
      323 DUPTABLE                         R16 K96 [{["BackgroundColor3"] = "$StandardDark"}]
      324 CALL                             R14 2 1
      325 MOVE                             R15 R2
      326 LOADK                            R16 K97 [".StartPage-TileBackground"]
      327 DUPTABLE                         R17 K99 [{["BackgroundColor3"] = "$TileBackground", ["BackgroundTransparency"] = 0}]
      328 NEWTABLE                         R18 0 1
      330 MOVE                             R19 R2
      331 LOADK                            R20 K100 [":hover :: UIStroke"]
      332 DUPTABLE                         R21 K108 [{["StrokeApplyStrokeMode"], ["Color"] = "$Border", ["Transparency"] = 0.88, ["Thickness"] = 2}]
      333 GETIMPORT                        R22 K111 [Enum.ApplyStrokeMode.Border]
      335 SETTABLEKS                       R22 R21 K101 ["StrokeApplyStrokeMode"]
      337 CALL                             R19 2 -1
      338 SETLIST                          R18 R19 -1 [1]
      340 CALL                             R15 3 1
      341 MOVE                             R16 R2
      342 LOADK                            R17 K112 [".StartPage-PillBackground"]
      343 DUPTABLE                         R18 K114 [{["BackgroundColor3"] = "$PillBackground", ["BackgroundTransparency"] = 0}]
      344 CALL                             R16 2 1
      345 MOVE                             R17 R2
      346 LOADK                            R18 K115 [".StartPage-ShimmerBackground"]
      347 DUPTABLE                         R19 K118 [{["BackgroundColor3"] = "$ShimmerBackground", ["BackgroundTransparency"] = "$ShimmerBackgroundTransparency"}]
      348 CALL                             R17 2 1
      349 MOVE                             R18 R2
      350 LOADK                            R19 K119 [".StartPage-ShimmerForeground"]
      351 DUPTABLE                         R20 K121 [{["BackgroundColor3"] = "$ShimmerForeground"}]
      352 CALL                             R18 2 1
      353 MOVE                             R19 R2
      354 LOADK                            R20 K122 [".StartPage-ShimmerGradient"]
      355 DUPTABLE                         R21 K124 [{["Transparency"] = "$ShimmerGradientTransparency"}]
      356 CALL                             R19 2 1
      357 MOVE                             R20 R2
      358 LOADK                            R21 K125 [".StartPage-NoExperiences"]
      359 DUPTABLE                         R22 K128 [{["Image"] = "$NoExperiences", ["Size"]}]
      360 JUMPIFNOT                        R4 ; [+8]
      361 GETIMPORT                        R23 K130 [UDim2.new]
      363 LOADN                            R24 0
      364 LOADN                            R25 320
      365 LOADN                            R26 0
      366 LOADN                            R27 180
      367 CALL                             R23 4 1
      368 JUMP                             ; [+7]
      369 GETIMPORT                        R23 K130 [UDim2.new]
      371 LOADN                            R24 0
      372 LOADN                            R25 96
      373 LOADN                            R26 0
      374 LOADN                            R27 96
      375 CALL                             R23 4 1
      376 SETTABLEKS                       R23 R22 K52 ["Size"]
      378 CALL                             R20 2 1
      379 JUMPIFNOT                        R5 ; [+5]
      380 MOVE                             R21 R2
      381 LOADK                            R22 K131 [".StartPage-Placeholder"]
      382 DUPTABLE                         R23 K133 [{["Image"] = "$Placeholder"}]
      383 CALL                             R21 2 1
      384 JUMP                             ; [+1]
      385 LOADNIL                          R21
      386 MOVE                             R22 R2
      387 LOADK                            R23 K134 [".StartPage-RightIcon"]
      388 DUPTABLE                         R24 K136 [{["Image"] = "$RightChevron", ["Size"] = "$IconSizeM"}]
      389 CALL                             R22 2 1
      390 SETLIST                          R6 R7 16 [17]
      392 MOVE                             R7 R2
      393 LOADK                            R8 K137 [".StartPage-KebabIcon"]
      394 DUPTABLE                         R9 K140 [{["Image"] = "$Kebab", ["Size"] = "$IconSizeL"}]
      395 CALL                             R7 2 1
      396 MOVE                             R8 R2
      397 LOADK                            R9 K141 [".StartPage-CancelIcon"]
      398 DUPTABLE                         R10 K144 [{["Image"] = "$Cancel", ["Size"] = "$IconSizeS"}]
      399 CALL                             R8 2 1
      400 MOVE                             R9 R2
      401 LOADK                            R10 K145 [".StartPage-BlackCancelIcon"]
      402 DUPTABLE                         R11 K148 [{["Image"] = "$Cancel", ["ImageColor3"] = "$BlackColor", ["Size"] = "$IconSizeS"}]
      403 CALL                             R9 2 1
      404 MOVE                             R10 R2
      405 LOADK                            R11 K149 [".StartPage-CancelWhiteIcon"]
      406 DUPTABLE                         R12 K151 [{["Image"] = "$CancelWhite", ["Size"] = "$IconSizeS"}]
      407 CALL                             R10 2 1
      408 MOVE                             R11 R2
      409 LOADK                            R12 K152 [".StartPage-TeamCreateOnlineBackground"]
      410 DUPTABLE                         R13 K154 [{["BackgroundColor3"] = "$TeamCreatePresenceOnlineColor"}]
      411 CALL                             R11 2 1
      412 MOVE                             R12 R2
      413 LOADK                            R13 K155 [".StartPage-SearchResultRowColumn"]
      414 NEWTABLE                         R14 0 0
      416 NEWTABLE                         R15 0 1
      418 MOVE                             R16 R2
      419 LOADK                            R17 K156 ["::UIListLayout"]
      420 DUPTABLE                         R18 K160 [{"FillDirection", "Padding", "SortOrder"}]
      421 GETIMPORT                        R19 K162 [Enum.FillDirection.Vertical]
      423 SETTABLEKS                       R19 R18 K157 ["FillDirection"]
      425 GETIMPORT                        R19 K63 [UDim.new]
      427 LOADN                            R20 0
      428 LOADN                            R21 6
      429 CALL                             R19 2 1
      430 SETTABLEKS                       R19 R18 K158 ["Padding"]
      432 GETIMPORT                        R19 K164 [Enum.SortOrder.LayoutOrder]
      434 SETTABLEKS                       R19 R18 K159 ["SortOrder"]
      436 CALL                             R16 2 -1
      437 SETLIST                          R15 R16 -1 [1]
      439 CALL                             R12 3 -1
      440 SETLIST                          R6 R7 -1 [33]
      442 DUPTABLE                         R7 K172 [{["IconSizeS"], ["IconSizeM"], ["IconSizeL"], ["CornerSize8"], ["TextSize"] = 16, ["TeamCreatePresenceOnlineColor"], ["BlackColor"]}]
      443 GETIMPORT                        R8 K130 [UDim2.new]
      445 LOADN                            R9 0
      446 LOADN                            R10 12
      447 LOADN                            R11 0
      448 LOADN                            R12 12
      449 CALL                             R8 4 1
      450 SETTABLEKS                       R8 R7 K165 ["IconSizeS"]
      452 GETIMPORT                        R8 K130 [UDim2.new]
      454 LOADN                            R9 0
      455 LOADN                            R10 24
      456 LOADN                            R11 0
      457 LOADN                            R12 24
      458 CALL                             R8 4 1
      459 SETTABLEKS                       R8 R7 K166 ["IconSizeM"]
      461 GETIMPORT                        R8 K130 [UDim2.new]
      463 LOADN                            R9 0
      464 LOADN                            R10 32
      465 LOADN                            R11 0
      466 LOADN                            R12 32
      467 CALL                             R8 4 1
      468 SETTABLEKS                       R8 R7 K167 ["IconSizeL"]
      470 GETIMPORT                        R8 K63 [UDim.new]
      472 LOADN                            R9 0
      473 LOADN                            R10 8
      474 CALL                             R8 2 1
      475 SETTABLEKS                       R8 R7 K168 ["CornerSize8"]
      477 GETIMPORT                        R8 K175 [Color3.fromHex]
      479 LOADK                            R9 K176 ["#0fb369"]
      480 CALL                             R8 1 1
      481 SETTABLEKS                       R8 R7 K170 ["TeamCreatePresenceOnlineColor"]
      483 GETIMPORT                        R8 K175 [Color3.fromHex]
      485 LOADK                            R9 K177 ["#000000"]
      486 CALL                             R8 1 1
      487 SETTABLEKS                       R8 R7 K171 ["BlackColor"]
      489 MOVE                             R8 R3
      490 LOADK                            R9 K2 ["StartPage"]
      491 MOVE                             R10 R6
      492 MOVE                             R11 R7
      493 CALL                             R8 3 -1
      494 RETURN                           R8 -1
