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
       36 DUPTABLE                         R8 K19 [{["BackgroundColor3"] = "$PageBackground", ["BackgroundTransparency"] = 0}]
       37 CALL                             R6 2 1
       38 MOVE                             R7 R2
       39 LOADK                            R8 K20 [".StartPage-ContextMenuBackground"]
       40 DUPTABLE                         R9 K22 [{["BackgroundColor3"] = "$ContextMenuBackground", ["BackgroundTransparency"] = 0}]
       41 CALL                             R7 2 1
       42 MOVE                             R8 R2
       43 LOADK                            R9 K23 [".StartPage-Selected"]
       44 DUPTABLE                         R10 K25 [{["BackgroundColor3"] = "$Selected"}]
       45 CALL                             R8 2 1
       46 MOVE                             R9 R2
       47 LOADK                            R10 K26 [".StartPage-Contrast"]
       48 DUPTABLE                         R11 K28 [{["BackgroundColor3"] = "$Contrast", ["BackgroundTransparency"] = 0}]
       49 CALL                             R9 2 1
       50 MOVE                             R10 R2
       51 LOADK                            R11 K29 [".StartPage-TextColor"]
       52 DUPTABLE                         R12 K32 [{["TextColor3"] = "$TextColor"}]
       53 CALL                             R10 2 1
       54 MOVE                             R11 R2
       55 LOADK                            R12 K33 [".StartPage-Font"]
       56 DUPTABLE                         R13 K37 [{["Font"], ["LineHeight"] = 1.142}]
       57 GETIMPORT                        R14 K40 [Enum.Font.BuilderSans]
       59 SETTABLEKS                       R14 R13 K34 ["Font"]
       61 CALL                             R11 2 1
       62 MOVE                             R12 R2
       63 LOADK                            R13 K41 [".StartPage-FontBold"]
       64 DUPTABLE                         R14 K43 [{["Font"], ["LineHeight"] = 1.6}]
       65 GETIMPORT                        R15 K45 [Enum.Font.BuilderSansBold]
       67 SETTABLEKS                       R15 R14 K34 ["Font"]
       69 CALL                             R12 2 1
       70 MOVE                             R13 R2
       71 LOADK                            R14 K46 [".StartPage-TextSize"]
       72 DUPTABLE                         R15 K49 [{["TextSize"] = "$TextSize"}]
       73 CALL                             R13 2 1
       74 MOVE                             R14 R2
       75 LOADK                            R15 K50 [".StartPage-IconSizeM"]
       76 DUPTABLE                         R16 K53 [{["Size"] = "$IconSizeM"}]
       77 CALL                             R14 2 1
       78 MOVE                             R15 R2
       79 LOADK                            R16 K54 [".StartPage-RoundedCorner8 ::UICorner"]
       80 DUPTABLE                         R17 K57 [{["CornerRadius"] = "$CornerSize8"}]
       81 CALL                             R15 2 1
       82 MOVE                             R16 R2
       83 LOADK                            R17 K58 [".StartPage-Circular ::UICorner"]
       84 DUPTABLE                         R18 K59 [{"CornerRadius"}]
       85 GETIMPORT                        R19 K62 [UDim.new]
       87 LOADN                            R20 1
       88 LOADN                            R21 0
       89 CALL                             R19 2 1
       90 SETTABLEKS                       R19 R18 K55 ["CornerRadius"]
       92 CALL                             R16 2 1
       93 MOVE                             R17 R2
       94 LOADK                            R18 K63 [".StartPage-PillPaddingS ::UIPadding"]
       95 DUPTABLE                         R19 K68 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
       96 GETIMPORT                        R20 K62 [UDim.new]
       98 LOADN                            R21 0
       99 LOADN                            R22 10
      100 CALL                             R20 2 1
      101 SETTABLEKS                       R20 R19 K64 ["PaddingLeft"]
      103 GETIMPORT                        R20 K62 [UDim.new]
      105 LOADN                            R21 0
      106 LOADN                            R22 10
      107 CALL                             R20 2 1
      108 SETTABLEKS                       R20 R19 K65 ["PaddingRight"]
      110 GETIMPORT                        R20 K62 [UDim.new]
      112 LOADN                            R21 0
      113 LOADN                            R22 4
      114 CALL                             R20 2 1
      115 SETTABLEKS                       R20 R19 K66 ["PaddingTop"]
      117 GETIMPORT                        R20 K62 [UDim.new]
      119 LOADN                            R21 0
      120 LOADN                            R22 4
      121 CALL                             R20 2 1
      122 SETTABLEKS                       R20 R19 K67 ["PaddingBottom"]
      124 CALL                             R17 2 1
      125 MOVE                             R18 R2
      126 LOADK                            R19 K69 [".StartPage-TilePadding ::UIPadding"]
      127 DUPTABLE                         R20 K68 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      128 GETIMPORT                        R21 K62 [UDim.new]
      130 LOADN                            R22 0
      131 LOADN                            R23 12
      132 CALL                             R21 2 1
      133 SETTABLEKS                       R21 R20 K64 ["PaddingLeft"]
      135 GETIMPORT                        R21 K62 [UDim.new]
      137 LOADN                            R22 0
      138 LOADN                            R23 12
      139 CALL                             R21 2 1
      140 SETTABLEKS                       R21 R20 K65 ["PaddingRight"]
      142 GETIMPORT                        R21 K62 [UDim.new]
      144 LOADN                            R22 0
      145 LOADN                            R23 12
      146 CALL                             R21 2 1
      147 SETTABLEKS                       R21 R20 K66 ["PaddingTop"]
      149 GETIMPORT                        R21 K62 [UDim.new]
      151 LOADN                            R22 0
      152 LOADN                            R23 12
      153 CALL                             R21 2 1
      154 SETTABLEKS                       R21 R20 K67 ["PaddingBottom"]
      156 CALL                             R18 2 1
      157 MOVE                             R19 R2
      158 LOADK                            R20 K70 [".StartPage-TablePadding ::UIPadding"]
      159 DUPTABLE                         R21 K71 [{"PaddingTop", "PaddingBottom"}]
      160 GETIMPORT                        R22 K62 [UDim.new]
      162 LOADN                            R23 0
      163 LOADN                            R24 10
      164 CALL                             R22 2 1
      165 SETTABLEKS                       R22 R21 K66 ["PaddingTop"]
      167 GETIMPORT                        R22 K62 [UDim.new]
      169 LOADN                            R23 0
      170 LOADN                            R24 10
      171 CALL                             R22 2 1
      172 SETTABLEKS                       R22 R21 K67 ["PaddingBottom"]
      174 CALL                             R19 2 1
      175 MOVE                             R20 R2
      176 LOADK                            R21 K72 [".StartPage-DescPadding ::UIPadding"]
      177 DUPTABLE                         R22 K68 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      178 GETIMPORT                        R23 K62 [UDim.new]
      180 LOADN                            R24 0
      181 LOADN                            R25 0
      182 CALL                             R23 2 1
      183 SETTABLEKS                       R23 R22 K64 ["PaddingLeft"]
      185 GETIMPORT                        R23 K62 [UDim.new]
      187 LOADN                            R24 0
      188 LOADN                            R25 0
      189 CALL                             R23 2 1
      190 SETTABLEKS                       R23 R22 K65 ["PaddingRight"]
      192 GETIMPORT                        R23 K62 [UDim.new]
      194 LOADN                            R24 0
      195 LOADN                            R25 12
      196 CALL                             R23 2 1
      197 SETTABLEKS                       R23 R22 K66 ["PaddingTop"]
      199 GETIMPORT                        R23 K62 [UDim.new]
      201 LOADN                            R24 0
      202 LOADN                            R25 12
      203 CALL                             R23 2 1
      204 SETTABLEKS                       R23 R22 K67 ["PaddingBottom"]
      206 CALL                             R20 2 1
      207 MOVE                             R21 R2
      208 LOADK                            R22 K73 [".StartPage-ContextMenuPadding ::UIPadding"]
      209 DUPTABLE                         R23 K68 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      210 GETIMPORT                        R24 K62 [UDim.new]
      212 LOADN                            R25 0
      213 LOADN                            R26 8
      214 CALL                             R24 2 1
      215 SETTABLEKS                       R24 R23 K64 ["PaddingLeft"]
      217 GETIMPORT                        R24 K62 [UDim.new]
      219 LOADN                            R25 0
      220 LOADN                            R26 8
      221 CALL                             R24 2 1
      222 SETTABLEKS                       R24 R23 K65 ["PaddingRight"]
      224 GETIMPORT                        R24 K62 [UDim.new]
      226 LOADN                            R25 0
      227 LOADN                            R26 8
      228 CALL                             R24 2 1
      229 SETTABLEKS                       R24 R23 K66 ["PaddingTop"]
      231 GETIMPORT                        R24 K62 [UDim.new]
      233 LOADN                            R25 0
      234 LOADN                            R26 8
      235 CALL                             R24 2 1
      236 SETTABLEKS                       R24 R23 K67 ["PaddingBottom"]
      238 CALL                             R21 2 1
      239 SETLIST                          R5 R6 16 [1]
      241 MOVE                             R6 R2
      242 LOADK                            R7 K74 [".StartPage-ContextMenuRowPadding ::UIPadding"]
      243 DUPTABLE                         R8 K68 [{"PaddingLeft", "PaddingRight", "PaddingTop", "PaddingBottom"}]
      244 GETIMPORT                        R9 K62 [UDim.new]
      246 LOADN                            R10 0
      247 LOADN                            R11 8
      248 CALL                             R9 2 1
      249 SETTABLEKS                       R9 R8 K64 ["PaddingLeft"]
      251 GETIMPORT                        R9 K62 [UDim.new]
      253 LOADN                            R10 0
      254 LOADN                            R11 8
      255 CALL                             R9 2 1
      256 SETTABLEKS                       R9 R8 K65 ["PaddingRight"]
      258 GETIMPORT                        R9 K62 [UDim.new]
      260 LOADN                            R10 0
      261 LOADN                            R11 4
      262 CALL                             R9 2 1
      263 SETTABLEKS                       R9 R8 K66 ["PaddingTop"]
      265 GETIMPORT                        R9 K62 [UDim.new]
      267 LOADN                            R10 0
      268 LOADN                            R11 4
      269 CALL                             R9 2 1
      270 SETTABLEKS                       R9 R8 K67 ["PaddingBottom"]
      272 CALL                             R6 2 1
      273 MOVE                             R7 R2
      274 LOADK                            R8 K75 [".StartPage-PadScrollingCarouselLeft ::UIPadding"]
      275 DUPTABLE                         R9 K76 [{"PaddingLeft"}]
      276 GETIMPORT                        R10 K62 [UDim.new]
      278 LOADN                            R11 0
      279 LOADN                            R12 2
      280 CALL                             R10 2 1
      281 SETTABLEKS                       R10 R9 K64 ["PaddingLeft"]
      283 CALL                             R7 2 1
      284 MOVE                             R8 R2
      285 LOADK                            R9 K77 [".StartPage-Anchor-Bottom-Right"]
      286 DUPTABLE                         R10 K79 [{"AnchorPoint"}]
      287 GETIMPORT                        R11 K81 [Vector2.new]
      289 LOADN                            R12 1
      290 LOADN                            R13 1
      291 CALL                             R11 2 1
      292 SETTABLEKS                       R11 R10 K78 ["AnchorPoint"]
      294 CALL                             R8 2 1
      295 MOVE                             R9 R2
      296 LOADK                            R10 K82 [".StartPage-NoBorder"]
      297 DUPTABLE                         R11 K84 [{["BorderSizePixel"] = 0}]
      298 CALL                             R9 2 1
      299 MOVE                             R10 R2
      300 LOADK                            R11 K85 [".StartPage-StandardDarkTextColor"]
      301 DUPTABLE                         R12 K87 [{["TextColor3"] = "$StandardDark"}]
      302 CALL                             R10 2 1
      303 MOVE                             R11 R2
      304 LOADK                            R12 K88 [".StartPage-MutedTextColor"]
      305 DUPTABLE                         R13 K90 [{["TextColor3"] = "$SemanticColorContentMuted"}]
      306 CALL                             R11 2 1
      307 MOVE                             R12 R2
      308 LOADK                            R13 K91 [".StartPage-Standard"]
      309 DUPTABLE                         R14 K93 [{["BackgroundColor3"] = "$Standard"}]
      310 CALL                             R12 2 1
      311 MOVE                             R13 R2
      312 LOADK                            R14 K94 [".StartPage-StandardDarkBackground"]
      313 DUPTABLE                         R15 K95 [{["BackgroundColor3"] = "$StandardDark"}]
      314 CALL                             R13 2 1
      315 MOVE                             R14 R2
      316 LOADK                            R15 K96 [".StartPage-TileBackground"]
      317 DUPTABLE                         R16 K98 [{["BackgroundColor3"] = "$TileBackground", ["BackgroundTransparency"] = 0}]
      318 NEWTABLE                         R17 0 1
      320 MOVE                             R18 R2
      321 LOADK                            R19 K99 [":hover :: UIStroke"]
      322 DUPTABLE                         R20 K107 [{["StrokeApplyStrokeMode"], ["Color"] = "$Border", ["Transparency"] = 0.88, ["Thickness"] = 2}]
      323 GETIMPORT                        R21 K110 [Enum.ApplyStrokeMode.Border]
      325 SETTABLEKS                       R21 R20 K100 ["StrokeApplyStrokeMode"]
      327 CALL                             R18 2 -1
      328 SETLIST                          R17 R18 -1 [1]
      330 CALL                             R14 3 1
      331 MOVE                             R15 R2
      332 LOADK                            R16 K111 [".StartPage-PillBackground"]
      333 DUPTABLE                         R17 K113 [{["BackgroundColor3"] = "$PillBackground", ["BackgroundTransparency"] = 0}]
      334 CALL                             R15 2 1
      335 MOVE                             R16 R2
      336 LOADK                            R17 K114 [".StartPage-ShimmerBackground"]
      337 DUPTABLE                         R18 K117 [{["BackgroundColor3"] = "$ShimmerBackground", ["BackgroundTransparency"] = "$ShimmerBackgroundTransparency"}]
      338 CALL                             R16 2 1
      339 MOVE                             R17 R2
      340 LOADK                            R18 K118 [".StartPage-ShimmerForeground"]
      341 DUPTABLE                         R19 K120 [{["BackgroundColor3"] = "$ShimmerForeground"}]
      342 CALL                             R17 2 1
      343 MOVE                             R18 R2
      344 LOADK                            R19 K121 [".StartPage-ShimmerGradient"]
      345 DUPTABLE                         R20 K123 [{["Transparency"] = "$ShimmerGradientTransparency"}]
      346 CALL                             R18 2 1
      347 MOVE                             R19 R2
      348 LOADK                            R20 K124 [".StartPage-NoExperiences"]
      349 DUPTABLE                         R21 K127 [{["Image"] = "$NoExperiences", ["Size"]}]
      350 JUMPIFNOT                        R4 ; [+8]
      351 GETIMPORT                        R22 K129 [UDim2.new]
      353 LOADN                            R23 0
      354 LOADN                            R24 320
      355 LOADN                            R25 0
      356 LOADN                            R26 180
      357 CALL                             R22 4 1
      358 JUMP                             ; [+7]
      359 GETIMPORT                        R22 K129 [UDim2.new]
      361 LOADN                            R23 0
      362 LOADN                            R24 96
      363 LOADN                            R25 0
      364 LOADN                            R26 96
      365 CALL                             R22 4 1
      366 SETTABLEKS                       R22 R21 K51 ["Size"]
      368 CALL                             R19 2 1
      369 MOVE                             R20 R2
      370 LOADK                            R21 K130 [".StartPage-RightIcon"]
      371 DUPTABLE                         R22 K132 [{["Image"] = "$RightChevron", ["Size"] = "$IconSizeM"}]
      372 CALL                             R20 2 1
      373 MOVE                             R21 R2
      374 LOADK                            R22 K133 [".StartPage-KebabIcon"]
      375 DUPTABLE                         R23 K136 [{["Image"] = "$Kebab", ["Size"] = "$IconSizeL"}]
      376 CALL                             R21 2 1
      377 SETLIST                          R5 R6 16 [17]
      379 MOVE                             R6 R2
      380 LOADK                            R7 K137 [".StartPage-CancelIcon"]
      381 DUPTABLE                         R8 K140 [{["Image"] = "$Cancel", ["Size"] = "$IconSizeS"}]
      382 CALL                             R6 2 1
      383 MOVE                             R7 R2
      384 LOADK                            R8 K141 [".StartPage-BlackCancelIcon"]
      385 DUPTABLE                         R9 K144 [{["Image"] = "$Cancel", ["ImageColor3"] = "$BlackColor", ["Size"] = "$IconSizeS"}]
      386 CALL                             R7 2 1
      387 MOVE                             R8 R2
      388 LOADK                            R9 K145 [".StartPage-CancelWhiteIcon"]
      389 DUPTABLE                         R10 K147 [{["Image"] = "$CancelWhite", ["Size"] = "$IconSizeS"}]
      390 CALL                             R8 2 1
      391 MOVE                             R9 R2
      392 LOADK                            R10 K148 [".StartPage-TeamCreateOnlineBackground"]
      393 DUPTABLE                         R11 K150 [{["BackgroundColor3"] = "$TeamCreatePresenceOnlineColor"}]
      394 CALL                             R9 2 1
      395 MOVE                             R10 R2
      396 LOADK                            R11 K151 [".StartPage-SearchResultRowColumn"]
      397 NEWTABLE                         R12 0 0
      399 NEWTABLE                         R13 0 1
      401 MOVE                             R14 R2
      402 LOADK                            R15 K152 ["::UIListLayout"]
      403 DUPTABLE                         R16 K156 [{"FillDirection", "Padding", "SortOrder"}]
      404 GETIMPORT                        R17 K158 [Enum.FillDirection.Vertical]
      406 SETTABLEKS                       R17 R16 K153 ["FillDirection"]
      408 GETIMPORT                        R17 K62 [UDim.new]
      410 LOADN                            R18 0
      411 LOADN                            R19 6
      412 CALL                             R17 2 1
      413 SETTABLEKS                       R17 R16 K154 ["Padding"]
      415 GETIMPORT                        R17 K160 [Enum.SortOrder.LayoutOrder]
      417 SETTABLEKS                       R17 R16 K155 ["SortOrder"]
      419 CALL                             R14 2 -1
      420 SETLIST                          R13 R14 -1 [1]
      422 CALL                             R10 3 -1
      423 SETLIST                          R5 R6 -1 [33]
      425 DUPTABLE                         R6 K168 [{["IconSizeS"], ["IconSizeM"], ["IconSizeL"], ["CornerSize8"], ["TextSize"] = 16, ["TeamCreatePresenceOnlineColor"], ["BlackColor"]}]
      426 GETIMPORT                        R7 K129 [UDim2.new]
      428 LOADN                            R8 0
      429 LOADN                            R9 12
      430 LOADN                            R10 0
      431 LOADN                            R11 12
      432 CALL                             R7 4 1
      433 SETTABLEKS                       R7 R6 K161 ["IconSizeS"]
      435 GETIMPORT                        R7 K129 [UDim2.new]
      437 LOADN                            R8 0
      438 LOADN                            R9 24
      439 LOADN                            R10 0
      440 LOADN                            R11 24
      441 CALL                             R7 4 1
      442 SETTABLEKS                       R7 R6 K162 ["IconSizeM"]
      444 GETIMPORT                        R7 K129 [UDim2.new]
      446 LOADN                            R8 0
      447 LOADN                            R9 32
      448 LOADN                            R10 0
      449 LOADN                            R11 32
      450 CALL                             R7 4 1
      451 SETTABLEKS                       R7 R6 K163 ["IconSizeL"]
      453 GETIMPORT                        R7 K62 [UDim.new]
      455 LOADN                            R8 0
      456 LOADN                            R9 8
      457 CALL                             R7 2 1
      458 SETTABLEKS                       R7 R6 K164 ["CornerSize8"]
      460 GETIMPORT                        R7 K171 [Color3.fromHex]
      462 LOADK                            R8 K172 ["#0fb369"]
      463 CALL                             R7 1 1
      464 SETTABLEKS                       R7 R6 K166 ["TeamCreatePresenceOnlineColor"]
      466 GETIMPORT                        R7 K171 [Color3.fromHex]
      468 LOADK                            R8 K173 ["#000000"]
      469 CALL                             R7 1 1
      470 SETTABLEKS                       R7 R6 K167 ["BlackColor"]
      472 MOVE                             R7 R3
      473 LOADK                            R8 K2 ["StartPage"]
      474 MOVE                             R9 R5
      475 MOVE                             R10 R6
      476 CALL                             R7 3 -1
      477 RETURN                           R7 -1
