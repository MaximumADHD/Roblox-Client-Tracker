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
       32 NEWTABLE                         R5 0 37
       34 MOVE                             R6 R2
       35 LOADK                            R7 K14 [".StartPage-PageBackground"]
       36 DUPTABLE                         R8 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
       37 LOADK                            R9 K18 ["$PageBackground"]
       38 SETTABLEKS                       R9 R8 K15 ["BackgroundColor3"]
       40 LOADN                            R9 0
       41 SETTABLEKS                       R9 R8 K16 ["BackgroundTransparency"]
       43 CALL                             R6 2 1
       44 MOVE                             R7 R2
       45 LOADK                            R8 K19 [".StartPage-ContextMenuBackground"]
       46 DUPTABLE                         R9 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
       47 LOADK                            R10 K20 ["$ContextMenuBackground"]
       48 SETTABLEKS                       R10 R9 K15 ["BackgroundColor3"]
       50 LOADN                            R10 0
       51 SETTABLEKS                       R10 R9 K16 ["BackgroundTransparency"]
       53 CALL                             R7 2 1
       54 MOVE                             R8 R2
       55 LOADK                            R9 K21 [".StartPage-Selected"]
       56 DUPTABLE                         R10 K22 [{"BackgroundColor3"}]
       57 LOADK                            R11 K23 ["$Selected"]
       58 SETTABLEKS                       R11 R10 K15 ["BackgroundColor3"]
       60 CALL                             R8 2 1
       61 MOVE                             R9 R2
       62 LOADK                            R10 K24 [".StartPage-Contrast"]
       63 DUPTABLE                         R11 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
       64 LOADK                            R12 K25 ["$Contrast"]
       65 SETTABLEKS                       R12 R11 K15 ["BackgroundColor3"]
       67 LOADN                            R12 0
       68 SETTABLEKS                       R12 R11 K16 ["BackgroundTransparency"]
       70 CALL                             R9 2 1
       71 MOVE                             R10 R2
       72 LOADK                            R11 K26 [".StartPage-TextColor"]
       73 DUPTABLE                         R12 K28 [{"TextColor3"}]
       74 LOADK                            R13 K29 ["$TextColor"]
       75 SETTABLEKS                       R13 R12 K27 ["TextColor3"]
       77 CALL                             R10 2 1
       78 MOVE                             R11 R2
       79 LOADK                            R12 K30 [".StartPage-Font"]
       80 DUPTABLE                         R13 K33 [{"Font", "LineHeight"}]
       81 GETIMPORT                        R14 K36 [Enum.Font.BuilderSans]
       83 SETTABLEKS                       R14 R13 K31 ["Font"]
       85 LOADK                            R14 K37 [1.142]
       86 SETTABLEKS                       R14 R13 K32 ["LineHeight"]
       88 CALL                             R11 2 1
       89 MOVE                             R12 R2
       90 LOADK                            R13 K38 [".StartPage-FontBold"]
       91 DUPTABLE                         R14 K33 [{"Font", "LineHeight"}]
       92 GETIMPORT                        R15 K40 [Enum.Font.BuilderSansBold]
       94 SETTABLEKS                       R15 R14 K31 ["Font"]
       96 LOADK                            R15 K41 [1.6]
       97 SETTABLEKS                       R15 R14 K32 ["LineHeight"]
       99 CALL                             R12 2 1
      100 MOVE                             R13 R2
      101 LOADK                            R14 K42 [".StartPage-TextSize"]
      102 DUPTABLE                         R15 K44 [{"TextSize"}]
      103 LOADK                            R16 K45 ["$TextSize"]
      104 SETTABLEKS                       R16 R15 K43 ["TextSize"]
      106 CALL                             R13 2 1
      107 MOVE                             R14 R2
      108 LOADK                            R15 K46 [".StartPage-IconSizeM"]
      109 DUPTABLE                         R16 K48 [{"Size"}]
      110 LOADK                            R17 K49 ["$IconSizeM"]
      111 SETTABLEKS                       R17 R16 K47 ["Size"]
      113 CALL                             R14 2 1
      114 MOVE                             R15 R2
      115 LOADK                            R16 K50 [".StartPage-RoundedCorner8 ::UICorner"]
      116 DUPTABLE                         R17 K52 [{"CornerRadius"}]
      117 LOADK                            R18 K53 ["$CornerSize8"]
      118 SETTABLEKS                       R18 R17 K51 ["CornerRadius"]
      120 CALL                             R15 2 1
      121 MOVE                             R16 R2
      122 LOADK                            R17 K54 [".StartPage-Circular ::UICorner"]
      123 DUPTABLE                         R18 K52 [{"CornerRadius"}]
      124 GETIMPORT                        R19 K57 [UDim.new]
      126 LOADN                            R20 1
      127 LOADN                            R21 0
      128 CALL                             R19 2 1
      129 SETTABLEKS                       R19 R18 K51 ["CornerRadius"]
      131 CALL                             R16 2 1
      132 MOVE                             R17 R2
      133 LOADK                            R18 K58 [".StartPage-PillPaddingS ::UIPadding"]
      134 DUPTABLE                         R19 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      135 GETIMPORT                        R20 K57 [UDim.new]
      137 LOADN                            R21 0
      138 LOADN                            R22 10
      139 CALL                             R20 2 1
      140 SETTABLEKS                       R20 R19 K59 ["PaddingLeft"]
      142 GETIMPORT                        R20 K57 [UDim.new]
      144 LOADN                            R21 0
      145 LOADN                            R22 10
      146 CALL                             R20 2 1
      147 SETTABLEKS                       R20 R19 K60 ["PaddingRight"]
      149 GETIMPORT                        R20 K57 [UDim.new]
      151 LOADN                            R21 0
      152 LOADN                            R22 4
      153 CALL                             R20 2 1
      154 SETTABLEKS                       R20 R19 K61 ["PaddingTop"]
      156 GETIMPORT                        R20 K57 [UDim.new]
      158 LOADN                            R21 0
      159 LOADN                            R22 4
      160 CALL                             R20 2 1
      161 SETTABLEKS                       R20 R19 K62 ["PaddingBottom"]
      163 CALL                             R17 2 1
      164 MOVE                             R18 R2
      165 LOADK                            R19 K64 [".StartPage-TilePadding ::UIPadding"]
      166 DUPTABLE                         R20 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      167 GETIMPORT                        R21 K57 [UDim.new]
      169 LOADN                            R22 0
      170 LOADN                            R23 12
      171 CALL                             R21 2 1
      172 SETTABLEKS                       R21 R20 K59 ["PaddingLeft"]
      174 GETIMPORT                        R21 K57 [UDim.new]
      176 LOADN                            R22 0
      177 LOADN                            R23 12
      178 CALL                             R21 2 1
      179 SETTABLEKS                       R21 R20 K60 ["PaddingRight"]
      181 GETIMPORT                        R21 K57 [UDim.new]
      183 LOADN                            R22 0
      184 LOADN                            R23 12
      185 CALL                             R21 2 1
      186 SETTABLEKS                       R21 R20 K61 ["PaddingTop"]
      188 GETIMPORT                        R21 K57 [UDim.new]
      190 LOADN                            R22 0
      191 LOADN                            R23 12
      192 CALL                             R21 2 1
      193 SETTABLEKS                       R21 R20 K62 ["PaddingBottom"]
      195 CALL                             R18 2 1
      196 MOVE                             R19 R2
      197 LOADK                            R20 K65 [".StartPage-TablePadding ::UIPadding"]
      198 DUPTABLE                         R21 K66 [{"PaddingTop", "PaddingBottom"}]
      199 GETIMPORT                        R22 K57 [UDim.new]
      201 LOADN                            R23 0
      202 LOADN                            R24 10
      203 CALL                             R22 2 1
      204 SETTABLEKS                       R22 R21 K61 ["PaddingTop"]
      206 GETIMPORT                        R22 K57 [UDim.new]
      208 LOADN                            R23 0
      209 LOADN                            R24 10
      210 CALL                             R22 2 1
      211 SETTABLEKS                       R22 R21 K62 ["PaddingBottom"]
      213 CALL                             R19 2 1
      214 MOVE                             R20 R2
      215 LOADK                            R21 K67 [".StartPage-DescPadding ::UIPadding"]
      216 DUPTABLE                         R22 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      217 GETIMPORT                        R23 K57 [UDim.new]
      219 LOADN                            R24 0
      220 LOADN                            R25 0
      221 CALL                             R23 2 1
      222 SETTABLEKS                       R23 R22 K59 ["PaddingLeft"]
      224 GETIMPORT                        R23 K57 [UDim.new]
      226 LOADN                            R24 0
      227 LOADN                            R25 0
      228 CALL                             R23 2 1
      229 SETTABLEKS                       R23 R22 K60 ["PaddingRight"]
      231 GETIMPORT                        R23 K57 [UDim.new]
      233 LOADN                            R24 0
      234 LOADN                            R25 12
      235 CALL                             R23 2 1
      236 SETTABLEKS                       R23 R22 K61 ["PaddingTop"]
      238 GETIMPORT                        R23 K57 [UDim.new]
      240 LOADN                            R24 0
      241 LOADN                            R25 12
      242 CALL                             R23 2 1
      243 SETTABLEKS                       R23 R22 K62 ["PaddingBottom"]
      245 CALL                             R20 2 1
      246 MOVE                             R21 R2
      247 LOADK                            R22 K68 [".StartPage-ContextMenuPadding ::UIPadding"]
      248 DUPTABLE                         R23 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      249 GETIMPORT                        R24 K57 [UDim.new]
      251 LOADN                            R25 0
      252 LOADN                            R26 8
      253 CALL                             R24 2 1
      254 SETTABLEKS                       R24 R23 K59 ["PaddingLeft"]
      256 GETIMPORT                        R24 K57 [UDim.new]
      258 LOADN                            R25 0
      259 LOADN                            R26 8
      260 CALL                             R24 2 1
      261 SETTABLEKS                       R24 R23 K60 ["PaddingRight"]
      263 GETIMPORT                        R24 K57 [UDim.new]
      265 LOADN                            R25 0
      266 LOADN                            R26 8
      267 CALL                             R24 2 1
      268 SETTABLEKS                       R24 R23 K61 ["PaddingTop"]
      270 GETIMPORT                        R24 K57 [UDim.new]
      272 LOADN                            R25 0
      273 LOADN                            R26 8
      274 CALL                             R24 2 1
      275 SETTABLEKS                       R24 R23 K62 ["PaddingBottom"]
      277 CALL                             R21 2 1
      278 SETLIST                          R5 R6 16 [1]
      280 MOVE                             R6 R2
      281 LOADK                            R7 K69 [".StartPage-ContextMenuRowPadding ::UIPadding"]
      282 DUPTABLE                         R8 K63 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      283 GETIMPORT                        R9 K57 [UDim.new]
      285 LOADN                            R10 0
      286 LOADN                            R11 8
      287 CALL                             R9 2 1
      288 SETTABLEKS                       R9 R8 K59 ["PaddingLeft"]
      290 GETIMPORT                        R9 K57 [UDim.new]
      292 LOADN                            R10 0
      293 LOADN                            R11 8
      294 CALL                             R9 2 1
      295 SETTABLEKS                       R9 R8 K60 ["PaddingRight"]
      297 GETIMPORT                        R9 K57 [UDim.new]
      299 LOADN                            R10 0
      300 LOADN                            R11 4
      301 CALL                             R9 2 1
      302 SETTABLEKS                       R9 R8 K61 ["PaddingTop"]
      304 GETIMPORT                        R9 K57 [UDim.new]
      306 LOADN                            R10 0
      307 LOADN                            R11 4
      308 CALL                             R9 2 1
      309 SETTABLEKS                       R9 R8 K62 ["PaddingBottom"]
      311 CALL                             R6 2 1
      312 MOVE                             R7 R2
      313 LOADK                            R8 K70 [".StartPage-PadScrollingCarouselLeft ::UIPadding"]
      314 DUPTABLE                         R9 K71 [{"PaddingLeft"}]
      315 GETIMPORT                        R10 K57 [UDim.new]
      317 LOADN                            R11 0
      318 LOADN                            R12 2
      319 CALL                             R10 2 1
      320 SETTABLEKS                       R10 R9 K59 ["PaddingLeft"]
      322 CALL                             R7 2 1
      323 MOVE                             R8 R2
      324 LOADK                            R9 K72 [".StartPage-Anchor-Bottom-Right"]
      325 DUPTABLE                         R10 K74 [{"AnchorPoint"}]
      326 GETIMPORT                        R11 K76 [Vector2.new]
      328 LOADN                            R12 1
      329 LOADN                            R13 1
      330 CALL                             R11 2 1
      331 SETTABLEKS                       R11 R10 K73 ["AnchorPoint"]
      333 CALL                             R8 2 1
      334 MOVE                             R9 R2
      335 LOADK                            R10 K77 [".StartPage-NoBorder"]
      336 DUPTABLE                         R11 K79 [{"BorderSizePixel"}]
      337 LOADN                            R12 0
      338 SETTABLEKS                       R12 R11 K78 ["BorderSizePixel"]
      340 CALL                             R9 2 1
      341 MOVE                             R10 R2
      342 LOADK                            R11 K80 [".StartPage-StandardDarkTextColor"]
      343 DUPTABLE                         R12 K28 [{"TextColor3"}]
      344 LOADK                            R13 K81 ["$StandardDark"]
      345 SETTABLEKS                       R13 R12 K27 ["TextColor3"]
      347 CALL                             R10 2 1
      348 MOVE                             R11 R2
      349 LOADK                            R12 K82 [".StartPage-MutedTextColor"]
      350 DUPTABLE                         R13 K28 [{"TextColor3"}]
      351 LOADK                            R14 K83 ["$SemanticColorContentMuted"]
      352 SETTABLEKS                       R14 R13 K27 ["TextColor3"]
      354 CALL                             R11 2 1
      355 MOVE                             R12 R2
      356 LOADK                            R13 K84 [".StartPage-Standard"]
      357 DUPTABLE                         R14 K22 [{"BackgroundColor3"}]
      358 LOADK                            R15 K85 ["$Standard"]
      359 SETTABLEKS                       R15 R14 K15 ["BackgroundColor3"]
      361 CALL                             R12 2 1
      362 MOVE                             R13 R2
      363 LOADK                            R14 K86 [".StartPage-StandardDarkBackground"]
      364 DUPTABLE                         R15 K22 [{"BackgroundColor3"}]
      365 LOADK                            R16 K81 ["$StandardDark"]
      366 SETTABLEKS                       R16 R15 K15 ["BackgroundColor3"]
      368 CALL                             R13 2 1
      369 MOVE                             R14 R2
      370 LOADK                            R15 K87 [".StartPage-TileBackground"]
      371 DUPTABLE                         R16 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
      372 LOADK                            R17 K88 ["$TileBackground"]
      373 SETTABLEKS                       R17 R16 K15 ["BackgroundColor3"]
      375 LOADN                            R17 0
      376 SETTABLEKS                       R17 R16 K16 ["BackgroundTransparency"]
      378 NEWTABLE                         R17 0 1
      380 MOVE                             R18 R2
      381 LOADK                            R19 K89 [":hover :: UIStroke"]
      382 DUPTABLE                         R20 K94 [{"StrokeApplyStrokeMode", "Color", "Transparency", "Thickness"}]
      383 GETIMPORT                        R21 K97 [Enum.ApplyStrokeMode.Border]
      385 SETTABLEKS                       R21 R20 K90 ["StrokeApplyStrokeMode"]
      387 LOADK                            R21 K98 ["$Border"]
      388 SETTABLEKS                       R21 R20 K91 ["Color"]
      390 LOADK                            R21 K99 [0.88]
      391 SETTABLEKS                       R21 R20 K92 ["Transparency"]
      393 LOADN                            R21 2
      394 SETTABLEKS                       R21 R20 K93 ["Thickness"]
      396 CALL                             R18 2 -1
      397 SETLIST                          R17 R18 -1 [1]
      399 CALL                             R14 3 1
      400 MOVE                             R15 R2
      401 LOADK                            R16 K100 [".StartPage-PillBackground"]
      402 DUPTABLE                         R17 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
      403 LOADK                            R18 K101 ["$PillBackground"]
      404 SETTABLEKS                       R18 R17 K15 ["BackgroundColor3"]
      406 LOADN                            R18 0
      407 SETTABLEKS                       R18 R17 K16 ["BackgroundTransparency"]
      409 CALL                             R15 2 1
      410 MOVE                             R16 R2
      411 LOADK                            R17 K102 [".StartPage-ShimmerBackground"]
      412 DUPTABLE                         R18 K17 [{"BackgroundColor3", "BackgroundTransparency"}]
      413 LOADK                            R19 K103 ["$ShimmerBackground"]
      414 SETTABLEKS                       R19 R18 K15 ["BackgroundColor3"]
      416 LOADK                            R19 K104 ["$ShimmerBackgroundTransparency"]
      417 SETTABLEKS                       R19 R18 K16 ["BackgroundTransparency"]
      419 CALL                             R16 2 1
      420 MOVE                             R17 R2
      421 LOADK                            R18 K105 [".StartPage-ShimmerForeground"]
      422 DUPTABLE                         R19 K22 [{"BackgroundColor3"}]
      423 LOADK                            R20 K106 ["$ShimmerForeground"]
      424 SETTABLEKS                       R20 R19 K15 ["BackgroundColor3"]
      426 CALL                             R17 2 1
      427 MOVE                             R18 R2
      428 LOADK                            R19 K107 [".StartPage-ShimmerGradient"]
      429 DUPTABLE                         R20 K108 [{"Transparency"}]
      430 LOADK                            R21 K109 ["$ShimmerGradientTransparency"]
      431 SETTABLEKS                       R21 R20 K92 ["Transparency"]
      433 CALL                             R18 2 1
      434 MOVE                             R19 R2
      435 LOADK                            R20 K110 [".StartPage-NoExperiences"]
      436 DUPTABLE                         R21 K112 [{"Image", "Size"}]
      437 LOADK                            R22 K113 ["$NoExperiences"]
      438 SETTABLEKS                       R22 R21 K111 ["Image"]
      440 JUMPIFNOT                        R4 ; [+8]
      441 GETIMPORT                        R22 K115 [UDim2.new]
      443 LOADN                            R23 0
      444 LOADN                            R24 64
      445 LOADN                            R25 0
      446 LOADN                            R26 180
      447 CALL                             R22 4 1
      448 JUMP                             ; [+7]
      449 GETIMPORT                        R22 K115 [UDim2.new]
      451 LOADN                            R23 0
      452 LOADN                            R24 96
      453 LOADN                            R25 0
      454 LOADN                            R26 96
      455 CALL                             R22 4 1
      456 SETTABLEKS                       R22 R21 K47 ["Size"]
      458 CALL                             R19 2 1
      459 MOVE                             R20 R2
      460 LOADK                            R21 K116 [".StartPage-RightIcon"]
      461 DUPTABLE                         R22 K112 [{"Image", "Size"}]
      462 LOADK                            R23 K117 ["$RightChevron"]
      463 SETTABLEKS                       R23 R22 K111 ["Image"]
      465 LOADK                            R23 K49 ["$IconSizeM"]
      466 SETTABLEKS                       R23 R22 K47 ["Size"]
      468 CALL                             R20 2 1
      469 MOVE                             R21 R2
      470 LOADK                            R22 K118 [".StartPage-KebabIcon"]
      471 DUPTABLE                         R23 K112 [{"Image", "Size"}]
      472 LOADK                            R24 K119 ["$Kebab"]
      473 SETTABLEKS                       R24 R23 K111 ["Image"]
      475 LOADK                            R24 K120 ["$IconSizeL"]
      476 SETTABLEKS                       R24 R23 K47 ["Size"]
      478 CALL                             R21 2 1
      479 SETLIST                          R5 R6 16 [17]
      481 MOVE                             R6 R2
      482 LOADK                            R7 K121 [".StartPage-CancelIcon"]
      483 DUPTABLE                         R8 K112 [{"Image", "Size"}]
      484 LOADK                            R9 K122 ["$Cancel"]
      485 SETTABLEKS                       R9 R8 K111 ["Image"]
      487 LOADK                            R9 K123 ["$IconSizeS"]
      488 SETTABLEKS                       R9 R8 K47 ["Size"]
      490 CALL                             R6 2 1
      491 MOVE                             R7 R2
      492 LOADK                            R8 K124 [".StartPage-BlackCancelIcon"]
      493 DUPTABLE                         R9 K126 [{"Image", "ImageColor3", "Size"}]
      494 LOADK                            R10 K122 ["$Cancel"]
      495 SETTABLEKS                       R10 R9 K111 ["Image"]
      497 LOADK                            R10 K127 ["$BlackColor"]
      498 SETTABLEKS                       R10 R9 K125 ["ImageColor3"]
      500 LOADK                            R10 K123 ["$IconSizeS"]
      501 SETTABLEKS                       R10 R9 K47 ["Size"]
      503 CALL                             R7 2 1
      504 MOVE                             R8 R2
      505 LOADK                            R9 K128 [".StartPage-CancelWhiteIcon"]
      506 DUPTABLE                         R10 K112 [{"Image", "Size"}]
      507 LOADK                            R11 K129 ["$CancelWhite"]
      508 SETTABLEKS                       R11 R10 K111 ["Image"]
      510 LOADK                            R11 K123 ["$IconSizeS"]
      511 SETTABLEKS                       R11 R10 K47 ["Size"]
      513 CALL                             R8 2 1
      514 MOVE                             R9 R2
      515 LOADK                            R10 K130 [".StartPage-TeamCreateOnlineBackground"]
      516 DUPTABLE                         R11 K22 [{"BackgroundColor3"}]
      517 LOADK                            R12 K131 ["$TeamCreatePresenceOnlineColor"]
      518 SETTABLEKS                       R12 R11 K15 ["BackgroundColor3"]
      520 CALL                             R9 2 1
      521 MOVE                             R10 R2
      522 LOADK                            R11 K132 [".StartPage-SearchResultRowColumn"]
      523 NEWTABLE                         R12 0 0
      525 NEWTABLE                         R13 0 1
      527 MOVE                             R14 R2
      528 LOADK                            R15 K133 ["::UIListLayout"]
      529 DUPTABLE                         R16 K137 [{"FillDirection", "Padding", "SortOrder"}]
      530 GETIMPORT                        R17 K139 [Enum.FillDirection.Vertical]
      532 SETTABLEKS                       R17 R16 K134 ["FillDirection"]
      534 GETIMPORT                        R17 K57 [UDim.new]
      536 LOADN                            R18 0
      537 LOADN                            R19 6
      538 CALL                             R17 2 1
      539 SETTABLEKS                       R17 R16 K135 ["Padding"]
      541 GETIMPORT                        R17 K141 [Enum.SortOrder.LayoutOrder]
      543 SETTABLEKS                       R17 R16 K136 ["SortOrder"]
      545 CALL                             R14 2 -1
      546 SETLIST                          R13 R14 -1 [1]
      548 CALL                             R10 3 -1
      549 SETLIST                          R5 R6 -1 [33]
      551 DUPTABLE                         R6 K148 [{"IconSizeS", "IconSizeM", "IconSizeL", "CornerSize8", "TextSize", "TeamCreatePresenceOnlineColor", "BlackColor"}]
      552 GETIMPORT                        R7 K115 [UDim2.new]
      554 LOADN                            R8 0
      555 LOADN                            R9 12
      556 LOADN                            R10 0
      557 LOADN                            R11 12
      558 CALL                             R7 4 1
      559 SETTABLEKS                       R7 R6 K142 ["IconSizeS"]
      561 GETIMPORT                        R7 K115 [UDim2.new]
      563 LOADN                            R8 0
      564 LOADN                            R9 24
      565 LOADN                            R10 0
      566 LOADN                            R11 24
      567 CALL                             R7 4 1
      568 SETTABLEKS                       R7 R6 K143 ["IconSizeM"]
      570 GETIMPORT                        R7 K115 [UDim2.new]
      572 LOADN                            R8 0
      573 LOADN                            R9 32
      574 LOADN                            R10 0
      575 LOADN                            R11 32
      576 CALL                             R7 4 1
      577 SETTABLEKS                       R7 R6 K144 ["IconSizeL"]
      579 GETIMPORT                        R7 K57 [UDim.new]
      581 LOADN                            R8 0
      582 LOADN                            R9 8
      583 CALL                             R7 2 1
      584 SETTABLEKS                       R7 R6 K145 ["CornerSize8"]
      586 LOADN                            R7 16
      587 SETTABLEKS                       R7 R6 K43 ["TextSize"]
      589 GETIMPORT                        R7 K151 [Color3.fromHex]
      591 LOADK                            R8 K152 ["#0fb369"]
      592 CALL                             R7 1 1
      593 SETTABLEKS                       R7 R6 K146 ["TeamCreatePresenceOnlineColor"]
      595 GETIMPORT                        R7 K151 [Color3.fromHex]
      597 LOADK                            R8 K153 ["#000000"]
      598 CALL                             R7 1 1
      599 SETTABLEKS                       R7 R6 K147 ["BlackColor"]
      601 MOVE                             R7 R3
      602 LOADK                            R8 K2 ["StartPage"]
      603 MOVE                             R9 R5
      604 MOVE                             R10 R6
      605 CALL                             R7 3 -1
      606 RETURN                           R7 -1
