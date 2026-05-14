MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["AvatarCompatibilityPreviewer"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Cryo"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["Framework"]
       20 CALL                             R2 1 1
       21 GETTABLEKS                       R3 R2 K9 ["Style"]
       23 GETTABLEKS                       R4 R3 K10 ["StyleKey"]
       25 GETTABLEKS                       R5 R2 K11 ["Util"]
       27 GETTABLEKS                       R5 R5 K12 ["StyleModifier"]
       29 GETTABLEKS                       R6 R3 K13 ["ComponentSymbols"]
       31 GETTABLEKS                       R7 R2 K14 ["UIData"]
       33 GETIMPORT                        R8 K5 [require]
       35 GETTABLEKS                       R9 R7 K15 ["Alert"]
       37 GETTABLEKS                       R9 R9 K16 ["style"]
       39 CALL                             R8 1 1
       40 GETIMPORT                        R9 K5 [require]
       42 GETTABLEKS                       R10 R7 K17 ["Button"]
       44 GETTABLEKS                       R10 R10 K16 ["style"]
       46 CALL                             R9 1 1
       47 GETIMPORT                        R10 K5 [require]
       49 GETTABLEKS                       R11 R7 K18 ["DropdownMenu"]
       51 GETTABLEKS                       R11 R11 K16 ["style"]
       53 CALL                             R10 1 1
       54 GETIMPORT                        R11 K5 [require]
       56 GETTABLEKS                       R12 R7 K19 ["IconButton"]
       58 GETTABLEKS                       R12 R12 K16 ["style"]
       60 CALL                             R11 1 1
       61 GETIMPORT                        R12 K5 [require]
       63 GETTABLEKS                       R13 R7 K20 ["Image"]
       65 GETTABLEKS                       R13 R13 K16 ["style"]
       67 CALL                             R12 1 1
       68 GETIMPORT                        R13 K5 [require]
       70 GETTABLEKS                       R14 R7 K21 ["Pane"]
       72 GETTABLEKS                       R14 R14 K16 ["style"]
       74 CALL                             R13 1 1
       75 GETIMPORT                        R14 K5 [require]
       77 GETTABLEKS                       R15 R7 K22 ["ScrollingFrame"]
       79 GETTABLEKS                       R15 R15 K16 ["style"]
       81 CALL                             R14 1 1
       82 GETIMPORT                        R15 K5 [require]
       84 GETTABLEKS                       R16 R7 K23 ["SelectInput"]
       86 GETTABLEKS                       R16 R16 K16 ["style"]
       88 CALL                             R15 1 1
       89 GETIMPORT                        R16 K5 [require]
       91 GETTABLEKS                       R17 R7 K24 ["Separator"]
       93 GETTABLEKS                       R17 R17 K16 ["style"]
       95 CALL                             R16 1 1
       96 GETIMPORT                        R17 K5 [require]
       98 GETTABLEKS                       R18 R7 K25 ["SimpleTab"]
      100 GETTABLEKS                       R18 R18 K16 ["style"]
      102 CALL                             R17 1 1
      103 GETIMPORT                        R18 K5 [require]
      105 GETTABLEKS                       R19 R7 K26 ["Tooltip"]
      107 GETTABLEKS                       R19 R19 K16 ["style"]
      109 CALL                             R18 1 1
      110 GETIMPORT                        R19 K5 [require]
      112 GETTABLEKS                       R20 R0 K27 ["Src"]
      114 GETTABLEKS                       R20 R20 K28 ["Flags"]
      116 GETTABLEKS                       R20 R20 K29 ["getFFlagAvatarPreviewerEditingTools"]
      118 CALL                             R19 1 1
      119 GETIMPORT                        R20 K5 [require]
      121 GETTABLEKS                       R21 R0 K27 ["Src"]
      123 GETTABLEKS                       R21 R21 K28 ["Flags"]
      125 GETTABLEKS                       R21 R21 K30 ["getFFlagAvatarPreviewerSortClothingUI"]
      127 CALL                             R20 1 1
      128 GETIMPORT                        R21 K32 [game]
      130 LOADK                            R23 K33 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
      131 LOADB                            R24 0
      132 NAMECALL                         R21 R21 K34 ["DefineFastFlag"]
      134 CALL                             R21 3 1
      135 NEWTABLE                         R22 0 0
      137 LOADK                            R25 K35 ["AddItemButton"]
      138 NAMECALL                         R23 R6 K36 ["add"]
      140 CALL                             R23 2 0
      141 GETTABLEKS                       R23 R6 K35 ["AddItemButton"]
      143 DUPTABLE                         R24 K46 [{"Height", "Image", "ImageColor", "ImageColorDisabled", "ImageSize", "PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom", "FailureDialogSpacing"}]
      144 LOADN                            R25 50
      145 SETTABLEKS                       R25 R24 K37 ["Height"]
      147 LOADK                            R25 K47 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
      148 SETTABLEKS                       R25 R24 K20 ["Image"]
      150 GETTABLEKS                       R25 R4 K48 ["TextSecondary"]
      152 SETTABLEKS                       R25 R24 K38 ["ImageColor"]
      154 GETTABLEKS                       R25 R4 K49 ["TextDisabled"]
      156 SETTABLEKS                       R25 R24 K39 ["ImageColorDisabled"]
      158 LOADN                            R25 20
      159 SETTABLEKS                       R25 R24 K40 ["ImageSize"]
      161 LOADN                            R25 5
      162 SETTABLEKS                       R25 R24 K41 ["PaddingTop"]
      164 LOADN                            R25 5
      165 SETTABLEKS                       R25 R24 K42 ["PaddingLeft"]
      167 LOADN                            R25 9
      168 SETTABLEKS                       R25 R24 K43 ["PaddingRight"]
      170 LOADN                            R25 5
      171 SETTABLEKS                       R25 R24 K44 ["PaddingBottom"]
      173 GETIMPORT                        R25 K52 [UDim.new]
      175 LOADN                            R26 0
      176 LOADN                            R27 4
      177 CALL                             R25 2 1
      178 SETTABLEKS                       R25 R24 K45 ["FailureDialogSpacing"]
      180 SETTABLE                         R24 R22 R23
      181 LOADK                            R25 K53 ["AnimationControllerDisplay"]
      182 NAMECALL                         R23 R6 K36 ["add"]
      184 CALL                             R23 2 0
      185 GETTABLEKS                       R23 R6 K53 ["AnimationControllerDisplay"]
      187 DUPTABLE                         R24 K57 [{"Padding", "Position", "Size"}]
      188 LOADN                            R25 30
      189 SETTABLEKS                       R25 R24 K54 ["Padding"]
      191 GETIMPORT                        R25 K59 [UDim2.new]
      193 LOADN                            R26 0
      194 LOADN                            R27 0
      195 LOADN                            R28 1
      196 LOADN                            R29 244
      197 CALL                             R25 4 1
      198 SETTABLEKS                       R25 R24 K55 ["Position"]
      200 GETIMPORT                        R25 K59 [UDim2.new]
      202 LOADN                            R26 1
      203 LOADN                            R27 0
      204 LOADN                            R28 0
      205 LOADN                            R29 32
      206 CALL                             R25 4 1
      207 SETTABLEKS                       R25 R24 K56 ["Size"]
      209 SETTABLE                         R24 R22 R23
      210 LOADK                            R25 K60 ["AnimationPlaybackSlider"]
      211 NAMECALL                         R23 R6 K36 ["add"]
      213 CALL                             R23 2 0
      214 GETTABLEKS                       R23 R6 K60 ["AnimationPlaybackSlider"]
      216 DUPTABLE                         R24 K65 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
      217 GETTABLEKS                       R25 R4 K61 ["PlayImage"]
      219 SETTABLEKS                       R25 R24 K61 ["PlayImage"]
      221 LOADK                            R25 K66 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
      222 SETTABLEKS                       R25 R24 K62 ["PauseImage"]
      224 LOADN                            R25 20
      225 SETTABLEKS                       R25 R24 K63 ["PlayButtonWidth"]
      227 LOADN                            R25 60
      228 SETTABLEKS                       R25 R24 K64 ["PlayTimeLabelWidth"]
      230 LOADN                            R25 12
      231 SETTABLEKS                       R25 R24 K54 ["Padding"]
      233 SETTABLE                         R24 R22 R23
      234 LOADK                            R25 K67 ["AnimationPreview"]
      235 NAMECALL                         R23 R6 K36 ["add"]
      237 CALL                             R23 2 0
      238 GETTABLEKS                       R23 R6 K67 ["AnimationPreview"]
      240 NEWTABLE                         R24 4 0
      242 LOADK                            R25 K68 [0.5]
      243 SETTABLEKS                       R25 R24 K69 ["PausedAnimationAlpha"]
      245 DUPTABLE                         R25 K71 [{"FrontRightAngleLerp"}]
      246 LOADK                            R26 K72 [0.4]
      247 SETTABLEKS                       R26 R25 K70 ["FrontRightAngleLerp"]
      249 SETTABLEKS                       R25 R24 K73 ["&BodyPreview"]
      251 DUPTABLE                         R25 K76 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
      252 LOADN                            R26 30
      253 SETTABLEKS                       R26 R25 K74 ["FieldOfView"]
      255 LOADK                            R26 K77 [0.08]
      256 SETTABLEKS                       R26 R25 K70 ["FrontRightAngleLerp"]
      258 LOADK                            R26 K78 [2.8]
      259 SETTABLEKS                       R26 R25 K75 ["InitialDistance"]
      261 SETTABLEKS                       R25 R24 K79 ["&FacePreview"]
      263 SETTABLE                         R24 R22 R23
      264 LOADK                            R25 K80 ["AssetPalettes"]
      265 NAMECALL                         R23 R6 K36 ["add"]
      267 CALL                             R23 2 0
      268 GETTABLEKS                       R23 R6 K80 ["AssetPalettes"]
      270 DUPTABLE                         R24 K83 [{"BackgroundColor", "BackgroundColorHover", "ScrollingFrame", "Size"}]
      271 GETTABLEKS                       R25 R4 K84 ["SubBackground2"]
      273 SETTABLEKS                       R25 R24 K81 ["BackgroundColor"]
      275 GETTABLEKS                       R25 R4 K85 ["ActionHover"]
      277 SETTABLEKS                       R25 R24 K82 ["BackgroundColorHover"]
      279 GETTABLEKS                       R25 R1 K86 ["Dictionary"]
      281 GETTABLEKS                       R25 R25 K87 ["join"]
      283 MOVE                             R26 R14
      284 DUPTABLE                         R27 K92 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
      285 GETTABLEKS                       R28 R4 K84 ["SubBackground2"]
      287 SETTABLEKS                       R28 R27 K88 ["BackgroundColor3"]
      289 LOADN                            R28 0
      290 SETTABLEKS                       R28 R27 K89 ["BackgroundTransparency"]
      292 LOADN                            R28 0
      293 SETTABLEKS                       R28 R27 K54 ["Padding"]
      295 LOADN                            R28 0
      296 SETTABLEKS                       R28 R27 K90 ["ScrollBarThickness"]
      298 GETIMPORT                        R28 K52 [UDim.new]
      300 LOADN                            R29 0
      301 LOADN                            R30 5
      302 CALL                             R28 2 1
      303 SETTABLEKS                       R28 R27 K91 ["Spacing"]
      305 CALL                             R25 2 1
      306 SETTABLEKS                       R25 R24 K22 ["ScrollingFrame"]
      308 GETIMPORT                        R25 K59 [UDim2.new]
      310 LOADN                            R26 1
      311 LOADN                            R27 0
      312 LOADN                            R28 0
      313 LOADN                            R29 24
      314 CALL                             R25 4 1
      315 SETTABLEKS                       R25 R24 K56 ["Size"]
      317 SETTABLE                         R24 R22 R23
      318 LOADK                            R25 K93 ["AutoSetupScreen"]
      319 NAMECALL                         R23 R6 K36 ["add"]
      321 CALL                             R23 2 0
      322 GETTABLEKS                       R23 R6 K93 ["AutoSetupScreen"]
      324 DUPTABLE                         R24 K101 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "Controls", "SpinRate", "SplitPane", "TablePadding", "ToggleBarHeight"}]
      325 GETIMPORT                        R25 K52 [UDim.new]
      327 LOADN                            R26 0
      328 LOADN                            R27 20
      329 CALL                             R25 2 1
      330 SETTABLEKS                       R25 R24 K94 ["AlertPaddingHorizontal"]
      332 GETIMPORT                        R25 K52 [UDim.new]
      334 LOADN                            R26 0
      335 LOADN                            R27 8
      336 CALL                             R25 2 1
      337 SETTABLEKS                       R25 R24 K95 ["AlertPaddingVertical"]
      339 DUPTABLE                         R25 K109 [{"AnchorPoint", "ButtonAnchorPoint", "ButtonColor", "ButtonHeight", "ButtonPaddingHorizontal", "Position", "TablePosition", "PaneHeight"}]
      340 GETIMPORT                        R26 K111 [Vector2.new]
      342 LOADK                            R27 K68 [0.5]
      343 LOADN                            R28 1
      344 CALL                             R26 2 1
      345 SETTABLEKS                       R26 R25 K102 ["AnchorPoint"]
      347 GETIMPORT                        R26 K111 [Vector2.new]
      349 LOADN                            R27 1
      350 LOADK                            R28 K68 [0.5]
      351 CALL                             R26 2 1
      352 SETTABLEKS                       R26 R25 K103 ["ButtonAnchorPoint"]
      354 GETTABLEKS                       R26 R4 K112 ["SecondaryContrast"]
      356 SETTABLEKS                       R26 R25 K104 ["ButtonColor"]
      358 LOADN                            R26 28
      359 SETTABLEKS                       R26 R25 K105 ["ButtonHeight"]
      361 LOADN                            R26 24
      362 SETTABLEKS                       R26 R25 K106 ["ButtonPaddingHorizontal"]
      364 MOVE                             R27 R20
      365 CALL                             R27 0 1
      366 JUMPIFNOT                        R27 ; [+6]
      367 GETIMPORT                        R26 K114 [UDim2.fromScale]
      369 LOADK                            R27 K68 [0.5]
      370 LOADN                            R28 1
      371 CALL                             R26 2 1
      372 JUMP                             ; [+7]
      373 GETIMPORT                        R26 K59 [UDim2.new]
      375 LOADN                            R27 1
      376 LOADN                            R28 240
      377 LOADN                            R29 1
      378 LOADN                            R30 240
      379 CALL                             R26 4 1
      380 SETTABLEKS                       R26 R25 K55 ["Position"]
      382 GETIMPORT                        R26 K59 [UDim2.new]
      384 LOADK                            R27 K68 [0.5]
      385 LOADN                            R28 0
      386 LOADN                            R29 1
      387 LOADN                            R30 240
      388 CALL                             R26 4 1
      389 SETTABLEKS                       R26 R25 K107 ["TablePosition"]
      391 LOADN                            R26 42
      392 SETTABLEKS                       R26 R25 K108 ["PaneHeight"]
      394 SETTABLEKS                       R25 R24 K96 ["Controls"]
      396 LOADK                            R25 K115 [-0.25]
      397 SETTABLEKS                       R25 R24 K97 ["SpinRate"]
      399 DUPTABLE                         R25 K121 [{"DefaultSizes", "CollapsedSizes", "CollapsedTolerance", "MinimumSizes", "HiddenSizes"}]
      400 NEWTABLE                         R26 0 2
      402 GETIMPORT                        R27 K52 [UDim.new]
      404 LOADK                            R28 K122 [0.65]
      405 LOADN                            R29 0
      406 CALL                             R27 2 1
      407 GETIMPORT                        R28 K52 [UDim.new]
      409 LOADK                            R29 K123 [0.35]
      410 LOADN                            R30 0
      411 CALL                             R28 2 -1
      412 SETLIST                          R26 R27 -1 [1]
      414 SETTABLEKS                       R26 R25 K116 ["DefaultSizes"]
      416 NEWTABLE                         R26 0 2
      418 GETIMPORT                        R27 K52 [UDim.new]
      420 LOADN                            R28 1
      421 LOADN                            R29 0
      422 CALL                             R27 2 1
      423 GETIMPORT                        R28 K52 [UDim.new]
      425 LOADN                            R29 0
      426 LOADN                            R30 0
      427 CALL                             R28 2 -1
      428 SETLIST                          R26 R27 -1 [1]
      430 SETTABLEKS                       R26 R25 K117 ["CollapsedSizes"]
      432 LOADK                            R26 K124 [0.01]
      433 SETTABLEKS                       R26 R25 K118 ["CollapsedTolerance"]
      435 NEWTABLE                         R26 0 2
      437 GETIMPORT                        R27 K52 [UDim.new]
      439 LOADK                            R28 K125 [0.3]
      440 LOADN                            R29 0
      441 CALL                             R27 2 1
      442 GETIMPORT                        R28 K52 [UDim.new]
      444 LOADN                            R29 0
      445 LOADN                            R30 0
      446 CALL                             R28 2 -1
      447 SETLIST                          R26 R27 -1 [1]
      449 SETTABLEKS                       R26 R25 K119 ["MinimumSizes"]
      451 NEWTABLE                         R26 0 2
      453 GETIMPORT                        R27 K52 [UDim.new]
      455 LOADK                            R28 K126 [1.01]
      456 LOADN                            R29 0
      457 CALL                             R27 2 1
      458 GETIMPORT                        R28 K52 [UDim.new]
      460 LOADN                            R29 0
      461 LOADN                            R30 0
      462 CALL                             R28 2 -1
      463 SETLIST                          R26 R27 -1 [1]
      465 SETTABLEKS                       R26 R25 K120 ["HiddenSizes"]
      467 SETTABLEKS                       R25 R24 K98 ["SplitPane"]
      469 LOADN                            R25 8
      470 SETTABLEKS                       R25 R24 K99 ["TablePadding"]
      472 LOADN                            R25 22
      473 SETTABLEKS                       R25 R24 K100 ["ToggleBarHeight"]
      475 SETTABLE                         R24 R22 R23
      476 LOADK                            R25 K127 ["AvatarScreen"]
      477 NAMECALL                         R23 R6 K36 ["add"]
      479 CALL                             R23 2 0
      480 GETTABLEKS                       R23 R6 K127 ["AvatarScreen"]
      482 DUPTABLE                         R24 K129 [{"AssetPalettes", "Tabs"}]
      483 DUPTABLE                         R25 K133 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
      484 GETTABLEKS                       R26 R4 K84 ["SubBackground2"]
      486 SETTABLEKS                       R26 R25 K81 ["BackgroundColor"]
      488 GETTABLEKS                       R26 R4 K134 ["SubBackground"]
      490 SETTABLEKS                       R26 R25 K130 ["SeparatorColor"]
      492 LOADN                            R26 0
      493 SETTABLEKS                       R26 R25 K131 ["SeparatorWidth"]
      495 LOADN                            R26 104
      496 SETTABLEKS                       R26 R25 K132 ["Width"]
      498 SETTABLEKS                       R25 R24 K80 ["AssetPalettes"]
      500 DUPTABLE                         R25 K136 [{"Height", "VerticalOffset"}]
      501 LOADN                            R26 64
      502 SETTABLEKS                       R26 R25 K37 ["Height"]
      504 LOADN                            R26 252
      505 SETTABLEKS                       R26 R25 K135 ["VerticalOffset"]
      507 SETTABLEKS                       R25 R24 K128 ["Tabs"]
      509 SETTABLE                         R24 R22 R23
      510 LOADK                            R25 K137 ["Background"]
      511 NAMECALL                         R23 R6 K36 ["add"]
      513 CALL                             R23 2 0
      514 GETTABLEKS                       R23 R6 K137 ["Background"]
      516 DUPTABLE                         R24 K138 [{"Image"}]
      517 GETTABLEKS                       R25 R4 K139 ["PreviewerBackgroundImage"]
      519 SETTABLEKS                       R25 R24 K20 ["Image"]
      521 SETTABLE                         R24 R22 R23
      522 MOVE                             R23 R19
      523 CALL                             R23 0 1
      524 JUMPIFNOT                        R23 ; [+16]
      525 LOADK                            R25 K140 ["BodyPointsTool"]
      526 NAMECALL                         R23 R6 K36 ["add"]
      528 CALL                             R23 2 0
      529 GETTABLEKS                       R23 R6 K140 ["BodyPointsTool"]
      531 DUPTABLE                         R24 K143 [{"ProjectionImage", "SymmetricalImage"}]
      532 GETTABLEKS                       R25 R4 K144 ["Projection"]
      534 SETTABLEKS                       R25 R24 K141 ["ProjectionImage"]
      536 GETTABLEKS                       R25 R4 K145 ["Symmetry"]
      538 SETTABLEKS                       R25 R24 K142 ["SymmetricalImage"]
      540 SETTABLE                         R24 R22 R23
      541 MOVE                             R23 R19
      542 CALL                             R23 0 1
      543 JUMPIFNOT                        R23 ; [+32]
      544 LOADK                            R25 K146 ["CageEditingTool"]
      545 NAMECALL                         R23 R6 K36 ["add"]
      547 CALL                             R23 2 0
      548 GETTABLEKS                       R23 R6 K146 ["CageEditingTool"]
      550 DUPTABLE                         R24 K153 [{"FalloffImage", "MirrorToLeftImage", "MirrorToRightImage", "RadiusImage", "ResetChangesImage", "SymmetryImage"}]
      551 GETTABLEKS                       R25 R4 K154 ["Falloff"]
      553 SETTABLEKS                       R25 R24 K147 ["FalloffImage"]
      555 GETTABLEKS                       R25 R4 K155 ["MirrorToLeft"]
      557 SETTABLEKS                       R25 R24 K148 ["MirrorToLeftImage"]
      559 GETTABLEKS                       R25 R4 K156 ["MirrorToRight"]
      561 SETTABLEKS                       R25 R24 K149 ["MirrorToRightImage"]
      563 GETTABLEKS                       R25 R4 K157 ["Radius"]
      565 SETTABLEKS                       R25 R24 K150 ["RadiusImage"]
      567 GETTABLEKS                       R25 R4 K158 ["ResetChanges"]
      569 SETTABLEKS                       R25 R24 K151 ["ResetChangesImage"]
      571 GETTABLEKS                       R25 R4 K145 ["Symmetry"]
      573 SETTABLEKS                       R25 R24 K152 ["SymmetryImage"]
      575 SETTABLE                         R24 R22 R23
      576 LOADK                            R25 K159 ["Catalog"]
      577 NAMECALL                         R23 R6 K36 ["add"]
      579 CALL                             R23 2 0
      580 GETTABLEKS                       R23 R6 K159 ["Catalog"]
      582 DUPTABLE                         R24 K162 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
      583 GETTABLEKS                       R25 R1 K86 ["Dictionary"]
      585 GETTABLEKS                       R25 R25 K87 ["join"]
      587 MOVE                             R26 R14
      588 DUPTABLE                         R27 K165 [{"BorderColor3", "Padding", "ScrollBarThickness", "VerticalScrollBarInset"}]
      589 GETTABLEKS                       R28 R4 K166 ["Border"]
      591 SETTABLEKS                       R28 R27 K163 ["BorderColor3"]
      593 LOADN                            R28 0
      594 SETTABLEKS                       R28 R27 K54 ["Padding"]
      596 LOADN                            R28 4
      597 SETTABLEKS                       R28 R27 K90 ["ScrollBarThickness"]
      599 GETIMPORT                        R28 K170 [Enum.ScrollBarInset.Always]
      601 SETTABLEKS                       R28 R27 K164 ["VerticalScrollBarInset"]
      603 CALL                             R25 2 1
      604 SETTABLEKS                       R25 R24 K22 ["ScrollingFrame"]
      606 GETIMPORT                        R25 K52 [UDim.new]
      608 LOADN                            R26 1
      609 LOADN                            R27 206
      610 CALL                             R25 2 1
      611 SETTABLEKS                       R25 R24 K160 ["ScrollingFrameHeight"]
      613 GETIMPORT                        R25 K172 [UDim2.fromOffset]
      615 LOADN                            R26 90
      616 LOADN                            R27 90
      617 CALL                             R25 2 1
      618 SETTABLEKS                       R25 R24 K161 ["CellSize"]
      620 SETTABLE                         R24 R22 R23
      621 LOADK                            R25 K173 ["CatalogItemButton"]
      622 NAMECALL                         R23 R6 K36 ["add"]
      624 CALL                             R23 2 0
      625 GETTABLEKS                       R23 R6 K173 ["CatalogItemButton"]
      627 DUPTABLE                         R24 K178 [{"HoverX", "AccessoryTypeImage", "UserImage", "Padding", "TextLabelPadding"}]
      628 DUPTABLE                         R25 K180 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
      629 GETTABLEKS                       R26 R4 K48 ["TextSecondary"]
      631 SETTABLEKS                       R26 R25 K179 ["Color"]
      633 LOADK                            R26 K181 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
      634 SETTABLEKS                       R26 R25 K20 ["Image"]
      636 GETIMPORT                        R26 K111 [Vector2.new]
      638 LOADN                            R27 1
      639 LOADN                            R28 0
      640 CALL                             R26 2 1
      641 SETTABLEKS                       R26 R25 K102 ["AnchorPoint"]
      643 GETIMPORT                        R26 K59 [UDim2.new]
      645 LOADN                            R27 1
      646 LOADN                            R28 252
      647 LOADN                            R29 0
      648 LOADN                            R30 4
      649 CALL                             R26 4 1
      650 SETTABLEKS                       R26 R25 K55 ["Position"]
      652 GETIMPORT                        R26 K172 [UDim2.fromOffset]
      654 LOADN                            R27 13
      655 LOADN                            R28 13
      656 CALL                             R26 2 1
      657 SETTABLEKS                       R26 R25 K56 ["Size"]
      659 SETTABLEKS                       R25 R24 K174 ["HoverX"]
      661 DUPTABLE                         R25 K184 [{"Color", "AnchorPoint", "Position", "Size", "LayeredImage", "RigidImage"}]
      662 GETTABLEKS                       R26 R4 K48 ["TextSecondary"]
      664 SETTABLEKS                       R26 R25 K179 ["Color"]
      666 GETIMPORT                        R26 K111 [Vector2.new]
      668 LOADN                            R27 0
      669 LOADN                            R28 0
      670 CALL                             R26 2 1
      671 SETTABLEKS                       R26 R25 K102 ["AnchorPoint"]
      673 GETIMPORT                        R26 K172 [UDim2.fromOffset]
      675 LOADN                            R27 4
      676 LOADN                            R28 4
      677 CALL                             R26 2 1
      678 SETTABLEKS                       R26 R25 K55 ["Position"]
      680 GETIMPORT                        R26 K172 [UDim2.fromOffset]
      682 LOADN                            R27 13
      683 LOADN                            R28 13
      684 CALL                             R26 2 1
      685 SETTABLEKS                       R26 R25 K56 ["Size"]
      687 LOADK                            R26 K185 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/layered@2x.png"]
      688 SETTABLEKS                       R26 R25 K182 ["LayeredImage"]
      690 LOADK                            R26 K186 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rigid@2x.png"]
      691 SETTABLEKS                       R26 R25 K183 ["RigidImage"]
      693 SETTABLEKS                       R25 R24 K175 ["AccessoryTypeImage"]
      695 DUPTABLE                         R25 K180 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
      696 GETTABLEKS                       R26 R4 K48 ["TextSecondary"]
      698 SETTABLEKS                       R26 R25 K179 ["Color"]
      700 LOADK                            R26 K187 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
      701 SETTABLEKS                       R26 R25 K20 ["Image"]
      703 GETIMPORT                        R26 K111 [Vector2.new]
      705 LOADN                            R27 1
      706 LOADN                            R28 0
      707 CALL                             R26 2 1
      708 SETTABLEKS                       R26 R25 K102 ["AnchorPoint"]
      710 GETIMPORT                        R26 K59 [UDim2.new]
      712 LOADN                            R27 1
      713 LOADN                            R28 252
      714 LOADN                            R29 1
      715 LOADN                            R30 236
      716 CALL                             R26 4 1
      717 SETTABLEKS                       R26 R25 K55 ["Position"]
      719 GETIMPORT                        R26 K172 [UDim2.fromOffset]
      721 LOADN                            R27 13
      722 LOADN                            R28 16
      723 CALL                             R26 2 1
      724 SETTABLEKS                       R26 R25 K56 ["Size"]
      726 SETTABLEKS                       R25 R24 K176 ["UserImage"]
      728 LOADN                            R25 4
      729 SETTABLEKS                       R25 R24 K54 ["Padding"]
      731 GETIMPORT                        R25 K52 [UDim.new]
      733 LOADN                            R26 0
      734 LOADN                            R27 8
      735 CALL                             R25 2 1
      736 SETTABLEKS                       R25 R24 K177 ["TextLabelPadding"]
      738 SETTABLE                         R24 R22 R23
      739 LOADK                            R25 K188 ["ContextualSurveyDialogButton"]
      740 NAMECALL                         R23 R6 K36 ["add"]
      742 CALL                             R23 2 0
      743 GETTABLEKS                       R23 R6 K188 ["ContextualSurveyDialogButton"]
      745 DUPTABLE                         R24 K189 [{"Image", "Position", "Size"}]
      746 GETTABLEKS                       R25 R4 K190 ["SendFeedback"]
      748 SETTABLEKS                       R25 R24 K20 ["Image"]
      750 GETIMPORT                        R25 K59 [UDim2.new]
      752 LOADN                            R26 0
      753 LOADN                            R27 28
      754 LOADN                            R28 1
      755 LOADN                            R29 196
      756 CALL                             R25 4 1
      757 SETTABLEKS                       R25 R24 K55 ["Position"]
      759 GETIMPORT                        R25 K172 [UDim2.fromOffset]
      761 LOADN                            R26 24
      762 LOADN                            R27 24
      763 CALL                             R25 2 1
      764 SETTABLEKS                       R25 R24 K56 ["Size"]
      766 SETTABLE                         R24 R22 R23
      767 LOADK                            R25 K191 ["GenerationCard"]
      768 NAMECALL                         R23 R6 K36 ["add"]
      770 CALL                             R23 2 0
      771 GETTABLEKS                       R23 R6 K191 ["GenerationCard"]
      773 DUPTABLE                         R24 K202 [{"TitleFont", "PrimaryActionFont", "BackgroundColor", "BackgroundColorHoverDarkerMultiplier", "TextColor", "TextSize", "CornerRadius", "InnerPadding", "MaxWidth", "StrokeColor", "StrokeThickness"}]
      774 GETIMPORT                        R25 K205 [Enum.Font.SourceSansBold]
      776 SETTABLEKS                       R25 R24 K192 ["TitleFont"]
      778 GETIMPORT                        R25 K207 [Enum.Font.SourceSans]
      780 SETTABLEKS                       R25 R24 K193 ["PrimaryActionFont"]
      782 GETTABLEKS                       R25 R4 K208 ["AlertBackgroundDefault"]
      784 SETTABLEKS                       R25 R24 K81 ["BackgroundColor"]
      786 LOADK                            R25 K209 [0.15]
      787 SETTABLEKS                       R25 R24 K194 ["BackgroundColorHoverDarkerMultiplier"]
      789 GETTABLEKS                       R25 R4 K210 ["TextPrimary"]
      791 SETTABLEKS                       R25 R24 K195 ["TextColor"]
      793 LOADN                            R25 18
      794 SETTABLEKS                       R25 R24 K196 ["TextSize"]
      796 GETIMPORT                        R25 K52 [UDim.new]
      798 LOADN                            R26 0
      799 LOADN                            R27 8
      800 CALL                             R25 2 1
      801 SETTABLEKS                       R25 R24 K197 ["CornerRadius"]
      803 LOADN                            R25 12
      804 SETTABLEKS                       R25 R24 K198 ["InnerPadding"]
      806 LOADN                            R25 244
      807 SETTABLEKS                       R25 R24 K199 ["MaxWidth"]
      809 GETTABLEKS                       R25 R4 K211 ["OtherDivider"]
      811 SETTABLEKS                       R25 R24 K200 ["StrokeColor"]
      813 LOADN                            R25 1
      814 SETTABLEKS                       R25 R24 K201 ["StrokeThickness"]
      816 SETTABLE                         R24 R22 R23
      817 MOVE                             R23 R19
      818 CALL                             R23 0 1
      819 JUMPIFNOT                        R23 ; [+24]
      820 LOADK                            R25 K212 ["EditingTools"]
      821 NAMECALL                         R23 R6 K36 ["add"]
      823 CALL                             R23 2 0
      824 GETTABLEKS                       R23 R6 K212 ["EditingTools"]
      826 DUPTABLE                         R24 K217 [{"AttachmentToolImage", "CageEditingToolImage", "ShowClothingOffImage", "ShowClothingOnImage"}]
      827 GETTABLEKS                       R25 R4 K218 ["AttachmentTool"]
      829 SETTABLEKS                       R25 R24 K213 ["AttachmentToolImage"]
      831 GETTABLEKS                       R25 R4 K219 ["CageTool"]
      833 SETTABLEKS                       R25 R24 K214 ["CageEditingToolImage"]
      835 GETTABLEKS                       R25 R4 K220 ["ShowClothingOff"]
      837 SETTABLEKS                       R25 R24 K215 ["ShowClothingOffImage"]
      839 GETTABLEKS                       R25 R4 K221 ["ShowClothingOn"]
      841 SETTABLEKS                       R25 R24 K216 ["ShowClothingOnImage"]
      843 SETTABLE                         R24 R22 R23
      844 LOADK                            R25 K222 ["EquippedItemsSidebar"]
      845 NAMECALL                         R23 R6 K36 ["add"]
      847 CALL                             R23 2 0
      848 GETTABLEKS                       R23 R6 K222 ["EquippedItemsSidebar"]
      850 DUPTABLE                         R24 K228 [{"CellSize", "FrameSizeOffset", "ItemSpacing", "ScrollingFrameSizeOffset", "ScrollBarThickness", "SidebarSpacing", "Size", "SidebarPadding"}]
      851 GETIMPORT                        R25 K172 [UDim2.fromOffset]
      853 LOADN                            R26 45
      854 LOADN                            R27 45
      855 CALL                             R25 2 1
      856 SETTABLEKS                       R25 R24 K161 ["CellSize"]
      858 LOADN                            R25 50
      859 SETTABLEKS                       R25 R24 K223 ["FrameSizeOffset"]
      861 GETIMPORT                        R25 K52 [UDim.new]
      863 LOADN                            R26 0
      864 LOADN                            R27 5
      865 CALL                             R25 2 1
      866 SETTABLEKS                       R25 R24 K224 ["ItemSpacing"]
      868 LOADN                            R25 90
      869 SETTABLEKS                       R25 R24 K225 ["ScrollingFrameSizeOffset"]
      871 LOADN                            R25 4
      872 SETTABLEKS                       R25 R24 K90 ["ScrollBarThickness"]
      874 LOADN                            R25 15
      875 SETTABLEKS                       R25 R24 K226 ["SidebarSpacing"]
      877 GETIMPORT                        R25 K172 [UDim2.fromOffset]
      879 LOADN                            R26 0
      880 LOADN                            R27 0
      881 CALL                             R25 2 1
      882 SETTABLEKS                       R25 R24 K56 ["Size"]
      884 LOADN                            R25 10
      885 SETTABLEKS                       R25 R24 K227 ["SidebarPadding"]
      887 SETTABLE                         R24 R22 R23
      888 LOADK                            R25 K229 ["EquippedItemPreview"]
      889 NAMECALL                         R23 R6 K36 ["add"]
      891 CALL                             R23 2 0
      892 GETTABLEKS                       R23 R6 K229 ["EquippedItemPreview"]
      894 DUPTABLE                         R24 K232 [{"HoverX", "CornerRadius", "StrokeColor", "StrokeThickness", "ItemHiddenTransparency", "ItemWornTransparency"}]
      895 DUPTABLE                         R25 K233 [{"Image", "AnchorPoint", "Position", "Size"}]
      896 LOADK                            R26 K181 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
      897 SETTABLEKS                       R26 R25 K20 ["Image"]
      899 GETIMPORT                        R26 K111 [Vector2.new]
      901 LOADN                            R27 1
      902 LOADN                            R28 0
      903 CALL                             R26 2 1
      904 SETTABLEKS                       R26 R25 K102 ["AnchorPoint"]
      906 GETIMPORT                        R26 K59 [UDim2.new]
      908 LOADN                            R27 1
      909 LOADN                            R28 254
      910 LOADN                            R29 0
      911 LOADN                            R30 2
      912 CALL                             R26 4 1
      913 SETTABLEKS                       R26 R25 K55 ["Position"]
      915 GETIMPORT                        R26 K172 [UDim2.fromOffset]
      917 LOADN                            R27 13
      918 LOADN                            R28 13
      919 CALL                             R26 2 1
      920 SETTABLEKS                       R26 R25 K56 ["Size"]
      922 SETTABLEKS                       R25 R24 K174 ["HoverX"]
      924 GETIMPORT                        R25 K52 [UDim.new]
      926 LOADN                            R26 0
      927 LOADN                            R27 4
      928 CALL                             R25 2 1
      929 SETTABLEKS                       R25 R24 K197 ["CornerRadius"]
      931 GETTABLEKS                       R25 R4 K166 ["Border"]
      933 SETTABLEKS                       R25 R24 K200 ["StrokeColor"]
      935 LOADN                            R25 1
      936 SETTABLEKS                       R25 R24 K201 ["StrokeThickness"]
      938 LOADK                            R25 K234 [0.7]
      939 SETTABLEKS                       R25 R24 K230 ["ItemHiddenTransparency"]
      941 LOADN                            R25 0
      942 SETTABLEKS                       R25 R24 K231 ["ItemWornTransparency"]
      944 SETTABLE                         R24 R22 R23
      945 LOADK                            R25 K235 ["EquippedItemSideMenu"]
      946 NAMECALL                         R23 R6 K36 ["add"]
      948 CALL                             R23 2 0
      949 GETTABLEKS                       R23 R6 K235 ["EquippedItemSideMenu"]
      951 DUPTABLE                         R24 K240 [{"DotsBackground", "DotsBackgroundHover", "IconSize", "Margin"}]
      952 GETTABLEKS                       R25 R4 K48 ["TextSecondary"]
      954 SETTABLEKS                       R25 R24 K236 ["DotsBackground"]
      956 GETTABLEKS                       R25 R4 K241 ["TextContrast"]
      958 SETTABLEKS                       R25 R24 K237 ["DotsBackgroundHover"]
      960 LOADN                            R25 16
      961 SETTABLEKS                       R25 R24 K238 ["IconSize"]
      963 LOADN                            R25 1
      964 SETTABLEKS                       R25 R24 K239 ["Margin"]
      966 SETTABLE                         R24 R22 R23
      967 LOADK                            R25 K242 ["ImportPage"]
      968 NAMECALL                         R23 R6 K36 ["add"]
      970 CALL                             R23 2 0
      971 GETTABLEKS                       R23 R6 K242 ["ImportPage"]
      973 DUPTABLE                         R24 K250 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
      974 LOADK                            R25 K251 ["rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png"]
      975 SETTABLEKS                       R25 R24 K243 ["ArrowImage"]
      977 GETTABLEKS                       R25 R4 K210 ["TextPrimary"]
      979 SETTABLEKS                       R25 R24 K244 ["ArrowColor"]
      981 DUPTABLE                         R25 K256 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
      982 LOADN                            R26 75
      983 SETTABLEKS                       R26 R25 K238 ["IconSize"]
      985 LOADN                            R26 2
      986 SETTABLEKS                       R26 R25 K198 ["InnerPadding"]
      988 LOADN                            R26 16
      989 SETTABLEKS                       R26 R25 K252 ["NameFontSize"]
      991 LOADN                            R26 2
      992 SETTABLEKS                       R26 R25 K253 ["NameLines"]
      994 LOADN                            R26 4
      995 SETTABLEKS                       R26 R25 K54 ["Padding"]
      997 GETTABLEKS                       R26 R4 K257 ["TextLink"]
      999 SETTABLEKS                       R26 R25 K254 ["TitleColor"]
     1001 GETIMPORT                        R26 K259 [Color3.new]
     1003 LOADK                            R27 K72 [0.4]
     1004 LOADK                            R28 K72 [0.4]
     1005 LOADK                            R29 K72 [0.4]
     1006 CALL                             R26 3 1
     1007 SETTABLEKS                       R26 R25 K255 ["PreviewAmbient"]
     1009 SETTABLEKS                       R25 R24 K245 ["Avatar"]
     1011 DUPTABLE                         R25 K260 [{"Size", "IconSize"}]
     1012 GETIMPORT                        R26 K172 [UDim2.fromOffset]
     1014 LOADN                            R27 24
     1015 LOADN                            R28 24
     1016 CALL                             R26 2 1
     1017 SETTABLEKS                       R26 R25 K56 ["Size"]
     1019 LOADN                            R26 12
     1020 SETTABLEKS                       R26 R25 K238 ["IconSize"]
     1022 SETTABLEKS                       R25 R24 K246 ["BackButton"]
     1024 LOADN                            R25 35
     1025 SETTABLEKS                       R25 R24 K247 ["HeaderHeight"]
     1027 GETIMPORT                        R25 K172 [UDim2.fromOffset]
     1029 LOADN                            R26 5
     1030 LOADN                            R27 15
     1031 CALL                             R25 2 1
     1032 SETTABLEKS                       R25 R24 K248 ["GridPadding"]
     1034 GETIMPORT                        R25 K52 [UDim.new]
     1036 LOADK                            R26 K5 [require]
     1037 LOADN                            R27 0
     1038 CALL                             R25 2 1
     1039 SETTABLEKS                       R25 R24 K249 ["SearchBarHeight"]
     1041 SETTABLE                         R24 R22 R23
     1042 LOADK                            R25 K6 ["Packages"]
     1043 NAMECALL                         R23 R6 K36 ["add"]
     1045 CALL                             R23 2 0
     1046 GETTABLEKS                       R23 R6 K262 ["ItemDataPreviewModel"]
     1048 DUPTABLE                         R24 K264 [{"InstanceAmbient"}]
     1049 GETIMPORT                        R25 K259 [Color3.new]
     1051 LOADK                            R26 K72 [0.4]
     1052 LOADK                            R27 K72 [0.4]
     1053 LOADK                            R28 K72 [0.4]
     1054 CALL                             R25 3 1
     1055 SETTABLEKS                       R25 R24 K263 ["InstanceAmbient"]
     1057 SETTABLE                         R24 R22 R23
     1058 LOADK                            R25 K9 ["Style"]
     1059 NAMECALL                         R23 R6 K36 ["add"]
     1061 CALL                             R23 2 0
     1062 GETTABLEKS                       R23 R6 K265 ["ModelPreview"]
     1064 DUPTABLE                         R24 K273 [{"Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "PlatformHeight", "PlatformSize"}]
     1065 GETIMPORT                        R25 K275 [Color3.fromRGB]
     1067 LOADN                            R26 170
     1068 LOADN                            R27 185
     1069 LOADN                            R28 200
     1070 CALL                             R25 3 1
     1071 SETTABLEKS                       R25 R24 K266 ["Ambient"]
     1073 LOADB                            R25 1
     1074 SETTABLEKS                       R25 R24 K267 ["EnableSky"]
     1076 GETIMPORT                        R25 K275 [Color3.fromRGB]
     1078 LOADN                            R26 221
     1079 LOADN                            R27 242
     1080 LOADN                            R28 242
     1081 CALL                             R25 3 1
     1082 SETTABLEKS                       R25 R24 K268 ["LightColor"]
     1084 LOADK                            R25 K20 ["Image"]
     1085 SETTABLEKS                       R25 R24 K269 ["LightDirection"]
     1087 LOADK                            R25 K21 ["Pane"]
     1088 SETTABLEKS                       R25 R24 K270 ["PanSpeedMultiplier"]
     1090 LOADK                            R25 K22 ["ScrollingFrame"]
     1091 SETTABLEKS                       R25 R24 K271 ["PlatformHeight"]
     1093 LOADN                            R25 5
     1094 SETTABLEKS                       R25 R24 K272 ["PlatformSize"]
     1096 SETTABLE                         R24 R22 R23
     1097 LOADK                            R25 K23 ["SelectInput"]
     1098 NAMECALL                         R23 R6 K36 ["add"]
     1100 CALL                             R23 2 0
     1101 GETTABLEKS                       R23 R6 K279 ["Notice"]
     1103 DUPTABLE                         R24 K280 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
     1104 GETTABLEKS                       R25 R4 K134 ["SubBackground"]
     1106 SETTABLEKS                       R25 R24 K81 ["BackgroundColor"]
     1108 GETIMPORT                        R25 K52 [UDim.new]
     1110 LOADN                            R26 0
     1111 LOADN                            R27 6
     1112 CALL                             R25 2 1
     1113 SETTABLEKS                       R25 R24 K197 ["CornerRadius"]
     1115 GETTABLEKS                       R25 R4 K210 ["TextPrimary"]
     1117 SETTABLEKS                       R25 R24 K195 ["TextColor"]
     1119 LOADN                            R25 20
     1120 SETTABLEKS                       R25 R24 K196 ["TextSize"]
     1122 DUPTABLE                         R25 K285 [{"Left", "Right", "Top", "Bottom"}]
     1123 LOADN                            R26 8
     1124 SETTABLEKS                       R26 R25 K281 ["Left"]
     1126 LOADN                            R26 8
     1127 SETTABLEKS                       R26 R25 K282 ["Right"]
     1129 LOADN                            R26 4
     1130 SETTABLEKS                       R26 R25 K283 ["Top"]
     1132 LOADN                            R26 4
     1133 SETTABLEKS                       R26 R25 K284 ["Bottom"]
     1135 SETTABLEKS                       R25 R24 K54 ["Padding"]
     1137 SETTABLE                         R24 R22 R23
     1138 LOADK                            R25 K30 ["getFFlagAvatarPreviewerSortClothingUI"]
     1139 NAMECALL                         R23 R6 K36 ["add"]
     1141 CALL                             R23 2 0
     1142 GETTABLEKS                       R23 R6 K286 ["PickTabMenu"]
     1144 DUPTABLE                         R24 K287 [{"CornerRadius", "ImageColor", "Padding", "Position", "Size"}]
     1145 GETIMPORT                        R25 K52 [UDim.new]
     1147 LOADN                            R26 0
     1148 LOADN                            R27 6
     1149 CALL                             R25 2 1
     1150 SETTABLEKS                       R25 R24 K197 ["CornerRadius"]
     1152 GETTABLEKS                       R25 R4 K210 ["TextPrimary"]
     1154 SETTABLEKS                       R25 R24 K38 ["ImageColor"]
     1156 LOADN                            R25 6
     1157 SETTABLEKS                       R25 R24 K54 ["Padding"]
     1159 GETIMPORT                        R25 K59 [UDim2.new]
     1161 LOADN                            R26 1
     1162 LOADN                            R27 224
     1163 LOADN                            R28 0
     1164 LOADN                            R29 0
     1165 CALL                             R25 4 1
     1166 SETTABLEKS                       R25 R24 K55 ["Position"]
     1168 GETIMPORT                        R25 K172 [UDim2.fromOffset]
     1170 LOADN                            R26 32
     1171 LOADN                            R27 32
     1172 CALL                             R25 2 1
     1173 SETTABLEKS                       R25 R24 K56 ["Size"]
     1175 SETTABLE                         R24 R22 R23
     1176 LOADK                            R25 K32 [game]
     1177 NAMECALL                         R23 R6 K36 ["add"]
     1179 CALL                             R23 2 0
     1180 GETTABLEKS                       R23 R6 K288 ["ResetCameraButton"]
     1182 DUPTABLE                         R24 K289 [{"Size", "Spacing", "Image"}]
     1183 GETIMPORT                        R25 K172 [UDim2.fromOffset]
     1185 LOADN                            R26 45
     1186 LOADN                            R27 45
     1187 CALL                             R25 2 1
     1188 SETTABLEKS                       R25 R24 K56 ["Size"]
     1190 LOADN                            R25 5
     1191 SETTABLEKS                       R25 R24 K91 ["Spacing"]
     1193 GETTABLEKS                       R25 R4 K290 ["ResetCameraImage"]
     1195 SETTABLEKS                       R25 R24 K20 ["Image"]
     1197 SETTABLE                         R24 R22 R23
     1198 LOADK                            R25 K35 ["AddItemButton"]
     1199 NAMECALL                         R23 R6 K36 ["add"]
     1201 CALL                             R23 2 0
     1202 GETTABLEKS                       R23 R6 K291 ["SelectScreen"]
     1204 DUPTABLE                         R24 K292 [{"ButtonHeight", "Spacing"}]
     1205 LOADN                            R25 24
     1206 SETTABLEKS                       R25 R24 K105 ["ButtonHeight"]
     1208 GETIMPORT                        R25 K52 [UDim.new]
     1210 LOADN                            R26 0
     1211 LOADN                            R27 18
     1212 CALL                             R25 2 1
     1213 SETTABLEKS                       R25 R24 K91 ["Spacing"]
     1215 SETTABLE                         R24 R22 R23
     1216 LOADK                            R25 K37 ["Height"]
     1217 NAMECALL                         R23 R6 K36 ["add"]
     1219 CALL                             R23 2 0
     1220 GETTABLEKS                       R23 R6 K293 ["SimpleSelectScreen"]
     1222 DUPTABLE                         R24 K299 [{"BackgroundColor", "ImageBackgroundColor", "IconColor", "LineColor", "FontFace", "ImageSize", "Spacing", "LineSize", "ButtonHeight", "Image"}]
     1223 GETTABLEKS                       R25 R4 K300 ["IconBackgroundColor"]
     1225 SETTABLEKS                       R25 R24 K81 ["BackgroundColor"]
     1227 GETTABLEKS                       R25 R4 K134 ["SubBackground"]
     1229 SETTABLEKS                       R25 R24 K294 ["ImageBackgroundColor"]
     1231 GETIMPORT                        R25 K275 [Color3.fromRGB]
     1233 LOADN                            R26 248
     1234 LOADN                            R27 121
     1235 LOADN                            R28 43
     1236 CALL                             R25 3 1
     1237 SETTABLEKS                       R25 R24 K295 ["IconColor"]
     1239 GETTABLEKS                       R25 R2 K9 ["Style"]
     1241 GETTABLEKS                       R25 R25 K301 ["Colors"]
     1243 GETTABLEKS                       R25 R25 K302 ["Gray_Mid"]
     1245 SETTABLEKS                       R25 R24 K296 ["LineColor"]
     1247 GETIMPORT                        R25 K303 [Font.new]
     1249 GETIMPORT                        R26 K305 [Font.fromEnum]
     1251 GETIMPORT                        R27 K207 [Enum.Font.SourceSans]
     1253 CALL                             R26 1 1
     1254 GETTABLEKS                       R26 R26 K306 ["Family"]
     1256 GETIMPORT                        R27 K309 [Enum.FontWeight.SemiBold]
     1258 CALL                             R25 2 1
     1259 SETTABLEKS                       R25 R24 K297 ["FontFace"]
     1261 GETIMPORT                        R25 K172 [UDim2.fromOffset]
     1263 LOADN                            R26 50
     1264 LOADN                            R27 50
     1265 CALL                             R25 2 1
     1266 SETTABLEKS                       R25 R24 K40 ["ImageSize"]
     1268 MOVE                             R26 R20
     1269 CALL                             R26 0 1
     1270 JUMPIFNOT                        R26 ; [+6]
     1271 GETIMPORT                        R25 K52 [UDim.new]
     1273 LOADN                            R26 0
     1274 LOADN                            R27 5
     1275 CALL                             R25 2 1
     1276 JUMP                             ; [+5]
     1277 GETIMPORT                        R25 K52 [UDim.new]
     1279 LOADN                            R26 0
     1280 LOADN                            R27 10
     1281 CALL                             R25 2 1
     1282 SETTABLEKS                       R25 R24 K91 ["Spacing"]
     1284 GETIMPORT                        R25 K59 [UDim2.new]
     1286 LOADN                            R26 0
     1287 LOADN                            R27 15
     1288 LOADN                            R28 0
     1289 LOADN                            R29 1
     1290 CALL                             R25 4 1
     1291 SETTABLEKS                       R25 R24 K298 ["LineSize"]
     1293 LOADN                            R25 32
     1294 SETTABLEKS                       R25 R24 K105 ["ButtonHeight"]
     1296 GETTABLEKS                       R25 R4 K310 ["EmptyState"]
     1298 SETTABLEKS                       R25 R24 K20 ["Image"]
     1300 SETTABLE                         R24 R22 R23
     1301 LOADK                            R25 K55 ["Position"]
     1302 NAMECALL                         R23 R6 K36 ["add"]
     1304 CALL                             R23 2 0
     1305 GETTABLEKS                       R23 R6 K311 ["SkinPreview"]
     1307 DUPTABLE                         R24 K317 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness", "DisabledColorToBlend"}]
     1308 GETTABLEKS                       R25 R4 K318 ["SecondaryStatesHoverOutlineBorder"]
     1310 SETTABLEKS                       R25 R24 K312 ["HoveredBorderColor"]
     1312 LOADN                            R25 1
     1313 SETTABLEKS                       R25 R24 K313 ["HoveredBorderThickness"]
     1315 GETTABLEKS                       R25 R4 K319 ["PrimaryMain"]
     1317 SETTABLEKS                       R25 R24 K314 ["SelectedBorderColor"]
     1319 LOADN                            R25 2
     1320 SETTABLEKS                       R25 R24 K315 ["SelectedBorderThickness"]
     1322 GETIMPORT                        R25 K275 [Color3.fromRGB]
     1324 LOADN                            R26 76
     1325 LOADN                            R27 76
     1326 LOADN                            R28 76
     1327 CALL                             R25 3 1
     1328 SETTABLEKS                       R25 R24 K316 ["DisabledColorToBlend"]
     1330 SETTABLE                         R24 R22 R23
     1331 MOVE                             R23 R20
     1332 CALL                             R23 0 1
     1333 JUMPIFNOT                        R23 ; [+29]
     1334 LOADK                            R25 K64 ["PlayTimeLabelWidth"]
     1335 NAMECALL                         R23 R6 K36 ["add"]
     1337 CALL                             R23 2 0
     1338 GETTABLEKS                       R23 R6 K320 ["SortClothingTable"]
     1340 DUPTABLE                         R24 K324 [{"CellPadding", "RowHeight", "TableHeight"}]
     1341 DUPTABLE                         R25 K285 [{"Left", "Right", "Top", "Bottom"}]
     1342 LOADN                            R26 4
     1343 SETTABLEKS                       R26 R25 K281 ["Left"]
     1345 LOADN                            R26 4
     1346 SETTABLEKS                       R26 R25 K282 ["Right"]
     1348 LOADN                            R26 2
     1349 SETTABLEKS                       R26 R25 K283 ["Top"]
     1351 LOADN                            R26 2
     1352 SETTABLEKS                       R26 R25 K284 ["Bottom"]
     1354 SETTABLEKS                       R25 R24 K321 ["CellPadding"]
     1356 LOADN                            R25 28
     1357 SETTABLEKS                       R25 R24 K322 ["RowHeight"]
     1359 LOADN                            R25 200
     1360 SETTABLEKS                       R25 R24 K323 ["TableHeight"]
     1362 SETTABLE                         R24 R22 R23
     1363 LOADK                            R25 K69 ["PausedAnimationAlpha"]
     1364 NAMECALL                         R23 R6 K36 ["add"]
     1366 CALL                             R23 2 0
     1367 GETTABLEKS                       R23 R6 K325 ["StageSelector"]
     1369 DUPTABLE                         R24 K330 [{"BackgroundColor", "BorderColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconColorDisabled", "IconSize", "MenuIndicatorSize", "Width"}]
     1370 GETTABLEKS                       R25 R4 K331 ["MainBackground"]
     1372 SETTABLEKS                       R25 R24 K81 ["BackgroundColor"]
     1374 GETTABLEKS                       R25 R4 K332 ["BackgroundPaper"]
     1376 SETTABLEKS                       R25 R24 K326 ["BorderColor"]
     1378 GETTABLEKS                       R25 R4 K333 ["ButtonHover"]
     1380 SETTABLEKS                       R25 R24 K327 ["ButtonSelectedBackgroundColor"]
     1382 LOADN                            R25 32
     1383 SETTABLEKS                       R25 R24 K105 ["ButtonHeight"]
     1385 GETTABLEKS                       R25 R4 K334 ["MainText"]
     1387 SETTABLEKS                       R25 R24 K295 ["IconColor"]
     1389 GETTABLEKS                       R25 R4 K335 ["MainTextDisabled"]
     1391 SETTABLEKS                       R25 R24 K328 ["IconColorDisabled"]
     1393 LOADN                            R25 18
     1394 SETTABLEKS                       R25 R24 K238 ["IconSize"]
     1396 LOADN                            R25 20
     1397 SETTABLEKS                       R25 R24 K329 ["MenuIndicatorSize"]
     1399 LOADN                            R25 64
     1400 SETTABLEKS                       R25 R24 K132 ["Width"]
     1402 SETTABLE                         R24 R22 R23
     1403 LOADK                            R25 K80 ["AssetPalettes"]
     1404 NAMECALL                         R23 R6 K36 ["add"]
     1406 CALL                             R23 2 0
     1407 GETTABLEKS                       R23 R6 K336 ["Stars"]
     1409 DUPTABLE                         R24 K343 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
     1410 GETTABLEKS                       R25 R4 K334 ["MainText"]
     1412 SETTABLEKS                       R25 R24 K337 ["StarColor"]
     1414 GETIMPORT                        R25 K172 [UDim2.fromOffset]
     1416 LOADN                            R26 16
     1417 LOADN                            R27 16
     1418 CALL                             R25 2 1
     1419 SETTABLEKS                       R25 R24 K338 ["StarSize"]
     1421 GETTABLEKS                       R25 R4 K344 ["Star"]
     1423 SETTABLEKS                       R25 R24 K339 ["StarFilled"]
     1425 GETTABLEKS                       R25 R4 K340 ["StarUnfilled"]
     1427 SETTABLEKS                       R25 R24 K340 ["StarUnfilled"]
     1429 LOADN                            R25 4
     1430 SETTABLEKS                       R25 R24 K341 ["StarSpacing"]
     1432 LOADN                            R25 10
     1433 SETTABLEKS                       R25 R24 K342 ["RatingSpacing"]
     1435 SETTABLE                         R24 R22 R23
     1436 LOADK                            R25 K89 ["BackgroundTransparency"]
     1437 NAMECALL                         R23 R6 K36 ["add"]
     1439 CALL                             R23 2 0
     1440 GETTABLEKS                       R23 R6 K345 ["SubmitDialog"]
     1442 DUPTABLE                         R24 K346 [{"Width"}]
     1443 LOADN                            R25 244
     1444 SETTABLEKS                       R25 R24 K132 ["Width"]
     1446 SETTABLE                         R24 R22 R23
     1447 LOADK                            R25 K91 ["Spacing"]
     1448 NAMECALL                         R23 R6 K36 ["add"]
     1450 CALL                             R23 2 0
     1451 GETTABLEKS                       R23 R6 K347 ["SubmitInner"]
     1453 DUPTABLE                         R24 K351 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
     1454 GETIMPORT                        R25 K52 [UDim.new]
     1456 LOADN                            R26 0
     1457 LOADN                            R27 18
     1458 CALL                             R25 2 1
     1459 SETTABLEKS                       R25 R24 K348 ["CallToActionSpacing"]
     1461 GETIMPORT                        R25 K52 [UDim.new]
     1463 LOADN                            R26 0
     1464 LOADN                            R27 4
     1465 CALL                             R25 2 1
     1466 SETTABLEKS                       R25 R24 K349 ["CheckboxSpacing"]
     1468 LOADN                            R25 40
     1469 SETTABLEKS                       R25 R24 K350 ["ContentPadding"]
     1471 SETTABLE                         R24 R22 R23
     1472 LOADK                            R25 K96 ["Controls"]
     1473 NAMECALL                         R23 R6 K36 ["add"]
     1475 CALL                             R23 2 0
     1476 GETTABLEKS                       R23 R6 K352 ["Survey"]
     1478 DUPTABLE                         R24 K355 [{"HeadIndent", "Spacing", "MessageHeight"}]
     1479 LOADN                            R25 22
     1480 SETTABLEKS                       R25 R24 K353 ["HeadIndent"]
     1482 LOADN                            R25 10
     1483 SETTABLEKS                       R25 R24 K91 ["Spacing"]
     1485 LOADN                            R25 96
     1486 SETTABLEKS                       R25 R24 K354 ["MessageHeight"]
     1488 SETTABLE                         R24 R22 R23
     1489 LOADK                            R25 K100 ["ToggleBarHeight"]
     1490 NAMECALL                         R23 R6 K36 ["add"]
     1492 CALL                             R23 2 0
     1493 GETTABLEKS                       R23 R6 K356 ["SurveyDialog"]
     1495 DUPTABLE                         R24 K358 [{"Width", "FinishDialogSize"}]
     1496 LOADN                            R25 184
     1497 SETTABLEKS                       R25 R24 K132 ["Width"]
     1499 GETIMPORT                        R25 K111 [Vector2.new]
     1501 LOADN                            R26 250
     1502 LOADN                            R27 30
     1503 CALL                             R25 2 1
     1504 SETTABLEKS                       R25 R24 K357 ["FinishDialogSize"]
     1506 SETTABLE                         R24 R22 R23
     1507 LOADK                            R25 K103 ["ButtonAnchorPoint"]
     1508 NAMECALL                         R23 R6 K36 ["add"]
     1510 CALL                             R23 2 0
     1511 GETTABLEKS                       R23 R6 K359 ["TabBar"]
     1513 DUPTABLE                         R24 K360 [{"BackgroundColor", "BackgroundColorHover"}]
     1514 GETTABLEKS                       R25 R4 K134 ["SubBackground"]
     1516 SETTABLEKS                       R25 R24 K81 ["BackgroundColor"]
     1518 GETTABLEKS                       R25 R4 K85 ["ActionHover"]
     1520 SETTABLEKS                       R25 R24 K82 ["BackgroundColorHover"]
     1522 SETTABLE                         R24 R22 R23
     1523 LOADK                            R25 K105 ["ButtonHeight"]
     1524 NAMECALL                         R23 R6 K36 ["add"]
     1526 CALL                             R23 2 0
     1527 GETTABLEKS                       R23 R6 K361 ["TestingScreen"]
     1529 DUPTABLE                         R24 K292 [{"ButtonHeight", "Spacing"}]
     1530 LOADN                            R25 24
     1531 SETTABLEKS                       R25 R24 K105 ["ButtonHeight"]
     1533 GETIMPORT                        R25 K52 [UDim.new]
     1535 LOADN                            R26 0
     1536 LOADN                            R27 18
     1537 CALL                             R25 2 1
     1538 SETTABLEKS                       R25 R24 K91 ["Spacing"]
     1540 SETTABLE                         R24 R22 R23
     1541 LOADK                            R25 K106 ["ButtonPaddingHorizontal"]
     1542 NAMECALL                         R23 R6 K36 ["add"]
     1544 CALL                             R23 2 0
     1545 GETTABLEKS                       R23 R6 K362 ["ResizeNotice"]
     1547 DUPTABLE                         R24 K363 [{"BackgroundColor", "Position", "AnchorPoint", "Size"}]
     1548 GETTABLEKS                       R25 R4 K134 ["SubBackground"]
     1550 SETTABLEKS                       R25 R24 K81 ["BackgroundColor"]
     1552 GETIMPORT                        R25 K59 [UDim2.new]
     1554 LOADN                            R26 0
     1555 LOADN                            R27 10
     1556 LOADN                            R28 0
     1557 LOADN                            R29 60
     1558 CALL                             R25 4 1
     1559 SETTABLEKS                       R25 R24 K55 ["Position"]
     1561 GETIMPORT                        R25 K111 [Vector2.new]
     1563 LOADN                            R26 0
     1564 LOADN                            R27 0
     1565 CALL                             R25 2 1
     1566 SETTABLEKS                       R25 R24 K102 ["AnchorPoint"]
     1568 GETIMPORT                        R25 K59 [UDim2.new]
     1570 LOADN                            R26 1
     1571 LOADN                            R27 161
     1572 LOADN                            R28 0
     1573 LOADN                            R29 0
     1574 CALL                             R25 4 1
     1575 SETTABLEKS                       R25 R24 K56 ["Size"]
     1577 SETTABLE                         R24 R22 R23
     1578 LOADK                            R25 K108 ["PaneHeight"]
     1579 NAMECALL                         R23 R6 K36 ["add"]
     1581 CALL                             R23 2 0
     1582 GETTABLEKS                       R23 R6 K364 ["UGCValidationErrorDialog"]
     1584 DUPTABLE                         R24 K372 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
     1585 LOADN                            R25 12
     1586 SETTABLEKS                       R25 R24 K365 ["DetailsSpacing"]
     1588 LOADN                            R25 4
     1589 SETTABLEKS                       R25 R24 K366 ["IconTextSpacing"]
     1591 LOADN                            R25 26
     1592 SETTABLEKS                       R25 R24 K367 ["TitleDetailsSpacing"]
     1594 GETIMPORT                        R25 K111 [Vector2.new]
     1596 LOADN                            R26 244
     1597 LOADN                            R27 44
     1598 CALL                             R25 2 1
     1599 SETTABLEKS                       R25 R24 K368 ["AlertMinContentSize"]
     1601 LOADN                            R25 18
     1602 SETTABLEKS                       R25 R24 K196 ["TextSize"]
     1604 GETTABLEKS                       R25 R4 K373 ["WarningText"]
     1606 SETTABLEKS                       R25 R24 K369 ["WarningColor"]
     1608 GETIMPORT                        R25 K375 [Enum.Font.SourceSansSemibold]
     1610 SETTABLEKS                       R25 R24 K370 ["WarningFont"]
     1612 LOADK                            R25 K120 ["HiddenSizes"]
     1613 SETTABLEKS                       R25 R24 K371 ["WarningImage"]
     1615 SETTABLE                         R24 R22 R23
     1616 LOADK                            R25 K121 [{"DefaultSizes", "CollapsedSizes", "CollapsedTolerance", "MinimumSizes", "HiddenSizes"}]
     1617 NAMECALL                         R23 R6 K36 ["add"]
     1619 CALL                             R23 2 0
     1620 GETTABLEKS                       R23 R6 K377 ["UGCValidationNotice"]
     1622 DUPTABLE                         R24 K379 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
     1623 GETIMPORT                        R25 K172 [UDim2.fromOffset]
     1625 LOADN                            R26 10
     1626 LOADN                            R27 10
     1627 CALL                             R25 2 1
     1628 SETTABLEKS                       R25 R24 K55 ["Position"]
     1630 GETIMPORT                        R25 K59 [UDim2.new]
     1632 LOADN                            R26 1
     1633 LOADN                            R27 161
     1634 LOADN                            R28 0
     1635 LOADN                            R29 48
     1636 CALL                             R25 4 1
     1637 SETTABLEKS                       R25 R24 K56 ["Size"]
     1639 GETIMPORT                        R25 K172 [UDim2.fromOffset]
     1641 LOADN                            R26 24
     1642 LOADN                            R27 24
     1643 CALL                             R25 2 1
     1644 SETTABLEKS                       R25 R24 K378 ["ValidationIconSize"]
     1646 GETTABLEKS                       R25 R4 K373 ["WarningText"]
     1648 SETTABLEKS                       R25 R24 K369 ["WarningColor"]
     1650 LOADK                            R25 K120 ["HiddenSizes"]
     1651 SETTABLEKS                       R25 R24 K371 ["WarningImage"]
     1653 SETTABLE                         R24 R22 R23
     1654 LOADK                            R25 K124 [0.01]
     1655 NAMECALL                         R23 R6 K36 ["add"]
     1657 CALL                             R23 2 0
     1658 DUPTABLE                         R23 K381 [{"Color", "Position", "Size"}]
     1659 GETIMPORT                        R24 K259 [Color3.new]
     1661 LOADN                            R25 1
     1662 LOADN                            R26 1
     1663 LOADN                            R27 1
     1664 CALL                             R24 3 1
     1665 SETTABLEKS                       R24 R23 K179 ["Color"]
     1667 GETIMPORT                        R24 K172 [UDim2.fromOffset]
     1669 LOADN                            R25 4
     1670 LOADN                            R26 14
     1671 CALL                             R24 2 1
     1672 SETTABLEKS                       R24 R23 K55 ["Position"]
     1674 GETIMPORT                        R24 K172 [UDim2.fromOffset]
     1676 LOADN                            R25 24
     1677 LOADN                            R26 24
     1678 CALL                             R24 2 1
     1679 SETTABLEKS                       R24 R23 K56 ["Size"]
     1681 GETTABLEKS                       R24 R6 K380 ["UGCValidationStatusIcon"]
     1683 NEWTABLE                         R25 4 0
     1685 GETTABLEKS                       R26 R1 K86 ["Dictionary"]
     1687 GETTABLEKS                       R26 R26 K87 ["join"]
     1689 MOVE                             R27 R23
     1690 DUPTABLE                         R28 K382 [{"Color", "Image"}]
     1691 GETTABLEKS                       R29 R4 K373 ["WarningText"]
     1693 SETTABLEKS                       R29 R28 K179 ["Color"]
     1695 LOADK                            R29 K120 ["HiddenSizes"]
     1696 SETTABLEKS                       R29 R28 K20 ["Image"]
     1698 CALL                             R26 2 1
     1699 SETTABLEKS                       R26 R25 K383 ["&Failure"]
     1701 GETTABLEKS                       R26 R1 K86 ["Dictionary"]
     1703 GETTABLEKS                       R26 R26 K87 ["join"]
     1705 MOVE                             R27 R23
     1706 DUPTABLE                         R28 K138 [{"Image"}]
     1707 GETTABLEKS                       R29 R4 K384 ["UGCValidationSuccessImage"]
     1709 SETTABLEKS                       R29 R28 K20 ["Image"]
     1711 CALL                             R26 2 1
     1712 SETTABLEKS                       R26 R25 K385 ["&Success"]
     1714 DUPTABLE                         R26 K386 [{"Color", "Position", "Size", "Image"}]
     1715 GETTABLEKS                       R27 R4 K387 ["DimmedText"]
     1717 SETTABLEKS                       R27 R26 K179 ["Color"]
     1719 GETIMPORT                        R27 K172 [UDim2.fromOffset]
     1721 LOADN                            R28 4
     1722 LOADN                            R29 14
     1723 CALL                             R27 2 1
     1724 SETTABLEKS                       R27 R26 K55 ["Position"]
     1726 GETIMPORT                        R27 K172 [UDim2.fromOffset]
     1728 LOADN                            R28 20
     1729 LOADN                            R29 20
     1730 CALL                             R27 2 1
     1731 SETTABLEKS                       R27 R26 K56 ["Size"]
     1733 LOADK                            R27 K132 ["Width"]
     1734 SETTABLEKS                       R27 R26 K20 ["Image"]
     1736 SETTABLEKS                       R26 R25 K389 ["&InProgress"]
     1738 SETTABLE                         R25 R22 R24
     1739 LOADK                            R26 K134 ["SubBackground"]
     1740 NAMECALL                         R24 R6 K36 ["add"]
     1742 CALL                             R24 2 0
     1743 GETTABLEKS                       R24 R6 K390 ["DisambiguationMenu"]
     1745 DUPTABLE                         R25 K400 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
     1746 GETIMPORT                        R26 K111 [Vector2.new]
     1748 LOADN                            R27 244
     1749 LOADN                            R28 44
     1750 CALL                             R26 2 1
     1751 SETTABLEKS                       R26 R25 K391 ["MinContentSize"]
     1753 GETIMPORT                        R26 K111 [Vector2.new]
     1755 LOADN                            R27 200
     1756 LOADN                            R28 150
     1757 CALL                             R26 2 1
     1758 SETTABLEKS                       R26 R25 K392 ["ConfirmCancelContentSize"]
     1760 LOADN                            R26 8
     1761 SETTABLEKS                       R26 R25 K393 ["HorizontalSpacing"]
     1763 LOADN                            R26 8
     1764 SETTABLEKS                       R26 R25 K394 ["VerticalSpacing"]
     1766 LOADN                            R26 24
     1767 SETTABLEKS                       R26 R25 K395 ["TitleContentsSpacing"]
     1769 LOADN                            R26 8
     1770 SETTABLEKS                       R26 R25 K396 ["TextSpacing"]
     1772 LOADN                            R26 150
     1773 SETTABLEKS                       R26 R25 K397 ["DropdownWidth"]
     1775 LOADN                            R26 120
     1776 SETTABLEKS                       R26 R25 K398 ["AttachmentDropdownWidth"]
     1778 GETTABLEKS                       R26 R4 K134 ["SubBackground"]
     1780 SETTABLEKS                       R26 R25 K399 ["IconBackground"]
     1782 GETIMPORT                        R26 K172 [UDim2.fromOffset]
     1784 LOADN                            R27 72
     1785 LOADN                            R28 72
     1786 CALL                             R26 2 1
     1787 SETTABLEKS                       R26 R25 K238 ["IconSize"]
     1789 SETTABLE                         R25 R22 R24
     1790 LOADK                            R26 K145 ["Symmetry"]
     1791 NAMECALL                         R24 R6 K36 ["add"]
     1793 CALL                             R24 2 0
     1794 GETTABLEKS                       R24 R6 K401 ["AvatarSizeRuler"]
     1796 DUPTABLE                         R25 K408 [{"GridSize", "DimTransparency", "MainTransparency", "Padding", "TextSize", "PixelsPerStud", "MajorStep", "RulerColor"}]
     1797 LOADK                            R26 K153 [{"FalloffImage", "MirrorToLeftImage", "MirrorToRightImage", "RadiusImage", "ResetChangesImage", "SymmetryImage"}]
     1798 SETTABLEKS                       R26 R25 K402 ["GridSize"]
     1800 LOADK                            R26 K154 ["Falloff"]
     1801 SETTABLEKS                       R26 R25 K403 ["DimTransparency"]
     1803 LOADK                            R26 K68 [0.5]
     1804 SETTABLEKS                       R26 R25 K404 ["MainTransparency"]
     1806 LOADN                            R26 30
     1807 SETTABLEKS                       R26 R25 K54 ["Padding"]
     1809 LOADN                            R26 60
     1810 SETTABLEKS                       R26 R25 K196 ["TextSize"]
     1812 LOADN                            R26 200
     1813 SETTABLEKS                       R26 R25 K405 ["PixelsPerStud"]
     1815 LOADN                            R26 10
     1816 SETTABLEKS                       R26 R25 K406 ["MajorStep"]
     1818 GETIMPORT                        R26 K259 [Color3.new]
     1820 LOADN                            R27 1
     1821 LOADN                            R28 1
     1822 LOADN                            R29 1
     1823 CALL                             R26 3 1
     1824 SETTABLEKS                       R26 R25 K407 ["RulerColor"]
     1826 SETTABLE                         R25 R22 R24
     1827 LOADK                            R26 K155 ["MirrorToLeft"]
     1828 NAMECALL                         R24 R6 K36 ["add"]
     1830 CALL                             R24 2 0
     1831 GETTABLEKS                       R24 R6 K411 ["AvatarSizingBoundingBox"]
     1833 DUPTABLE                         R25 K417 [{"NeutralColor", "ValidColor", "InvalidColor", "ValidTransparency", "NeutralTransparency"}]
     1834 GETIMPORT                        R26 K259 [Color3.new]
     1836 LOADK                            R27 K68 [0.5]
     1837 LOADK                            R28 K68 [0.5]
     1838 LOADK                            R29 K68 [0.5]
     1839 CALL                             R26 3 1
     1840 SETTABLEKS                       R26 R25 K412 ["NeutralColor"]
     1842 GETIMPORT                        R26 K259 [Color3.new]
     1844 LOADK                            R27 K68 [0.5]
     1845 LOADN                            R28 1
     1846 LOADK                            R29 K68 [0.5]
     1847 CALL                             R26 3 1
     1848 SETTABLEKS                       R26 R25 K413 ["ValidColor"]
     1850 GETIMPORT                        R26 K259 [Color3.new]
     1852 LOADN                            R27 1
     1853 LOADK                            R28 K68 [0.5]
     1854 LOADK                            R29 K68 [0.5]
     1855 CALL                             R26 3 1
     1856 SETTABLEKS                       R26 R25 K414 ["InvalidColor"]
     1858 LOADK                            R26 K5 [require]
     1859 SETTABLEKS                       R26 R25 K415 ["ValidTransparency"]
     1861 LOADK                            R26 K68 [0.5]
     1862 SETTABLEKS                       R26 R25 K416 ["NeutralTransparency"]
     1864 SETTABLE                         R25 R22 R24
     1865 GETTABLEKS                       R24 R6 K15 ["Alert"]
     1867 GETTABLEKS                       R25 R1 K86 ["Dictionary"]
     1869 GETTABLEKS                       R25 R25 K87 ["join"]
     1871 MOVE                             R26 R8
     1872 NEWTABLE                         R27 8 0
     1874 GETTABLEKS                       R28 R1 K86 ["Dictionary"]
     1876 GETTABLEKS                       R28 R28 K87 ["join"]
     1878 GETTABLEKS                       R29 R8 K418 ["&Warning"]
     1880 DUPTABLE                         R30 K421 [{"HorizontalPadding", "TopPadding"}]
     1881 GETIMPORT                        R31 K52 [UDim.new]
     1883 LOADN                            R32 0
     1884 LOADN                            R33 0
     1885 CALL                             R31 2 1
     1886 SETTABLEKS                       R31 R30 K419 ["HorizontalPadding"]
     1888 GETIMPORT                        R31 K52 [UDim.new]
     1890 LOADN                            R32 0
     1891 LOADN                            R33 0
     1892 CALL                             R31 2 1
     1893 SETTABLEKS                       R31 R30 K420 ["TopPadding"]
     1895 CALL                             R28 2 1
     1896 SETTABLEKS                       R28 R27 K418 ["&Warning"]
     1898 GETTABLEKS                       R28 R1 K86 ["Dictionary"]
     1900 GETTABLEKS                       R28 R28 K87 ["join"]
     1902 GETTABLEKS                       R29 R8 K422 ["&Error"]
     1904 DUPTABLE                         R30 K421 [{"HorizontalPadding", "TopPadding"}]
     1905 GETIMPORT                        R31 K52 [UDim.new]
     1907 LOADN                            R32 0
     1908 LOADN                            R33 0
     1909 CALL                             R31 2 1
     1910 SETTABLEKS                       R31 R30 K419 ["HorizontalPadding"]
     1912 GETIMPORT                        R31 K52 [UDim.new]
     1914 LOADN                            R32 0
     1915 LOADN                            R33 0
     1916 CALL                             R31 2 1
     1917 SETTABLEKS                       R31 R30 K420 ["TopPadding"]
     1919 CALL                             R28 2 1
     1920 SETTABLEKS                       R28 R27 K422 ["&Error"]
     1922 GETTABLEKS                       R28 R1 K86 ["Dictionary"]
     1924 GETTABLEKS                       R28 R28 K87 ["join"]
     1926 GETTABLEKS                       R29 R8 K385 ["&Success"]
     1928 DUPTABLE                         R30 K421 [{"HorizontalPadding", "TopPadding"}]
     1929 GETIMPORT                        R31 K52 [UDim.new]
     1931 LOADN                            R32 0
     1932 LOADN                            R33 0
     1933 CALL                             R31 2 1
     1934 SETTABLEKS                       R31 R30 K419 ["HorizontalPadding"]
     1936 GETIMPORT                        R31 K52 [UDim.new]
     1938 LOADN                            R32 0
     1939 LOADN                            R33 0
     1940 CALL                             R31 2 1
     1941 SETTABLEKS                       R31 R30 K420 ["TopPadding"]
     1943 CALL                             R28 2 1
     1944 SETTABLEKS                       R28 R27 K385 ["&Success"]
     1946 GETTABLEKS                       R28 R1 K86 ["Dictionary"]
     1948 GETTABLEKS                       R28 R28 K87 ["join"]
     1950 GETTABLEKS                       R29 R8 K423 ["&Info"]
     1952 DUPTABLE                         R30 K421 [{"HorizontalPadding", "TopPadding"}]
     1953 GETIMPORT                        R31 K52 [UDim.new]
     1955 LOADN                            R32 0
     1956 LOADN                            R33 0
     1957 CALL                             R31 2 1
     1958 SETTABLEKS                       R31 R30 K419 ["HorizontalPadding"]
     1960 GETIMPORT                        R31 K52 [UDim.new]
     1962 LOADN                            R32 0
     1963 LOADN                            R33 0
     1964 CALL                             R31 2 1
     1965 SETTABLEKS                       R31 R30 K420 ["TopPadding"]
     1967 CALL                             R28 2 1
     1968 SETTABLEKS                       R28 R27 K423 ["&Info"]
     1970 GETTABLEKS                       R28 R1 K86 ["Dictionary"]
     1972 GETTABLEKS                       R28 R28 K87 ["join"]
     1974 GETTABLEKS                       R29 R8 K418 ["&Warning"]
     1976 DUPTABLE                         R30 K424 [{"HorizontalPadding", "TopPadding", "MaxWidth"}]
     1977 GETIMPORT                        R31 K52 [UDim.new]
     1979 LOADN                            R32 0
     1980 LOADN                            R33 0
     1981 CALL                             R31 2 1
     1982 SETTABLEKS                       R31 R30 K419 ["HorizontalPadding"]
     1984 GETIMPORT                        R31 K52 [UDim.new]
     1986 LOADN                            R32 0
     1987 LOADN                            R33 0
     1988 CALL                             R31 2 1
     1989 SETTABLEKS                       R31 R30 K420 ["TopPadding"]
     1991 LOADN                            R31 132
     1992 SETTABLEKS                       R31 R30 K199 ["MaxWidth"]
     1994 CALL                             R28 2 1
     1995 SETTABLEKS                       R28 R27 K425 ["&WarningLong"]
     1997 CALL                             R25 2 1
     1998 SETTABLE                         R25 R22 R24
     1999 GETTABLEKS                       R24 R6 K17 ["Button"]
     2001 GETTABLEKS                       R25 R1 K86 ["Dictionary"]
     2003 GETTABLEKS                       R25 R25 K87 ["join"]
     2005 MOVE                             R26 R9
     2006 NEWTABLE                         R27 1 0
     2008 GETTABLEKS                       R28 R1 K86 ["Dictionary"]
     2010 GETTABLEKS                       R28 R28 K87 ["join"]
     2012 GETTABLEKS                       R29 R9 K426 ["&Round"]
     2014 NEWTABLE                         R30 2 0
     2016 GETTABLEKS                       R31 R1 K86 ["Dictionary"]
     2018 GETTABLEKS                       R31 R31 K87 ["join"]
     2020 GETTABLEKS                       R32 R9 K427 ["BackgroundStyle"]
     2022 DUPTABLE                         R33 K428 [{"BorderColor"}]
     2023 GETTABLEKS                       R34 R4 K429 ["SubText"]
     2025 SETTABLEKS                       R34 R33 K326 ["BorderColor"]
     2027 CALL                             R31 2 1
     2028 SETTABLEKS                       R31 R30 K427 ["BackgroundStyle"]
     2030 GETTABLEKS                       R31 R5 K430 ["Hover"]
     2032 GETTABLEKS                       R32 R1 K86 ["Dictionary"]
     2034 GETTABLEKS                       R32 R32 K87 ["join"]
     2036 GETTABLEKS                       R34 R5 K430 ["Hover"]
     2038 GETTABLE                         R33 R9 R34
     2039 DUPTABLE                         R34 K431 [{"BackgroundStyle"}]
     2040 GETTABLEKS                       R35 R1 K86 ["Dictionary"]
     2042 GETTABLEKS                       R35 R35 K87 ["join"]
     2044 GETTABLEKS                       R37 R5 K430 ["Hover"]
     2046 GETTABLE                         R36 R9 R37
     2047 GETTABLEKS                       R36 R36 K427 ["BackgroundStyle"]
     2049 DUPTABLE                         R37 K428 [{"BorderColor"}]
     2050 GETTABLEKS                       R38 R4 K429 ["SubText"]
     2052 SETTABLEKS                       R38 R37 K326 ["BorderColor"]
     2054 CALL                             R35 2 1
     2055 SETTABLEKS                       R35 R34 K427 ["BackgroundStyle"]
     2057 CALL                             R32 2 1
     2058 SETTABLE                         R32 R30 R31
     2059 CALL                             R28 2 1
     2060 SETTABLEKS                       R28 R27 K432 ["&RoundHighlighted"]
     2062 CALL                             R25 2 1
     2063 SETTABLE                         R25 R22 R24
     2064 JUMPIFNOT                        R21 ; [+36]
     2065 GETTABLEKS                       R24 R6 K18 ["DropdownMenu"]
     2067 GETTABLEKS                       R25 R1 K86 ["Dictionary"]
     2069 GETTABLEKS                       R25 R25 K87 ["join"]
     2071 MOVE                             R26 R10
     2072 DUPTABLE                         R27 K434 [{"MaxHeight"}]
     2073 LOADK                            R28 K179 ["Color"]
     2074 SETTABLEKS                       R28 R27 K433 ["MaxHeight"]
     2076 CALL                             R25 2 1
     2077 SETTABLE                         R25 R22 R24
     2078 GETTABLEKS                       R24 R6 K23 ["SelectInput"]
     2080 GETTABLEKS                       R25 R1 K86 ["Dictionary"]
     2082 GETTABLEKS                       R25 R25 K87 ["join"]
     2084 MOVE                             R26 R15
     2085 DUPTABLE                         R27 K436 [{"DropdownMenu"}]
     2086 GETTABLEKS                       R28 R1 K86 ["Dictionary"]
     2088 GETTABLEKS                       R28 R28 K87 ["join"]
     2090 GETTABLEKS                       R29 R15 K18 ["DropdownMenu"]
     2092 DUPTABLE                         R30 K434 [{"MaxHeight"}]
     2093 LOADK                            R31 K179 ["Color"]
     2094 SETTABLEKS                       R31 R30 K433 ["MaxHeight"]
     2096 CALL                             R28 2 1
     2097 SETTABLEKS                       R28 R27 K18 ["DropdownMenu"]
     2099 CALL                             R25 2 1
     2100 SETTABLE                         R25 R22 R24
     2101 GETTABLEKS                       R24 R6 K19 ["IconButton"]
     2103 GETTABLEKS                       R25 R1 K86 ["Dictionary"]
     2105 GETTABLEKS                       R25 R25 K87 ["join"]
     2107 MOVE                             R26 R11
     2108 NEWTABLE                         R27 1 0
     2110 DUPTABLE                         R28 K437 [{"BackgroundColor", "TextColor", "Hover"}]
     2111 GETTABLEKS                       R29 R4 K438 ["IconButtonSecondaryMain"]
     2113 SETTABLEKS                       R29 R28 K81 ["BackgroundColor"]
     2115 GETTABLEKS                       R29 R4 K210 ["TextPrimary"]
     2117 SETTABLEKS                       R29 R28 K195 ["TextColor"]
     2119 DUPTABLE                         R29 K439 [{"Background"}]
     2120 GETTABLEKS                       R30 R4 K440 ["IconButtonSecondaryHover"]
     2122 SETTABLEKS                       R30 R29 K137 ["Background"]
     2124 SETTABLEKS                       R29 R28 K430 ["Hover"]
     2126 SETTABLEKS                       R28 R27 K441 ["&Secondary"]
     2128 CALL                             R25 2 1
     2129 SETTABLE                         R25 R22 R24
     2130 GETTABLEKS                       R24 R6 K20 ["Image"]
     2132 GETTABLEKS                       R25 R1 K86 ["Dictionary"]
     2134 GETTABLEKS                       R25 R25 K87 ["join"]
     2136 MOVE                             R26 R12
     2137 NEWTABLE                         R27 16 0
     2139 DUPTABLE                         R28 K442 [{"Image", "Size"}]
     2140 GETTABLEKS                       R29 R4 K443 ["Collapse"]
     2142 SETTABLEKS                       R29 R28 K20 ["Image"]
     2144 GETIMPORT                        R29 K172 [UDim2.fromOffset]
     2146 LOADN                            R30 16
     2147 LOADN                            R31 16
     2148 CALL                             R29 2 1
     2149 SETTABLEKS                       R29 R28 K56 ["Size"]
     2151 SETTABLEKS                       R28 R27 K444 ["&Collapse"]
     2153 DUPTABLE                         R28 K138 [{"Image"}]
     2154 GETTABLEKS                       R29 R4 K445 ["Hide"]
     2156 SETTABLEKS                       R29 R28 K20 ["Image"]
     2158 SETTABLEKS                       R28 R27 K446 ["&EquippedItemHideIcon"]
     2160 DUPTABLE                         R28 K138 [{"Image"}]
     2161 GETTABLEKS                       R29 R4 K447 ["HideHover"]
     2163 SETTABLEKS                       R29 R28 K20 ["Image"]
     2165 SETTABLEKS                       R28 R27 K448 ["&EquippedItemHideHoverIcon"]
     2167 DUPTABLE                         R28 K138 [{"Image"}]
     2168 GETTABLEKS                       R29 R4 K449 ["HoverMenu"]
     2170 SETTABLEKS                       R29 R28 K20 ["Image"]
     2172 SETTABLEKS                       R28 R27 K450 ["&EquippedItemHoverMenuBackground"]
     2174 DUPTABLE                         R28 K138 [{"Image"}]
     2175 GETTABLEKS                       R29 R4 K451 ["Unhide"]
     2177 SETTABLEKS                       R29 R28 K20 ["Image"]
     2179 SETTABLEKS                       R28 R27 K452 ["&EquippedItemUnhideIcon"]
     2181 DUPTABLE                         R28 K138 [{"Image"}]
     2182 GETTABLEKS                       R29 R4 K453 ["UnhideHover"]
     2184 SETTABLEKS                       R29 R28 K20 ["Image"]
     2186 SETTABLEKS                       R28 R27 K454 ["&EquippedItemUnhideHoverIcon"]
     2188 DUPTABLE                         R28 K138 [{"Image"}]
     2189 GETTABLEKS                       R29 R4 K455 ["HoverMenuDisabled"]
     2191 SETTABLEKS                       R29 R28 K20 ["Image"]
     2193 SETTABLEKS                       R28 R27 K456 ["&EquippedItemDisabledBackground"]
     2195 NEWTABLE                         R28 4 0
     2197 GETTABLEKS                       R29 R4 K457 ["Dots"]
     2199 SETTABLEKS                       R29 R28 K20 ["Image"]
     2201 GETTABLEKS                       R29 R4 K17 ["Button"]
     2203 SETTABLEKS                       R29 R28 K458 ["ImageColor3"]
     2205 GETTABLEKS                       R29 R5 K430 ["Hover"]
     2207 DUPTABLE                         R30 K459 [{"ImageColor3"}]
     2208 GETTABLEKS                       R31 R4 K460 ["ImageButtonHover"]
     2210 SETTABLEKS                       R31 R30 K458 ["ImageColor3"]
     2212 SETTABLE                         R30 R28 R29
     2213 SETTABLEKS                       R28 R27 K461 ["&EquippedItemDotsIcon"]
     2215 DUPTABLE                         R28 K442 [{"Image", "Size"}]
     2216 GETTABLEKS                       R29 R4 K462 ["DotsVertical"]
     2218 SETTABLEKS                       R29 R28 K20 ["Image"]
     2220 GETIMPORT                        R29 K172 [UDim2.fromOffset]
     2222 LOADN                            R30 20
     2223 LOADN                            R31 20
     2224 CALL                             R29 2 1
     2225 SETTABLEKS                       R29 R28 K56 ["Size"]
     2227 SETTABLEKS                       R28 R27 K463 ["&PickTabMenu"]
     2229 DUPTABLE                         R28 K442 [{"Image", "Size"}]
     2230 GETTABLEKS                       R29 R4 K464 ["Unfold"]
     2232 SETTABLEKS                       R29 R28 K20 ["Image"]
     2234 GETIMPORT                        R29 K172 [UDim2.fromOffset]
     2236 LOADN                            R30 32
     2237 LOADN                            R31 32
     2238 CALL                             R29 2 1
     2239 SETTABLEKS                       R29 R28 K56 ["Size"]
     2241 SETTABLEKS                       R28 R27 K465 ["&Unfold"]
     2243 CALL                             R25 2 1
     2244 SETTABLE                         R25 R22 R24
     2245 GETTABLEKS                       R24 R6 K24 ["Separator"]
     2247 GETTABLEKS                       R25 R1 K86 ["Dictionary"]
     2249 GETTABLEKS                       R25 R25 K87 ["join"]
     2251 MOVE                             R26 R16
     2252 NEWTABLE                         R27 1 0
     2254 DUPTABLE                         R28 K467 [{"StretchMargin"}]
     2255 LOADN                            R29 5
     2256 SETTABLEKS                       R29 R28 K466 ["StretchMargin"]
     2258 SETTABLEKS                       R28 R27 K468 ["&SelectScreenSeparator"]
     2260 CALL                             R25 2 1
     2261 SETTABLE                         R25 R22 R24
     2262 GETTABLEKS                       R24 R6 K21 ["Pane"]
     2264 GETTABLEKS                       R25 R1 K86 ["Dictionary"]
     2266 GETTABLEKS                       R25 R25 K87 ["join"]
     2268 MOVE                             R26 R13
     2269 NEWTABLE                         R27 4 0
     2271 NEWTABLE                         R28 4 0
     2273 GETTABLEKS                       R29 R4 K17 ["Button"]
     2275 SETTABLEKS                       R29 R28 K137 ["Background"]
     2277 GETIMPORT                        R29 K52 [UDim.new]
     2279 LOADN                            R30 0
     2280 LOADN                            R31 4
     2281 CALL                             R29 2 1
     2282 SETTABLEKS                       R29 R28 K197 ["CornerRadius"]
     2284 GETTABLEKS                       R29 R5 K430 ["Hover"]
     2286 DUPTABLE                         R30 K439 [{"Background"}]
     2287 GETTABLEKS                       R31 R4 K333 ["ButtonHover"]
     2289 SETTABLEKS                       R31 R30 K137 ["Background"]
     2291 SETTABLE                         R30 R28 R29
     2292 GETTABLEKS                       R29 R5 K469 ["Disabled"]
     2294 DUPTABLE                         R30 K439 [{"Background"}]
     2295 GETTABLEKS                       R31 R4 K470 ["ButtonPressed"]
     2297 SETTABLEKS                       R31 R30 K137 ["Background"]
     2299 SETTABLE                         R30 R28 R29
     2300 SETTABLEKS                       R28 R27 K471 ["&EquippedItemPreview"]
     2302 DUPTABLE                         R28 K472 [{"CornerRadius"}]
     2303 GETIMPORT                        R29 K52 [UDim.new]
     2305 LOADN                            R30 0
     2306 LOADN                            R31 4
     2307 CALL                             R29 2 1
     2308 SETTABLEKS                       R29 R28 K197 ["CornerRadius"]
     2310 SETTABLEKS                       R28 R27 K473 ["&EquippedItemPreviewInner"]
     2312 DUPTABLE                         R28 K439 [{"Background"}]
     2313 GETTABLEKS                       R29 R4 K474 ["ForegroundMuted"]
     2315 SETTABLEKS                       R29 R28 K137 ["Background"]
     2317 SETTABLEKS                       R28 R27 K475 ["&EquippedItemHoverMenu"]
     2319 DUPTABLE                         R28 K472 [{"CornerRadius"}]
     2320 GETIMPORT                        R29 K52 [UDim.new]
     2322 LOADN                            R30 0
     2323 LOADN                            R31 4
     2324 CALL                             R29 2 1
     2325 SETTABLEKS                       R29 R28 K197 ["CornerRadius"]
     2327 SETTABLEKS                       R28 R27 K476 ["&SkinPreview"]
     2329 CALL                             R25 2 1
     2330 SETTABLE                         R25 R22 R24
     2331 GETTABLEKS                       R24 R6 K25 ["SimpleTab"]
     2333 GETTABLEKS                       R25 R1 K86 ["Dictionary"]
     2335 GETTABLEKS                       R25 R25 K87 ["join"]
     2337 MOVE                             R26 R17
     2338 NEWTABLE                         R27 2 0
     2340 NEWTABLE                         R28 8 0
     2342 GETTABLEKS                       R29 R4 K84 ["SubBackground2"]
     2344 SETTABLEKS                       R29 R28 K81 ["BackgroundColor"]
     2346 LOADN                            R29 1
     2347 SETTABLEKS                       R29 R28 K89 ["BackgroundTransparency"]
     2349 LOADN                            R29 0
     2350 SETTABLEKS                       R29 R28 K477 ["BorderSize"]
     2352 DUPTABLE                         R29 K478 [{"Left", "Top", "Bottom", "Right"}]
     2353 LOADN                            R30 12
     2354 SETTABLEKS                       R30 R29 K281 ["Left"]
     2356 LOADN                            R30 2
     2357 SETTABLEKS                       R30 R29 K283 ["Top"]
     2359 LOADN                            R30 0
     2360 SETTABLEKS                       R30 R29 K284 ["Bottom"]
     2362 LOADN                            R30 12
     2363 SETTABLEKS                       R30 R29 K282 ["Right"]
     2365 SETTABLEKS                       R29 R28 K54 ["Padding"]
     2367 LOADN                            R29 0
     2368 SETTABLEKS                       R29 R28 K479 ["TopLineHeight"]
     2370 GETTABLEKS                       R29 R5 K480 ["Selected"]
     2372 DUPTABLE                         R30 K481 [{"BackgroundColor", "Font"}]
     2373 GETTABLEKS                       R31 R4 K84 ["SubBackground2"]
     2375 SETTABLEKS                       R31 R30 K81 ["BackgroundColor"]
     2377 GETIMPORT                        R31 K205 [Enum.Font.SourceSansBold]
     2379 SETTABLEKS                       R31 R30 K203 ["Font"]
     2381 SETTABLE                         R30 R28 R29
     2382 SETTABLEKS                       R28 R27 K482 ["&AssetPaletteTab"]
     2384 DUPTABLE                         R28 K483 [{"BorderSize", "TopLineHeight"}]
     2385 LOADN                            R29 0
     2386 SETTABLEKS                       R29 R28 K477 ["BorderSize"]
     2388 LOADN                            R29 3
     2389 SETTABLEKS                       R29 R28 K479 ["TopLineHeight"]
     2391 SETTABLEKS                       R28 R27 K484 ["&CategoryTab"]
     2393 CALL                             R25 2 1
     2394 SETTABLE                         R25 R22 R24
     2395 GETTABLEKS                       R24 R6 K26 ["Tooltip"]
     2397 GETTABLEKS                       R25 R1 K86 ["Dictionary"]
     2399 GETTABLEKS                       R25 R25 K87 ["join"]
     2401 MOVE                             R26 R18
     2402 NEWTABLE                         R27 1 0
     2404 DUPTABLE                         R28 K486 [{"ShowDelay"}]
     2405 LOADN                            R29 0
     2406 SETTABLEKS                       R29 R28 K485 ["ShowDelay"]
     2408 SETTABLEKS                       R28 R27 K487 ["&NoDelay"]
     2410 CALL                             R25 2 1
     2411 SETTABLE                         R25 R22 R24
     2412 LOADK                            R26 K232 [{"HoverX", "CornerRadius", "StrokeColor", "StrokeThickness", "ItemHiddenTransparency", "ItemWornTransparency"}]
     2413 NAMECALL                         R24 R6 K36 ["add"]
     2415 CALL                             R24 2 0
     2416 GETTABLEKS                       R24 R6 K488 ["StageInfoBar"]
     2418 DUPTABLE                         R25 K494 [{"CircleBackground", "CircleStrokeSelected", "CircleStrokeUnselected", "DividerSelected", "DividerUnselected"}]
     2419 GETTABLEKS                       R26 R4 K134 ["SubBackground"]
     2421 SETTABLEKS                       R26 R25 K489 ["CircleBackground"]
     2423 GETTABLEKS                       R26 R4 K210 ["TextPrimary"]
     2425 SETTABLEKS                       R26 R25 K490 ["CircleStrokeSelected"]
     2427 GETTABLEKS                       R26 R4 K166 ["Border"]
     2429 SETTABLEKS                       R26 R25 K491 ["CircleStrokeUnselected"]
     2431 GETTABLEKS                       R26 R4 K210 ["TextPrimary"]
     2433 SETTABLEKS                       R26 R25 K492 ["DividerSelected"]
     2435 GETTABLEKS                       R26 R4 K166 ["Border"]
     2437 SETTABLEKS                       R26 R25 K493 ["DividerUnselected"]
     2439 SETTABLE                         R25 R22 R24
     2440 RETURN                           R22 1
