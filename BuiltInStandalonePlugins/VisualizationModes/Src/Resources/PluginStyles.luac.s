MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
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
       22 NEWTABLE                         R4 0 19
       24 MOVE                             R5 R2
       25 LOADK                            R6 K11 [".VisualizationModes-Bottom-Divider"]
       26 DUPTABLE                         R7 K16 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency"}]
       27 GETIMPORT                        R8 K19 [UDim2.new]
       29 LOADN                            R9 1
       30 LOADN                            R10 0
       31 LOADN                            R11 0
       32 LOADN                            R12 5
       33 CALL                             R8 4 1
       34 SETTABLEKS                       R8 R7 K12 ["Size"]
       36 GETIMPORT                        R8 K19 [UDim2.new]
       38 LOADK                            R9 K20 [0.5]
       39 LOADN                            R10 0
       40 LOADN                            R11 1
       41 LOADN                            R12 0
       42 CALL                             R8 4 1
       43 SETTABLEKS                       R8 R7 K13 ["Position"]
       45 GETIMPORT                        R8 K22 [Vector2.new]
       47 LOADK                            R9 K20 [0.5]
       48 LOADN                            R10 1
       49 CALL                             R8 2 1
       50 SETTABLEKS                       R8 R7 K14 ["AnchorPoint"]
       52 LOADN                            R8 1
       53 SETTABLEKS                       R8 R7 K15 ["BackgroundTransparency"]
       55 NEWTABLE                         R8 0 1
       57 MOVE                             R9 R2
       58 LOADK                            R10 K23 ["> #DividerRender"]
       59 DUPTABLE                         R11 K26 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
       60 GETIMPORT                        R12 K19 [UDim2.new]
       62 LOADN                            R13 1
       63 LOADN                            R14 0
       64 LOADN                            R15 0
       65 LOADN                            R16 1
       66 CALL                             R12 4 1
       67 SETTABLEKS                       R12 R11 K12 ["Size"]
       69 GETIMPORT                        R12 K28 [UDim2.fromOffset]
       71 LOADN                            R13 0
       72 LOADN                            R14 2
       73 CALL                             R12 2 1
       74 SETTABLEKS                       R12 R11 K13 ["Position"]
       76 LOADK                            R12 K29 ["$VisualizationModesDivider"]
       77 SETTABLEKS                       R12 R11 K24 ["BackgroundColor3"]
       79 LOADN                            R12 0
       80 SETTABLEKS                       R12 R11 K25 ["BorderSizePixel"]
       82 CALL                             R9 2 -1
       83 SETLIST                          R8 R9 -1 [1]
       85 CALL                             R5 3 1
       86 MOVE                             R6 R2
       87 LOADK                            R7 K30 [".VisualizationModes-TextLabel-Container"]
       88 DUPTABLE                         R8 K32 [{"BorderSizePixel", "BackgroundTransparency", "Size", "AutomaticSize"}]
       89 LOADN                            R9 0
       90 SETTABLEKS                       R9 R8 K25 ["BorderSizePixel"]
       92 LOADN                            R9 1
       93 SETTABLEKS                       R9 R8 K15 ["BackgroundTransparency"]
       95 GETIMPORT                        R9 K34 [UDim2.fromScale]
       97 LOADN                            R10 0
       98 LOADN                            R11 1
       99 CALL                             R9 2 1
      100 SETTABLEKS                       R9 R8 K12 ["Size"]
      102 GETIMPORT                        R9 K37 [Enum.AutomaticSize.X]
      104 SETTABLEKS                       R9 R8 K31 ["AutomaticSize"]
      106 CALL                             R6 2 1
      107 MOVE                             R7 R2
      108 LOADK                            R8 K38 [".VisualizationModes-Highlight"]
      109 DUPTABLE                         R9 K39 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3", "AnchorPoint", "Position"}]
      110 LOADN                            R10 0
      111 SETTABLEKS                       R10 R9 K15 ["BackgroundTransparency"]
      113 LOADN                            R10 0
      114 SETTABLEKS                       R10 R9 K25 ["BorderSizePixel"]
      116 LOADK                            R10 K40 ["$VisualizationModesHighlightColor"]
      117 SETTABLEKS                       R10 R9 K24 ["BackgroundColor3"]
      119 GETIMPORT                        R10 K22 [Vector2.new]
      121 LOADN                            R11 0
      122 LOADK                            R12 K20 [0.5]
      123 CALL                             R10 2 1
      124 SETTABLEKS                       R10 R9 K14 ["AnchorPoint"]
      126 GETIMPORT                        R10 K34 [UDim2.fromScale]
      128 LOADN                            R11 0
      129 LOADK                            R12 K20 [0.5]
      130 CALL                             R10 2 1
      131 SETTABLEKS                       R10 R9 K13 ["Position"]
      133 CALL                             R7 2 1
      134 MOVE                             R8 R2
      135 LOADK                            R9 K41 [".VisualizationModes-Highlight-TextLabel"]
      136 DUPTABLE                         R10 K43 [{"TextColor3", "AnchorPoint", "Position"}]
      137 LOADK                            R11 K44 ["$VisualizationModesHighlightTextColor"]
      138 SETTABLEKS                       R11 R10 K42 ["TextColor3"]
      140 GETIMPORT                        R11 K22 [Vector2.new]
      142 LOADN                            R12 0
      143 LOADK                            R13 K20 [0.5]
      144 CALL                             R11 2 1
      145 SETTABLEKS                       R11 R10 K14 ["AnchorPoint"]
      147 GETIMPORT                        R11 K34 [UDim2.fromScale]
      149 LOADN                            R12 0
      150 LOADK                            R13 K20 [0.5]
      151 CALL                             R11 2 1
      152 SETTABLEKS                       R11 R10 K13 ["Position"]
      154 CALL                             R8 2 1
      155 MOVE                             R9 R2
      156 LOADK                            R10 K45 [".VisualizationModes-TextLabel"]
      157 DUPTABLE                         R11 K48 [{"TextColor3", "BorderSizePixel", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "Size", "AutomaticSize"}]
      158 LOADK                            R12 K49 ["$TextPrimary"]
      159 SETTABLEKS                       R12 R11 K42 ["TextColor3"]
      161 LOADN                            R12 0
      162 SETTABLEKS                       R12 R11 K25 ["BorderSizePixel"]
      164 LOADN                            R12 1
      165 SETTABLEKS                       R12 R11 K15 ["BackgroundTransparency"]
      167 GETIMPORT                        R12 K51 [Enum.TextXAlignment.Left]
      169 SETTABLEKS                       R12 R11 K46 ["TextXAlignment"]
      171 GETIMPORT                        R12 K53 [Enum.TextYAlignment.Center]
      173 SETTABLEKS                       R12 R11 K47 ["TextYAlignment"]
      175 GETIMPORT                        R12 K34 [UDim2.fromScale]
      177 LOADN                            R13 0
      178 LOADN                            R14 1
      179 CALL                             R12 2 1
      180 SETTABLEKS                       R12 R11 K12 ["Size"]
      182 GETIMPORT                        R12 K37 [Enum.AutomaticSize.X]
      184 SETTABLEKS                       R12 R11 K31 ["AutomaticSize"]
      186 NEWTABLE                         R12 0 1
      188 MOVE                             R13 R2
      189 LOADK                            R14 K54 [".VisualizationModes-Disabled"]
      190 DUPTABLE                         R15 K55 [{"TextColor3"}]
      191 LOADK                            R16 K56 ["$TextDisabled"]
      192 SETTABLEKS                       R16 R15 K42 ["TextColor3"]
      194 CALL                             R13 2 -1
      195 SETLIST                          R12 R13 -1 [1]
      197 CALL                             R9 3 1
      198 MOVE                             R10 R2
      199 LOADK                            R11 K57 [".VisualizationModes-Badge"]
      200 DUPTABLE                         R12 K58 [{"BorderSizePixel", "BackgroundColor3"}]
      201 LOADN                            R13 0
      202 SETTABLEKS                       R13 R12 K25 ["BorderSizePixel"]
      204 LOADK                            R13 K59 ["$VisualizationModesBadgeBackground"]
      205 SETTABLEKS                       R13 R12 K24 ["BackgroundColor3"]
      207 NEWTABLE                         R13 0 3
      209 MOVE                             R14 R2
      210 LOADK                            R15 K60 ["::UICorner"]
      211 DUPTABLE                         R16 K62 [{"CornerRadius"}]
      212 GETIMPORT                        R17 K64 [UDim.new]
      214 LOADK                            R18 K20 [0.5]
      215 LOADN                            R19 0
      216 CALL                             R17 2 1
      217 SETTABLEKS                       R17 R16 K61 ["CornerRadius"]
      219 CALL                             R14 2 1
      220 MOVE                             R15 R2
      221 LOADK                            R16 K65 ["::UIPadding"]
      222 DUPTABLE                         R17 K70 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
      223 GETIMPORT                        R18 K64 [UDim.new]
      225 LOADN                            R19 0
      226 LOADN                            R20 6
      227 CALL                             R18 2 1
      228 SETTABLEKS                       R18 R17 K66 ["PaddingLeft"]
      230 GETIMPORT                        R18 K64 [UDim.new]
      232 LOADN                            R19 0
      233 LOADN                            R20 1
      234 CALL                             R18 2 1
      235 SETTABLEKS                       R18 R17 K67 ["PaddingTop"]
      237 GETIMPORT                        R18 K64 [UDim.new]
      239 LOADN                            R19 0
      240 LOADN                            R20 1
      241 CALL                             R18 2 1
      242 SETTABLEKS                       R18 R17 K68 ["PaddingBottom"]
      244 GETIMPORT                        R18 K64 [UDim.new]
      246 LOADN                            R19 0
      247 LOADN                            R20 6
      248 CALL                             R18 2 1
      249 SETTABLEKS                       R18 R17 K69 ["PaddingRight"]
      251 CALL                             R15 2 1
      252 MOVE                             R16 R2
      253 LOADK                            R17 K71 [">> .Component-TextLabel"]
      254 DUPTABLE                         R18 K73 [{"TextSize", "TextColor3", "TextYAlignment"}]
      255 LOADN                            R19 12
      256 SETTABLEKS                       R19 R18 K72 ["TextSize"]
      258 LOADK                            R19 K74 ["$VisualizationModesBadgeText"]
      259 SETTABLEKS                       R19 R18 K42 ["TextColor3"]
      261 GETIMPORT                        R19 K53 [Enum.TextYAlignment.Center]
      263 SETTABLEKS                       R19 R18 K47 ["TextYAlignment"]
      265 CALL                             R16 2 -1
      266 SETLIST                          R13 R14 -1 [1]
      268 CALL                             R10 3 1
      269 MOVE                             R11 R2
      270 LOADK                            R12 K75 [".VisualizationModes-MainPane"]
      271 NEWTABLE                         R13 0 0
      273 NEWTABLE                         R14 0 1
      275 MOVE                             R15 R2
      276 LOADK                            R16 K76 ["::UIStroke"]
      277 NEWTABLE                         R17 0 0
      279 CALL                             R15 2 -1
      280 SETLIST                          R14 R15 -1 [1]
      282 CALL                             R11 3 1
      283 MOVE                             R12 R2
      284 LOADK                            R13 K77 [".VisualizationModes-ExpandIcon"]
      285 DUPTABLE                         R14 K79 [{"BackgroundTransparency", "ImageColor3"}]
      286 LOADN                            R15 1
      287 SETTABLEKS                       R15 R14 K15 ["BackgroundTransparency"]
      289 LOADK                            R15 K49 ["$TextPrimary"]
      290 SETTABLEKS                       R15 R14 K78 ["ImageColor3"]
      292 NEWTABLE                         R15 0 3
      294 MOVE                             R16 R2
      295 LOADK                            R17 K80 ["ArrowImage"]
      296 DUPTABLE                         R18 K81 [{"Size", "AnchorPoint", "Position"}]
      297 GETIMPORT                        R19 K28 [UDim2.fromOffset]
      299 LOADN                            R20 16
      300 LOADN                            R21 16
      301 CALL                             R19 2 1
      302 SETTABLEKS                       R19 R18 K12 ["Size"]
      304 GETIMPORT                        R19 K22 [Vector2.new]
      306 LOADK                            R20 K20 [0.5]
      307 LOADK                            R21 K20 [0.5]
      308 CALL                             R19 2 1
      309 SETTABLEKS                       R19 R18 K14 ["AnchorPoint"]
      311 GETIMPORT                        R19 K34 [UDim2.fromScale]
      313 LOADK                            R20 K20 [0.5]
      314 LOADK                            R21 K20 [0.5]
      315 CALL                             R19 2 1
      316 SETTABLEKS                       R19 R18 K13 ["Position"]
      318 CALL                             R16 2 1
      319 MOVE                             R17 R2
      320 LOADK                            R18 K82 [":press"]
      321 DUPTABLE                         R19 K83 [{"ImageColor3"}]
      322 LOADK                            R20 K84 ["$TextSecondary"]
      323 SETTABLEKS                       R20 R19 K78 ["ImageColor3"]
      325 CALL                             R17 2 1
      326 MOVE                             R18 R2
      327 LOADK                            R19 K85 [":hover"]
      328 DUPTABLE                         R20 K83 [{"ImageColor3"}]
      329 LOADK                            R21 K84 ["$TextSecondary"]
      330 SETTABLEKS                       R21 R20 K78 ["ImageColor3"]
      332 CALL                             R18 2 -1
      333 SETLIST                          R15 R16 -1 [1]
      335 CALL                             R12 3 1
      336 MOVE                             R13 R2
      337 LOADK                            R14 K86 [".VisualizationModes-ExpandIcon-Expanded"]
      338 DUPTABLE                         R15 K88 [{"Image"}]
      339 LOADK                            R16 K89 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
      340 SETTABLEKS                       R16 R15 K87 ["Image"]
      342 CALL                             R13 2 1
      343 MOVE                             R14 R2
      344 LOADK                            R15 K90 [".VisualizationModes-ExpandIcon-Collapsed"]
      345 DUPTABLE                         R16 K88 [{"Image"}]
      346 LOADK                            R17 K91 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowRight.png"]
      347 SETTABLEKS                       R17 R16 K87 ["Image"]
      349 CALL                             R14 2 1
      350 MOVE                             R15 R2
      351 LOADK                            R16 K92 [".VisualizationModes-Entry"]
      352 DUPTABLE                         R17 K94 [{"BackgroundTransparency", "Size", "AutoButtonColor"}]
      353 LOADN                            R18 1
      354 SETTABLEKS                       R18 R17 K15 ["BackgroundTransparency"]
      356 GETIMPORT                        R18 K19 [UDim2.new]
      358 LOADN                            R19 1
      359 LOADN                            R20 0
      360 LOADN                            R21 0
      361 LOADN                            R22 32
      362 CALL                             R18 4 1
      363 SETTABLEKS                       R18 R17 K12 ["Size"]
      365 LOADB                            R18 0
      366 SETTABLEKS                       R18 R17 K93 ["AutoButtonColor"]
      368 NEWTABLE                         R18 0 3
      370 MOVE                             R19 R2
      371 LOADK                            R20 K95 ["> #VisualizationModesEntryBacking"]
      372 DUPTABLE                         R21 K96 [{"BorderSizePixel", "Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
      373 LOADN                            R22 0
      374 SETTABLEKS                       R22 R21 K25 ["BorderSizePixel"]
      376 GETIMPORT                        R22 K19 [UDim2.new]
      378 LOADN                            R23 1
      379 LOADN                            R24 0
      380 LOADN                            R25 0
      381 LOADN                            R26 28
      382 CALL                             R22 4 1
      383 SETTABLEKS                       R22 R21 K12 ["Size"]
      385 GETIMPORT                        R22 K22 [Vector2.new]
      387 LOADK                            R23 K20 [0.5]
      388 LOADK                            R24 K20 [0.5]
      389 CALL                             R22 2 1
      390 SETTABLEKS                       R22 R21 K14 ["AnchorPoint"]
      392 GETIMPORT                        R22 K34 [UDim2.fromScale]
      394 LOADK                            R23 K20 [0.5]
      395 LOADK                            R24 K20 [0.5]
      396 CALL                             R22 2 1
      397 SETTABLEKS                       R22 R21 K13 ["Position"]
      399 LOADN                            R22 1
      400 SETTABLEKS                       R22 R21 K15 ["BackgroundTransparency"]
      402 NEWTABLE                         R22 0 1
      404 MOVE                             R23 R2
      405 LOADK                            R24 K60 ["::UICorner"]
      406 DUPTABLE                         R25 K62 [{"CornerRadius"}]
      407 GETIMPORT                        R26 K64 [UDim.new]
      409 LOADN                            R27 0
      410 LOADN                            R28 4
      411 CALL                             R26 2 1
      412 SETTABLEKS                       R26 R25 K61 ["CornerRadius"]
      414 CALL                             R23 2 -1
      415 SETLIST                          R22 R23 -1 [1]
      417 CALL                             R19 3 1
      418 MOVE                             R20 R2
      419 LOADK                            R21 K97 [".VisualizationModes-Active:press > .VisualizationModesEntryBacking-Enabled"]
      420 DUPTABLE                         R22 K98 [{"BackgroundTransparency", "BackgroundColor3"}]
      421 LOADN                            R23 0
      422 SETTABLEKS                       R23 R22 K15 ["BackgroundTransparency"]
      424 LOADK                            R23 K99 ["$ActionActivated"]
      425 SETTABLEKS                       R23 R22 K24 ["BackgroundColor3"]
      427 CALL                             R20 2 1
      428 MOVE                             R21 R2
      429 LOADK                            R22 K100 [".VisualizationModes-Active:hover > .VisualizationModesEntryBacking-Enabled"]
      430 DUPTABLE                         R23 K98 [{"BackgroundTransparency", "BackgroundColor3"}]
      431 LOADN                            R24 0
      432 SETTABLEKS                       R24 R23 K15 ["BackgroundTransparency"]
      434 LOADK                            R24 K101 ["$VisualizationModesDimActionHover"]
      435 SETTABLEKS                       R24 R23 K24 ["BackgroundColor3"]
      437 CALL                             R21 2 -1
      438 SETLIST                          R18 R19 -1 [1]
      440 CALL                             R15 3 1
      441 MOVE                             R16 R2
      442 LOADK                            R17 K102 [".ScrollingAutomaticSize"]
      443 DUPTABLE                         R18 K105 [{"AutomaticCanvasSize", "CanvasSize"}]
      444 GETIMPORT                        R19 K107 [Enum.AutomaticSize.Y]
      446 SETTABLEKS                       R19 R18 K103 ["AutomaticCanvasSize"]
      448 GETIMPORT                        R19 K19 [UDim2.new]
      450 LOADN                            R20 1
      451 LOADN                            R21 0
      452 LOADN                            R22 0
      453 LOADN                            R23 20
      454 CALL                             R19 4 1
      455 SETTABLEKS                       R19 R18 K104 ["CanvasSize"]
      457 CALL                             R16 2 1
      458 MOVE                             R17 R2
      459 LOADK                            R18 K108 [".VisualizationModes-EntryButton"]
      460 DUPTABLE                         R19 K109 [{"BorderSizePixel", "Size", "BackgroundTransparency", "AutoButtonColor"}]
      461 LOADN                            R20 0
      462 SETTABLEKS                       R20 R19 K25 ["BorderSizePixel"]
      464 GETIMPORT                        R20 K19 [UDim2.new]
      466 LOADN                            R21 1
      467 LOADN                            R22 236
      468 LOADN                            R23 1
      469 LOADN                            R24 0
      470 CALL                             R20 4 1
      471 SETTABLEKS                       R20 R19 K12 ["Size"]
      473 LOADN                            R20 1
      474 SETTABLEKS                       R20 R19 K15 ["BackgroundTransparency"]
      476 LOADB                            R20 0
      477 SETTABLEKS                       R20 R19 K93 ["AutoButtonColor"]
      479 CALL                             R17 2 1
      480 MOVE                             R18 R2
      481 LOADK                            R19 K110 [".VisualizationModes-Group"]
      482 DUPTABLE                         R20 K111 [{"BorderSizePixel", "Size", "AutomaticSize", "BackgroundTransparency", "AutoButtonColor"}]
      483 LOADN                            R21 0
      484 SETTABLEKS                       R21 R20 K25 ["BorderSizePixel"]
      486 GETIMPORT                        R21 K34 [UDim2.fromScale]
      488 LOADN                            R22 1
      489 LOADN                            R23 0
      490 CALL                             R21 2 1
      491 SETTABLEKS                       R21 R20 K12 ["Size"]
      493 GETIMPORT                        R21 K107 [Enum.AutomaticSize.Y]
      495 SETTABLEKS                       R21 R20 K31 ["AutomaticSize"]
      497 LOADN                            R21 1
      498 SETTABLEKS                       R21 R20 K15 ["BackgroundTransparency"]
      500 LOADB                            R21 0
      501 SETTABLEKS                       R21 R20 K93 ["AutoButtonColor"]
      503 CALL                             R18 2 1
      504 MOVE                             R19 R2
      505 LOADK                            R20 K112 [".VisualizationModes-MainScrollingFrame"]
      506 DUPTABLE                         R21 K114 [{"ScrollBarThickness"}]
      507 LOADN                            R22 8
      508 SETTABLEKS                       R22 R21 K113 ["ScrollBarThickness"]
      510 NEWTABLE                         R22 0 1
      512 MOVE                             R23 R2
      513 LOADK                            R24 K115 ["> #Content"]
      514 DUPTABLE                         R25 K116 [{"Size"}]
      515 GETIMPORT                        R26 K19 [UDim2.new]
      517 LOADN                            R27 1
      518 LOADN                            R28 247
      519 LOADN                            R29 0
      520 LOADN                            R30 0
      521 CALL                             R26 4 1
      522 SETTABLEKS                       R26 R25 K12 ["Size"]
      524 CALL                             R23 2 -1
      525 SETLIST                          R22 R23 -1 [1]
      527 CALL                             R19 3 1
      528 MOVE                             R20 R2
      529 LOADK                            R21 K117 [".VisualizationModes-Popup"]
      530 NEWTABLE                         R22 0 0
      532 NEWTABLE                         R23 0 1
      534 MOVE                             R24 R2
      535 LOADK                            R25 K65 ["::UIPadding"]
      536 DUPTABLE                         R26 K118 [{"PaddingLeft", "PaddingBottom", "PaddingTop", "PaddingRight"}]
      537 GETIMPORT                        R27 K64 [UDim.new]
      539 LOADN                            R28 0
      540 LOADN                            R29 5
      541 CALL                             R27 2 1
      542 SETTABLEKS                       R27 R26 K66 ["PaddingLeft"]
      544 GETIMPORT                        R27 K64 [UDim.new]
      546 LOADN                            R28 0
      547 LOADN                            R29 5
      548 CALL                             R27 2 1
      549 SETTABLEKS                       R27 R26 K68 ["PaddingBottom"]
      551 GETIMPORT                        R27 K64 [UDim.new]
      553 LOADN                            R28 0
      554 LOADN                            R29 5
      555 CALL                             R27 2 1
      556 SETTABLEKS                       R27 R26 K67 ["PaddingTop"]
      558 GETIMPORT                        R27 K64 [UDim.new]
      560 LOADN                            R28 0
      561 LOADN                            R29 2
      562 CALL                             R27 2 1
      563 SETTABLEKS                       R27 R26 K69 ["PaddingRight"]
      565 CALL                             R24 2 -1
      566 SETLIST                          R23 R24 -1 [1]
      568 CALL                             R20 3 1
      569 SETLIST                          R4 R5 16 [1]
      571 MOVE                             R5 R2
      572 LOADK                            R6 K119 [".VisualizationModesStrokePane"]
      573 DUPTABLE                         R7 K120 [{"BackgroundTransparency", "Size", "AnchorPoint", "Position"}]
      574 LOADN                            R8 1
      575 SETTABLEKS                       R8 R7 K15 ["BackgroundTransparency"]
      577 GETIMPORT                        R8 K19 [UDim2.new]
      579 LOADN                            R9 1
      580 LOADN                            R10 254
      581 LOADN                            R11 1
      582 LOADN                            R12 254
      583 CALL                             R8 4 1
      584 SETTABLEKS                       R8 R7 K12 ["Size"]
      586 GETIMPORT                        R8 K22 [Vector2.new]
      588 LOADK                            R9 K20 [0.5]
      589 LOADK                            R10 K20 [0.5]
      590 CALL                             R8 2 1
      591 SETTABLEKS                       R8 R7 K14 ["AnchorPoint"]
      593 GETIMPORT                        R8 K34 [UDim2.fromScale]
      595 LOADK                            R9 K20 [0.5]
      596 LOADK                            R10 K20 [0.5]
      597 CALL                             R8 2 1
      598 SETTABLEKS                       R8 R7 K13 ["Position"]
      600 NEWTABLE                         R8 0 1
      602 MOVE                             R9 R2
      603 LOADK                            R10 K76 ["::UIStroke"]
      604 DUPTABLE                         R11 K122 [{"Color"}]
      605 LOADK                            R12 K123 ["$Divider"]
      606 SETTABLEKS                       R12 R11 K121 ["Color"]
      608 CALL                             R9 2 -1
      609 SETLIST                          R8 R9 -1 [1]
      611 CALL                             R5 3 1
      612 MOVE                             R6 R2
      613 LOADK                            R7 K124 [".VisualizationModes-HiddenCountLabel"]
      614 DUPTABLE                         R8 K125 [{"TextXAlignment", "TextYAlignment", "TextColor3", "Size", "BackgroundTransparency"}]
      615 GETIMPORT                        R9 K126 [Enum.TextXAlignment.Center]
      617 SETTABLEKS                       R9 R8 K46 ["TextXAlignment"]
      619 GETIMPORT                        R9 K53 [Enum.TextYAlignment.Center]
      621 SETTABLEKS                       R9 R8 K47 ["TextYAlignment"]
      623 LOADK                            R9 K84 ["$TextSecondary"]
      624 SETTABLEKS                       R9 R8 K42 ["TextColor3"]
      626 GETIMPORT                        R9 K19 [UDim2.new]
      628 LOADN                            R10 1
      629 LOADN                            R11 0
      630 LOADN                            R12 0
      631 LOADN                            R13 28
      632 CALL                             R9 4 1
      633 SETTABLEKS                       R9 R8 K12 ["Size"]
      635 LOADN                            R9 1
      636 SETTABLEKS                       R9 R8 K15 ["BackgroundTransparency"]
      638 CALL                             R6 2 1
      639 MOVE                             R7 R2
      640 LOADK                            R8 K127 [".Component-Checkbox .VisualizationModes-CameraSpeedLockUnlock"]
      641 NEWTABLE                         R9 0 0
      643 NEWTABLE                         R10 0 4
      645 MOVE                             R11 R2
      646 LOADK                            R12 K128 [">> ImageLabel"]
      647 DUPTABLE                         R13 K88 [{"Image"}]
      648 LOADK                            R14 K129 ["$VisualizationModesCameraSpeedUnlocked"]
      649 SETTABLEKS                       R14 R13 K87 ["Image"]
      651 CALL                             R11 2 1
      652 MOVE                             R12 R2
      653 LOADK                            R13 K130 [".Checked >> ImageLabel"]
      654 DUPTABLE                         R14 K88 [{"Image"}]
      655 LOADK                            R15 K131 ["$VisualizationModesCameraSpeedLocked"]
      656 SETTABLEKS                       R15 R14 K87 ["Image"]
      658 CALL                             R12 2 1
      659 MOVE                             R13 R2
      660 LOADK                            R14 K132 [":hover >> ImageLabel"]
      661 DUPTABLE                         R15 K83 [{"ImageColor3"}]
      662 LOADK                            R16 K84 ["$TextSecondary"]
      663 SETTABLEKS                       R16 R15 K78 ["ImageColor3"]
      665 CALL                             R13 2 1
      666 MOVE                             R14 R2
      667 LOADK                            R15 K133 [":press >> ImageLabel"]
      668 DUPTABLE                         R16 K83 [{"ImageColor3"}]
      669 LOADK                            R17 K84 ["$TextSecondary"]
      670 SETTABLEKS                       R17 R16 K78 ["ImageColor3"]
      672 CALL                             R14 2 -1
      673 SETLIST                          R10 R11 -1 [1]
      675 CALL                             R7 3 -1
      676 SETLIST                          R4 R5 -1 [17]
      678 NEWTABLE                         R5 0 0
      680 MOVE                             R6 R3
      681 LOADK                            R7 K2 ["VisualizationModes"]
      682 MOVE                             R8 R4
      683 MOVE                             R9 R5
      684 CALL                             R6 3 -1
      685 RETURN                           R6 -1
