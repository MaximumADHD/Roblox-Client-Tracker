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
       35 DUPTABLE                         R8 K20 [{["Size"], ["Position"], ["AnchorPoint"], ["BackgroundTransparency"] = 1}]
       36 GETIMPORT                        R9 K23 [UDim2.new]
       38 LOADN                            R10 1
       39 LOADN                            R11 0
       40 LOADN                            R12 0
       41 LOADN                            R13 5
       42 CALL                             R9 4 1
       43 SETTABLEKS                       R9 R8 K15 ["Size"]
       45 GETIMPORT                        R9 K23 [UDim2.new]
       47 LOADK                            R10 K24 [0.5]
       48 LOADN                            R11 0
       49 LOADN                            R12 1
       50 LOADN                            R13 0
       51 CALL                             R9 4 1
       52 SETTABLEKS                       R9 R8 K16 ["Position"]
       54 GETIMPORT                        R9 K26 [Vector2.new]
       56 LOADK                            R10 K24 [0.5]
       57 LOADN                            R11 1
       58 CALL                             R9 2 1
       59 SETTABLEKS                       R9 R8 K17 ["AnchorPoint"]
       61 NEWTABLE                         R9 0 1
       63 MOVE                             R10 R3
       64 LOADK                            R11 K27 ["> #DividerRender"]
       65 DUPTABLE                         R12 K32 [{["Size"], ["Position"], ["BackgroundColor3"] = "$VisualizationModesDivider", ["BorderSizePixel"] = 0}]
       66 GETIMPORT                        R13 K23 [UDim2.new]
       68 LOADN                            R14 1
       69 LOADN                            R15 0
       70 LOADN                            R16 0
       71 LOADN                            R17 1
       72 CALL                             R13 4 1
       73 SETTABLEKS                       R13 R12 K15 ["Size"]
       75 GETIMPORT                        R13 K34 [UDim2.fromOffset]
       77 LOADN                            R14 0
       78 LOADN                            R15 2
       79 CALL                             R13 2 1
       80 SETTABLEKS                       R13 R12 K16 ["Position"]
       82 CALL                             R10 2 -1
       83 SETLIST                          R9 R10 -1 [1]
       85 CALL                             R6 3 1
       86 MOVE                             R7 R3
       87 LOADK                            R8 K35 [".VisualizationModes-TextLabel-Container"]
       88 DUPTABLE                         R9 K37 [{["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["Size"], ["AutomaticSize"]}]
       89 GETIMPORT                        R10 K39 [UDim2.fromScale]
       91 LOADN                            R11 0
       92 LOADN                            R12 1
       93 CALL                             R10 2 1
       94 SETTABLEKS                       R10 R9 K15 ["Size"]
       96 GETIMPORT                        R10 K42 [Enum.AutomaticSize.X]
       98 SETTABLEKS                       R10 R9 K36 ["AutomaticSize"]
      100 CALL                             R7 2 1
      101 MOVE                             R8 R3
      102 LOADK                            R9 K43 [".VisualizationModes-Highlight"]
      103 DUPTABLE                         R10 K45 [{["BackgroundTransparency"] = 0, ["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$VisualizationModesHighlightColor", ["AnchorPoint"], ["Position"]}]
      104 GETIMPORT                        R11 K26 [Vector2.new]
      106 LOADN                            R12 0
      107 LOADK                            R13 K24 [0.5]
      108 CALL                             R11 2 1
      109 SETTABLEKS                       R11 R10 K17 ["AnchorPoint"]
      111 GETIMPORT                        R11 K39 [UDim2.fromScale]
      113 LOADN                            R12 0
      114 LOADK                            R13 K24 [0.5]
      115 CALL                             R11 2 1
      116 SETTABLEKS                       R11 R10 K16 ["Position"]
      118 CALL                             R8 2 1
      119 MOVE                             R9 R3
      120 LOADK                            R10 K46 [".VisualizationModes-Highlight-TextLabel"]
      121 DUPTABLE                         R11 K49 [{["TextColor3"] = "$VisualizationModesHighlightTextColor", ["AnchorPoint"], ["Position"]}]
      122 GETIMPORT                        R12 K26 [Vector2.new]
      124 LOADN                            R13 0
      125 LOADK                            R14 K24 [0.5]
      126 CALL                             R12 2 1
      127 SETTABLEKS                       R12 R11 K17 ["AnchorPoint"]
      129 GETIMPORT                        R12 K39 [UDim2.fromScale]
      131 LOADN                            R13 0
      132 LOADK                            R14 K24 [0.5]
      133 CALL                             R12 2 1
      134 SETTABLEKS                       R12 R11 K16 ["Position"]
      136 CALL                             R9 2 1
      137 MOVE                             R10 R3
      138 LOADK                            R11 K50 [".VisualizationModes-TextLabel"]
      139 DUPTABLE                         R12 K54 [{["TextColor3"] = "$TextPrimary", ["BorderSizePixel"] = 0, ["BackgroundTransparency"] = 1, ["TextXAlignment"], ["TextYAlignment"], ["Size"], ["AutomaticSize"]}]
      140 GETIMPORT                        R13 K56 [Enum.TextXAlignment.Left]
      142 SETTABLEKS                       R13 R12 K52 ["TextXAlignment"]
      144 GETIMPORT                        R13 K58 [Enum.TextYAlignment.Center]
      146 SETTABLEKS                       R13 R12 K53 ["TextYAlignment"]
      148 GETIMPORT                        R13 K39 [UDim2.fromScale]
      150 LOADN                            R14 0
      151 LOADN                            R15 1
      152 CALL                             R13 2 1
      153 SETTABLEKS                       R13 R12 K15 ["Size"]
      155 GETIMPORT                        R13 K42 [Enum.AutomaticSize.X]
      157 SETTABLEKS                       R13 R12 K36 ["AutomaticSize"]
      159 NEWTABLE                         R13 0 1
      161 MOVE                             R14 R3
      162 LOADK                            R15 K59 [".VisualizationModes-Disabled"]
      163 DUPTABLE                         R16 K61 [{["TextColor3"] = "$TextDisabled"}]
      164 CALL                             R14 2 -1
      165 SETLIST                          R13 R14 -1 [1]
      167 CALL                             R10 3 1
      168 MOVE                             R11 R3
      169 LOADK                            R12 K62 [".VisualizationModes-Badge"]
      170 DUPTABLE                         R13 K64 [{["BorderSizePixel"] = 0, ["BackgroundColor3"] = "$VisualizationModesBadgeBackground"}]
      171 NEWTABLE                         R14 0 3
      173 MOVE                             R15 R3
      174 LOADK                            R16 K65 ["::UICorner"]
      175 DUPTABLE                         R17 K67 [{"CornerRadius"}]
      176 GETIMPORT                        R18 K69 [UDim.new]
      178 LOADK                            R19 K24 [0.5]
      179 LOADN                            R20 0
      180 CALL                             R18 2 1
      181 SETTABLEKS                       R18 R17 K66 ["CornerRadius"]
      183 CALL                             R15 2 1
      184 MOVE                             R16 R3
      185 LOADK                            R17 K70 ["::UIPadding"]
      186 DUPTABLE                         R18 K75 [{"PaddingLeft", "PaddingTop", "PaddingBottom", "PaddingRight"}]
      187 GETIMPORT                        R19 K69 [UDim.new]
      189 LOADN                            R20 0
      190 LOADN                            R21 6
      191 CALL                             R19 2 1
      192 SETTABLEKS                       R19 R18 K71 ["PaddingLeft"]
      194 GETIMPORT                        R19 K69 [UDim.new]
      196 LOADN                            R20 0
      197 LOADN                            R21 1
      198 CALL                             R19 2 1
      199 SETTABLEKS                       R19 R18 K72 ["PaddingTop"]
      201 GETIMPORT                        R19 K69 [UDim.new]
      203 LOADN                            R20 0
      204 LOADN                            R21 1
      205 CALL                             R19 2 1
      206 SETTABLEKS                       R19 R18 K73 ["PaddingBottom"]
      208 GETIMPORT                        R19 K69 [UDim.new]
      210 LOADN                            R20 0
      211 LOADN                            R21 6
      212 CALL                             R19 2 1
      213 SETTABLEKS                       R19 R18 K74 ["PaddingRight"]
      215 CALL                             R16 2 1
      216 MOVE                             R17 R3
      217 LOADK                            R18 K76 [">> .Component-TextLabel"]
      218 DUPTABLE                         R19 K80 [{["TextSize"] = 12, ["TextColor3"] = "$VisualizationModesBadgeText", ["TextYAlignment"]}]
      219 GETIMPORT                        R20 K58 [Enum.TextYAlignment.Center]
      221 SETTABLEKS                       R20 R19 K53 ["TextYAlignment"]
      223 CALL                             R17 2 -1
      224 SETLIST                          R14 R15 -1 [1]
      226 CALL                             R11 3 1
      227 MOVE                             R12 R3
      228 LOADK                            R13 K81 [".VisualizationModes-MainPane"]
      229 NEWTABLE                         R14 0 0
      231 NEWTABLE                         R15 0 1
      233 MOVE                             R16 R3
      234 LOADK                            R17 K82 ["::UIStroke"]
      235 NEWTABLE                         R18 0 0
      237 CALL                             R16 2 -1
      238 SETLIST                          R15 R16 -1 [1]
      240 CALL                             R12 3 1
      241 MOVE                             R13 R3
      242 LOADK                            R14 K83 [".VisualizationModes-ExpandIcon"]
      243 DUPTABLE                         R15 K85 [{["BackgroundTransparency"] = 1, ["ImageColor3"] = "$TextPrimary"}]
      244 NEWTABLE                         R16 0 3
      246 MOVE                             R17 R3
      247 LOADK                            R18 K86 ["ArrowImage"]
      248 DUPTABLE                         R19 K87 [{"Size", "AnchorPoint", "Position"}]
      249 GETIMPORT                        R20 K34 [UDim2.fromOffset]
      251 LOADN                            R21 16
      252 LOADN                            R22 16
      253 CALL                             R20 2 1
      254 SETTABLEKS                       R20 R19 K15 ["Size"]
      256 GETIMPORT                        R20 K26 [Vector2.new]
      258 LOADK                            R21 K24 [0.5]
      259 LOADK                            R22 K24 [0.5]
      260 CALL                             R20 2 1
      261 SETTABLEKS                       R20 R19 K17 ["AnchorPoint"]
      263 GETIMPORT                        R20 K39 [UDim2.fromScale]
      265 LOADK                            R21 K24 [0.5]
      266 LOADK                            R22 K24 [0.5]
      267 CALL                             R20 2 1
      268 SETTABLEKS                       R20 R19 K16 ["Position"]
      270 CALL                             R17 2 1
      271 MOVE                             R18 R3
      272 LOADK                            R19 K88 [":press"]
      273 DUPTABLE                         R20 K90 [{["ImageColor3"] = "$TextSecondary"}]
      274 CALL                             R18 2 1
      275 MOVE                             R19 R3
      276 LOADK                            R20 K91 [":hover"]
      277 DUPTABLE                         R21 K90 [{["ImageColor3"] = "$TextSecondary"}]
      278 CALL                             R19 2 -1
      279 SETLIST                          R16 R17 -1 [1]
      281 CALL                             R13 3 1
      282 MOVE                             R14 R3
      283 LOADK                            R15 K92 [".VisualizationModes-ExpandIcon-Expanded"]
      284 DUPTABLE                         R16 K95 [{["Image"] = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowDown.png"}]
      285 CALL                             R14 2 1
      286 MOVE                             R15 R3
      287 LOADK                            R16 K96 [".VisualizationModes-ExpandIcon-Collapsed"]
      288 DUPTABLE                         R17 K98 [{["Image"] = "rbxasset://studio_svg_textures/Shared/Navigation/Dark/Standard/ArrowRight.png"}]
      289 CALL                             R15 2 1
      290 MOVE                             R16 R3
      291 LOADK                            R17 K99 [".VisualizationModes-Entry"]
      292 DUPTABLE                         R18 K102 [{["BackgroundTransparency"] = 1, ["Size"], ["AutoButtonColor"] = False}]
      293 GETIMPORT                        R19 K23 [UDim2.new]
      295 LOADN                            R20 1
      296 LOADN                            R21 0
      297 LOADN                            R22 0
      298 LOADN                            R23 32
      299 CALL                             R19 4 1
      300 SETTABLEKS                       R19 R18 K15 ["Size"]
      302 NEWTABLE                         R19 0 3
      304 MOVE                             R20 R3
      305 LOADK                            R21 K103 ["> #VisualizationModesEntryBacking"]
      306 DUPTABLE                         R22 K104 [{["BorderSizePixel"] = 0, ["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
      307 GETIMPORT                        R23 K23 [UDim2.new]
      309 LOADN                            R24 1
      310 LOADN                            R25 0
      311 LOADN                            R26 0
      312 LOADN                            R27 28
      313 CALL                             R23 4 1
      314 SETTABLEKS                       R23 R22 K15 ["Size"]
      316 GETIMPORT                        R23 K26 [Vector2.new]
      318 LOADK                            R24 K24 [0.5]
      319 LOADK                            R25 K24 [0.5]
      320 CALL                             R23 2 1
      321 SETTABLEKS                       R23 R22 K17 ["AnchorPoint"]
      323 GETIMPORT                        R23 K39 [UDim2.fromScale]
      325 LOADK                            R24 K24 [0.5]
      326 LOADK                            R25 K24 [0.5]
      327 CALL                             R23 2 1
      328 SETTABLEKS                       R23 R22 K16 ["Position"]
      330 NEWTABLE                         R23 0 1
      332 MOVE                             R24 R3
      333 LOADK                            R25 K65 ["::UICorner"]
      334 DUPTABLE                         R26 K67 [{"CornerRadius"}]
      335 GETIMPORT                        R27 K69 [UDim.new]
      337 LOADN                            R28 0
      338 LOADN                            R29 4
      339 CALL                             R27 2 1
      340 SETTABLEKS                       R27 R26 K66 ["CornerRadius"]
      342 CALL                             R24 2 -1
      343 SETLIST                          R23 R24 -1 [1]
      345 CALL                             R20 3 1
      346 MOVE                             R21 R3
      347 LOADK                            R22 K105 [".VisualizationModes-Active:press > .VisualizationModesEntryBacking-Enabled"]
      348 DUPTABLE                         R23 K107 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$ActionActivated"}]
      349 CALL                             R21 2 1
      350 MOVE                             R22 R3
      351 LOADK                            R23 K108 [".VisualizationModes-Active:hover > .VisualizationModesEntryBacking-Enabled"]
      352 DUPTABLE                         R24 K110 [{["BackgroundTransparency"] = 0, ["BackgroundColor3"] = "$VisualizationModesDimActionHover"}]
      353 CALL                             R22 2 -1
      354 SETLIST                          R19 R20 -1 [1]
      356 CALL                             R16 3 1
      357 MOVE                             R17 R3
      358 LOADK                            R18 K111 [".ScrollingAutomaticSize"]
      359 DUPTABLE                         R19 K114 [{"AutomaticCanvasSize", "CanvasSize"}]
      360 GETIMPORT                        R20 K116 [Enum.AutomaticSize.Y]
      362 SETTABLEKS                       R20 R19 K112 ["AutomaticCanvasSize"]
      364 GETIMPORT                        R20 K23 [UDim2.new]
      366 LOADN                            R21 1
      367 LOADN                            R22 0
      368 LOADN                            R23 0
      369 LOADN                            R24 20
      370 CALL                             R20 4 1
      371 SETTABLEKS                       R20 R19 K113 ["CanvasSize"]
      373 CALL                             R17 2 1
      374 MOVE                             R18 R3
      375 LOADK                            R19 K117 [".VisualizationModes-EntryButton"]
      376 DUPTABLE                         R20 K118 [{["BorderSizePixel"] = 0, ["Size"], ["BackgroundTransparency"] = 1, ["AutoButtonColor"] = False}]
      377 GETIMPORT                        R21 K23 [UDim2.new]
      379 LOADN                            R22 1
      380 LOADN                            R23 -20
      381 LOADN                            R24 1
      382 LOADN                            R25 0
      383 CALL                             R21 4 1
      384 SETTABLEKS                       R21 R20 K15 ["Size"]
      386 CALL                             R18 2 1
      387 MOVE                             R19 R3
      388 LOADK                            R20 K119 [".VisualizationModes-Group"]
      389 DUPTABLE                         R21 K120 [{["BorderSizePixel"] = 0, ["Size"], ["AutomaticSize"], ["BackgroundTransparency"] = 1, ["AutoButtonColor"] = False}]
      390 GETIMPORT                        R22 K39 [UDim2.fromScale]
      392 LOADN                            R23 1
      393 LOADN                            R24 0
      394 CALL                             R22 2 1
      395 SETTABLEKS                       R22 R21 K15 ["Size"]
      397 GETIMPORT                        R22 K116 [Enum.AutomaticSize.Y]
      399 SETTABLEKS                       R22 R21 K36 ["AutomaticSize"]
      401 CALL                             R19 2 1
      402 MOVE                             R20 R3
      403 LOADK                            R21 K121 [".VisualizationModes-MainScrollingFrame"]
      404 DUPTABLE                         R22 K124 [{["ScrollBarThickness"] = 8}]
      405 NEWTABLE                         R23 0 1
      407 MOVE                             R24 R3
      408 LOADK                            R25 K125 ["> #Content"]
      409 DUPTABLE                         R26 K126 [{"Size"}]
      410 GETIMPORT                        R27 K23 [UDim2.new]
      412 LOADN                            R28 1
      413 LOADN                            R29 -9
      414 LOADN                            R30 0
      415 LOADN                            R31 0
      416 CALL                             R27 4 1
      417 SETTABLEKS                       R27 R26 K15 ["Size"]
      419 CALL                             R24 2 -1
      420 SETLIST                          R23 R24 -1 [1]
      422 CALL                             R20 3 1
      423 MOVE                             R21 R3
      424 LOADK                            R22 K127 [".VisualizationModes-Popup"]
      425 NEWTABLE                         R23 0 0
      427 NEWTABLE                         R24 0 1
      429 MOVE                             R25 R3
      430 LOADK                            R26 K70 ["::UIPadding"]
      431 DUPTABLE                         R27 K128 [{"PaddingLeft", "PaddingBottom", "PaddingTop", "PaddingRight"}]
      432 GETIMPORT                        R28 K69 [UDim.new]
      434 LOADN                            R29 0
      435 LOADN                            R30 5
      436 CALL                             R28 2 1
      437 SETTABLEKS                       R28 R27 K71 ["PaddingLeft"]
      439 GETIMPORT                        R28 K69 [UDim.new]
      441 LOADN                            R29 0
      442 LOADN                            R30 5
      443 CALL                             R28 2 1
      444 SETTABLEKS                       R28 R27 K73 ["PaddingBottom"]
      446 GETIMPORT                        R28 K69 [UDim.new]
      448 LOADN                            R29 0
      449 LOADN                            R30 5
      450 CALL                             R28 2 1
      451 SETTABLEKS                       R28 R27 K72 ["PaddingTop"]
      453 GETIMPORT                        R28 K69 [UDim.new]
      455 LOADN                            R29 0
      456 LOADN                            R30 2
      457 CALL                             R28 2 1
      458 SETTABLEKS                       R28 R27 K74 ["PaddingRight"]
      460 CALL                             R25 2 -1
      461 SETLIST                          R24 R25 -1 [1]
      463 CALL                             R21 3 1
      464 SETLIST                          R5 R6 16 [1]
      466 MOVE                             R6 R3
      467 LOADK                            R7 K129 [".VisualizationModesStrokePane"]
      468 DUPTABLE                         R8 K130 [{["BackgroundTransparency"] = 1, ["Size"], ["AnchorPoint"], ["Position"]}]
      469 GETIMPORT                        R9 K23 [UDim2.new]
      471 LOADN                            R10 1
      472 LOADN                            R11 -2
      473 LOADN                            R12 1
      474 LOADN                            R13 -2
      475 CALL                             R9 4 1
      476 SETTABLEKS                       R9 R8 K15 ["Size"]
      478 GETIMPORT                        R9 K26 [Vector2.new]
      480 LOADK                            R10 K24 [0.5]
      481 LOADK                            R11 K24 [0.5]
      482 CALL                             R9 2 1
      483 SETTABLEKS                       R9 R8 K17 ["AnchorPoint"]
      485 GETIMPORT                        R9 K39 [UDim2.fromScale]
      487 LOADK                            R10 K24 [0.5]
      488 LOADK                            R11 K24 [0.5]
      489 CALL                             R9 2 1
      490 SETTABLEKS                       R9 R8 K16 ["Position"]
      492 NEWTABLE                         R9 0 1
      494 MOVE                             R10 R3
      495 LOADK                            R11 K82 ["::UIStroke"]
      496 DUPTABLE                         R12 K133 [{["Color"] = "$Divider"}]
      497 CALL                             R10 2 -1
      498 SETLIST                          R9 R10 -1 [1]
      500 CALL                             R6 3 1
      501 MOVE                             R7 R3
      502 LOADK                            R8 K134 [".VisualizationModes-HiddenCountLabel"]
      503 DUPTABLE                         R9 K135 [{["TextXAlignment"], ["TextYAlignment"], ["TextColor3"] = "$TextSecondary", ["Size"], ["BackgroundTransparency"] = 1}]
      504 GETIMPORT                        R10 K136 [Enum.TextXAlignment.Center]
      506 SETTABLEKS                       R10 R9 K52 ["TextXAlignment"]
      508 GETIMPORT                        R10 K58 [Enum.TextYAlignment.Center]
      510 SETTABLEKS                       R10 R9 K53 ["TextYAlignment"]
      512 GETIMPORT                        R10 K23 [UDim2.new]
      514 LOADN                            R11 1
      515 LOADN                            R12 0
      516 LOADN                            R13 0
      517 LOADN                            R14 28
      518 CALL                             R10 4 1
      519 SETTABLEKS                       R10 R9 K15 ["Size"]
      521 CALL                             R7 2 -1
      522 SETLIST                          R5 R6 -1 [17]
      524 MOVE                             R6 R1
      525 CALL                             R6 0 1
      526 JUMPIF                           R6 ; [+30]
      527 MOVE                             R7 R5
      528 MOVE                             R8 R3
      529 LOADK                            R9 K137 [".Component-Checkbox .VisualizationModes-CameraSpeedLockUnlock"]
      530 NEWTABLE                         R10 0 0
      532 NEWTABLE                         R11 0 4
      534 MOVE                             R12 R3
      535 LOADK                            R13 K138 [">> ImageLabel"]
      536 DUPTABLE                         R14 K140 [{["Image"] = "$VisualizationModesCameraSpeedUnlocked"}]
      537 CALL                             R12 2 1
      538 MOVE                             R13 R3
      539 LOADK                            R14 K141 [".Checked >> ImageLabel"]
      540 DUPTABLE                         R15 K143 [{["Image"] = "$VisualizationModesCameraSpeedLocked"}]
      541 CALL                             R13 2 1
      542 MOVE                             R14 R3
      543 LOADK                            R15 K144 [":hover >> ImageLabel"]
      544 DUPTABLE                         R16 K90 [{["ImageColor3"] = "$TextSecondary"}]
      545 CALL                             R14 2 1
      546 MOVE                             R15 R3
      547 LOADK                            R16 K145 [":press >> ImageLabel"]
      548 DUPTABLE                         R17 K90 [{["ImageColor3"] = "$TextSecondary"}]
      549 CALL                             R15 2 -1
      550 SETLIST                          R11 R12 -1 [1]
      552 CALL                             R8 3 -1
      553 FASTCALL                         TABLE_INSERT ; [+2]
      554 GETIMPORT                        R6 K148 [table.insert]
      556 CALL                             R6 -1 0
      557 NEWTABLE                         R6 0 0
      559 MOVE                             R7 R4
      560 LOADK                            R8 K2 ["VisualizationModes"]
      561 MOVE                             R9 R5
      562 MOVE                             R10 R6
      563 CALL                             R7 3 -1
      564 RETURN                           R7 -1
