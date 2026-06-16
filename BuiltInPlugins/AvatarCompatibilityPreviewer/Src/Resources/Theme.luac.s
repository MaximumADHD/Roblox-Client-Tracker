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
       18 GETTABLEKS                       R3 R3 K8 ["Foundation"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["Framework"]
       27 CALL                             R3 1 1
       28 GETTABLEKS                       R4 R2 K10 ["Utility"]
       30 GETTABLEKS                       R4 R4 K11 ["getTokens"]
       32 GETTABLEKS                       R5 R2 K12 ["Enums"]
       34 GETTABLEKS                       R5 R5 K13 ["Theme"]
       36 GETTABLEKS                       R5 R5 K14 ["Dark"]
       38 GETTABLEKS                       R6 R2 K12 ["Enums"]
       40 GETTABLEKS                       R6 R6 K15 ["Device"]
       42 GETTABLEKS                       R6 R6 K16 ["Desktop"]
       44 CALL                             R4 2 1
       45 GETTABLEKS                       R5 R3 K17 ["Style"]
       47 GETTABLEKS                       R6 R5 K18 ["StyleKey"]
       49 GETTABLEKS                       R7 R3 K19 ["Util"]
       51 GETTABLEKS                       R7 R7 K20 ["StyleModifier"]
       53 GETTABLEKS                       R8 R5 K21 ["ComponentSymbols"]
       55 GETTABLEKS                       R9 R3 K22 ["UIData"]
       57 GETIMPORT                        R10 K5 [require]
       59 GETTABLEKS                       R11 R9 K23 ["Alert"]
       61 GETTABLEKS                       R11 R11 K24 ["style"]
       63 CALL                             R10 1 1
       64 GETIMPORT                        R11 K5 [require]
       66 GETTABLEKS                       R12 R9 K25 ["Button"]
       68 GETTABLEKS                       R12 R12 K24 ["style"]
       70 CALL                             R11 1 1
       71 GETIMPORT                        R12 K5 [require]
       73 GETTABLEKS                       R13 R9 K26 ["DropdownMenu"]
       75 GETTABLEKS                       R13 R13 K24 ["style"]
       77 CALL                             R12 1 1
       78 GETIMPORT                        R13 K5 [require]
       80 GETTABLEKS                       R14 R9 K27 ["IconButton"]
       82 GETTABLEKS                       R14 R14 K24 ["style"]
       84 CALL                             R13 1 1
       85 GETIMPORT                        R14 K5 [require]
       87 GETTABLEKS                       R15 R9 K28 ["Image"]
       89 GETTABLEKS                       R15 R15 K24 ["style"]
       91 CALL                             R14 1 1
       92 GETIMPORT                        R15 K5 [require]
       94 GETTABLEKS                       R16 R9 K29 ["Pane"]
       96 GETTABLEKS                       R16 R16 K24 ["style"]
       98 CALL                             R15 1 1
       99 GETIMPORT                        R16 K5 [require]
      101 GETTABLEKS                       R17 R9 K30 ["ScrollingFrame"]
      103 GETTABLEKS                       R17 R17 K24 ["style"]
      105 CALL                             R16 1 1
      106 GETIMPORT                        R17 K5 [require]
      108 GETTABLEKS                       R18 R9 K31 ["SelectInput"]
      110 GETTABLEKS                       R18 R18 K24 ["style"]
      112 CALL                             R17 1 1
      113 GETIMPORT                        R18 K5 [require]
      115 GETTABLEKS                       R19 R9 K32 ["Separator"]
      117 GETTABLEKS                       R19 R19 K24 ["style"]
      119 CALL                             R18 1 1
      120 GETIMPORT                        R19 K5 [require]
      122 GETTABLEKS                       R20 R9 K33 ["SimpleTab"]
      124 GETTABLEKS                       R20 R20 K24 ["style"]
      126 CALL                             R19 1 1
      127 GETIMPORT                        R20 K5 [require]
      129 GETTABLEKS                       R21 R9 K34 ["Tooltip"]
      131 GETTABLEKS                       R21 R21 K24 ["style"]
      133 CALL                             R20 1 1
      134 GETIMPORT                        R21 K5 [require]
      136 GETTABLEKS                       R22 R0 K35 ["Src"]
      138 GETTABLEKS                       R22 R22 K36 ["Flags"]
      140 GETTABLEKS                       R22 R22 K37 ["getFFlagAvatarPreviewerEditingTools"]
      142 CALL                             R21 1 1
      143 GETIMPORT                        R22 K39 [game]
      145 LOADK                            R24 K40 ["DebugAvatarPreviewerDropdownMenuInfiniteMaxHeight"]
      146 LOADB                            R25 0
      147 NAMECALL                         R22 R22 K41 ["DefineFastFlag"]
      149 CALL                             R22 3 1
      150 NEWTABLE                         R23 0 0
      152 LOADK                            R26 K42 ["AddItemButton"]
      153 NAMECALL                         R24 R8 K43 ["add"]
      155 CALL                             R24 2 0
      156 GETTABLEKS                       R24 R8 K42 ["AddItemButton"]
      158 DUPTABLE                         R25 K53 [{"Height", "Image", "ImageColor", "ImageColorDisabled", "ImageSize", "PaddingTop", "PaddingLeft", "PaddingRight", "PaddingBottom", "FailureDialogSpacing"}]
      159 LOADN                            R26 50
      160 SETTABLEKS                       R26 R25 K44 ["Height"]
      162 LOADK                            R26 K54 ["rbxasset://textures/AvatarCompatibilityPreviewer/add.png"]
      163 SETTABLEKS                       R26 R25 K28 ["Image"]
      165 GETTABLEKS                       R26 R6 K55 ["TextSecondary"]
      167 SETTABLEKS                       R26 R25 K45 ["ImageColor"]
      169 GETTABLEKS                       R26 R6 K56 ["TextDisabled"]
      171 SETTABLEKS                       R26 R25 K46 ["ImageColorDisabled"]
      173 LOADN                            R26 20
      174 SETTABLEKS                       R26 R25 K47 ["ImageSize"]
      176 LOADN                            R26 5
      177 SETTABLEKS                       R26 R25 K48 ["PaddingTop"]
      179 LOADN                            R26 5
      180 SETTABLEKS                       R26 R25 K49 ["PaddingLeft"]
      182 LOADN                            R26 9
      183 SETTABLEKS                       R26 R25 K50 ["PaddingRight"]
      185 LOADN                            R26 5
      186 SETTABLEKS                       R26 R25 K51 ["PaddingBottom"]
      188 GETIMPORT                        R26 K59 [UDim.new]
      190 LOADN                            R27 0
      191 LOADN                            R28 4
      192 CALL                             R26 2 1
      193 SETTABLEKS                       R26 R25 K52 ["FailureDialogSpacing"]
      195 SETTABLE                         R25 R23 R24
      196 LOADK                            R26 K60 ["AnimationControllerDisplay"]
      197 NAMECALL                         R24 R8 K43 ["add"]
      199 CALL                             R24 2 0
      200 GETTABLEKS                       R24 R8 K60 ["AnimationControllerDisplay"]
      202 DUPTABLE                         R25 K64 [{"Padding", "Position", "Size"}]
      203 LOADN                            R26 30
      204 SETTABLEKS                       R26 R25 K61 ["Padding"]
      206 GETIMPORT                        R26 K66 [UDim2.new]
      208 LOADN                            R27 0
      209 LOADN                            R28 0
      210 LOADN                            R29 1
      211 LOADN                            R30 244
      212 CALL                             R26 4 1
      213 SETTABLEKS                       R26 R25 K62 ["Position"]
      215 GETIMPORT                        R26 K66 [UDim2.new]
      217 LOADN                            R27 1
      218 LOADN                            R28 0
      219 LOADN                            R29 0
      220 LOADN                            R30 32
      221 CALL                             R26 4 1
      222 SETTABLEKS                       R26 R25 K63 ["Size"]
      224 SETTABLE                         R25 R23 R24
      225 LOADK                            R26 K67 ["AnimationPlaybackSlider"]
      226 NAMECALL                         R24 R8 K43 ["add"]
      228 CALL                             R24 2 0
      229 GETTABLEKS                       R24 R8 K67 ["AnimationPlaybackSlider"]
      231 DUPTABLE                         R25 K72 [{"PlayImage", "PauseImage", "PlayButtonWidth", "PlayTimeLabelWidth", "Padding"}]
      232 GETTABLEKS                       R26 R6 K68 ["PlayImage"]
      234 SETTABLEKS                       R26 R25 K68 ["PlayImage"]
      236 LOADK                            R26 K73 ["rbxasset://textures/LayeredClothingEditor/Icon_Pause.png"]
      237 SETTABLEKS                       R26 R25 K69 ["PauseImage"]
      239 LOADN                            R26 20
      240 SETTABLEKS                       R26 R25 K70 ["PlayButtonWidth"]
      242 LOADN                            R26 60
      243 SETTABLEKS                       R26 R25 K71 ["PlayTimeLabelWidth"]
      245 LOADN                            R26 12
      246 SETTABLEKS                       R26 R25 K61 ["Padding"]
      248 SETTABLE                         R25 R23 R24
      249 LOADK                            R26 K74 ["AnimationPreview"]
      250 NAMECALL                         R24 R8 K43 ["add"]
      252 CALL                             R24 2 0
      253 GETTABLEKS                       R24 R8 K74 ["AnimationPreview"]
      255 NEWTABLE                         R25 4 0
      257 LOADK                            R26 K75 [0.5]
      258 SETTABLEKS                       R26 R25 K76 ["PausedAnimationAlpha"]
      260 DUPTABLE                         R26 K78 [{"FrontRightAngleLerp"}]
      261 LOADK                            R27 K79 [0.4]
      262 SETTABLEKS                       R27 R26 K77 ["FrontRightAngleLerp"]
      264 SETTABLEKS                       R26 R25 K80 ["&BodyPreview"]
      266 DUPTABLE                         R26 K83 [{"FieldOfView", "FrontRightAngleLerp", "InitialDistance"}]
      267 LOADN                            R27 30
      268 SETTABLEKS                       R27 R26 K81 ["FieldOfView"]
      270 LOADK                            R27 K84 [0.08]
      271 SETTABLEKS                       R27 R26 K77 ["FrontRightAngleLerp"]
      273 LOADK                            R27 K85 [2.8]
      274 SETTABLEKS                       R27 R26 K82 ["InitialDistance"]
      276 SETTABLEKS                       R26 R25 K86 ["&FacePreview"]
      278 SETTABLE                         R25 R23 R24
      279 LOADK                            R26 K87 ["AssetPalettes"]
      280 NAMECALL                         R24 R8 K43 ["add"]
      282 CALL                             R24 2 0
      283 GETTABLEKS                       R24 R8 K87 ["AssetPalettes"]
      285 DUPTABLE                         R25 K90 [{"BackgroundColor", "BackgroundColorHover", "ScrollingFrame", "Size"}]
      286 GETTABLEKS                       R26 R6 K91 ["SubBackground2"]
      288 SETTABLEKS                       R26 R25 K88 ["BackgroundColor"]
      290 GETTABLEKS                       R26 R6 K92 ["ActionHover"]
      292 SETTABLEKS                       R26 R25 K89 ["BackgroundColorHover"]
      294 GETTABLEKS                       R26 R1 K93 ["Dictionary"]
      296 GETTABLEKS                       R26 R26 K94 ["join"]
      298 MOVE                             R27 R16
      299 DUPTABLE                         R28 K99 [{"BackgroundColor3", "BackgroundTransparency", "Padding", "ScrollBarThickness", "Spacing"}]
      300 GETTABLEKS                       R29 R6 K91 ["SubBackground2"]
      302 SETTABLEKS                       R29 R28 K95 ["BackgroundColor3"]
      304 LOADN                            R29 0
      305 SETTABLEKS                       R29 R28 K96 ["BackgroundTransparency"]
      307 LOADN                            R29 0
      308 SETTABLEKS                       R29 R28 K61 ["Padding"]
      310 LOADN                            R29 0
      311 SETTABLEKS                       R29 R28 K97 ["ScrollBarThickness"]
      313 GETIMPORT                        R29 K59 [UDim.new]
      315 LOADN                            R30 0
      316 LOADN                            R31 5
      317 CALL                             R29 2 1
      318 SETTABLEKS                       R29 R28 K98 ["Spacing"]
      320 CALL                             R26 2 1
      321 SETTABLEKS                       R26 R25 K30 ["ScrollingFrame"]
      323 GETIMPORT                        R26 K66 [UDim2.new]
      325 LOADN                            R27 1
      326 LOADN                            R28 0
      327 LOADN                            R29 0
      328 LOADN                            R30 24
      329 CALL                             R26 4 1
      330 SETTABLEKS                       R26 R25 K63 ["Size"]
      332 SETTABLE                         R25 R23 R24
      333 LOADK                            R26 K100 ["AutoSetupScreen"]
      334 NAMECALL                         R24 R8 K43 ["add"]
      336 CALL                             R24 2 0
      337 GETTABLEKS                       R24 R8 K100 ["AutoSetupScreen"]
      339 DUPTABLE                         R25 K108 [{"AlertPaddingHorizontal", "AlertPaddingVertical", "Controls", "SpinRate", "SplitPane", "TablePadding", "ToggleBarHeight"}]
      340 GETIMPORT                        R26 K59 [UDim.new]
      342 LOADN                            R27 0
      343 LOADN                            R28 20
      344 CALL                             R26 2 1
      345 SETTABLEKS                       R26 R25 K101 ["AlertPaddingHorizontal"]
      347 GETIMPORT                        R26 K59 [UDim.new]
      349 LOADN                            R27 0
      350 LOADN                            R28 8
      351 CALL                             R26 2 1
      352 SETTABLEKS                       R26 R25 K102 ["AlertPaddingVertical"]
      354 DUPTABLE                         R26 K116 [{"AnchorPoint", "ButtonAnchorPoint", "ButtonColor", "ButtonHeight", "ButtonPaddingHorizontal", "Position", "TablePosition", "PaneHeight"}]
      355 GETIMPORT                        R27 K118 [Vector2.new]
      357 LOADK                            R28 K75 [0.5]
      358 LOADN                            R29 1
      359 CALL                             R27 2 1
      360 SETTABLEKS                       R27 R26 K109 ["AnchorPoint"]
      362 GETIMPORT                        R27 K118 [Vector2.new]
      364 LOADN                            R28 1
      365 LOADK                            R29 K75 [0.5]
      366 CALL                             R27 2 1
      367 SETTABLEKS                       R27 R26 K110 ["ButtonAnchorPoint"]
      369 GETTABLEKS                       R27 R6 K119 ["SecondaryContrast"]
      371 SETTABLEKS                       R27 R26 K111 ["ButtonColor"]
      373 LOADN                            R27 28
      374 SETTABLEKS                       R27 R26 K112 ["ButtonHeight"]
      376 LOADN                            R27 24
      377 SETTABLEKS                       R27 R26 K113 ["ButtonPaddingHorizontal"]
      379 GETIMPORT                        R27 K121 [UDim2.fromScale]
      381 LOADK                            R28 K75 [0.5]
      382 LOADN                            R29 1
      383 CALL                             R27 2 1
      384 SETTABLEKS                       R27 R26 K62 ["Position"]
      386 GETIMPORT                        R27 K66 [UDim2.new]
      388 LOADK                            R28 K75 [0.5]
      389 LOADN                            R29 0
      390 LOADN                            R30 1
      391 LOADN                            R31 240
      392 CALL                             R27 4 1
      393 SETTABLEKS                       R27 R26 K114 ["TablePosition"]
      395 LOADN                            R27 42
      396 SETTABLEKS                       R27 R26 K115 ["PaneHeight"]
      398 SETTABLEKS                       R26 R25 K103 ["Controls"]
      400 LOADK                            R26 K122 [-0.25]
      401 SETTABLEKS                       R26 R25 K104 ["SpinRate"]
      403 DUPTABLE                         R26 K128 [{"DefaultSizes", "CollapsedSizes", "CollapsedTolerance", "MinimumSizes", "HiddenSizes"}]
      404 NEWTABLE                         R27 0 2
      406 GETIMPORT                        R28 K59 [UDim.new]
      408 LOADK                            R29 K129 [0.65]
      409 LOADN                            R30 0
      410 CALL                             R28 2 1
      411 GETIMPORT                        R29 K59 [UDim.new]
      413 LOADK                            R30 K130 [0.35]
      414 LOADN                            R31 0
      415 CALL                             R29 2 -1
      416 SETLIST                          R27 R28 -1 [1]
      418 SETTABLEKS                       R27 R26 K123 ["DefaultSizes"]
      420 NEWTABLE                         R27 0 2
      422 GETIMPORT                        R28 K59 [UDim.new]
      424 LOADN                            R29 1
      425 LOADN                            R30 0
      426 CALL                             R28 2 1
      427 GETIMPORT                        R29 K59 [UDim.new]
      429 LOADN                            R30 0
      430 LOADN                            R31 0
      431 CALL                             R29 2 -1
      432 SETLIST                          R27 R28 -1 [1]
      434 SETTABLEKS                       R27 R26 K124 ["CollapsedSizes"]
      436 LOADK                            R27 K131 [0.01]
      437 SETTABLEKS                       R27 R26 K125 ["CollapsedTolerance"]
      439 NEWTABLE                         R27 0 2
      441 GETIMPORT                        R28 K59 [UDim.new]
      443 LOADK                            R29 K132 [0.3]
      444 LOADN                            R30 0
      445 CALL                             R28 2 1
      446 GETIMPORT                        R29 K59 [UDim.new]
      448 LOADN                            R30 0
      449 LOADN                            R31 0
      450 CALL                             R29 2 -1
      451 SETLIST                          R27 R28 -1 [1]
      453 SETTABLEKS                       R27 R26 K126 ["MinimumSizes"]
      455 NEWTABLE                         R27 0 2
      457 GETIMPORT                        R28 K59 [UDim.new]
      459 LOADK                            R29 K133 [1.01]
      460 LOADN                            R30 0
      461 CALL                             R28 2 1
      462 GETIMPORT                        R29 K59 [UDim.new]
      464 LOADN                            R30 0
      465 LOADN                            R31 0
      466 CALL                             R29 2 -1
      467 SETLIST                          R27 R28 -1 [1]
      469 SETTABLEKS                       R27 R26 K127 ["HiddenSizes"]
      471 SETTABLEKS                       R26 R25 K105 ["SplitPane"]
      473 LOADN                            R26 8
      474 SETTABLEKS                       R26 R25 K106 ["TablePadding"]
      476 LOADN                            R26 22
      477 SETTABLEKS                       R26 R25 K107 ["ToggleBarHeight"]
      479 SETTABLE                         R25 R23 R24
      480 LOADK                            R26 K134 ["AvatarScreen"]
      481 NAMECALL                         R24 R8 K43 ["add"]
      483 CALL                             R24 2 0
      484 GETTABLEKS                       R24 R8 K134 ["AvatarScreen"]
      486 DUPTABLE                         R25 K136 [{"AssetPalettes", "Tabs"}]
      487 DUPTABLE                         R26 K140 [{"BackgroundColor", "SeparatorColor", "SeparatorWidth", "Width"}]
      488 GETTABLEKS                       R27 R6 K91 ["SubBackground2"]
      490 SETTABLEKS                       R27 R26 K88 ["BackgroundColor"]
      492 GETTABLEKS                       R27 R6 K141 ["SubBackground"]
      494 SETTABLEKS                       R27 R26 K137 ["SeparatorColor"]
      496 LOADN                            R27 0
      497 SETTABLEKS                       R27 R26 K138 ["SeparatorWidth"]
      499 LOADN                            R27 104
      500 SETTABLEKS                       R27 R26 K139 ["Width"]
      502 SETTABLEKS                       R26 R25 K87 ["AssetPalettes"]
      504 DUPTABLE                         R26 K143 [{"Height", "VerticalOffset"}]
      505 LOADN                            R27 64
      506 SETTABLEKS                       R27 R26 K44 ["Height"]
      508 LOADN                            R27 252
      509 SETTABLEKS                       R27 R26 K142 ["VerticalOffset"]
      511 SETTABLEKS                       R26 R25 K135 ["Tabs"]
      513 SETTABLE                         R25 R23 R24
      514 LOADK                            R26 K144 ["Background"]
      515 NAMECALL                         R24 R8 K43 ["add"]
      517 CALL                             R24 2 0
      518 GETTABLEKS                       R24 R8 K144 ["Background"]
      520 DUPTABLE                         R25 K145 [{"Image"}]
      521 GETTABLEKS                       R26 R6 K146 ["PreviewerBackgroundImage"]
      523 SETTABLEKS                       R26 R25 K28 ["Image"]
      525 SETTABLE                         R25 R23 R24
      526 MOVE                             R24 R21
      527 CALL                             R24 0 1
      528 JUMPIFNOT                        R24 ; [+16]
      529 LOADK                            R26 K147 ["BodyPointsTool"]
      530 NAMECALL                         R24 R8 K43 ["add"]
      532 CALL                             R24 2 0
      533 GETTABLEKS                       R24 R8 K147 ["BodyPointsTool"]
      535 DUPTABLE                         R25 K150 [{"ProjectionImage", "SymmetricalImage"}]
      536 GETTABLEKS                       R26 R6 K151 ["Projection"]
      538 SETTABLEKS                       R26 R25 K148 ["ProjectionImage"]
      540 GETTABLEKS                       R26 R6 K152 ["Symmetry"]
      542 SETTABLEKS                       R26 R25 K149 ["SymmetricalImage"]
      544 SETTABLE                         R25 R23 R24
      545 MOVE                             R24 R21
      546 CALL                             R24 0 1
      547 JUMPIFNOT                        R24 ; [+32]
      548 LOADK                            R26 K153 ["CageEditingTool"]
      549 NAMECALL                         R24 R8 K43 ["add"]
      551 CALL                             R24 2 0
      552 GETTABLEKS                       R24 R8 K153 ["CageEditingTool"]
      554 DUPTABLE                         R25 K160 [{"FalloffImage", "MirrorToLeftImage", "MirrorToRightImage", "RadiusImage", "ResetChangesImage", "SymmetryImage"}]
      555 GETTABLEKS                       R26 R6 K161 ["Falloff"]
      557 SETTABLEKS                       R26 R25 K154 ["FalloffImage"]
      559 GETTABLEKS                       R26 R6 K162 ["MirrorToLeft"]
      561 SETTABLEKS                       R26 R25 K155 ["MirrorToLeftImage"]
      563 GETTABLEKS                       R26 R6 K163 ["MirrorToRight"]
      565 SETTABLEKS                       R26 R25 K156 ["MirrorToRightImage"]
      567 GETTABLEKS                       R26 R6 K164 ["Radius"]
      569 SETTABLEKS                       R26 R25 K157 ["RadiusImage"]
      571 GETTABLEKS                       R26 R6 K165 ["ResetChanges"]
      573 SETTABLEKS                       R26 R25 K158 ["ResetChangesImage"]
      575 GETTABLEKS                       R26 R6 K152 ["Symmetry"]
      577 SETTABLEKS                       R26 R25 K159 ["SymmetryImage"]
      579 SETTABLE                         R25 R23 R24
      580 LOADK                            R26 K166 ["Catalog"]
      581 NAMECALL                         R24 R8 K43 ["add"]
      583 CALL                             R24 2 0
      584 GETTABLEKS                       R24 R8 K166 ["Catalog"]
      586 DUPTABLE                         R25 K169 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
      587 GETTABLEKS                       R26 R1 K93 ["Dictionary"]
      589 GETTABLEKS                       R26 R26 K94 ["join"]
      591 MOVE                             R27 R16
      592 DUPTABLE                         R28 K172 [{"BorderColor3", "Padding", "ScrollBarThickness", "VerticalScrollBarInset"}]
      593 GETTABLEKS                       R29 R6 K173 ["Border"]
      595 SETTABLEKS                       R29 R28 K170 ["BorderColor3"]
      597 LOADN                            R29 0
      598 SETTABLEKS                       R29 R28 K61 ["Padding"]
      600 LOADN                            R29 4
      601 SETTABLEKS                       R29 R28 K97 ["ScrollBarThickness"]
      603 GETIMPORT                        R29 K177 [Enum.ScrollBarInset.Always]
      605 SETTABLEKS                       R29 R28 K171 ["VerticalScrollBarInset"]
      607 CALL                             R26 2 1
      608 SETTABLEKS                       R26 R25 K30 ["ScrollingFrame"]
      610 GETIMPORT                        R26 K59 [UDim.new]
      612 LOADN                            R27 1
      613 LOADN                            R28 206
      614 CALL                             R26 2 1
      615 SETTABLEKS                       R26 R25 K167 ["ScrollingFrameHeight"]
      617 GETIMPORT                        R26 K179 [UDim2.fromOffset]
      619 LOADN                            R27 90
      620 LOADN                            R28 90
      621 CALL                             R26 2 1
      622 SETTABLEKS                       R26 R25 K168 ["CellSize"]
      624 SETTABLE                         R25 R23 R24
      625 LOADK                            R26 K180 ["CatalogItemButton"]
      626 NAMECALL                         R24 R8 K43 ["add"]
      628 CALL                             R24 2 0
      629 GETTABLEKS                       R24 R8 K180 ["CatalogItemButton"]
      631 DUPTABLE                         R25 K185 [{"HoverX", "AccessoryTypeImage", "UserImage", "Padding", "TextLabelPadding"}]
      632 DUPTABLE                         R26 K187 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
      633 GETTABLEKS                       R27 R6 K55 ["TextSecondary"]
      635 SETTABLEKS                       R27 R26 K186 ["Color"]
      637 LOADK                            R27 K188 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
      638 SETTABLEKS                       R27 R26 K28 ["Image"]
      640 GETIMPORT                        R27 K118 [Vector2.new]
      642 LOADN                            R28 1
      643 LOADN                            R29 0
      644 CALL                             R27 2 1
      645 SETTABLEKS                       R27 R26 K109 ["AnchorPoint"]
      647 GETIMPORT                        R27 K66 [UDim2.new]
      649 LOADN                            R28 1
      650 LOADN                            R29 252
      651 LOADN                            R30 0
      652 LOADN                            R31 4
      653 CALL                             R27 4 1
      654 SETTABLEKS                       R27 R26 K62 ["Position"]
      656 GETIMPORT                        R27 K179 [UDim2.fromOffset]
      658 LOADN                            R28 13
      659 LOADN                            R29 13
      660 CALL                             R27 2 1
      661 SETTABLEKS                       R27 R26 K63 ["Size"]
      663 SETTABLEKS                       R26 R25 K181 ["HoverX"]
      665 DUPTABLE                         R26 K191 [{"Color", "AnchorPoint", "Position", "Size", "LayeredImage", "RigidImage"}]
      666 GETTABLEKS                       R27 R6 K55 ["TextSecondary"]
      668 SETTABLEKS                       R27 R26 K186 ["Color"]
      670 GETIMPORT                        R27 K118 [Vector2.new]
      672 LOADN                            R28 0
      673 LOADN                            R29 0
      674 CALL                             R27 2 1
      675 SETTABLEKS                       R27 R26 K109 ["AnchorPoint"]
      677 GETIMPORT                        R27 K179 [UDim2.fromOffset]
      679 LOADN                            R28 4
      680 LOADN                            R29 4
      681 CALL                             R27 2 1
      682 SETTABLEKS                       R27 R26 K62 ["Position"]
      684 GETIMPORT                        R27 K179 [UDim2.fromOffset]
      686 LOADN                            R28 13
      687 LOADN                            R29 13
      688 CALL                             R27 2 1
      689 SETTABLEKS                       R27 R26 K63 ["Size"]
      691 LOADK                            R27 K192 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/layered@2x.png"]
      692 SETTABLEKS                       R27 R26 K189 ["LayeredImage"]
      694 LOADK                            R27 K193 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rigid@2x.png"]
      695 SETTABLEKS                       R27 R26 K190 ["RigidImage"]
      697 SETTABLEKS                       R26 R25 K182 ["AccessoryTypeImage"]
      699 DUPTABLE                         R26 K187 [{"Color", "Image", "AnchorPoint", "Position", "Size"}]
      700 GETTABLEKS                       R27 R6 K55 ["TextSecondary"]
      702 SETTABLEKS                       R27 R26 K186 ["Color"]
      704 LOADK                            R27 K194 ["rbxasset://textures/AvatarCompatibilityPreviewer/user.png"]
      705 SETTABLEKS                       R27 R26 K28 ["Image"]
      707 GETIMPORT                        R27 K118 [Vector2.new]
      709 LOADN                            R28 1
      710 LOADN                            R29 0
      711 CALL                             R27 2 1
      712 SETTABLEKS                       R27 R26 K109 ["AnchorPoint"]
      714 GETIMPORT                        R27 K66 [UDim2.new]
      716 LOADN                            R28 1
      717 LOADN                            R29 252
      718 LOADN                            R30 1
      719 LOADN                            R31 236
      720 CALL                             R27 4 1
      721 SETTABLEKS                       R27 R26 K62 ["Position"]
      723 GETIMPORT                        R27 K179 [UDim2.fromOffset]
      725 LOADN                            R28 13
      726 LOADN                            R29 16
      727 CALL                             R27 2 1
      728 SETTABLEKS                       R27 R26 K63 ["Size"]
      730 SETTABLEKS                       R26 R25 K183 ["UserImage"]
      732 LOADN                            R26 4
      733 SETTABLEKS                       R26 R25 K61 ["Padding"]
      735 GETIMPORT                        R26 K59 [UDim.new]
      737 LOADN                            R27 0
      738 LOADN                            R28 8
      739 CALL                             R26 2 1
      740 SETTABLEKS                       R26 R25 K184 ["TextLabelPadding"]
      742 SETTABLE                         R25 R23 R24
      743 LOADK                            R26 K195 ["ContextualSurveyDialogButton"]
      744 NAMECALL                         R24 R8 K43 ["add"]
      746 CALL                             R24 2 0
      747 GETTABLEKS                       R24 R8 K195 ["ContextualSurveyDialogButton"]
      749 DUPTABLE                         R25 K196 [{"Image", "Position", "Size"}]
      750 GETTABLEKS                       R26 R6 K197 ["SendFeedback"]
      752 SETTABLEKS                       R26 R25 K28 ["Image"]
      754 GETIMPORT                        R26 K66 [UDim2.new]
      756 LOADN                            R27 0
      757 LOADN                            R28 28
      758 LOADN                            R29 1
      759 LOADN                            R30 196
      760 CALL                             R26 4 1
      761 SETTABLEKS                       R26 R25 K62 ["Position"]
      763 GETIMPORT                        R26 K179 [UDim2.fromOffset]
      765 LOADN                            R27 24
      766 LOADN                            R28 24
      767 CALL                             R26 2 1
      768 SETTABLEKS                       R26 R25 K63 ["Size"]
      770 SETTABLE                         R25 R23 R24
      771 LOADK                            R26 K198 ["GenerationCard"]
      772 NAMECALL                         R24 R8 K43 ["add"]
      774 CALL                             R24 2 0
      775 GETTABLEKS                       R24 R8 K198 ["GenerationCard"]
      777 DUPTABLE                         R25 K209 [{"TitleFont", "PrimaryActionFont", "BackgroundColor", "BackgroundColorHoverDarkerMultiplier", "TextColor", "TextSize", "CornerRadius", "InnerPadding", "MaxWidth", "StrokeColor", "StrokeThickness"}]
      778 GETIMPORT                        R26 K212 [Enum.Font.SourceSansBold]
      780 SETTABLEKS                       R26 R25 K199 ["TitleFont"]
      782 GETIMPORT                        R26 K214 [Enum.Font.SourceSans]
      784 SETTABLEKS                       R26 R25 K200 ["PrimaryActionFont"]
      786 GETTABLEKS                       R26 R6 K215 ["AlertBackgroundDefault"]
      788 SETTABLEKS                       R26 R25 K88 ["BackgroundColor"]
      790 LOADK                            R26 K216 [0.15]
      791 SETTABLEKS                       R26 R25 K201 ["BackgroundColorHoverDarkerMultiplier"]
      793 GETTABLEKS                       R26 R6 K217 ["TextPrimary"]
      795 SETTABLEKS                       R26 R25 K202 ["TextColor"]
      797 LOADN                            R26 18
      798 SETTABLEKS                       R26 R25 K203 ["TextSize"]
      800 GETIMPORT                        R26 K59 [UDim.new]
      802 LOADN                            R27 0
      803 LOADN                            R28 8
      804 CALL                             R26 2 1
      805 SETTABLEKS                       R26 R25 K204 ["CornerRadius"]
      807 LOADN                            R26 12
      808 SETTABLEKS                       R26 R25 K205 ["InnerPadding"]
      810 LOADN                            R26 244
      811 SETTABLEKS                       R26 R25 K206 ["MaxWidth"]
      813 GETTABLEKS                       R26 R6 K218 ["OtherDivider"]
      815 SETTABLEKS                       R26 R25 K207 ["StrokeColor"]
      817 LOADN                            R26 1
      818 SETTABLEKS                       R26 R25 K208 ["StrokeThickness"]
      820 SETTABLE                         R25 R23 R24
      821 MOVE                             R24 R21
      822 CALL                             R24 0 1
      823 JUMPIFNOT                        R24 ; [+24]
      824 LOADK                            R26 K219 ["EditingTools"]
      825 NAMECALL                         R24 R8 K43 ["add"]
      827 CALL                             R24 2 0
      828 GETTABLEKS                       R24 R8 K219 ["EditingTools"]
      830 DUPTABLE                         R25 K224 [{"AttachmentToolImage", "CageEditingToolImage", "ShowClothingOffImage", "ShowClothingOnImage"}]
      831 GETTABLEKS                       R26 R6 K225 ["AttachmentTool"]
      833 SETTABLEKS                       R26 R25 K220 ["AttachmentToolImage"]
      835 GETTABLEKS                       R26 R6 K226 ["CageTool"]
      837 SETTABLEKS                       R26 R25 K221 ["CageEditingToolImage"]
      839 GETTABLEKS                       R26 R6 K227 ["ShowClothingOff"]
      841 SETTABLEKS                       R26 R25 K222 ["ShowClothingOffImage"]
      843 GETTABLEKS                       R26 R6 K228 ["ShowClothingOn"]
      845 SETTABLEKS                       R26 R25 K223 ["ShowClothingOnImage"]
      847 SETTABLE                         R25 R23 R24
      848 LOADK                            R26 K229 ["EquippedItemsSidebar"]
      849 NAMECALL                         R24 R8 K43 ["add"]
      851 CALL                             R24 2 0
      852 GETTABLEKS                       R24 R8 K229 ["EquippedItemsSidebar"]
      854 DUPTABLE                         R25 K235 [{"CellSize", "FrameSizeOffset", "ItemSpacing", "ScrollingFrameSizeOffset", "ScrollBarThickness", "SidebarSpacing", "Size", "SidebarPadding"}]
      855 GETIMPORT                        R26 K179 [UDim2.fromOffset]
      857 LOADN                            R27 45
      858 LOADN                            R28 45
      859 CALL                             R26 2 1
      860 SETTABLEKS                       R26 R25 K168 ["CellSize"]
      862 LOADN                            R26 50
      863 SETTABLEKS                       R26 R25 K230 ["FrameSizeOffset"]
      865 GETIMPORT                        R26 K59 [UDim.new]
      867 LOADN                            R27 0
      868 LOADN                            R28 5
      869 CALL                             R26 2 1
      870 SETTABLEKS                       R26 R25 K231 ["ItemSpacing"]
      872 LOADN                            R26 90
      873 SETTABLEKS                       R26 R25 K232 ["ScrollingFrameSizeOffset"]
      875 LOADN                            R26 4
      876 SETTABLEKS                       R26 R25 K97 ["ScrollBarThickness"]
      878 LOADN                            R26 15
      879 SETTABLEKS                       R26 R25 K233 ["SidebarSpacing"]
      881 GETIMPORT                        R26 K179 [UDim2.fromOffset]
      883 LOADN                            R27 0
      884 LOADN                            R28 0
      885 CALL                             R26 2 1
      886 SETTABLEKS                       R26 R25 K63 ["Size"]
      888 LOADN                            R26 10
      889 SETTABLEKS                       R26 R25 K234 ["SidebarPadding"]
      891 SETTABLE                         R25 R23 R24
      892 LOADK                            R26 K236 ["EquippedItemPreview"]
      893 NAMECALL                         R24 R8 K43 ["add"]
      895 CALL                             R24 2 0
      896 GETTABLEKS                       R24 R8 K236 ["EquippedItemPreview"]
      898 DUPTABLE                         R25 K239 [{"HoverX", "CornerRadius", "StrokeColor", "StrokeThickness", "ItemHiddenTransparency", "ItemWornTransparency"}]
      899 DUPTABLE                         R26 K240 [{"Image", "AnchorPoint", "Position", "Size"}]
      900 LOADK                            R27 K188 ["rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png"]
      901 SETTABLEKS                       R27 R26 K28 ["Image"]
      903 GETIMPORT                        R27 K118 [Vector2.new]
      905 LOADN                            R28 1
      906 LOADN                            R29 0
      907 CALL                             R27 2 1
      908 SETTABLEKS                       R27 R26 K109 ["AnchorPoint"]
      910 GETIMPORT                        R27 K66 [UDim2.new]
      912 LOADN                            R28 1
      913 LOADN                            R29 254
      914 LOADN                            R30 0
      915 LOADN                            R31 2
      916 CALL                             R27 4 1
      917 SETTABLEKS                       R27 R26 K62 ["Position"]
      919 GETIMPORT                        R27 K179 [UDim2.fromOffset]
      921 LOADN                            R28 13
      922 LOADN                            R29 13
      923 CALL                             R27 2 1
      924 SETTABLEKS                       R27 R26 K63 ["Size"]
      926 SETTABLEKS                       R26 R25 K181 ["HoverX"]
      928 GETIMPORT                        R26 K59 [UDim.new]
      930 LOADN                            R27 0
      931 LOADN                            R28 4
      932 CALL                             R26 2 1
      933 SETTABLEKS                       R26 R25 K204 ["CornerRadius"]
      935 GETTABLEKS                       R26 R6 K173 ["Border"]
      937 SETTABLEKS                       R26 R25 K207 ["StrokeColor"]
      939 LOADN                            R26 1
      940 SETTABLEKS                       R26 R25 K208 ["StrokeThickness"]
      942 LOADK                            R26 K241 [0.7]
      943 SETTABLEKS                       R26 R25 K237 ["ItemHiddenTransparency"]
      945 LOADN                            R26 0
      946 SETTABLEKS                       R26 R25 K238 ["ItemWornTransparency"]
      948 SETTABLE                         R25 R23 R24
      949 LOADK                            R26 K242 ["EquippedItemSideMenu"]
      950 NAMECALL                         R24 R8 K43 ["add"]
      952 CALL                             R24 2 0
      953 GETTABLEKS                       R24 R8 K242 ["EquippedItemSideMenu"]
      955 DUPTABLE                         R25 K247 [{"DotsBackground", "DotsBackgroundHover", "IconSize", "Margin"}]
      956 GETTABLEKS                       R26 R6 K55 ["TextSecondary"]
      958 SETTABLEKS                       R26 R25 K243 ["DotsBackground"]
      960 GETTABLEKS                       R26 R6 K248 ["TextContrast"]
      962 SETTABLEKS                       R26 R25 K244 ["DotsBackgroundHover"]
      964 LOADN                            R26 16
      965 SETTABLEKS                       R26 R25 K245 ["IconSize"]
      967 LOADN                            R26 1
      968 SETTABLEKS                       R26 R25 K246 ["Margin"]
      970 SETTABLE                         R25 R23 R24
      971 LOADK                            R26 K249 ["ImportPage"]
      972 NAMECALL                         R24 R8 K43 ["add"]
      974 CALL                             R24 2 0
      975 GETTABLEKS                       R24 R8 K249 ["ImportPage"]
      977 DUPTABLE                         R25 K257 [{"ArrowImage", "ArrowColor", "Avatar", "BackButton", "HeaderHeight", "GridPadding", "SearchBarHeight"}]
      978 LOADK                            R26 K2 ["AvatarCompatibilityPreviewer"]
      979 SETTABLEKS                       R26 R25 K250 ["ArrowImage"]
      981 GETTABLEKS                       R26 R6 K217 ["TextPrimary"]
      983 SETTABLEKS                       R26 R25 K251 ["ArrowColor"]
      985 DUPTABLE                         R26 K263 [{"IconSize", "InnerPadding", "NameFontSize", "NameLines", "Padding", "TitleColor", "PreviewAmbient"}]
      986 LOADN                            R27 75
      987 SETTABLEKS                       R27 R26 K245 ["IconSize"]
      989 LOADN                            R27 2
      990 SETTABLEKS                       R27 R26 K205 ["InnerPadding"]
      992 LOADN                            R27 16
      993 SETTABLEKS                       R27 R26 K259 ["NameFontSize"]
      995 LOADN                            R27 2
      996 SETTABLEKS                       R27 R26 K260 ["NameLines"]
      998 LOADN                            R27 4
      999 SETTABLEKS                       R27 R26 K61 ["Padding"]
     1001 GETTABLEKS                       R27 R6 K264 ["TextLink"]
     1003 SETTABLEKS                       R27 R26 K261 ["TitleColor"]
     1005 GETIMPORT                        R27 K266 [Color3.new]
     1007 LOADK                            R28 K79 [0.4]
     1008 LOADK                            R29 K79 [0.4]
     1009 LOADK                            R30 K79 [0.4]
     1010 CALL                             R27 3 1
     1011 SETTABLEKS                       R27 R26 K262 ["PreviewAmbient"]
     1013 SETTABLEKS                       R26 R25 K252 ["Avatar"]
     1015 DUPTABLE                         R26 K267 [{"Size", "IconSize"}]
     1016 GETIMPORT                        R27 K179 [UDim2.fromOffset]
     1018 LOADN                            R28 24
     1019 LOADN                            R29 24
     1020 CALL                             R27 2 1
     1021 SETTABLEKS                       R27 R26 K63 ["Size"]
     1023 LOADN                            R27 12
     1024 SETTABLEKS                       R27 R26 K245 ["IconSize"]
     1026 SETTABLEKS                       R26 R25 K253 ["BackButton"]
     1028 LOADN                            R26 35
     1029 SETTABLEKS                       R26 R25 K254 ["HeaderHeight"]
     1031 GETIMPORT                        R26 K179 [UDim2.fromOffset]
     1033 LOADN                            R27 5
     1034 LOADN                            R28 15
     1035 CALL                             R26 2 1
     1036 SETTABLEKS                       R26 R25 K255 ["GridPadding"]
     1038 GETIMPORT                        R26 K59 [UDim.new]
     1040 LOADK                            R27 K12 ["Enums"]
     1041 LOADN                            R28 0
     1042 CALL                             R26 2 1
     1043 SETTABLEKS                       R26 R25 K256 ["SearchBarHeight"]
     1045 SETTABLE                         R25 R23 R24
     1046 LOADK                            R26 K13 ["Theme"]
     1047 NAMECALL                         R24 R8 K43 ["add"]
     1049 CALL                             R24 2 0
     1050 GETTABLEKS                       R24 R8 K269 ["ItemDataPreviewModel"]
     1052 DUPTABLE                         R25 K271 [{"InstanceAmbient"}]
     1053 GETIMPORT                        R26 K266 [Color3.new]
     1055 LOADK                            R27 K79 [0.4]
     1056 LOADK                            R28 K79 [0.4]
     1057 LOADK                            R29 K79 [0.4]
     1058 CALL                             R26 3 1
     1059 SETTABLEKS                       R26 R25 K270 ["InstanceAmbient"]
     1061 SETTABLE                         R25 R23 R24
     1062 LOADK                            R26 K16 ["Desktop"]
     1063 NAMECALL                         R24 R8 K43 ["add"]
     1065 CALL                             R24 2 0
     1066 GETTABLEKS                       R24 R8 K272 ["ModelPreview"]
     1068 DUPTABLE                         R25 K279 [{"Ambient", "EnableSky", "LightColor", "LightDirection", "PanSpeedMultiplier", "Platform"}]
     1069 GETIMPORT                        R26 K281 [Color3.fromRGB]
     1071 LOADN                            R27 170
     1072 LOADN                            R28 185
     1073 LOADN                            R29 200
     1074 CALL                             R26 3 1
     1075 SETTABLEKS                       R26 R25 K273 ["Ambient"]
     1077 LOADB                            R26 1
     1078 SETTABLEKS                       R26 R25 K274 ["EnableSky"]
     1080 GETIMPORT                        R26 K281 [Color3.fromRGB]
     1082 LOADN                            R27 221
     1083 LOADN                            R28 242
     1084 LOADN                            R29 242
     1085 CALL                             R26 3 1
     1086 SETTABLEKS                       R26 R25 K275 ["LightColor"]
     1088 LOADK                            R26 K26 ["DropdownMenu"]
     1089 SETTABLEKS                       R26 R25 K276 ["LightDirection"]
     1091 LOADK                            R26 K27 ["IconButton"]
     1092 SETTABLEKS                       R26 R25 K277 ["PanSpeedMultiplier"]
     1094 DUPTABLE                         R26 K285 [{"Height", "Size", "FrontIndicatorColor"}]
     1095 LOADK                            R27 K30 ["ScrollingFrame"]
     1096 SETTABLEKS                       R27 R26 K44 ["Height"]
     1098 LOADN                            R27 5
     1099 SETTABLEKS                       R27 R26 K63 ["Size"]
     1101 GETTABLEKS                       R27 R4 K186 ["Color"]
     1103 GETTABLEKS                       R27 R27 K287 ["Extended"]
     1105 GETTABLEKS                       R27 R27 K288 ["Blue"]
     1107 GETTABLEKS                       R27 R27 K289 ["Blue_700"]
     1109 GETTABLEKS                       R27 R27 K265 ["Color3"]
     1111 SETTABLEKS                       R27 R26 K284 ["FrontIndicatorColor"]
     1113 SETTABLEKS                       R26 R25 K278 ["Platform"]
     1115 SETTABLE                         R25 R23 R24
     1116 LOADK                            R26 K34 ["Tooltip"]
     1117 NAMECALL                         R24 R8 K43 ["add"]
     1119 CALL                             R24 2 0
     1120 GETTABLEKS                       R24 R8 K290 ["Notice"]
     1122 DUPTABLE                         R25 K291 [{"BackgroundColor", "CornerRadius", "TextColor", "TextSize", "Padding"}]
     1123 GETTABLEKS                       R26 R6 K141 ["SubBackground"]
     1125 SETTABLEKS                       R26 R25 K88 ["BackgroundColor"]
     1127 GETIMPORT                        R26 K59 [UDim.new]
     1129 LOADN                            R27 0
     1130 LOADN                            R28 6
     1131 CALL                             R26 2 1
     1132 SETTABLEKS                       R26 R25 K204 ["CornerRadius"]
     1134 GETTABLEKS                       R26 R6 K217 ["TextPrimary"]
     1136 SETTABLEKS                       R26 R25 K202 ["TextColor"]
     1138 LOADN                            R26 20
     1139 SETTABLEKS                       R26 R25 K203 ["TextSize"]
     1141 DUPTABLE                         R26 K296 [{"Left", "Right", "Top", "Bottom"}]
     1142 LOADN                            R27 8
     1143 SETTABLEKS                       R27 R26 K292 ["Left"]
     1145 LOADN                            R27 8
     1146 SETTABLEKS                       R27 R26 K293 ["Right"]
     1148 LOADN                            R27 4
     1149 SETTABLEKS                       R27 R26 K294 ["Top"]
     1151 LOADN                            R27 4
     1152 SETTABLEKS                       R27 R26 K295 ["Bottom"]
     1154 SETTABLEKS                       R26 R25 K61 ["Padding"]
     1156 SETTABLE                         R25 R23 R24
     1157 LOADK                            R26 K41 ["DefineFastFlag"]
     1158 NAMECALL                         R24 R8 K43 ["add"]
     1160 CALL                             R24 2 0
     1161 GETTABLEKS                       R24 R8 K297 ["PickTabMenu"]
     1163 DUPTABLE                         R25 K298 [{"CornerRadius", "ImageColor", "Padding", "Position", "Size"}]
     1164 GETIMPORT                        R26 K59 [UDim.new]
     1166 LOADN                            R27 0
     1167 LOADN                            R28 6
     1168 CALL                             R26 2 1
     1169 SETTABLEKS                       R26 R25 K204 ["CornerRadius"]
     1171 GETTABLEKS                       R26 R6 K217 ["TextPrimary"]
     1173 SETTABLEKS                       R26 R25 K45 ["ImageColor"]
     1175 LOADN                            R26 6
     1176 SETTABLEKS                       R26 R25 K61 ["Padding"]
     1178 GETIMPORT                        R26 K66 [UDim2.new]
     1180 LOADN                            R27 1
     1181 LOADN                            R28 224
     1182 LOADN                            R29 0
     1183 LOADN                            R30 0
     1184 CALL                             R26 4 1
     1185 SETTABLEKS                       R26 R25 K62 ["Position"]
     1187 GETIMPORT                        R26 K179 [UDim2.fromOffset]
     1189 LOADN                            R27 32
     1190 LOADN                            R28 32
     1191 CALL                             R26 2 1
     1192 SETTABLEKS                       R26 R25 K63 ["Size"]
     1194 SETTABLE                         R25 R23 R24
     1195 LOADK                            R26 K43 ["add"]
     1196 NAMECALL                         R24 R8 K43 ["add"]
     1198 CALL                             R24 2 0
     1199 GETTABLEKS                       R24 R8 K299 ["ResetCameraButton"]
     1201 DUPTABLE                         R25 K300 [{"Size", "Spacing", "Image"}]
     1202 GETIMPORT                        R26 K179 [UDim2.fromOffset]
     1204 LOADN                            R27 45
     1205 LOADN                            R28 45
     1206 CALL                             R26 2 1
     1207 SETTABLEKS                       R26 R25 K63 ["Size"]
     1209 LOADN                            R26 5
     1210 SETTABLEKS                       R26 R25 K98 ["Spacing"]
     1212 GETTABLEKS                       R26 R6 K301 ["ResetCameraImage"]
     1214 SETTABLEKS                       R26 R25 K28 ["Image"]
     1216 SETTABLE                         R25 R23 R24
     1217 LOADK                            R26 K46 ["ImageColorDisabled"]
     1218 NAMECALL                         R24 R8 K43 ["add"]
     1220 CALL                             R24 2 0
     1221 GETTABLEKS                       R24 R8 K302 ["SelectScreen"]
     1223 DUPTABLE                         R25 K303 [{"ButtonHeight", "Spacing"}]
     1224 LOADN                            R26 24
     1225 SETTABLEKS                       R26 R25 K112 ["ButtonHeight"]
     1227 GETIMPORT                        R26 K59 [UDim.new]
     1229 LOADN                            R27 0
     1230 LOADN                            R28 18
     1231 CALL                             R26 2 1
     1232 SETTABLEKS                       R26 R25 K98 ["Spacing"]
     1234 SETTABLE                         R25 R23 R24
     1235 LOADK                            R26 K48 ["PaddingTop"]
     1236 NAMECALL                         R24 R8 K43 ["add"]
     1238 CALL                             R24 2 0
     1239 GETTABLEKS                       R24 R8 K304 ["SimpleSelectScreen"]
     1241 DUPTABLE                         R25 K310 [{"BackgroundColor", "ImageBackgroundColor", "IconColor", "LineColor", "FontFace", "ImageSize", "Spacing", "LineSize", "ButtonHeight", "Image"}]
     1242 GETTABLEKS                       R26 R6 K311 ["IconBackgroundColor"]
     1244 SETTABLEKS                       R26 R25 K88 ["BackgroundColor"]
     1246 GETTABLEKS                       R26 R6 K141 ["SubBackground"]
     1248 SETTABLEKS                       R26 R25 K305 ["ImageBackgroundColor"]
     1250 GETIMPORT                        R26 K281 [Color3.fromRGB]
     1252 LOADN                            R27 248
     1253 LOADN                            R28 121
     1254 LOADN                            R29 43
     1255 CALL                             R26 3 1
     1256 SETTABLEKS                       R26 R25 K306 ["IconColor"]
     1258 GETTABLEKS                       R26 R3 K17 ["Style"]
     1260 GETTABLEKS                       R26 R26 K312 ["Colors"]
     1262 GETTABLEKS                       R26 R26 K313 ["Gray_Mid"]
     1264 SETTABLEKS                       R26 R25 K307 ["LineColor"]
     1266 GETIMPORT                        R26 K314 [Font.new]
     1268 GETIMPORT                        R27 K316 [Font.fromEnum]
     1270 GETIMPORT                        R28 K214 [Enum.Font.SourceSans]
     1272 CALL                             R27 1 1
     1273 GETTABLEKS                       R27 R27 K317 ["Family"]
     1275 GETIMPORT                        R28 K320 [Enum.FontWeight.SemiBold]
     1277 CALL                             R26 2 1
     1278 SETTABLEKS                       R26 R25 K308 ["FontFace"]
     1280 GETIMPORT                        R26 K179 [UDim2.fromOffset]
     1282 LOADN                            R27 50
     1283 LOADN                            R28 50
     1284 CALL                             R26 2 1
     1285 SETTABLEKS                       R26 R25 K47 ["ImageSize"]
     1287 GETIMPORT                        R26 K59 [UDim.new]
     1289 LOADN                            R27 0
     1290 LOADN                            R28 5
     1291 CALL                             R26 2 1
     1292 SETTABLEKS                       R26 R25 K98 ["Spacing"]
     1294 GETIMPORT                        R26 K66 [UDim2.new]
     1296 LOADN                            R27 0
     1297 LOADN                            R28 15
     1298 LOADN                            R29 0
     1299 LOADN                            R30 1
     1300 CALL                             R26 4 1
     1301 SETTABLEKS                       R26 R25 K309 ["LineSize"]
     1303 LOADN                            R26 32
     1304 SETTABLEKS                       R26 R25 K112 ["ButtonHeight"]
     1306 GETTABLEKS                       R26 R6 K321 ["EmptyState"]
     1308 SETTABLEKS                       R26 R25 K28 ["Image"]
     1310 SETTABLE                         R25 R23 R24
     1311 LOADK                            R26 K66 [UDim2.new]
     1312 NAMECALL                         R24 R8 K43 ["add"]
     1314 CALL                             R24 2 0
     1315 GETTABLEKS                       R24 R8 K322 ["SkinPreview"]
     1317 DUPTABLE                         R25 K328 [{"HoveredBorderColor", "HoveredBorderThickness", "SelectedBorderColor", "SelectedBorderThickness", "DisabledColorToBlend"}]
     1318 GETTABLEKS                       R26 R6 K329 ["SecondaryStatesHoverOutlineBorder"]
     1320 SETTABLEKS                       R26 R25 K323 ["HoveredBorderColor"]
     1322 LOADN                            R26 1
     1323 SETTABLEKS                       R26 R25 K324 ["HoveredBorderThickness"]
     1325 GETTABLEKS                       R26 R6 K330 ["PrimaryMain"]
     1327 SETTABLEKS                       R26 R25 K325 ["SelectedBorderColor"]
     1329 LOADN                            R26 2
     1330 SETTABLEKS                       R26 R25 K326 ["SelectedBorderThickness"]
     1332 GETIMPORT                        R26 K281 [Color3.fromRGB]
     1334 LOADN                            R27 76
     1335 LOADN                            R28 76
     1336 LOADN                            R29 76
     1337 CALL                             R26 3 1
     1338 SETTABLEKS                       R26 R25 K327 ["DisabledColorToBlend"]
     1340 SETTABLE                         R25 R23 R24
     1341 LOADK                            R26 K75 [0.5]
     1342 NAMECALL                         R24 R8 K43 ["add"]
     1344 CALL                             R24 2 0
     1345 GETTABLEKS                       R24 R8 K331 ["SortClothingTable"]
     1347 DUPTABLE                         R25 K335 [{"CellPadding", "RowHeight", "TableHeight"}]
     1348 DUPTABLE                         R26 K296 [{"Left", "Right", "Top", "Bottom"}]
     1349 LOADN                            R27 4
     1350 SETTABLEKS                       R27 R26 K292 ["Left"]
     1352 LOADN                            R27 4
     1353 SETTABLEKS                       R27 R26 K293 ["Right"]
     1355 LOADN                            R27 2
     1356 SETTABLEKS                       R27 R26 K294 ["Top"]
     1358 LOADN                            R27 2
     1359 SETTABLEKS                       R27 R26 K295 ["Bottom"]
     1361 SETTABLEKS                       R26 R25 K332 ["CellPadding"]
     1363 LOADN                            R26 28
     1364 SETTABLEKS                       R26 R25 K333 ["RowHeight"]
     1366 LOADN                            R26 200
     1367 SETTABLEKS                       R26 R25 K334 ["TableHeight"]
     1369 SETTABLE                         R25 R23 R24
     1370 LOADK                            R26 K80 ["&BodyPreview"]
     1371 NAMECALL                         R24 R8 K43 ["add"]
     1373 CALL                             R24 2 0
     1374 GETTABLEKS                       R24 R8 K336 ["StageSelector"]
     1376 DUPTABLE                         R25 K341 [{"BackgroundColor", "BorderColor", "ButtonSelectedBackgroundColor", "ButtonHeight", "IconColor", "IconColorDisabled", "IconSize", "MenuIndicatorSize", "Width"}]
     1377 GETTABLEKS                       R26 R6 K342 ["MainBackground"]
     1379 SETTABLEKS                       R26 R25 K88 ["BackgroundColor"]
     1381 GETTABLEKS                       R26 R6 K343 ["BackgroundPaper"]
     1383 SETTABLEKS                       R26 R25 K337 ["BorderColor"]
     1385 GETTABLEKS                       R26 R6 K344 ["ButtonHover"]
     1387 SETTABLEKS                       R26 R25 K338 ["ButtonSelectedBackgroundColor"]
     1389 LOADN                            R26 32
     1390 SETTABLEKS                       R26 R25 K112 ["ButtonHeight"]
     1392 GETTABLEKS                       R26 R6 K345 ["MainText"]
     1394 SETTABLEKS                       R26 R25 K306 ["IconColor"]
     1396 GETTABLEKS                       R26 R6 K346 ["MainTextDisabled"]
     1398 SETTABLEKS                       R26 R25 K339 ["IconColorDisabled"]
     1400 LOADN                            R26 18
     1401 SETTABLEKS                       R26 R25 K245 ["IconSize"]
     1403 LOADN                            R26 20
     1404 SETTABLEKS                       R26 R25 K340 ["MenuIndicatorSize"]
     1406 LOADN                            R26 64
     1407 SETTABLEKS                       R26 R25 K139 ["Width"]
     1409 SETTABLE                         R25 R23 R24
     1410 LOADK                            R26 K91 ["SubBackground2"]
     1411 NAMECALL                         R24 R8 K43 ["add"]
     1413 CALL                             R24 2 0
     1414 GETTABLEKS                       R24 R8 K347 ["Stars"]
     1416 DUPTABLE                         R25 K354 [{"StarColor", "StarSize", "StarFilled", "StarUnfilled", "StarSpacing", "RatingSpacing"}]
     1417 GETTABLEKS                       R26 R6 K345 ["MainText"]
     1419 SETTABLEKS                       R26 R25 K348 ["StarColor"]
     1421 GETIMPORT                        R26 K179 [UDim2.fromOffset]
     1423 LOADN                            R27 16
     1424 LOADN                            R28 16
     1425 CALL                             R26 2 1
     1426 SETTABLEKS                       R26 R25 K349 ["StarSize"]
     1428 GETTABLEKS                       R26 R6 K355 ["Star"]
     1430 SETTABLEKS                       R26 R25 K350 ["StarFilled"]
     1432 GETTABLEKS                       R26 R6 K351 ["StarUnfilled"]
     1434 SETTABLEKS                       R26 R25 K351 ["StarUnfilled"]
     1436 LOADN                            R26 4
     1437 SETTABLEKS                       R26 R25 K352 ["StarSpacing"]
     1439 LOADN                            R26 10
     1440 SETTABLEKS                       R26 R25 K353 ["RatingSpacing"]
     1442 SETTABLE                         R25 R23 R24
     1443 LOADK                            R26 K100 ["AutoSetupScreen"]
     1444 NAMECALL                         R24 R8 K43 ["add"]
     1446 CALL                             R24 2 0
     1447 GETTABLEKS                       R24 R8 K356 ["SubmitDialog"]
     1449 DUPTABLE                         R25 K357 [{"Width"}]
     1450 LOADN                            R26 244
     1451 SETTABLEKS                       R26 R25 K139 ["Width"]
     1453 SETTABLE                         R25 R23 R24
     1454 LOADK                            R26 K102 ["AlertPaddingVertical"]
     1455 NAMECALL                         R24 R8 K43 ["add"]
     1457 CALL                             R24 2 0
     1458 GETTABLEKS                       R24 R8 K358 ["SubmitInner"]
     1460 DUPTABLE                         R25 K362 [{"CallToActionSpacing", "CheckboxSpacing", "ContentPadding"}]
     1461 GETIMPORT                        R26 K59 [UDim.new]
     1463 LOADN                            R27 0
     1464 LOADN                            R28 18
     1465 CALL                             R26 2 1
     1466 SETTABLEKS                       R26 R25 K359 ["CallToActionSpacing"]
     1468 GETIMPORT                        R26 K59 [UDim.new]
     1470 LOADN                            R27 0
     1471 LOADN                            R28 4
     1472 CALL                             R26 2 1
     1473 SETTABLEKS                       R26 R25 K360 ["CheckboxSpacing"]
     1475 LOADN                            R26 40
     1476 SETTABLEKS                       R26 R25 K361 ["ContentPadding"]
     1478 SETTABLE                         R25 R23 R24
     1479 LOADK                            R26 K107 ["ToggleBarHeight"]
     1480 NAMECALL                         R24 R8 K43 ["add"]
     1482 CALL                             R24 2 0
     1483 GETTABLEKS                       R24 R8 K363 ["Survey"]
     1485 DUPTABLE                         R25 K366 [{"HeadIndent", "Spacing", "MessageHeight"}]
     1486 LOADN                            R26 22
     1487 SETTABLEKS                       R26 R25 K364 ["HeadIndent"]
     1489 LOADN                            R26 10
     1490 SETTABLEKS                       R26 R25 K98 ["Spacing"]
     1492 LOADN                            R26 96
     1493 SETTABLEKS                       R26 R25 K365 ["MessageHeight"]
     1495 SETTABLE                         R25 R23 R24
     1496 LOADK                            R26 K111 ["ButtonColor"]
     1497 NAMECALL                         R24 R8 K43 ["add"]
     1499 CALL                             R24 2 0
     1500 GETTABLEKS                       R24 R8 K367 ["SurveyDialog"]
     1502 DUPTABLE                         R25 K369 [{"Width", "FinishDialogSize"}]
     1503 LOADN                            R26 184
     1504 SETTABLEKS                       R26 R25 K139 ["Width"]
     1506 GETIMPORT                        R26 K118 [Vector2.new]
     1508 LOADN                            R27 250
     1509 LOADN                            R28 30
     1510 CALL                             R26 2 1
     1511 SETTABLEKS                       R26 R25 K368 ["FinishDialogSize"]
     1513 SETTABLE                         R25 R23 R24
     1514 LOADK                            R26 K114 ["TablePosition"]
     1515 NAMECALL                         R24 R8 K43 ["add"]
     1517 CALL                             R24 2 0
     1518 GETTABLEKS                       R24 R8 K370 ["TabBar"]
     1520 DUPTABLE                         R25 K371 [{"BackgroundColor", "BackgroundColorHover"}]
     1521 GETTABLEKS                       R26 R6 K141 ["SubBackground"]
     1523 SETTABLEKS                       R26 R25 K88 ["BackgroundColor"]
     1525 GETTABLEKS                       R26 R6 K92 ["ActionHover"]
     1527 SETTABLEKS                       R26 R25 K89 ["BackgroundColorHover"]
     1529 SETTABLE                         R25 R23 R24
     1530 LOADK                            R26 K116 [{"AnchorPoint", "ButtonAnchorPoint", "ButtonColor", "ButtonHeight", "ButtonPaddingHorizontal", "Position", "TablePosition", "PaneHeight"}]
     1531 NAMECALL                         R24 R8 K43 ["add"]
     1533 CALL                             R24 2 0
     1534 GETTABLEKS                       R24 R8 K372 ["TestingScreen"]
     1536 DUPTABLE                         R25 K303 [{"ButtonHeight", "Spacing"}]
     1537 LOADN                            R26 24
     1538 SETTABLEKS                       R26 R25 K112 ["ButtonHeight"]
     1540 GETIMPORT                        R26 K59 [UDim.new]
     1542 LOADN                            R27 0
     1543 LOADN                            R28 18
     1544 CALL                             R26 2 1
     1545 SETTABLEKS                       R26 R25 K98 ["Spacing"]
     1547 SETTABLE                         R25 R23 R24
     1548 LOADK                            R26 K117 ["Vector2"]
     1549 NAMECALL                         R24 R8 K43 ["add"]
     1551 CALL                             R24 2 0
     1552 GETTABLEKS                       R24 R8 K373 ["ResizeNotice"]
     1554 DUPTABLE                         R25 K374 [{"BackgroundColor", "Position", "AnchorPoint", "Size"}]
     1555 GETTABLEKS                       R26 R6 K141 ["SubBackground"]
     1557 SETTABLEKS                       R26 R25 K88 ["BackgroundColor"]
     1559 GETIMPORT                        R26 K66 [UDim2.new]
     1561 LOADN                            R27 0
     1562 LOADN                            R28 10
     1563 LOADN                            R29 0
     1564 LOADN                            R30 60
     1565 CALL                             R26 4 1
     1566 SETTABLEKS                       R26 R25 K62 ["Position"]
     1568 GETIMPORT                        R26 K118 [Vector2.new]
     1570 LOADN                            R27 0
     1571 LOADN                            R28 0
     1572 CALL                             R26 2 1
     1573 SETTABLEKS                       R26 R25 K109 ["AnchorPoint"]
     1575 GETIMPORT                        R26 K66 [UDim2.new]
     1577 LOADN                            R27 1
     1578 LOADN                            R28 161
     1579 LOADN                            R29 0
     1580 LOADN                            R30 0
     1581 CALL                             R26 4 1
     1582 SETTABLEKS                       R26 R25 K63 ["Size"]
     1584 SETTABLE                         R25 R23 R24
     1585 LOADK                            R26 K119 ["SecondaryContrast"]
     1586 NAMECALL                         R24 R8 K43 ["add"]
     1588 CALL                             R24 2 0
     1589 GETTABLEKS                       R24 R8 K375 ["UGCValidationErrorDialog"]
     1591 DUPTABLE                         R25 K383 [{"DetailsSpacing", "IconTextSpacing", "TitleDetailsSpacing", "AlertMinContentSize", "TextSize", "WarningColor", "WarningFont", "WarningImage"}]
     1592 LOADN                            R26 12
     1593 SETTABLEKS                       R26 R25 K376 ["DetailsSpacing"]
     1595 LOADN                            R26 4
     1596 SETTABLEKS                       R26 R25 K377 ["IconTextSpacing"]
     1598 LOADN                            R26 26
     1599 SETTABLEKS                       R26 R25 K378 ["TitleDetailsSpacing"]
     1601 GETIMPORT                        R26 K118 [Vector2.new]
     1603 LOADN                            R27 244
     1604 LOADN                            R28 44
     1605 CALL                             R26 2 1
     1606 SETTABLEKS                       R26 R25 K379 ["AlertMinContentSize"]
     1608 LOADN                            R26 18
     1609 SETTABLEKS                       R26 R25 K203 ["TextSize"]
     1611 GETTABLEKS                       R26 R6 K384 ["WarningText"]
     1613 SETTABLEKS                       R26 R25 K380 ["WarningColor"]
     1615 GETIMPORT                        R26 K386 [Enum.Font.SourceSansSemibold]
     1617 SETTABLEKS                       R26 R25 K381 ["WarningFont"]
     1619 LOADK                            R26 K131 [0.01]
     1620 SETTABLEKS                       R26 R25 K382 ["WarningImage"]
     1622 SETTABLE                         R25 R23 R24
     1623 LOADK                            R26 K132 [0.3]
     1624 NAMECALL                         R24 R8 K43 ["add"]
     1626 CALL                             R24 2 0
     1627 GETTABLEKS                       R24 R8 K388 ["UGCValidationNotice"]
     1629 DUPTABLE                         R25 K390 [{"Position", "Size", "ValidationIconSize", "WarningColor", "WarningImage"}]
     1630 GETIMPORT                        R26 K179 [UDim2.fromOffset]
     1632 LOADN                            R27 10
     1633 LOADN                            R28 10
     1634 CALL                             R26 2 1
     1635 SETTABLEKS                       R26 R25 K62 ["Position"]
     1637 GETIMPORT                        R26 K66 [UDim2.new]
     1639 LOADN                            R27 1
     1640 LOADN                            R28 161
     1641 LOADN                            R29 0
     1642 LOADN                            R30 48
     1643 CALL                             R26 4 1
     1644 SETTABLEKS                       R26 R25 K63 ["Size"]
     1646 GETIMPORT                        R26 K179 [UDim2.fromOffset]
     1648 LOADN                            R27 24
     1649 LOADN                            R28 24
     1650 CALL                             R26 2 1
     1651 SETTABLEKS                       R26 R25 K389 ["ValidationIconSize"]
     1653 GETTABLEKS                       R26 R6 K384 ["WarningText"]
     1655 SETTABLEKS                       R26 R25 K380 ["WarningColor"]
     1657 LOADK                            R26 K131 [0.01]
     1658 SETTABLEKS                       R26 R25 K382 ["WarningImage"]
     1660 SETTABLE                         R25 R23 R24
     1661 LOADK                            R26 K135 ["Tabs"]
     1662 NAMECALL                         R24 R8 K43 ["add"]
     1664 CALL                             R24 2 0
     1665 DUPTABLE                         R24 K392 [{"Color", "Position", "Size"}]
     1666 GETIMPORT                        R25 K266 [Color3.new]
     1668 LOADN                            R26 1
     1669 LOADN                            R27 1
     1670 LOADN                            R28 1
     1671 CALL                             R25 3 1
     1672 SETTABLEKS                       R25 R24 K186 ["Color"]
     1674 GETIMPORT                        R25 K179 [UDim2.fromOffset]
     1676 LOADN                            R26 4
     1677 LOADN                            R27 14
     1678 CALL                             R25 2 1
     1679 SETTABLEKS                       R25 R24 K62 ["Position"]
     1681 GETIMPORT                        R25 K179 [UDim2.fromOffset]
     1683 LOADN                            R26 24
     1684 LOADN                            R27 24
     1685 CALL                             R25 2 1
     1686 SETTABLEKS                       R25 R24 K63 ["Size"]
     1688 GETTABLEKS                       R25 R8 K391 ["UGCValidationStatusIcon"]
     1690 NEWTABLE                         R26 4 0
     1692 GETTABLEKS                       R27 R1 K93 ["Dictionary"]
     1694 GETTABLEKS                       R27 R27 K94 ["join"]
     1696 MOVE                             R28 R24
     1697 DUPTABLE                         R29 K393 [{"Color", "Image"}]
     1698 GETTABLEKS                       R30 R6 K384 ["WarningText"]
     1700 SETTABLEKS                       R30 R29 K186 ["Color"]
     1702 LOADK                            R30 K131 [0.01]
     1703 SETTABLEKS                       R30 R29 K28 ["Image"]
     1705 CALL                             R27 2 1
     1706 SETTABLEKS                       R27 R26 K394 ["&Failure"]
     1708 GETTABLEKS                       R27 R1 K93 ["Dictionary"]
     1710 GETTABLEKS                       R27 R27 K94 ["join"]
     1712 MOVE                             R28 R24
     1713 DUPTABLE                         R29 K145 [{"Image"}]
     1714 GETTABLEKS                       R30 R6 K395 ["UGCValidationSuccessImage"]
     1716 SETTABLEKS                       R30 R29 K28 ["Image"]
     1718 CALL                             R27 2 1
     1719 SETTABLEKS                       R27 R26 K396 ["&Success"]
     1721 DUPTABLE                         R27 K397 [{"Color", "Position", "Size", "Image"}]
     1722 GETTABLEKS                       R28 R6 K398 ["DimmedText"]
     1724 SETTABLEKS                       R28 R27 K186 ["Color"]
     1726 GETIMPORT                        R28 K179 [UDim2.fromOffset]
     1728 LOADN                            R29 4
     1729 LOADN                            R30 14
     1730 CALL                             R28 2 1
     1731 SETTABLEKS                       R28 R27 K62 ["Position"]
     1733 GETIMPORT                        R28 K179 [UDim2.fromOffset]
     1735 LOADN                            R29 20
     1736 LOADN                            R30 20
     1737 CALL                             R28 2 1
     1738 SETTABLEKS                       R28 R27 K63 ["Size"]
     1740 LOADK                            R28 K143 [{"Height", "VerticalOffset"}]
     1741 SETTABLEKS                       R28 R27 K28 ["Image"]
     1743 SETTABLEKS                       R27 R26 K400 ["&InProgress"]
     1745 SETTABLE                         R26 R23 R25
     1746 LOADK                            R27 K145 [{"Image"}]
     1747 NAMECALL                         R25 R8 K43 ["add"]
     1749 CALL                             R25 2 0
     1750 GETTABLEKS                       R25 R8 K401 ["DisambiguationMenu"]
     1752 DUPTABLE                         R26 K411 [{"MinContentSize", "ConfirmCancelContentSize", "HorizontalSpacing", "VerticalSpacing", "TitleContentsSpacing", "TextSpacing", "DropdownWidth", "AttachmentDropdownWidth", "IconBackground", "IconSize"}]
     1753 GETIMPORT                        R27 K118 [Vector2.new]
     1755 LOADN                            R28 244
     1756 LOADN                            R29 44
     1757 CALL                             R27 2 1
     1758 SETTABLEKS                       R27 R26 K402 ["MinContentSize"]
     1760 GETIMPORT                        R27 K118 [Vector2.new]
     1762 LOADN                            R28 200
     1763 LOADN                            R29 150
     1764 CALL                             R27 2 1
     1765 SETTABLEKS                       R27 R26 K403 ["ConfirmCancelContentSize"]
     1767 LOADN                            R27 8
     1768 SETTABLEKS                       R27 R26 K404 ["HorizontalSpacing"]
     1770 LOADN                            R27 8
     1771 SETTABLEKS                       R27 R26 K405 ["VerticalSpacing"]
     1773 LOADN                            R27 24
     1774 SETTABLEKS                       R27 R26 K406 ["TitleContentsSpacing"]
     1776 LOADN                            R27 8
     1777 SETTABLEKS                       R27 R26 K407 ["TextSpacing"]
     1779 LOADN                            R27 150
     1780 SETTABLEKS                       R27 R26 K408 ["DropdownWidth"]
     1782 LOADN                            R27 120
     1783 SETTABLEKS                       R27 R26 K409 ["AttachmentDropdownWidth"]
     1785 GETTABLEKS                       R27 R6 K141 ["SubBackground"]
     1787 SETTABLEKS                       R27 R26 K410 ["IconBackground"]
     1789 GETIMPORT                        R27 K179 [UDim2.fromOffset]
     1791 LOADN                            R28 72
     1792 LOADN                            R29 72
     1793 CALL                             R27 2 1
     1794 SETTABLEKS                       R27 R26 K245 ["IconSize"]
     1796 SETTABLE                         R26 R23 R25
     1797 LOADK                            R27 K156 ["MirrorToRightImage"]
     1798 NAMECALL                         R25 R8 K43 ["add"]
     1800 CALL                             R25 2 0
     1801 GETTABLEKS                       R25 R8 K412 ["AvatarSizeRuler"]
     1803 DUPTABLE                         R26 K419 [{"GridSize", "DimTransparency", "MainTransparency", "Padding", "TextSize", "PixelsPerStud", "MajorStep", "RulerColor"}]
     1804 LOADK                            R27 K164 ["Radius"]
     1805 SETTABLEKS                       R27 R26 K413 ["GridSize"]
     1807 LOADK                            R27 K165 ["ResetChanges"]
     1808 SETTABLEKS                       R27 R26 K414 ["DimTransparency"]
     1810 LOADK                            R27 K75 [0.5]
     1811 SETTABLEKS                       R27 R26 K415 ["MainTransparency"]
     1813 LOADN                            R27 30
     1814 SETTABLEKS                       R27 R26 K61 ["Padding"]
     1816 LOADN                            R27 60
     1817 SETTABLEKS                       R27 R26 K203 ["TextSize"]
     1819 LOADN                            R27 200
     1820 SETTABLEKS                       R27 R26 K416 ["PixelsPerStud"]
     1822 LOADN                            R27 10
     1823 SETTABLEKS                       R27 R26 K417 ["MajorStep"]
     1825 GETIMPORT                        R27 K266 [Color3.new]
     1827 LOADN                            R28 1
     1828 LOADN                            R29 1
     1829 LOADN                            R30 1
     1830 CALL                             R27 3 1
     1831 SETTABLEKS                       R27 R26 K418 ["RulerColor"]
     1833 SETTABLE                         R26 R23 R25
     1834 LOADK                            R27 K166 ["Catalog"]
     1835 NAMECALL                         R25 R8 K43 ["add"]
     1837 CALL                             R25 2 0
     1838 GETTABLEKS                       R25 R8 K422 ["AvatarSizingBoundingBox"]
     1840 DUPTABLE                         R26 K428 [{"NeutralColor", "ValidColor", "InvalidColor", "ValidTransparency", "NeutralTransparency"}]
     1841 GETIMPORT                        R27 K266 [Color3.new]
     1843 LOADK                            R28 K75 [0.5]
     1844 LOADK                            R29 K75 [0.5]
     1845 LOADK                            R30 K75 [0.5]
     1846 CALL                             R27 3 1
     1847 SETTABLEKS                       R27 R26 K423 ["NeutralColor"]
     1849 GETIMPORT                        R27 K266 [Color3.new]
     1851 LOADK                            R28 K75 [0.5]
     1852 LOADN                            R29 1
     1853 LOADK                            R30 K75 [0.5]
     1854 CALL                             R27 3 1
     1855 SETTABLEKS                       R27 R26 K424 ["ValidColor"]
     1857 GETIMPORT                        R27 K266 [Color3.new]
     1859 LOADN                            R28 1
     1860 LOADK                            R29 K75 [0.5]
     1861 LOADK                            R30 K75 [0.5]
     1862 CALL                             R27 3 1
     1863 SETTABLEKS                       R27 R26 K425 ["InvalidColor"]
     1865 LOADK                            R27 K12 ["Enums"]
     1866 SETTABLEKS                       R27 R26 K426 ["ValidTransparency"]
     1868 LOADK                            R27 K75 [0.5]
     1869 SETTABLEKS                       R27 R26 K427 ["NeutralTransparency"]
     1871 SETTABLE                         R26 R23 R25
     1872 GETTABLEKS                       R25 R8 K23 ["Alert"]
     1874 GETTABLEKS                       R26 R1 K93 ["Dictionary"]
     1876 GETTABLEKS                       R26 R26 K94 ["join"]
     1878 MOVE                             R27 R10
     1879 NEWTABLE                         R28 8 0
     1881 GETTABLEKS                       R29 R1 K93 ["Dictionary"]
     1883 GETTABLEKS                       R29 R29 K94 ["join"]
     1885 GETTABLEKS                       R30 R10 K429 ["&Warning"]
     1887 DUPTABLE                         R31 K432 [{"HorizontalPadding", "TopPadding"}]
     1888 GETIMPORT                        R32 K59 [UDim.new]
     1890 LOADN                            R33 0
     1891 LOADN                            R34 0
     1892 CALL                             R32 2 1
     1893 SETTABLEKS                       R32 R31 K430 ["HorizontalPadding"]
     1895 GETIMPORT                        R32 K59 [UDim.new]
     1897 LOADN                            R33 0
     1898 LOADN                            R34 0
     1899 CALL                             R32 2 1
     1900 SETTABLEKS                       R32 R31 K431 ["TopPadding"]
     1902 CALL                             R29 2 1
     1903 SETTABLEKS                       R29 R28 K429 ["&Warning"]
     1905 GETTABLEKS                       R29 R1 K93 ["Dictionary"]
     1907 GETTABLEKS                       R29 R29 K94 ["join"]
     1909 GETTABLEKS                       R30 R10 K433 ["&Error"]
     1911 DUPTABLE                         R31 K432 [{"HorizontalPadding", "TopPadding"}]
     1912 GETIMPORT                        R32 K59 [UDim.new]
     1914 LOADN                            R33 0
     1915 LOADN                            R34 0
     1916 CALL                             R32 2 1
     1917 SETTABLEKS                       R32 R31 K430 ["HorizontalPadding"]
     1919 GETIMPORT                        R32 K59 [UDim.new]
     1921 LOADN                            R33 0
     1922 LOADN                            R34 0
     1923 CALL                             R32 2 1
     1924 SETTABLEKS                       R32 R31 K431 ["TopPadding"]
     1926 CALL                             R29 2 1
     1927 SETTABLEKS                       R29 R28 K433 ["&Error"]
     1929 GETTABLEKS                       R29 R1 K93 ["Dictionary"]
     1931 GETTABLEKS                       R29 R29 K94 ["join"]
     1933 GETTABLEKS                       R30 R10 K396 ["&Success"]
     1935 DUPTABLE                         R31 K432 [{"HorizontalPadding", "TopPadding"}]
     1936 GETIMPORT                        R32 K59 [UDim.new]
     1938 LOADN                            R33 0
     1939 LOADN                            R34 0
     1940 CALL                             R32 2 1
     1941 SETTABLEKS                       R32 R31 K430 ["HorizontalPadding"]
     1943 GETIMPORT                        R32 K59 [UDim.new]
     1945 LOADN                            R33 0
     1946 LOADN                            R34 0
     1947 CALL                             R32 2 1
     1948 SETTABLEKS                       R32 R31 K431 ["TopPadding"]
     1950 CALL                             R29 2 1
     1951 SETTABLEKS                       R29 R28 K396 ["&Success"]
     1953 GETTABLEKS                       R29 R1 K93 ["Dictionary"]
     1955 GETTABLEKS                       R29 R29 K94 ["join"]
     1957 GETTABLEKS                       R30 R10 K434 ["&Info"]
     1959 DUPTABLE                         R31 K432 [{"HorizontalPadding", "TopPadding"}]
     1960 GETIMPORT                        R32 K59 [UDim.new]
     1962 LOADN                            R33 0
     1963 LOADN                            R34 0
     1964 CALL                             R32 2 1
     1965 SETTABLEKS                       R32 R31 K430 ["HorizontalPadding"]
     1967 GETIMPORT                        R32 K59 [UDim.new]
     1969 LOADN                            R33 0
     1970 LOADN                            R34 0
     1971 CALL                             R32 2 1
     1972 SETTABLEKS                       R32 R31 K431 ["TopPadding"]
     1974 CALL                             R29 2 1
     1975 SETTABLEKS                       R29 R28 K434 ["&Info"]
     1977 GETTABLEKS                       R29 R1 K93 ["Dictionary"]
     1979 GETTABLEKS                       R29 R29 K94 ["join"]
     1981 GETTABLEKS                       R30 R10 K429 ["&Warning"]
     1983 DUPTABLE                         R31 K435 [{"HorizontalPadding", "TopPadding", "MaxWidth"}]
     1984 GETIMPORT                        R32 K59 [UDim.new]
     1986 LOADN                            R33 0
     1987 LOADN                            R34 0
     1988 CALL                             R32 2 1
     1989 SETTABLEKS                       R32 R31 K430 ["HorizontalPadding"]
     1991 GETIMPORT                        R32 K59 [UDim.new]
     1993 LOADN                            R33 0
     1994 LOADN                            R34 0
     1995 CALL                             R32 2 1
     1996 SETTABLEKS                       R32 R31 K431 ["TopPadding"]
     1998 LOADN                            R32 132
     1999 SETTABLEKS                       R32 R31 K206 ["MaxWidth"]
     2001 CALL                             R29 2 1
     2002 SETTABLEKS                       R29 R28 K436 ["&WarningLong"]
     2004 CALL                             R26 2 1
     2005 SETTABLE                         R26 R23 R25
     2006 GETTABLEKS                       R25 R8 K25 ["Button"]
     2008 GETTABLEKS                       R26 R1 K93 ["Dictionary"]
     2010 GETTABLEKS                       R26 R26 K94 ["join"]
     2012 MOVE                             R27 R11
     2013 NEWTABLE                         R28 1 0
     2015 GETTABLEKS                       R29 R1 K93 ["Dictionary"]
     2017 GETTABLEKS                       R29 R29 K94 ["join"]
     2019 GETTABLEKS                       R30 R11 K437 ["&Round"]
     2021 NEWTABLE                         R31 2 0
     2023 GETTABLEKS                       R32 R1 K93 ["Dictionary"]
     2025 GETTABLEKS                       R32 R32 K94 ["join"]
     2027 GETTABLEKS                       R33 R11 K438 ["BackgroundStyle"]
     2029 DUPTABLE                         R34 K439 [{"BorderColor"}]
     2030 GETTABLEKS                       R35 R6 K440 ["SubText"]
     2032 SETTABLEKS                       R35 R34 K337 ["BorderColor"]
     2034 CALL                             R32 2 1
     2035 SETTABLEKS                       R32 R31 K438 ["BackgroundStyle"]
     2037 GETTABLEKS                       R32 R7 K441 ["Hover"]
     2039 GETTABLEKS                       R33 R1 K93 ["Dictionary"]
     2041 GETTABLEKS                       R33 R33 K94 ["join"]
     2043 GETTABLEKS                       R35 R7 K441 ["Hover"]
     2045 GETTABLE                         R34 R11 R35
     2046 DUPTABLE                         R35 K442 [{"BackgroundStyle"}]
     2047 GETTABLEKS                       R36 R1 K93 ["Dictionary"]
     2049 GETTABLEKS                       R36 R36 K94 ["join"]
     2051 GETTABLEKS                       R38 R7 K441 ["Hover"]
     2053 GETTABLE                         R37 R11 R38
     2054 GETTABLEKS                       R37 R37 K438 ["BackgroundStyle"]
     2056 DUPTABLE                         R38 K439 [{"BorderColor"}]
     2057 GETTABLEKS                       R39 R6 K440 ["SubText"]
     2059 SETTABLEKS                       R39 R38 K337 ["BorderColor"]
     2061 CALL                             R36 2 1
     2062 SETTABLEKS                       R36 R35 K438 ["BackgroundStyle"]
     2064 CALL                             R33 2 1
     2065 SETTABLE                         R33 R31 R32
     2066 CALL                             R29 2 1
     2067 SETTABLEKS                       R29 R28 K443 ["&RoundHighlighted"]
     2069 CALL                             R26 2 1
     2070 SETTABLE                         R26 R23 R25
     2071 JUMPIFNOT                        R22 ; [+36]
     2072 GETTABLEKS                       R25 R8 K26 ["DropdownMenu"]
     2074 GETTABLEKS                       R26 R1 K93 ["Dictionary"]
     2076 GETTABLEKS                       R26 R26 K94 ["join"]
     2078 MOVE                             R27 R12
     2079 DUPTABLE                         R28 K445 [{"MaxHeight"}]
     2080 LOADK                            R29 K190 ["RigidImage"]
     2081 SETTABLEKS                       R29 R28 K444 ["MaxHeight"]
     2083 CALL                             R26 2 1
     2084 SETTABLE                         R26 R23 R25
     2085 GETTABLEKS                       R25 R8 K31 ["SelectInput"]
     2087 GETTABLEKS                       R26 R1 K93 ["Dictionary"]
     2089 GETTABLEKS                       R26 R26 K94 ["join"]
     2091 MOVE                             R27 R17
     2092 DUPTABLE                         R28 K447 [{"DropdownMenu"}]
     2093 GETTABLEKS                       R29 R1 K93 ["Dictionary"]
     2095 GETTABLEKS                       R29 R29 K94 ["join"]
     2097 GETTABLEKS                       R30 R17 K26 ["DropdownMenu"]
     2099 DUPTABLE                         R31 K445 [{"MaxHeight"}]
     2100 LOADK                            R32 K190 ["RigidImage"]
     2101 SETTABLEKS                       R32 R31 K444 ["MaxHeight"]
     2103 CALL                             R29 2 1
     2104 SETTABLEKS                       R29 R28 K26 ["DropdownMenu"]
     2106 CALL                             R26 2 1
     2107 SETTABLE                         R26 R23 R25
     2108 GETTABLEKS                       R25 R8 K27 ["IconButton"]
     2110 GETTABLEKS                       R26 R1 K93 ["Dictionary"]
     2112 GETTABLEKS                       R26 R26 K94 ["join"]
     2114 MOVE                             R27 R13
     2115 NEWTABLE                         R28 1 0
     2117 DUPTABLE                         R29 K448 [{"BackgroundColor", "TextColor", "Hover"}]
     2118 GETTABLEKS                       R30 R6 K449 ["IconButtonSecondaryMain"]
     2120 SETTABLEKS                       R30 R29 K88 ["BackgroundColor"]
     2122 GETTABLEKS                       R30 R6 K217 ["TextPrimary"]
     2124 SETTABLEKS                       R30 R29 K202 ["TextColor"]
     2126 DUPTABLE                         R30 K450 [{"Background"}]
     2127 GETTABLEKS                       R31 R6 K451 ["IconButtonSecondaryHover"]
     2129 SETTABLEKS                       R31 R30 K144 ["Background"]
     2131 SETTABLEKS                       R30 R29 K441 ["Hover"]
     2133 SETTABLEKS                       R29 R28 K452 ["&Secondary"]
     2135 CALL                             R26 2 1
     2136 SETTABLE                         R26 R23 R25
     2137 GETTABLEKS                       R25 R8 K28 ["Image"]
     2139 GETTABLEKS                       R26 R1 K93 ["Dictionary"]
     2141 GETTABLEKS                       R26 R26 K94 ["join"]
     2143 MOVE                             R27 R14
     2144 NEWTABLE                         R28 16 0
     2146 DUPTABLE                         R29 K453 [{"Image", "Size"}]
     2147 GETTABLEKS                       R30 R6 K454 ["Collapse"]
     2149 SETTABLEKS                       R30 R29 K28 ["Image"]
     2151 GETIMPORT                        R30 K179 [UDim2.fromOffset]
     2153 LOADN                            R31 16
     2154 LOADN                            R32 16
     2155 CALL                             R30 2 1
     2156 SETTABLEKS                       R30 R29 K63 ["Size"]
     2158 SETTABLEKS                       R29 R28 K455 ["&Collapse"]
     2160 DUPTABLE                         R29 K145 [{"Image"}]
     2161 GETTABLEKS                       R30 R6 K456 ["Hide"]
     2163 SETTABLEKS                       R30 R29 K28 ["Image"]
     2165 SETTABLEKS                       R29 R28 K457 ["&EquippedItemHideIcon"]
     2167 DUPTABLE                         R29 K145 [{"Image"}]
     2168 GETTABLEKS                       R30 R6 K458 ["HideHover"]
     2170 SETTABLEKS                       R30 R29 K28 ["Image"]
     2172 SETTABLEKS                       R29 R28 K459 ["&EquippedItemHideHoverIcon"]
     2174 DUPTABLE                         R29 K145 [{"Image"}]
     2175 GETTABLEKS                       R30 R6 K460 ["HoverMenu"]
     2177 SETTABLEKS                       R30 R29 K28 ["Image"]
     2179 SETTABLEKS                       R29 R28 K461 ["&EquippedItemHoverMenuBackground"]
     2181 DUPTABLE                         R29 K145 [{"Image"}]
     2182 GETTABLEKS                       R30 R6 K462 ["Unhide"]
     2184 SETTABLEKS                       R30 R29 K28 ["Image"]
     2186 SETTABLEKS                       R29 R28 K463 ["&EquippedItemUnhideIcon"]
     2188 DUPTABLE                         R29 K145 [{"Image"}]
     2189 GETTABLEKS                       R30 R6 K464 ["UnhideHover"]
     2191 SETTABLEKS                       R30 R29 K28 ["Image"]
     2193 SETTABLEKS                       R29 R28 K465 ["&EquippedItemUnhideHoverIcon"]
     2195 DUPTABLE                         R29 K145 [{"Image"}]
     2196 GETTABLEKS                       R30 R6 K466 ["HoverMenuDisabled"]
     2198 SETTABLEKS                       R30 R29 K28 ["Image"]
     2200 SETTABLEKS                       R29 R28 K467 ["&EquippedItemDisabledBackground"]
     2202 NEWTABLE                         R29 4 0
     2204 GETTABLEKS                       R30 R6 K468 ["Dots"]
     2206 SETTABLEKS                       R30 R29 K28 ["Image"]
     2208 GETTABLEKS                       R30 R6 K25 ["Button"]
     2210 SETTABLEKS                       R30 R29 K469 ["ImageColor3"]
     2212 GETTABLEKS                       R30 R7 K441 ["Hover"]
     2214 DUPTABLE                         R31 K470 [{"ImageColor3"}]
     2215 GETTABLEKS                       R32 R6 K471 ["ImageButtonHover"]
     2217 SETTABLEKS                       R32 R31 K469 ["ImageColor3"]
     2219 SETTABLE                         R31 R29 R30
     2220 SETTABLEKS                       R29 R28 K472 ["&EquippedItemDotsIcon"]
     2222 DUPTABLE                         R29 K453 [{"Image", "Size"}]
     2223 GETTABLEKS                       R30 R6 K473 ["DotsVertical"]
     2225 SETTABLEKS                       R30 R29 K28 ["Image"]
     2227 GETIMPORT                        R30 K179 [UDim2.fromOffset]
     2229 LOADN                            R31 20
     2230 LOADN                            R32 20
     2231 CALL                             R30 2 1
     2232 SETTABLEKS                       R30 R29 K63 ["Size"]
     2234 SETTABLEKS                       R29 R28 K474 ["&PickTabMenu"]
     2236 DUPTABLE                         R29 K453 [{"Image", "Size"}]
     2237 GETTABLEKS                       R30 R6 K475 ["Unfold"]
     2239 SETTABLEKS                       R30 R29 K28 ["Image"]
     2241 GETIMPORT                        R30 K179 [UDim2.fromOffset]
     2243 LOADN                            R31 32
     2244 LOADN                            R32 32
     2245 CALL                             R30 2 1
     2246 SETTABLEKS                       R30 R29 K63 ["Size"]
     2248 SETTABLEKS                       R29 R28 K476 ["&Unfold"]
     2250 CALL                             R26 2 1
     2251 SETTABLE                         R26 R23 R25
     2252 GETTABLEKS                       R25 R8 K32 ["Separator"]
     2254 GETTABLEKS                       R26 R1 K93 ["Dictionary"]
     2256 GETTABLEKS                       R26 R26 K94 ["join"]
     2258 MOVE                             R27 R18
     2259 NEWTABLE                         R28 1 0
     2261 DUPTABLE                         R29 K478 [{"StretchMargin"}]
     2262 LOADN                            R30 5
     2263 SETTABLEKS                       R30 R29 K477 ["StretchMargin"]
     2265 SETTABLEKS                       R29 R28 K479 ["&SelectScreenSeparator"]
     2267 CALL                             R26 2 1
     2268 SETTABLE                         R26 R23 R25
     2269 GETTABLEKS                       R25 R8 K29 ["Pane"]
     2271 GETTABLEKS                       R26 R1 K93 ["Dictionary"]
     2273 GETTABLEKS                       R26 R26 K94 ["join"]
     2275 MOVE                             R27 R15
     2276 NEWTABLE                         R28 4 0
     2278 NEWTABLE                         R29 4 0
     2280 GETTABLEKS                       R30 R6 K25 ["Button"]
     2282 SETTABLEKS                       R30 R29 K144 ["Background"]
     2284 GETIMPORT                        R30 K59 [UDim.new]
     2286 LOADN                            R31 0
     2287 LOADN                            R32 4
     2288 CALL                             R30 2 1
     2289 SETTABLEKS                       R30 R29 K204 ["CornerRadius"]
     2291 GETTABLEKS                       R30 R7 K441 ["Hover"]
     2293 DUPTABLE                         R31 K450 [{"Background"}]
     2294 GETTABLEKS                       R32 R6 K344 ["ButtonHover"]
     2296 SETTABLEKS                       R32 R31 K144 ["Background"]
     2298 SETTABLE                         R31 R29 R30
     2299 GETTABLEKS                       R30 R7 K480 ["Disabled"]
     2301 DUPTABLE                         R31 K450 [{"Background"}]
     2302 GETTABLEKS                       R32 R6 K481 ["ButtonPressed"]
     2304 SETTABLEKS                       R32 R31 K144 ["Background"]
     2306 SETTABLE                         R31 R29 R30
     2307 SETTABLEKS                       R29 R28 K482 ["&EquippedItemPreview"]
     2309 DUPTABLE                         R29 K483 [{"CornerRadius"}]
     2310 GETIMPORT                        R30 K59 [UDim.new]
     2312 LOADN                            R31 0
     2313 LOADN                            R32 4
     2314 CALL                             R30 2 1
     2315 SETTABLEKS                       R30 R29 K204 ["CornerRadius"]
     2317 SETTABLEKS                       R29 R28 K484 ["&EquippedItemPreviewInner"]
     2319 DUPTABLE                         R29 K450 [{"Background"}]
     2320 GETTABLEKS                       R30 R6 K485 ["ForegroundMuted"]
     2322 SETTABLEKS                       R30 R29 K144 ["Background"]
     2324 SETTABLEKS                       R29 R28 K486 ["&EquippedItemHoverMenu"]
     2326 DUPTABLE                         R29 K483 [{"CornerRadius"}]
     2327 GETIMPORT                        R30 K59 [UDim.new]
     2329 LOADN                            R31 0
     2330 LOADN                            R32 4
     2331 CALL                             R30 2 1
     2332 SETTABLEKS                       R30 R29 K204 ["CornerRadius"]
     2334 SETTABLEKS                       R29 R28 K487 ["&SkinPreview"]
     2336 CALL                             R26 2 1
     2337 SETTABLE                         R26 R23 R25
     2338 GETTABLEKS                       R25 R8 K33 ["SimpleTab"]
     2340 GETTABLEKS                       R26 R1 K93 ["Dictionary"]
     2342 GETTABLEKS                       R26 R26 K94 ["join"]
     2344 MOVE                             R27 R19
     2345 NEWTABLE                         R28 2 0
     2347 NEWTABLE                         R29 8 0
     2349 GETTABLEKS                       R30 R6 K91 ["SubBackground2"]
     2351 SETTABLEKS                       R30 R29 K88 ["BackgroundColor"]
     2353 LOADN                            R30 1
     2354 SETTABLEKS                       R30 R29 K96 ["BackgroundTransparency"]
     2356 LOADN                            R30 0
     2357 SETTABLEKS                       R30 R29 K488 ["BorderSize"]
     2359 DUPTABLE                         R30 K489 [{"Left", "Top", "Bottom", "Right"}]
     2360 LOADN                            R31 12
     2361 SETTABLEKS                       R31 R30 K292 ["Left"]
     2363 LOADN                            R31 2
     2364 SETTABLEKS                       R31 R30 K294 ["Top"]
     2366 LOADN                            R31 0
     2367 SETTABLEKS                       R31 R30 K295 ["Bottom"]
     2369 LOADN                            R31 12
     2370 SETTABLEKS                       R31 R30 K293 ["Right"]
     2372 SETTABLEKS                       R30 R29 K61 ["Padding"]
     2374 LOADN                            R30 0
     2375 SETTABLEKS                       R30 R29 K490 ["TopLineHeight"]
     2377 GETTABLEKS                       R30 R7 K491 ["Selected"]
     2379 DUPTABLE                         R31 K492 [{"BackgroundColor", "Font"}]
     2380 GETTABLEKS                       R32 R6 K91 ["SubBackground2"]
     2382 SETTABLEKS                       R32 R31 K88 ["BackgroundColor"]
     2384 GETIMPORT                        R32 K212 [Enum.Font.SourceSansBold]
     2386 SETTABLEKS                       R32 R31 K210 ["Font"]
     2388 SETTABLE                         R31 R29 R30
     2389 SETTABLEKS                       R29 R28 K493 ["&AssetPaletteTab"]
     2391 DUPTABLE                         R29 K494 [{"BorderSize", "TopLineHeight"}]
     2392 LOADN                            R30 0
     2393 SETTABLEKS                       R30 R29 K488 ["BorderSize"]
     2395 LOADN                            R30 3
     2396 SETTABLEKS                       R30 R29 K490 ["TopLineHeight"]
     2398 SETTABLEKS                       R29 R28 K495 ["&CategoryTab"]
     2400 CALL                             R26 2 1
     2401 SETTABLE                         R26 R23 R25
     2402 GETTABLEKS                       R25 R8 K34 ["Tooltip"]
     2404 GETTABLEKS                       R26 R1 K93 ["Dictionary"]
     2406 GETTABLEKS                       R26 R26 K94 ["join"]
     2408 MOVE                             R27 R20
     2409 NEWTABLE                         R28 1 0
     2411 DUPTABLE                         R29 K497 [{"ShowDelay"}]
     2412 LOADN                            R30 0
     2413 SETTABLEKS                       R30 R29 K496 ["ShowDelay"]
     2415 SETTABLEKS                       R29 R28 K498 ["&NoDelay"]
     2417 CALL                             R26 2 1
     2418 SETTABLE                         R26 R23 R25
     2419 LOADK                            R27 K243 ["DotsBackground"]
     2420 NAMECALL                         R25 R8 K43 ["add"]
     2422 CALL                             R25 2 0
     2423 GETTABLEKS                       R25 R8 K499 ["StageInfoBar"]
     2425 DUPTABLE                         R26 K505 [{"CircleBackground", "CircleStrokeSelected", "CircleStrokeUnselected", "DividerSelected", "DividerUnselected"}]
     2426 GETTABLEKS                       R27 R6 K141 ["SubBackground"]
     2428 SETTABLEKS                       R27 R26 K500 ["CircleBackground"]
     2430 GETTABLEKS                       R27 R6 K217 ["TextPrimary"]
     2432 SETTABLEKS                       R27 R26 K501 ["CircleStrokeSelected"]
     2434 GETTABLEKS                       R27 R6 K173 ["Border"]
     2436 SETTABLEKS                       R27 R26 K502 ["CircleStrokeUnselected"]
     2438 GETTABLEKS                       R27 R6 K217 ["TextPrimary"]
     2440 SETTABLEKS                       R27 R26 K503 ["DividerSelected"]
     2442 GETTABLEKS                       R27 R6 K173 ["Border"]
     2444 SETTABLEKS                       R27 R26 K504 ["DividerUnselected"]
     2446 SETTABLE                         R26 R23 R25
     2447 RETURN                           R23 1
