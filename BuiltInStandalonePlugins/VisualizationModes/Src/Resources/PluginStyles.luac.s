MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Flags"]
       13 GETTABLEKS                       R2 R2 K8 ["getEngineFeatureNewCameraControls_BetaUpdate"]
       15 CALL                             R1 1 1
       16 GETIMPORT                        R2 K5 [require]
       18 GETTABLEKS                       R3 R0 K9 ["Packages"]
       20 GETTABLEKS                       R3 R3 K10 ["Framework"]
       22 CALL                             R2 1 1
       23 GETTABLEKS                       R3 R2 K11 ["Styling"]
       25 GETTABLEKS                       R3 R3 K12 ["createStyleRule"]
       27 GETTABLEKS                       R4 R2 K11 ["Styling"]
       29 GETTABLEKS                       R4 R4 K13 ["createStyleSheet"]
       31 NEWTABLE                         R5 0 18
       33 MOVE                             R6 R3
       34 LOADK                            R7 K14 [".VisualizationModes-Bottom-Divider"]
       35 DUPTABLE                         R8 K19 [{"Size", "Position", "AnchorPoint", "BackgroundTransparency"}]
       36 GETIMPORT                        R9 K22 [UDim2.new]
       38 LOADN                            R10 1
       39 LOADN                            R11 0
       40 LOADN                            R12 0
       41 LOADN                            R13 5
       42 CALL                             R9 4 1
       43 SETTABLEKS                       R9 R8 K15 ["Size"]
       45 GETIMPORT                        R9 K22 [UDim2.new]
       47 LOADK                            R10 K23 [0.5]
       48 LOADN                            R11 0
       49 LOADN                            R12 1
       50 LOADN                            R13 0
       51 CALL                             R9 4 1
       52 SETTABLEKS                       R9 R8 K16 ["Position"]
       54 GETIMPORT                        R9 K25 [Vector2.new]
       56 LOADK                            R10 K23 [0.5]
       57 LOADN                            R11 1
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K17 ["AnchorPoint"]
       61 LOADN                            R9 1
       62 SETTABLEKS                       R9 R8 K18 ["BackgroundTransparency"]
       64 NEWTABLE                         R9 0 1
       66 MOVE                             R10 R3
       67 LOADK                            R11 K26 ["> #DividerRender"]
       68 DUPTABLE                         R12 K29 [{"Size", "Position", "BackgroundColor3", "BorderSizePixel"}]
       69 GETIMPORT                        R13 K22 [UDim2.new]
       71 LOADN                            R14 1
       72 LOADN                            R15 0
       73 LOADN                            R16 0
       74 LOADN                            R17 1
       75 CALL                             R13 4 1
       76 SETTABLEKS                       R13 R12 K15 ["Size"]
       78 GETIMPORT                        R13 K31 [UDim2.fromOffset]
       80 LOADN                            R14 0
       81 LOADN                            R15 2
       82 CALL                             R13 2 1
       83 SETTABLEKS                       R13 R12 K16 ["Position"]
       85 LOADK                            R13 K32 ["$VisualizationModesDivider"]
       86 SETTABLEKS                       R13 R12 K27 ["BackgroundColor3"]
       88 LOADN                            R13 0
       89 SETTABLEKS                       R13 R12 K28 ["BorderSizePixel"]
       91 CALL                             R10 2 -1
       92 SETLIST                          R9 R10 -1 [1]
       94 CALL                             R6 3 1
       95 MOVE                             R7 R3
       96 LOADK                            R8 K33 [".VisualizationModes-TextLabel-Container"]
       97 DUPTABLE                         R9 K35 [{"BorderSizePixel", "BackgroundTransparency", "Size", "AutomaticSize"}]
       98 LOADN                            R10 0
       99 SETTABLEKS                       R10 R9 K28 ["BorderSizePixel"]
      101 LOADN                            R10 1
      102 SETTABLEKS                       R10 R9 K18 ["BackgroundTransparency"]
      104 GETIMPORT                        R10 K37 [UDim2.fromScale]
      106 LOADN                            R11 0
      107 LOADN                            R12 1
      108 CALL                             R10 2 1
      109 SETTABLEKS                       R10 R9 K15 ["Size"]
      111 GETIMPORT                        R10 K40 [Enum.AutomaticSize.X]
      113 SETTABLEKS                       R10 R9 K34 ["AutomaticSize"]
      115 CALL                             R7 2 1
      116 MOVE                             R8 R3
      117 LOADK                            R9 K41 [".VisualizationModes-Highlight"]
      118 DUPTABLE                         R10 K42 [{"BackgroundTransparency", "BorderSizePixel", "BackgroundColor3", "AnchorPoint", "Position"}]
      119 LOADN                            R11 0
      120 SETTABLEKS                       R11 R10 K18 ["BackgroundTransparency"]
      122 LOADN                            R11 0
      123 SETTABLEKS                       R11 R10 K28 ["BorderSizePixel"]
      125 LOADK                            R11 K43 ["$VisualizationModesHighlightColor"]
      126 SETTABLEKS                       R11 R10 K27 ["BackgroundColor3"]
      128 GETIMPORT                        R11 K25 [Vector2.new]
      130 LOADN                            R12 0
      131 LOADK                            R13 K23 [0.5]
      132 CALL                             R11 2 1
      133 SETTABLEKS                       R11 R10 K17 ["AnchorPoint"]
      135 GETIMPORT                        R11 K37 [UDim2.fromScale]
      137 LOADN                            R12 0
      138 LOADK                            R13 K23 [0.5]
      139 CALL                             R11 2 1
      140 SETTABLEKS                       R11 R10 K16 ["Position"]
      142 CALL                             R8 2 1
      143 MOVE                             R9 R3
      144 LOADK                            R10 K44 [".VisualizationModes-Highlight-TextLabel"]
      145 DUPTABLE                         R11 K46 [{"TextColor3", "AnchorPoint", "Position"}]
      146 LOADK                            R12 K47 ["$VisualizationModesHighlightTextColor"]
      147 SETTABLEKS                       R12 R11 K45 ["TextColor3"]
      149 GETIMPORT                        R12 K25 [Vector2.new]
      151 LOADN                            R13 0
      152 LOADK                            R14 K23 [0.5]
      153 CALL                             R12 2 1
      154 SETTABLEKS                       R12 R11 K17 ["AnchorPoint"]
      156 GETIMPORT                        R12 K37 [UDim2.fromScale]
      158 LOADN                            R13 0
      159 LOADK                            R14 K23 [0.5]
      160 CALL                             R12 2 1
      161 SETTABLEKS                       R12 R11 K16 ["Position"]
      163 CALL                             R9 2 1
      164 MOVE                             R10 R3
      165 LOADK                            R11 K48 [".VisualizationModes-TextLabel"]
      166 DUPTABLE                         R12 K51 [{"TextColor3", "BorderSizePixel", "BackgroundTransparency", "TextXAlignment", "TextYAlignment", "Size", "AutomaticSize"}]
      167 LOADK                            R13 K52 ["$TextPrimary"]
      168 SETTABLEKS                       R13 R12 K45 ["TextColor3"]
      170 LOADN                            R13 0
      171 SETTABLEKS                       R13 R12 K28 ["BorderSizePixel"]
      173 LOADN                            R13 1
      174 SETTABLEKS                       R13 R12 K18 ["BackgroundTransparency"]
      176 GETIMPORT                        R13 K54 [Enum.TextXAlignment.Left]
      178 SETTABLEKS                       R13 R12 K49 ["TextXAlignment"]
      180 GETIMPORT                        R13 K56 [Enum.TextYAlignment.Center]
      182 SETTABLEKS                       R13 R12 K50 ["TextYAlignment"]
      184 GETIMPORT                        R13 K37 [UDim2.fromScale]
      186 LOADN                            R14 0
      187 LOADN                            R15 1
      188 CALL                             R13 2 1
      189 SETTABLEKS                       R13 R12 K15 ["Size"]
      191 GETIMPORT                        R13 K40 [Enum.AutomaticSize.X]
      193 SETTABLEKS                       R13 R12 K34 ["AutomaticSize"]
      195 NEWTABLE                         R13 0 1
      197 MOVE                             R14 R3
      198 LOADK                            R15 K57 [".VisualizationModes-Disabled"]
      199 DUPTABLE                         R16 K58 [{"TextColor3"}]
      200 LOADK                            R17 K59 ["$TextDisabled"]
      201 SETTABLEKS                       R17 R16 K45 ["TextColor3"]
      203 CALL                             R14 2 -1
      204 SETLIST                          R13 R14 -1 [1]
      206 CALL                             R10 3 1
      207 MOVE                             R11 R3
      208 LOADK                            R12 K60 [".VisualizationModes-Badge"]
      209 DUPTABLE                         R13 K61 [{"BorderSizePixel", "BackgroundColor3"}]
      210 LOADN                            R14 0
      211 SETTABLEKS                       R14 R13 K28 ["BorderSizePixel"]
      213 LOADK                            R14 K62 ["$VisualizationModesBadgeBackground"]
      214 SETTABLEKS                       R14 R13 K27 ["BackgroundColor3"]
      216 NEWTABLE                         R14 0 3
      218 MOVE                             R15 R3
      219 LOADK                            R16 K63 ["::UICorner"]
      220 DUPTABLE                         R17 K65 [{"CornerRadius"}]
      221 GETIMPORT                        R18 K67 [UDim.new]
      223 LOADK                            R19 K23 [0.5]
      224 LOADN                            R20 0
      225 CALL                             R18 2 1
      226 SETTABLEKS                       R18 R17 K64 ["CornerRadius"]
      228 CALL                             R15 2 1
      229 MOVE                             R16 R3
      230 LOADK                            R17 K68 ["::UIPadding"]
      231 DUPTABLE                         R18 K73 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
      232 GETIMPORT                        R19 K67 [UDim.new]
      234 LOADN                            R20 0
      235 LOADN                            R21 6
      236 CALL                             R19 2 1
      237 SETTABLEKS                       R19 R18 K69 ["PaddingLeft"]
      239 GETIMPORT                        R19 K67 [UDim.new]
      241 LOADN                            R20 0
      242 LOADN                            R21 1
      243 CALL                             R19 2 1
      244 SETTABLEKS                       R19 R18 K70 ["PaddingTop"]
      246 GETIMPORT                        R19 K67 [UDim.new]
      248 LOADN                            R20 0
      249 LOADN                            R21 1
      250 CALL                             R19 2 1
      251 SETTABLEKS                       R19 R18 K71 ["PaddingBottom"]
      253 GETIMPORT                        R19 K67 [UDim.new]
      255 LOADN                            R20 0
      256 LOADN                            R21 6
      257 CALL                             R19 2 1
      258 SETTABLEKS                       R19 R18 K72 ["PaddingRight"]
      260 CALL                             R16 2 1
      261 MOVE                             R17 R3
      262 LOADK                            R18 K74 [">> .Component-TextLabel"]
      263 DUPTABLE                         R19 K76 [{"TextSize", "TextColor3", "TextYAlignment"}]
      264 LOADN                            R20 12
      265 SETTABLEKS                       R20 R19 K75 ["TextSize"]
      267 LOADK                            R20 K77 ["$VisualizationModesBadgeText"]
      268 SETTABLEKS                       R20 R19 K45 ["TextColor3"]
      270 GETIMPORT                        R20 K56 [Enum.TextYAlignment.Center]
      272 SETTABLEKS                       R20 R19 K50 ["TextYAlignment"]
      274 CALL                             R17 2 -1
      275 SETLIST                          R14 R15 -1 [1]
      277 CALL                             R11 3 1
      278 MOVE                             R12 R3
      279 LOADK                            R13 K78 [".VisualizationModes-MainPane"]
      280 NEWTABLE                         R14 0 0
      282 NEWTABLE                         R15 0 1
      284 MOVE                             R16 R3
      285 LOADK                            R17 K79 ["::UIStroke"]
      286 NEWTABLE                         R18 0 0
      288 CALL                             R16 2 -1
      289 SETLIST                          R15 R16 -1 [1]
      291 CALL                             R12 3 1
      292 MOVE                             R13 R3
      293 LOADK                            R14 K80 [".VisualizationModes-ExpandIcon"]
      294 DUPTABLE                         R15 K82 [{"BackgroundTransparency", "ImageColor3"}]
      295 LOADN                            R16 1
      296 SETTABLEKS                       R16 R15 K18 ["BackgroundTransparency"]
      298 LOADK                            R16 K52 ["$TextPrimary"]
      299 SETTABLEKS                       R16 R15 K81 ["ImageColor3"]
      301 NEWTABLE                         R16 0 3
      303 MOVE                             R17 R3
      304 LOADK                            R18 K83 ["ArrowImage"]
      305 DUPTABLE                         R19 K84 [{"Size", "AnchorPoint", "Position"}]
      306 GETIMPORT                        R20 K31 [UDim2.fromOffset]
      308 LOADN                            R21 16
      309 LOADN                            R22 16
      310 CALL                             R20 2 1
      311 SETTABLEKS                       R20 R19 K15 ["Size"]
      313 GETIMPORT                        R20 K25 [Vector2.new]
      315 LOADK                            R21 K23 [0.5]
      316 LOADK                            R22 K23 [0.5]
      317 CALL                             R20 2 1
      318 SETTABLEKS                       R20 R19 K17 ["AnchorPoint"]
      320 GETIMPORT                        R20 K37 [UDim2.fromScale]
      322 LOADK                            R21 K23 [0.5]
      323 LOADK                            R22 K23 [0.5]
      324 CALL                             R20 2 1
      325 SETTABLEKS                       R20 R19 K16 ["Position"]
      327 CALL                             R17 2 1
      328 MOVE                             R18 R3
      329 LOADK                            R19 K85 [":press"]
      330 DUPTABLE                         R20 K86 [{"ImageColor3"}]
      331 LOADK                            R21 K87 ["$TextSecondary"]
      332 SETTABLEKS                       R21 R20 K81 ["ImageColor3"]
      334 CALL                             R18 2 1
      335 MOVE                             R19 R3
      336 LOADK                            R20 K88 [":hover"]
      337 DUPTABLE                         R21 K86 [{"ImageColor3"}]
      338 LOADK                            R22 K87 ["$TextSecondary"]
      339 SETTABLEKS                       R22 R21 K81 ["ImageColor3"]
      341 CALL                             R19 2 -1
      342 SETLIST                          R16 R17 -1 [1]
      344 CALL                             R13 3 1
      345 MOVE                             R14 R3
      346 LOADK                            R15 K89 [".VisualizationModes-ExpandIcon-Expanded"]
      347 DUPTABLE                         R16 K91 [{"Image"}]
      348 LOADK                            R17 K92 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"]
      349 SETTABLEKS                       R17 R16 K90 ["Image"]
      351 CALL                             R14 2 1
      352 MOVE                             R15 R3
      353 LOADK                            R16 K93 [".VisualizationModes-ExpandIcon-Collapsed"]
      354 DUPTABLE                         R17 K91 [{"Image"}]
      355 LOADK                            R18 K94 ["rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowRight.png"]
      356 SETTABLEKS                       R18 R17 K90 ["Image"]
      358 CALL                             R15 2 1
      359 MOVE                             R16 R3
      360 LOADK                            R17 K95 [".VisualizationModes-Entry"]
      361 DUPTABLE                         R18 K97 [{"BackgroundTransparency", "Size", "AutoButtonColor"}]
      362 LOADN                            R19 1
      363 SETTABLEKS                       R19 R18 K18 ["BackgroundTransparency"]
      365 GETIMPORT                        R19 K22 [UDim2.new]
      367 LOADN                            R20 1
      368 LOADN                            R21 0
      369 LOADN                            R22 0
      370 LOADN                            R23 32
      371 CALL                             R19 4 1
      372 SETTABLEKS                       R19 R18 K15 ["Size"]
      374 LOADB                            R19 0
      375 SETTABLEKS                       R19 R18 K96 ["AutoButtonColor"]
      377 NEWTABLE                         R19 0 3
      379 MOVE                             R20 R3
      380 LOADK                            R21 K98 ["> #VisualizationModesEntryBacking"]
      381 DUPTABLE                         R22 K99 [{"BorderSizePixel", "Size", "AnchorPoint", "Position", "BackgroundTransparency"}]
      382 LOADN                            R23 0
      383 SETTABLEKS                       R23 R22 K28 ["BorderSizePixel"]
      385 GETIMPORT                        R23 K22 [UDim2.new]
      387 LOADN                            R24 1
      388 LOADN                            R25 0
      389 LOADN                            R26 0
      390 LOADN                            R27 28
      391 CALL                             R23 4 1
      392 SETTABLEKS                       R23 R22 K15 ["Size"]
      394 GETIMPORT                        R23 K25 [Vector2.new]
      396 LOADK                            R24 K23 [0.5]
      397 LOADK                            R25 K23 [0.5]
      398 CALL                             R23 2 1
      399 SETTABLEKS                       R23 R22 K17 ["AnchorPoint"]
      401 GETIMPORT                        R23 K37 [UDim2.fromScale]
      403 LOADK                            R24 K23 [0.5]
      404 LOADK                            R25 K23 [0.5]
      405 CALL                             R23 2 1
      406 SETTABLEKS                       R23 R22 K16 ["Position"]
      408 LOADN                            R23 1
      409 SETTABLEKS                       R23 R22 K18 ["BackgroundTransparency"]
      411 NEWTABLE                         R23 0 1
      413 MOVE                             R24 R3
      414 LOADK                            R25 K63 ["::UICorner"]
      415 DUPTABLE                         R26 K65 [{"CornerRadius"}]
      416 GETIMPORT                        R27 K67 [UDim.new]
      418 LOADN                            R28 0
      419 LOADN                            R29 4
      420 CALL                             R27 2 1
      421 SETTABLEKS                       R27 R26 K64 ["CornerRadius"]
      423 CALL                             R24 2 -1
      424 SETLIST                          R23 R24 -1 [1]
      426 CALL                             R20 3 1
      427 MOVE                             R21 R3
      428 LOADK                            R22 K100 [".VisualizationModes-Active:press > .VisualizationModesEntryBacking-Enabled"]
      429 DUPTABLE                         R23 K101 [{"BackgroundTransparency", "BackgroundColor3"}]
      430 LOADN                            R24 0
      431 SETTABLEKS                       R24 R23 K18 ["BackgroundTransparency"]
      433 LOADK                            R24 K102 ["$ActionActivated"]
      434 SETTABLEKS                       R24 R23 K27 ["BackgroundColor3"]
      436 CALL                             R21 2 1
      437 MOVE                             R22 R3
      438 LOADK                            R23 K103 [".VisualizationModes-Active:hover > .VisualizationModesEntryBacking-Enabled"]
      439 DUPTABLE                         R24 K101 [{"BackgroundTransparency", "BackgroundColor3"}]
      440 LOADN                            R25 0
      441 SETTABLEKS                       R25 R24 K18 ["BackgroundTransparency"]
      443 LOADK                            R25 K104 ["$VisualizationModesDimActionHover"]
      444 SETTABLEKS                       R25 R24 K27 ["BackgroundColor3"]
      446 CALL                             R22 2 -1
      447 SETLIST                          R19 R20 -1 [1]
      449 CALL                             R16 3 1
      450 MOVE                             R17 R3
      451 LOADK                            R18 K105 [".ScrollingAutomaticSize"]
      452 DUPTABLE                         R19 K108 [{"AutomaticCanvasSize", "CanvasSize"}]
      453 GETIMPORT                        R20 K110 [Enum.AutomaticSize.Y]
      455 SETTABLEKS                       R20 R19 K106 ["AutomaticCanvasSize"]
      457 GETIMPORT                        R20 K22 [UDim2.new]
      459 LOADN                            R21 1
      460 LOADN                            R22 0
      461 LOADN                            R23 0
      462 LOADN                            R24 20
      463 CALL                             R20 4 1
      464 SETTABLEKS                       R20 R19 K107 ["CanvasSize"]
      466 CALL                             R17 2 1
      467 MOVE                             R18 R3
      468 LOADK                            R19 K111 [".VisualizationModes-EntryButton"]
      469 DUPTABLE                         R20 K112 [{"BorderSizePixel", "Size", "BackgroundTransparency", "AutoButtonColor"}]
      470 LOADN                            R21 0
      471 SETTABLEKS                       R21 R20 K28 ["BorderSizePixel"]
      473 GETIMPORT                        R21 K22 [UDim2.new]
      475 LOADN                            R22 1
      476 LOADN                            R23 236
      477 LOADN                            R24 1
      478 LOADN                            R25 0
      479 CALL                             R21 4 1
      480 SETTABLEKS                       R21 R20 K15 ["Size"]
      482 LOADN                            R21 1
      483 SETTABLEKS                       R21 R20 K18 ["BackgroundTransparency"]
      485 LOADB                            R21 0
      486 SETTABLEKS                       R21 R20 K96 ["AutoButtonColor"]
      488 CALL                             R18 2 1
      489 MOVE                             R19 R3
      490 LOADK                            R20 K113 [".VisualizationModes-Group"]
      491 DUPTABLE                         R21 K114 [{"BorderSizePixel", "Size", "AutomaticSize", "BackgroundTransparency", "AutoButtonColor"}]
      492 LOADN                            R22 0
      493 SETTABLEKS                       R22 R21 K28 ["BorderSizePixel"]
      495 GETIMPORT                        R22 K37 [UDim2.fromScale]
      497 LOADN                            R23 1
      498 LOADN                            R24 0
      499 CALL                             R22 2 1
      500 SETTABLEKS                       R22 R21 K15 ["Size"]
      502 GETIMPORT                        R22 K110 [Enum.AutomaticSize.Y]
      504 SETTABLEKS                       R22 R21 K34 ["AutomaticSize"]
      506 LOADN                            R22 1
      507 SETTABLEKS                       R22 R21 K18 ["BackgroundTransparency"]
      509 LOADB                            R22 0
      510 SETTABLEKS                       R22 R21 K96 ["AutoButtonColor"]
      512 CALL                             R19 2 1
      513 MOVE                             R20 R3
      514 LOADK                            R21 K115 [".VisualizationModes-MainScrollingFrame"]
      515 DUPTABLE                         R22 K117 [{"ScrollBarThickness"}]
      516 LOADN                            R23 8
      517 SETTABLEKS                       R23 R22 K116 ["ScrollBarThickness"]
      519 NEWTABLE                         R23 0 1
      521 MOVE                             R24 R3
      522 LOADK                            R25 K118 ["> #Content"]
      523 DUPTABLE                         R26 K119 [{"Size"}]
      524 GETIMPORT                        R27 K22 [UDim2.new]
      526 LOADN                            R28 1
      527 LOADN                            R29 247
      528 LOADN                            R30 0
      529 LOADN                            R31 0
      530 CALL                             R27 4 1
      531 SETTABLEKS                       R27 R26 K15 ["Size"]
      533 CALL                             R24 2 -1
      534 SETLIST                          R23 R24 -1 [1]
      536 CALL                             R20 3 1
      537 MOVE                             R21 R3
      538 LOADK                            R22 K120 [".VisualizationModes-Popup"]
      539 NEWTABLE                         R23 0 0
      541 NEWTABLE                         R24 0 1
      543 MOVE                             R25 R3
      544 LOADK                            R26 K68 ["::UIPadding"]
      545 DUPTABLE                         R27 K121 [{"PaddingLeft", "PaddingBottom", "PaddingTop", "PaddingRight"}]
      546 GETIMPORT                        R28 K67 [UDim.new]
      548 LOADN                            R29 0
      549 LOADN                            R30 5
      550 CALL                             R28 2 1
      551 SETTABLEKS                       R28 R27 K69 ["PaddingLeft"]
      553 GETIMPORT                        R28 K67 [UDim.new]
      555 LOADN                            R29 0
      556 LOADN                            R30 5
      557 CALL                             R28 2 1
      558 SETTABLEKS                       R28 R27 K71 ["PaddingBottom"]
      560 GETIMPORT                        R28 K67 [UDim.new]
      562 LOADN                            R29 0
      563 LOADN                            R30 5
      564 CALL                             R28 2 1
      565 SETTABLEKS                       R28 R27 K70 ["PaddingTop"]
      567 GETIMPORT                        R28 K67 [UDim.new]
      569 LOADN                            R29 0
      570 LOADN                            R30 2
      571 CALL                             R28 2 1
      572 SETTABLEKS                       R28 R27 K72 ["PaddingRight"]
      574 CALL                             R25 2 -1
      575 SETLIST                          R24 R25 -1 [1]
      577 CALL                             R21 3 1
      578 SETLIST                          R5 R6 16 [1]
      580 MOVE                             R6 R3
      581 LOADK                            R7 K122 [".VisualizationModesStrokePane"]
      582 DUPTABLE                         R8 K123 [{"BackgroundTransparency", "Size", "AnchorPoint", "Position"}]
      583 LOADN                            R9 1
      584 SETTABLEKS                       R9 R8 K18 ["BackgroundTransparency"]
      586 GETIMPORT                        R9 K22 [UDim2.new]
      588 LOADN                            R10 1
      589 LOADN                            R11 254
      590 LOADN                            R12 1
      591 LOADN                            R13 254
      592 CALL                             R9 4 1
      593 SETTABLEKS                       R9 R8 K15 ["Size"]
      595 GETIMPORT                        R9 K25 [Vector2.new]
      597 LOADK                            R10 K23 [0.5]
      598 LOADK                            R11 K23 [0.5]
      599 CALL                             R9 2 1
      600 SETTABLEKS                       R9 R8 K17 ["AnchorPoint"]
      602 GETIMPORT                        R9 K37 [UDim2.fromScale]
      604 LOADK                            R10 K23 [0.5]
      605 LOADK                            R11 K23 [0.5]
      606 CALL                             R9 2 1
      607 SETTABLEKS                       R9 R8 K16 ["Position"]
      609 NEWTABLE                         R9 0 1
      611 MOVE                             R10 R3
      612 LOADK                            R11 K79 ["::UIStroke"]
      613 DUPTABLE                         R12 K125 [{"Color"}]
      614 LOADK                            R13 K126 ["$Divider"]
      615 SETTABLEKS                       R13 R12 K124 ["Color"]
      617 CALL                             R10 2 -1
      618 SETLIST                          R9 R10 -1 [1]
      620 CALL                             R6 3 1
      621 MOVE                             R7 R3
      622 LOADK                            R8 K127 [".VisualizationModes-HiddenCountLabel"]
      623 DUPTABLE                         R9 K128 [{"TextXAlignment", "TextYAlignment", "TextColor3", "Size", "BackgroundTransparency"}]
      624 GETIMPORT                        R10 K129 [Enum.TextXAlignment.Center]
      626 SETTABLEKS                       R10 R9 K49 ["TextXAlignment"]
      628 GETIMPORT                        R10 K56 [Enum.TextYAlignment.Center]
      630 SETTABLEKS                       R10 R9 K50 ["TextYAlignment"]
      632 LOADK                            R10 K87 ["$TextSecondary"]
      633 SETTABLEKS                       R10 R9 K45 ["TextColor3"]
      635 GETIMPORT                        R10 K22 [UDim2.new]
      637 LOADN                            R11 1
      638 LOADN                            R12 0
      639 LOADN                            R13 0
      640 LOADN                            R14 28
      641 CALL                             R10 4 1
      642 SETTABLEKS                       R10 R9 K15 ["Size"]
      644 LOADN                            R10 1
      645 SETTABLEKS                       R10 R9 K18 ["BackgroundTransparency"]
      647 CALL                             R7 2 -1
      648 SETLIST                          R5 R6 -1 [17]
      650 MOVE                             R6 R1
      651 CALL                             R6 0 1
      652 JUMPIF                           R6 ; [+42]
      653 MOVE                             R7 R5
      654 MOVE                             R8 R3
      655 LOADK                            R9 K130 [".Component-Checkbox .VisualizationModes-CameraSpeedLockUnlock"]
      656 NEWTABLE                         R10 0 0
      658 NEWTABLE                         R11 0 4
      660 MOVE                             R12 R3
      661 LOADK                            R13 K131 [">> ImageLabel"]
      662 DUPTABLE                         R14 K91 [{"Image"}]
      663 LOADK                            R15 K132 ["$VisualizationModesCameraSpeedUnlocked"]
      664 SETTABLEKS                       R15 R14 K90 ["Image"]
      666 CALL                             R12 2 1
      667 MOVE                             R13 R3
      668 LOADK                            R14 K133 [".Checked >> ImageLabel"]
      669 DUPTABLE                         R15 K91 [{"Image"}]
      670 LOADK                            R16 K134 ["$VisualizationModesCameraSpeedLocked"]
      671 SETTABLEKS                       R16 R15 K90 ["Image"]
      673 CALL                             R13 2 1
      674 MOVE                             R14 R3
      675 LOADK                            R15 K135 [":hover >> ImageLabel"]
      676 DUPTABLE                         R16 K86 [{"ImageColor3"}]
      677 LOADK                            R17 K87 ["$TextSecondary"]
      678 SETTABLEKS                       R17 R16 K81 ["ImageColor3"]
      680 CALL                             R14 2 1
      681 MOVE                             R15 R3
      682 LOADK                            R16 K136 [":press >> ImageLabel"]
      683 DUPTABLE                         R17 K86 [{"ImageColor3"}]
      684 LOADK                            R18 K87 ["$TextSecondary"]
      685 SETTABLEKS                       R18 R17 K81 ["ImageColor3"]
      687 CALL                             R15 2 -1
      688 SETLIST                          R11 R12 -1 [1]
      690 CALL                             R8 3 -1
      691 FASTCALL                         TABLE_INSERT ; [+2]
      692 GETIMPORT                        R6 K139 [table.insert]
      694 CALL                             R6 -1 0
      695 NEWTABLE                         R6 0 0
      697 MOVE                             R7 R4
      698 LOADK                            R8 K2 ["VisualizationModes"]
      699 MOVE                             R9 R5
      700 MOVE                             R10 R6
      701 CALL                             R7 3 -1
      702 RETURN                           R7 -1
