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
      158 DUPTABLE                         R25 K58 [{["Height"] = 50, ["Image"] = "rbxasset://textures/AvatarCompatibilityPreviewer/add.png", ["ImageColor"], ["ImageColorDisabled"], ["ImageSize"] = 20, ["PaddingTop"] = 5, ["PaddingLeft"] = 5, ["PaddingRight"] = 9, ["PaddingBottom"] = 5, ["FailureDialogSpacing"]}]
      159 GETTABLEKS                       R26 R6 K59 ["TextSecondary"]
      161 SETTABLEKS                       R26 R25 K47 ["ImageColor"]
      163 GETTABLEKS                       R26 R6 K60 ["TextDisabled"]
      165 SETTABLEKS                       R26 R25 K48 ["ImageColorDisabled"]
      167 GETIMPORT                        R26 K63 [UDim.new]
      169 LOADN                            R27 0
      170 LOADN                            R28 4
      171 CALL                             R26 2 1
      172 SETTABLEKS                       R26 R25 K57 ["FailureDialogSpacing"]
      174 SETTABLE                         R25 R23 R24
      175 LOADK                            R26 K64 ["AnimationControllerDisplay"]
      176 NAMECALL                         R24 R8 K43 ["add"]
      178 CALL                             R24 2 0
      179 GETTABLEKS                       R24 R8 K64 ["AnimationControllerDisplay"]
      181 DUPTABLE                         R25 K69 [{["Padding"] = 30, ["Position"], ["Size"]}]
      182 GETIMPORT                        R26 K71 [UDim2.new]
      184 LOADN                            R27 0
      185 LOADN                            R28 0
      186 LOADN                            R29 1
      187 LOADN                            R30 -12
      188 CALL                             R26 4 1
      189 SETTABLEKS                       R26 R25 K67 ["Position"]
      191 GETIMPORT                        R26 K71 [UDim2.new]
      193 LOADN                            R27 1
      194 LOADN                            R28 0
      195 LOADN                            R29 0
      196 LOADN                            R30 32
      197 CALL                             R26 4 1
      198 SETTABLEKS                       R26 R25 K68 ["Size"]
      200 SETTABLE                         R25 R23 R24
      201 LOADK                            R26 K72 ["AnimationPlaybackSlider"]
      202 NAMECALL                         R24 R8 K43 ["add"]
      204 CALL                             R24 2 0
      205 GETTABLEKS                       R24 R8 K72 ["AnimationPlaybackSlider"]
      207 DUPTABLE                         R25 K80 [{["PlayImage"], ["PauseImage"] = "rbxasset://textures/LayeredClothingEditor/Icon_Pause.png", ["PlayButtonWidth"] = 20, ["PlayTimeLabelWidth"] = 60, ["Padding"] = 12}]
      208 GETTABLEKS                       R26 R6 K73 ["PlayImage"]
      210 SETTABLEKS                       R26 R25 K73 ["PlayImage"]
      212 SETTABLE                         R25 R23 R24
      213 LOADK                            R26 K81 ["AnimationPreview"]
      214 NAMECALL                         R24 R8 K43 ["add"]
      216 CALL                             R24 2 0
      217 GETTABLEKS                       R24 R8 K81 ["AnimationPreview"]
      219 NEWTABLE                         R25 4 0
      221 LOADK                            R26 K82 [0.5]
      222 SETTABLEKS                       R26 R25 K83 ["PausedAnimationAlpha"]
      224 DUPTABLE                         R26 K86 [{["FrontRightAngleLerp"] = 0.4}]
      225 SETTABLEKS                       R26 R25 K87 ["&BodyPreview"]
      227 DUPTABLE                         R26 K92 [{["FieldOfView"] = 30, ["FrontRightAngleLerp"] = 0.08, ["InitialDistance"] = 2.8}]
      228 SETTABLEKS                       R26 R25 K93 ["&FacePreview"]
      230 SETTABLE                         R25 R23 R24
      231 LOADK                            R26 K94 ["AssetPalettes"]
      232 NAMECALL                         R24 R8 K43 ["add"]
      234 CALL                             R24 2 0
      235 GETTABLEKS                       R24 R8 K94 ["AssetPalettes"]
      237 DUPTABLE                         R25 K97 [{"BackgroundColor", "BackgroundColorHover", "ScrollingFrame", "Size"}]
      238 GETTABLEKS                       R26 R6 K98 ["SubBackground2"]
      240 SETTABLEKS                       R26 R25 K95 ["BackgroundColor"]
      242 GETTABLEKS                       R26 R6 K99 ["ActionHover"]
      244 SETTABLEKS                       R26 R25 K96 ["BackgroundColorHover"]
      246 GETTABLEKS                       R26 R1 K100 ["Dictionary"]
      248 GETTABLEKS                       R26 R26 K101 ["join"]
      250 MOVE                             R27 R16
      251 DUPTABLE                         R28 K107 [{["BackgroundColor3"], ["BackgroundTransparency"] = 0, ["Padding"] = 0, ["ScrollBarThickness"] = 0, ["Spacing"]}]
      252 GETTABLEKS                       R29 R6 K98 ["SubBackground2"]
      254 SETTABLEKS                       R29 R28 K102 ["BackgroundColor3"]
      256 GETIMPORT                        R29 K63 [UDim.new]
      258 LOADN                            R30 0
      259 LOADN                            R31 5
      260 CALL                             R29 2 1
      261 SETTABLEKS                       R29 R28 K106 ["Spacing"]
      263 CALL                             R26 2 1
      264 SETTABLEKS                       R26 R25 K30 ["ScrollingFrame"]
      266 GETIMPORT                        R26 K71 [UDim2.new]
      268 LOADN                            R27 1
      269 LOADN                            R28 0
      270 LOADN                            R29 0
      271 LOADN                            R30 24
      272 CALL                             R26 4 1
      273 SETTABLEKS                       R26 R25 K68 ["Size"]
      275 SETTABLE                         R25 R23 R24
      276 LOADK                            R26 K108 ["AutoSetupScreen"]
      277 NAMECALL                         R24 R8 K43 ["add"]
      279 CALL                             R24 2 0
      280 GETTABLEKS                       R24 R8 K108 ["AutoSetupScreen"]
      282 DUPTABLE                         R25 K119 [{["AlertPaddingHorizontal"], ["AlertPaddingVertical"], ["Controls"], ["SpinRate"] = -0.25, ["SplitPane"], ["TablePadding"] = 8, ["ToggleBarHeight"] = 22}]
      283 GETIMPORT                        R26 K63 [UDim.new]
      285 LOADN                            R27 0
      286 LOADN                            R28 20
      287 CALL                             R26 2 1
      288 SETTABLEKS                       R26 R25 K109 ["AlertPaddingHorizontal"]
      290 GETIMPORT                        R26 K63 [UDim.new]
      292 LOADN                            R27 0
      293 LOADN                            R28 8
      294 CALL                             R26 2 1
      295 SETTABLEKS                       R26 R25 K110 ["AlertPaddingVertical"]
      297 DUPTABLE                         R26 K130 [{["AnchorPoint"], ["ButtonAnchorPoint"], ["ButtonColor"], ["ButtonHeight"] = 28, ["ButtonPaddingHorizontal"] = 24, ["Position"], ["TablePosition"], ["PaneHeight"] = 42}]
      298 GETIMPORT                        R27 K132 [Vector2.new]
      300 LOADK                            R28 K82 [0.5]
      301 LOADN                            R29 1
      302 CALL                             R27 2 1
      303 SETTABLEKS                       R27 R26 K120 ["AnchorPoint"]
      305 GETIMPORT                        R27 K132 [Vector2.new]
      307 LOADN                            R28 1
      308 LOADK                            R29 K82 [0.5]
      309 CALL                             R27 2 1
      310 SETTABLEKS                       R27 R26 K121 ["ButtonAnchorPoint"]
      312 GETTABLEKS                       R27 R6 K133 ["SecondaryContrast"]
      314 SETTABLEKS                       R27 R26 K122 ["ButtonColor"]
      316 GETIMPORT                        R27 K135 [UDim2.fromScale]
      318 LOADK                            R28 K82 [0.5]
      319 LOADN                            R29 1
      320 CALL                             R27 2 1
      321 SETTABLEKS                       R27 R26 K67 ["Position"]
      323 GETIMPORT                        R27 K71 [UDim2.new]
      325 LOADK                            R28 K82 [0.5]
      326 LOADN                            R29 0
      327 LOADN                            R30 1
      328 LOADN                            R31 -16
      329 CALL                             R27 4 1
      330 SETTABLEKS                       R27 R26 K127 ["TablePosition"]
      332 SETTABLEKS                       R26 R25 K111 ["Controls"]
      334 DUPTABLE                         R26 K142 [{["DefaultSizes"], ["CollapsedSizes"], ["CollapsedTolerance"] = 0.01, ["MinimumSizes"], ["HiddenSizes"]}]
      335 NEWTABLE                         R27 0 2
      337 GETIMPORT                        R28 K63 [UDim.new]
      339 LOADK                            R29 K143 [0.65]
      340 LOADN                            R30 0
      341 CALL                             R28 2 1
      342 GETIMPORT                        R29 K63 [UDim.new]
      344 LOADK                            R30 K144 [0.35]
      345 LOADN                            R31 0
      346 CALL                             R29 2 -1
      347 SETLIST                          R27 R28 -1 [1]
      349 SETTABLEKS                       R27 R26 K136 ["DefaultSizes"]
      351 NEWTABLE                         R27 0 2
      353 GETIMPORT                        R28 K63 [UDim.new]
      355 LOADN                            R29 1
      356 LOADN                            R30 0
      357 CALL                             R28 2 1
      358 GETIMPORT                        R29 K63 [UDim.new]
      360 LOADN                            R30 0
      361 LOADN                            R31 0
      362 CALL                             R29 2 -1
      363 SETLIST                          R27 R28 -1 [1]
      365 SETTABLEKS                       R27 R26 K137 ["CollapsedSizes"]
      367 NEWTABLE                         R27 0 2
      369 GETIMPORT                        R28 K63 [UDim.new]
      371 LOADK                            R29 K145 [0.3]
      372 LOADN                            R30 0
      373 CALL                             R28 2 1
      374 GETIMPORT                        R29 K63 [UDim.new]
      376 LOADN                            R30 0
      377 LOADN                            R31 0
      378 CALL                             R29 2 -1
      379 SETLIST                          R27 R28 -1 [1]
      381 SETTABLEKS                       R27 R26 K140 ["MinimumSizes"]
      383 NEWTABLE                         R27 0 2
      385 GETIMPORT                        R28 K63 [UDim.new]
      387 LOADK                            R29 K146 [1.01]
      388 LOADN                            R30 0
      389 CALL                             R28 2 1
      390 GETIMPORT                        R29 K63 [UDim.new]
      392 LOADN                            R30 0
      393 LOADN                            R31 0
      394 CALL                             R29 2 -1
      395 SETLIST                          R27 R28 -1 [1]
      397 SETTABLEKS                       R27 R26 K141 ["HiddenSizes"]
      399 SETTABLEKS                       R26 R25 K114 ["SplitPane"]
      401 SETTABLE                         R25 R23 R24
      402 LOADK                            R26 K147 ["AvatarScreen"]
      403 NAMECALL                         R24 R8 K43 ["add"]
      405 CALL                             R24 2 0
      406 GETTABLEKS                       R24 R8 K147 ["AvatarScreen"]
      408 DUPTABLE                         R25 K149 [{"AssetPalettes", "Tabs"}]
      409 DUPTABLE                         R26 K154 [{["BackgroundColor"], ["SeparatorColor"], ["SeparatorWidth"] = 0, ["Width"] = 104}]
      410 GETTABLEKS                       R27 R6 K98 ["SubBackground2"]
      412 SETTABLEKS                       R27 R26 K95 ["BackgroundColor"]
      414 GETTABLEKS                       R27 R6 K155 ["SubBackground"]
      416 SETTABLEKS                       R27 R26 K150 ["SeparatorColor"]
      418 SETTABLEKS                       R26 R25 K94 ["AssetPalettes"]
      420 DUPTABLE                         R26 K159 [{["Height"] = 64, ["VerticalOffset"] = -4}]
      421 SETTABLEKS                       R26 R25 K148 ["Tabs"]
      423 SETTABLE                         R25 R23 R24
      424 LOADK                            R26 K160 ["Background"]
      425 NAMECALL                         R24 R8 K43 ["add"]
      427 CALL                             R24 2 0
      428 GETTABLEKS                       R24 R8 K160 ["Background"]
      430 DUPTABLE                         R25 K161 [{"Image"}]
      431 GETTABLEKS                       R26 R6 K162 ["PreviewerBackgroundImage"]
      433 SETTABLEKS                       R26 R25 K28 ["Image"]
      435 SETTABLE                         R25 R23 R24
      436 MOVE                             R24 R21
      437 CALL                             R24 0 1
      438 JUMPIFNOT                        R24 ; [+16]
      439 LOADK                            R26 K163 ["BodyPointsTool"]
      440 NAMECALL                         R24 R8 K43 ["add"]
      442 CALL                             R24 2 0
      443 GETTABLEKS                       R24 R8 K163 ["BodyPointsTool"]
      445 DUPTABLE                         R25 K166 [{"ProjectionImage", "SymmetricalImage"}]
      446 GETTABLEKS                       R26 R6 K167 ["Projection"]
      448 SETTABLEKS                       R26 R25 K164 ["ProjectionImage"]
      450 GETTABLEKS                       R26 R6 K168 ["Symmetry"]
      452 SETTABLEKS                       R26 R25 K165 ["SymmetricalImage"]
      454 SETTABLE                         R25 R23 R24
      455 MOVE                             R24 R21
      456 CALL                             R24 0 1
      457 JUMPIFNOT                        R24 ; [+32]
      458 LOADK                            R26 K169 ["CageEditingTool"]
      459 NAMECALL                         R24 R8 K43 ["add"]
      461 CALL                             R24 2 0
      462 GETTABLEKS                       R24 R8 K169 ["CageEditingTool"]
      464 DUPTABLE                         R25 K176 [{"FalloffImage", "MirrorToLeftImage", "MirrorToRightImage", "RadiusImage", "ResetChangesImage", "SymmetryImage"}]
      465 GETTABLEKS                       R26 R6 K177 ["Falloff"]
      467 SETTABLEKS                       R26 R25 K170 ["FalloffImage"]
      469 GETTABLEKS                       R26 R6 K178 ["MirrorToLeft"]
      471 SETTABLEKS                       R26 R25 K171 ["MirrorToLeftImage"]
      473 GETTABLEKS                       R26 R6 K179 ["MirrorToRight"]
      475 SETTABLEKS                       R26 R25 K172 ["MirrorToRightImage"]
      477 GETTABLEKS                       R26 R6 K180 ["Radius"]
      479 SETTABLEKS                       R26 R25 K173 ["RadiusImage"]
      481 GETTABLEKS                       R26 R6 K181 ["ResetChanges"]
      483 SETTABLEKS                       R26 R25 K174 ["ResetChangesImage"]
      485 GETTABLEKS                       R26 R6 K168 ["Symmetry"]
      487 SETTABLEKS                       R26 R25 K175 ["SymmetryImage"]
      489 SETTABLE                         R25 R23 R24
      490 LOADK                            R26 K182 ["Catalog"]
      491 NAMECALL                         R24 R8 K43 ["add"]
      493 CALL                             R24 2 0
      494 GETTABLEKS                       R24 R8 K182 ["Catalog"]
      496 DUPTABLE                         R25 K185 [{"ScrollingFrame", "ScrollingFrameHeight", "CellSize"}]
      497 GETTABLEKS                       R26 R1 K100 ["Dictionary"]
      499 GETTABLEKS                       R26 R26 K101 ["join"]
      501 MOVE                             R27 R16
      502 DUPTABLE                         R28 K189 [{["BorderColor3"], ["Padding"] = 0, ["ScrollBarThickness"] = 4, ["VerticalScrollBarInset"]}]
      503 GETTABLEKS                       R29 R6 K190 ["Border"]
      505 SETTABLEKS                       R29 R28 K186 ["BorderColor3"]
      507 GETIMPORT                        R29 K194 [Enum.ScrollBarInset.Always]
      509 SETTABLEKS                       R29 R28 K188 ["VerticalScrollBarInset"]
      511 CALL                             R26 2 1
      512 SETTABLEKS                       R26 R25 K30 ["ScrollingFrame"]
      514 GETIMPORT                        R26 K63 [UDim.new]
      516 LOADN                            R27 1
      517 LOADN                            R28 -50
      518 CALL                             R26 2 1
      519 SETTABLEKS                       R26 R25 K183 ["ScrollingFrameHeight"]
      521 GETIMPORT                        R26 K196 [UDim2.fromOffset]
      523 LOADN                            R27 90
      524 LOADN                            R28 90
      525 CALL                             R26 2 1
      526 SETTABLEKS                       R26 R25 K184 ["CellSize"]
      528 SETTABLE                         R25 R23 R24
      529 LOADK                            R26 K197 ["CatalogItemButton"]
      530 NAMECALL                         R24 R8 K43 ["add"]
      532 CALL                             R24 2 0
      533 GETTABLEKS                       R24 R8 K197 ["CatalogItemButton"]
      535 DUPTABLE                         R25 K202 [{["HoverX"], ["AccessoryTypeImage"], ["UserImage"], ["Padding"] = 4, ["TextLabelPadding"]}]
      536 DUPTABLE                         R26 K205 [{["Color"], ["Image"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png", ["AnchorPoint"], ["Position"], ["Size"]}]
      537 GETTABLEKS                       R27 R6 K59 ["TextSecondary"]
      539 SETTABLEKS                       R27 R26 K203 ["Color"]
      541 GETIMPORT                        R27 K132 [Vector2.new]
      543 LOADN                            R28 1
      544 LOADN                            R29 0
      545 CALL                             R27 2 1
      546 SETTABLEKS                       R27 R26 K120 ["AnchorPoint"]
      548 GETIMPORT                        R27 K71 [UDim2.new]
      550 LOADN                            R28 1
      551 LOADN                            R29 -4
      552 LOADN                            R30 0
      553 LOADN                            R31 4
      554 CALL                             R27 4 1
      555 SETTABLEKS                       R27 R26 K67 ["Position"]
      557 GETIMPORT                        R27 K196 [UDim2.fromOffset]
      559 LOADN                            R28 13
      560 LOADN                            R29 13
      561 CALL                             R27 2 1
      562 SETTABLEKS                       R27 R26 K68 ["Size"]
      564 SETTABLEKS                       R26 R25 K198 ["HoverX"]
      566 DUPTABLE                         R26 K210 [{["Color"], ["AnchorPoint"], ["Position"], ["Size"], ["LayeredImage"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/layered@2x.png", ["RigidImage"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/rigid@2x.png"}]
      567 GETTABLEKS                       R27 R6 K59 ["TextSecondary"]
      569 SETTABLEKS                       R27 R26 K203 ["Color"]
      571 GETIMPORT                        R27 K132 [Vector2.new]
      573 LOADN                            R28 0
      574 LOADN                            R29 0
      575 CALL                             R27 2 1
      576 SETTABLEKS                       R27 R26 K120 ["AnchorPoint"]
      578 GETIMPORT                        R27 K196 [UDim2.fromOffset]
      580 LOADN                            R28 4
      581 LOADN                            R29 4
      582 CALL                             R27 2 1
      583 SETTABLEKS                       R27 R26 K67 ["Position"]
      585 GETIMPORT                        R27 K196 [UDim2.fromOffset]
      587 LOADN                            R28 13
      588 LOADN                            R29 13
      589 CALL                             R27 2 1
      590 SETTABLEKS                       R27 R26 K68 ["Size"]
      592 SETTABLEKS                       R26 R25 K199 ["AccessoryTypeImage"]
      594 DUPTABLE                         R26 K212 [{["Color"], ["Image"] = "rbxasset://textures/AvatarCompatibilityPreviewer/user.png", ["AnchorPoint"], ["Position"], ["Size"]}]
      595 GETTABLEKS                       R27 R6 K59 ["TextSecondary"]
      597 SETTABLEKS                       R27 R26 K203 ["Color"]
      599 GETIMPORT                        R27 K132 [Vector2.new]
      601 LOADN                            R28 1
      602 LOADN                            R29 0
      603 CALL                             R27 2 1
      604 SETTABLEKS                       R27 R26 K120 ["AnchorPoint"]
      606 GETIMPORT                        R27 K71 [UDim2.new]
      608 LOADN                            R28 1
      609 LOADN                            R29 -4
      610 LOADN                            R30 1
      611 LOADN                            R31 -20
      612 CALL                             R27 4 1
      613 SETTABLEKS                       R27 R26 K67 ["Position"]
      615 GETIMPORT                        R27 K196 [UDim2.fromOffset]
      617 LOADN                            R28 13
      618 LOADN                            R29 16
      619 CALL                             R27 2 1
      620 SETTABLEKS                       R27 R26 K68 ["Size"]
      622 SETTABLEKS                       R26 R25 K200 ["UserImage"]
      624 GETIMPORT                        R26 K63 [UDim.new]
      626 LOADN                            R27 0
      627 LOADN                            R28 8
      628 CALL                             R26 2 1
      629 SETTABLEKS                       R26 R25 K201 ["TextLabelPadding"]
      631 SETTABLE                         R25 R23 R24
      632 LOADK                            R26 K213 ["ContextualSurveyDialogButton"]
      633 NAMECALL                         R24 R8 K43 ["add"]
      635 CALL                             R24 2 0
      636 GETTABLEKS                       R24 R8 K213 ["ContextualSurveyDialogButton"]
      638 DUPTABLE                         R25 K214 [{"Image", "Position", "Size"}]
      639 GETTABLEKS                       R26 R6 K215 ["SendFeedback"]
      641 SETTABLEKS                       R26 R25 K28 ["Image"]
      643 GETIMPORT                        R26 K71 [UDim2.new]
      645 LOADN                            R27 0
      646 LOADN                            R28 28
      647 LOADN                            R29 1
      648 LOADN                            R30 -60
      649 CALL                             R26 4 1
      650 SETTABLEKS                       R26 R25 K67 ["Position"]
      652 GETIMPORT                        R26 K196 [UDim2.fromOffset]
      654 LOADN                            R27 24
      655 LOADN                            R28 24
      656 CALL                             R26 2 1
      657 SETTABLEKS                       R26 R25 K68 ["Size"]
      659 SETTABLE                         R25 R23 R24
      660 LOADK                            R26 K216 ["GenerationCard"]
      661 NAMECALL                         R24 R8 K43 ["add"]
      663 CALL                             R24 2 0
      664 GETTABLEKS                       R24 R8 K216 ["GenerationCard"]
      666 DUPTABLE                         R25 K231 [{["TitleFont"], ["PrimaryActionFont"], ["BackgroundColor"], ["BackgroundColorHoverDarkerMultiplier"] = 0.15, ["TextColor"], ["TextSize"] = 18, ["CornerRadius"], ["InnerPadding"] = 12, ["MaxWidth"] = 500, ["StrokeColor"], ["StrokeThickness"] = 1}]
      667 GETIMPORT                        R26 K234 [Enum.Font.SourceSansBold]
      669 SETTABLEKS                       R26 R25 K217 ["TitleFont"]
      671 GETIMPORT                        R26 K236 [Enum.Font.SourceSans]
      673 SETTABLEKS                       R26 R25 K218 ["PrimaryActionFont"]
      675 GETTABLEKS                       R26 R6 K237 ["AlertBackgroundDefault"]
      677 SETTABLEKS                       R26 R25 K95 ["BackgroundColor"]
      679 GETTABLEKS                       R26 R6 K238 ["TextPrimary"]
      681 SETTABLEKS                       R26 R25 K221 ["TextColor"]
      683 GETIMPORT                        R26 K63 [UDim.new]
      685 LOADN                            R27 0
      686 LOADN                            R28 8
      687 CALL                             R26 2 1
      688 SETTABLEKS                       R26 R25 K224 ["CornerRadius"]
      690 GETTABLEKS                       R26 R6 K239 ["OtherDivider"]
      692 SETTABLEKS                       R26 R25 K228 ["StrokeColor"]
      694 SETTABLE                         R25 R23 R24
      695 MOVE                             R24 R21
      696 CALL                             R24 0 1
      697 JUMPIFNOT                        R24 ; [+24]
      698 LOADK                            R26 K240 ["EditingTools"]
      699 NAMECALL                         R24 R8 K43 ["add"]
      701 CALL                             R24 2 0
      702 GETTABLEKS                       R24 R8 K240 ["EditingTools"]
      704 DUPTABLE                         R25 K245 [{"AttachmentToolImage", "CageEditingToolImage", "ShowClothingOffImage", "ShowClothingOnImage"}]
      705 GETTABLEKS                       R26 R6 K246 ["AttachmentTool"]
      707 SETTABLEKS                       R26 R25 K241 ["AttachmentToolImage"]
      709 GETTABLEKS                       R26 R6 K247 ["CageTool"]
      711 SETTABLEKS                       R26 R25 K242 ["CageEditingToolImage"]
      713 GETTABLEKS                       R26 R6 K248 ["ShowClothingOff"]
      715 SETTABLEKS                       R26 R25 K243 ["ShowClothingOffImage"]
      717 GETTABLEKS                       R26 R6 K249 ["ShowClothingOn"]
      719 SETTABLEKS                       R26 R25 K244 ["ShowClothingOnImage"]
      721 SETTABLE                         R25 R23 R24
      722 LOADK                            R26 K250 ["EquippedItemsSidebar"]
      723 NAMECALL                         R24 R8 K43 ["add"]
      725 CALL                             R24 2 0
      726 GETTABLEKS                       R24 R8 K250 ["EquippedItemsSidebar"]
      728 DUPTABLE                         R25 K259 [{["CellSize"], ["FrameSizeOffset"] = 50, ["ItemSpacing"], ["ScrollingFrameSizeOffset"] = 90, ["ScrollBarThickness"] = 4, ["SidebarSpacing"] = 15, ["Size"], ["SidebarPadding"] = 10}]
      729 GETIMPORT                        R26 K196 [UDim2.fromOffset]
      731 LOADN                            R27 45
      732 LOADN                            R28 45
      733 CALL                             R26 2 1
      734 SETTABLEKS                       R26 R25 K184 ["CellSize"]
      736 GETIMPORT                        R26 K63 [UDim.new]
      738 LOADN                            R27 0
      739 LOADN                            R28 5
      740 CALL                             R26 2 1
      741 SETTABLEKS                       R26 R25 K252 ["ItemSpacing"]
      743 GETIMPORT                        R26 K196 [UDim2.fromOffset]
      745 LOADN                            R27 0
      746 LOADN                            R28 0
      747 CALL                             R26 2 1
      748 SETTABLEKS                       R26 R25 K68 ["Size"]
      750 SETTABLE                         R25 R23 R24
      751 LOADK                            R26 K260 ["EquippedItemPreview"]
      752 NAMECALL                         R24 R8 K43 ["add"]
      754 CALL                             R24 2 0
      755 GETTABLEKS                       R24 R8 K260 ["EquippedItemPreview"]
      757 DUPTABLE                         R25 K264 [{["HoverX"], ["CornerRadius"], ["StrokeColor"], ["StrokeThickness"] = 1, ["ItemHiddenTransparency"] = 0.7, ["ItemWornTransparency"] = 0}]
      758 DUPTABLE                         R26 K265 [{["Image"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Standard/x_dark.png", ["AnchorPoint"], ["Position"], ["Size"]}]
      759 GETIMPORT                        R27 K132 [Vector2.new]
      761 LOADN                            R28 1
      762 LOADN                            R29 0
      763 CALL                             R27 2 1
      764 SETTABLEKS                       R27 R26 K120 ["AnchorPoint"]
      766 GETIMPORT                        R27 K71 [UDim2.new]
      768 LOADN                            R28 1
      769 LOADN                            R29 -2
      770 LOADN                            R30 0
      771 LOADN                            R31 2
      772 CALL                             R27 4 1
      773 SETTABLEKS                       R27 R26 K67 ["Position"]
      775 GETIMPORT                        R27 K196 [UDim2.fromOffset]
      777 LOADN                            R28 13
      778 LOADN                            R29 13
      779 CALL                             R27 2 1
      780 SETTABLEKS                       R27 R26 K68 ["Size"]
      782 SETTABLEKS                       R26 R25 K198 ["HoverX"]
      784 GETIMPORT                        R26 K63 [UDim.new]
      786 LOADN                            R27 0
      787 LOADN                            R28 4
      788 CALL                             R26 2 1
      789 SETTABLEKS                       R26 R25 K224 ["CornerRadius"]
      791 GETTABLEKS                       R26 R6 K190 ["Border"]
      793 SETTABLEKS                       R26 R25 K228 ["StrokeColor"]
      795 SETTABLE                         R25 R23 R24
      796 LOADK                            R26 K266 ["EquippedItemSideMenu"]
      797 NAMECALL                         R24 R8 K43 ["add"]
      799 CALL                             R24 2 0
      800 GETTABLEKS                       R24 R8 K266 ["EquippedItemSideMenu"]
      802 DUPTABLE                         R25 K272 [{["DotsBackground"], ["DotsBackgroundHover"], ["IconSize"] = 16, ["Margin"] = 1}]
      803 GETTABLEKS                       R26 R6 K59 ["TextSecondary"]
      805 SETTABLEKS                       R26 R25 K267 ["DotsBackground"]
      807 GETTABLEKS                       R26 R6 K273 ["TextContrast"]
      809 SETTABLEKS                       R26 R25 K268 ["DotsBackgroundHover"]
      811 SETTABLE                         R25 R23 R24
      812 LOADK                            R26 K274 ["ImportPage"]
      813 NAMECALL                         R24 R8 K43 ["add"]
      815 CALL                             R24 2 0
      816 GETTABLEKS                       R24 R8 K274 ["ImportPage"]
      818 DUPTABLE                         R25 K284 [{["ArrowImage"] = "rbxasset://textures/AvatarCompatibilityPreviewer/img_triangle.png", ["ArrowColor"], ["Avatar"], ["BackButton"], ["HeaderHeight"] = 35, ["GridPadding"], ["SearchBarHeight"]}]
      819 GETTABLEKS                       R26 R6 K238 ["TextPrimary"]
      821 SETTABLEKS                       R26 R25 K277 ["ArrowColor"]
      823 DUPTABLE                         R26 K291 [{["IconSize"] = 75, ["InnerPadding"] = 2, ["NameFontSize"] = 16, ["NameLines"] = 2, ["Padding"] = 4, ["TitleColor"], ["PreviewAmbient"]}]
      824 GETTABLEKS                       R27 R6 K292 ["TextLink"]
      826 SETTABLEKS                       R27 R26 K289 ["TitleColor"]
      828 GETIMPORT                        R27 K294 [Color3.new]
      830 LOADK                            R28 K85 [0.4]
      831 LOADK                            R29 K85 [0.4]
      832 LOADK                            R30 K85 [0.4]
      833 CALL                             R27 3 1
      834 SETTABLEKS                       R27 R26 K290 ["PreviewAmbient"]
      836 SETTABLEKS                       R26 R25 K278 ["Avatar"]
      838 DUPTABLE                         R26 K295 [{["Size"], ["IconSize"] = 12}]
      839 GETIMPORT                        R27 K196 [UDim2.fromOffset]
      841 LOADN                            R28 24
      842 LOADN                            R29 24
      843 CALL                             R27 2 1
      844 SETTABLEKS                       R27 R26 K68 ["Size"]
      846 SETTABLEKS                       R26 R25 K279 ["BackButton"]
      848 GETIMPORT                        R26 K196 [UDim2.fromOffset]
      850 LOADN                            R27 5
      851 LOADN                            R28 15
      852 CALL                             R26 2 1
      853 SETTABLEKS                       R26 R25 K282 ["GridPadding"]
      855 GETIMPORT                        R26 K63 [UDim.new]
      857 LOADK                            R27 K296 [0.8]
      858 LOADN                            R28 0
      859 CALL                             R26 2 1
      860 SETTABLEKS                       R26 R25 K283 ["SearchBarHeight"]
      862 SETTABLE                         R25 R23 R24
      863 LOADK                            R26 K297 ["ItemDataPreviewModel"]
      864 NAMECALL                         R24 R8 K43 ["add"]
      866 CALL                             R24 2 0
      867 GETTABLEKS                       R24 R8 K297 ["ItemDataPreviewModel"]
      869 DUPTABLE                         R25 K299 [{"InstanceAmbient"}]
      870 GETIMPORT                        R26 K294 [Color3.new]
      872 LOADK                            R27 K85 [0.4]
      873 LOADK                            R28 K85 [0.4]
      874 LOADK                            R29 K85 [0.4]
      875 CALL                             R26 3 1
      876 SETTABLEKS                       R26 R25 K298 ["InstanceAmbient"]
      878 SETTABLE                         R25 R23 R24
      879 LOADK                            R26 K300 ["ModelPreview"]
      880 NAMECALL                         R24 R8 K43 ["add"]
      882 CALL                             R24 2 0
      883 GETTABLEKS                       R24 R8 K300 ["ModelPreview"]
      885 DUPTABLE                         R25 K310 [{["Ambient"], ["EnableSky"] = True, ["LightColor"], ["LightDirection"] = {0.4, -0.5, 0.6}, ["PanSpeedMultiplier"] = 0.25, ["Platform"]}]
      886 GETIMPORT                        R26 K312 [Color3.fromRGB]
      888 LOADN                            R27 170
      889 LOADN                            R28 185
      890 LOADN                            R29 200
      891 CALL                             R26 3 1
      892 SETTABLEKS                       R26 R25 K301 ["Ambient"]
      894 GETIMPORT                        R26 K312 [Color3.fromRGB]
      896 LOADN                            R27 221
      897 LOADN                            R28 242
      898 LOADN                            R29 242
      899 CALL                             R26 3 1
      900 SETTABLEKS                       R26 R25 K304 ["LightColor"]
      902 DUPTABLE                         R26 K315 [{["Height"] = 0.2, ["Size"] = 5, ["FrontIndicatorColor"]}]
      903 GETTABLEKS                       R27 R4 K203 ["Color"]
      905 GETTABLEKS                       R27 R27 K316 ["Extended"]
      907 GETTABLEKS                       R27 R27 K317 ["Blue"]
      909 GETTABLEKS                       R27 R27 K318 ["Blue_700"]
      911 GETTABLEKS                       R27 R27 K293 ["Color3"]
      913 SETTABLEKS                       R27 R26 K314 ["FrontIndicatorColor"]
      915 SETTABLEKS                       R26 R25 K309 ["Platform"]
      917 SETTABLE                         R25 R23 R24
      918 LOADK                            R26 K319 ["Notice"]
      919 NAMECALL                         R24 R8 K43 ["add"]
      921 CALL                             R24 2 0
      922 GETTABLEKS                       R24 R8 K319 ["Notice"]
      924 DUPTABLE                         R25 K320 [{["BackgroundColor"], ["CornerRadius"], ["TextColor"], ["TextSize"] = 20, ["Padding"]}]
      925 GETTABLEKS                       R26 R6 K155 ["SubBackground"]
      927 SETTABLEKS                       R26 R25 K95 ["BackgroundColor"]
      929 GETIMPORT                        R26 K63 [UDim.new]
      931 LOADN                            R27 0
      932 LOADN                            R28 6
      933 CALL                             R26 2 1
      934 SETTABLEKS                       R26 R25 K224 ["CornerRadius"]
      936 GETTABLEKS                       R26 R6 K238 ["TextPrimary"]
      938 SETTABLEKS                       R26 R25 K221 ["TextColor"]
      940 DUPTABLE                         R26 K325 [{["Left"] = 8, ["Right"] = 8, ["Top"] = 4, ["Bottom"] = 4}]
      941 SETTABLEKS                       R26 R25 K65 ["Padding"]
      943 SETTABLE                         R25 R23 R24
      944 LOADK                            R26 K326 ["PickTabMenu"]
      945 NAMECALL                         R24 R8 K43 ["add"]
      947 CALL                             R24 2 0
      948 GETTABLEKS                       R24 R8 K326 ["PickTabMenu"]
      950 DUPTABLE                         R25 K328 [{["CornerRadius"], ["ImageColor"], ["Padding"] = 6, ["Position"], ["Size"]}]
      951 GETIMPORT                        R26 K63 [UDim.new]
      953 LOADN                            R27 0
      954 LOADN                            R28 6
      955 CALL                             R26 2 1
      956 SETTABLEKS                       R26 R25 K224 ["CornerRadius"]
      958 GETTABLEKS                       R26 R6 K238 ["TextPrimary"]
      960 SETTABLEKS                       R26 R25 K47 ["ImageColor"]
      962 GETIMPORT                        R26 K71 [UDim2.new]
      964 LOADN                            R27 1
      965 LOADN                            R28 -32
      966 LOADN                            R29 0
      967 LOADN                            R30 0
      968 CALL                             R26 4 1
      969 SETTABLEKS                       R26 R25 K67 ["Position"]
      971 GETIMPORT                        R26 K196 [UDim2.fromOffset]
      973 LOADN                            R27 32
      974 LOADN                            R28 32
      975 CALL                             R26 2 1
      976 SETTABLEKS                       R26 R25 K68 ["Size"]
      978 SETTABLE                         R25 R23 R24
      979 LOADK                            R26 K329 ["ResetCameraButton"]
      980 NAMECALL                         R24 R8 K43 ["add"]
      982 CALL                             R24 2 0
      983 GETTABLEKS                       R24 R8 K329 ["ResetCameraButton"]
      985 DUPTABLE                         R25 K330 [{["Size"], ["Spacing"] = 5, ["Image"]}]
      986 GETIMPORT                        R26 K196 [UDim2.fromOffset]
      988 LOADN                            R27 45
      989 LOADN                            R28 45
      990 CALL                             R26 2 1
      991 SETTABLEKS                       R26 R25 K68 ["Size"]
      993 GETTABLEKS                       R26 R6 K331 ["ResetCameraImage"]
      995 SETTABLEKS                       R26 R25 K28 ["Image"]
      997 SETTABLE                         R25 R23 R24
      998 LOADK                            R26 K332 ["SelectScreen"]
      999 NAMECALL                         R24 R8 K43 ["add"]
     1001 CALL                             R24 2 0
     1002 GETTABLEKS                       R24 R8 K332 ["SelectScreen"]
     1004 DUPTABLE                         R25 K333 [{["ButtonHeight"] = 24, ["Spacing"]}]
     1005 GETIMPORT                        R26 K63 [UDim.new]
     1007 LOADN                            R27 0
     1008 LOADN                            R28 18
     1009 CALL                             R26 2 1
     1010 SETTABLEKS                       R26 R25 K106 ["Spacing"]
     1012 SETTABLE                         R25 R23 R24
     1013 LOADK                            R26 K334 ["SimpleSelectScreen"]
     1014 NAMECALL                         R24 R8 K43 ["add"]
     1016 CALL                             R24 2 0
     1017 GETTABLEKS                       R24 R8 K334 ["SimpleSelectScreen"]
     1019 DUPTABLE                         R25 K341 [{["BackgroundColor"], ["ImageBackgroundColor"], ["IconColor"], ["LineColor"], ["FontFace"], ["TextSize"] = 18, ["ImageSize"], ["Spacing"], ["LineSize"], ["ButtonHeight"] = 32, ["Image"]}]
     1020 GETTABLEKS                       R26 R6 K342 ["IconBackgroundColor"]
     1022 SETTABLEKS                       R26 R25 K95 ["BackgroundColor"]
     1024 GETTABLEKS                       R26 R6 K155 ["SubBackground"]
     1026 SETTABLEKS                       R26 R25 K335 ["ImageBackgroundColor"]
     1028 GETIMPORT                        R26 K312 [Color3.fromRGB]
     1030 LOADN                            R27 248
     1031 LOADN                            R28 121
     1032 LOADN                            R29 43
     1033 CALL                             R26 3 1
     1034 SETTABLEKS                       R26 R25 K336 ["IconColor"]
     1036 GETTABLEKS                       R26 R3 K17 ["Style"]
     1038 GETTABLEKS                       R26 R26 K343 ["Colors"]
     1040 GETTABLEKS                       R26 R26 K344 ["Gray_Mid"]
     1042 SETTABLEKS                       R26 R25 K337 ["LineColor"]
     1044 GETIMPORT                        R26 K345 [Font.new]
     1046 GETIMPORT                        R27 K347 [Font.fromEnum]
     1048 GETIMPORT                        R28 K236 [Enum.Font.SourceSans]
     1050 CALL                             R27 1 1
     1051 GETTABLEKS                       R27 R27 K348 ["Family"]
     1053 GETIMPORT                        R28 K351 [Enum.FontWeight.SemiBold]
     1055 CALL                             R26 2 1
     1056 SETTABLEKS                       R26 R25 K338 ["FontFace"]
     1058 GETIMPORT                        R26 K196 [UDim2.fromOffset]
     1060 LOADN                            R27 50
     1061 LOADN                            R28 50
     1062 CALL                             R26 2 1
     1063 SETTABLEKS                       R26 R25 K49 ["ImageSize"]
     1065 GETIMPORT                        R26 K63 [UDim.new]
     1067 LOADN                            R27 0
     1068 LOADN                            R28 5
     1069 CALL                             R26 2 1
     1070 SETTABLEKS                       R26 R25 K106 ["Spacing"]
     1072 GETIMPORT                        R26 K71 [UDim2.new]
     1074 LOADN                            R27 0
     1075 LOADN                            R28 15
     1076 LOADN                            R29 0
     1077 LOADN                            R30 1
     1078 CALL                             R26 4 1
     1079 SETTABLEKS                       R26 R25 K339 ["LineSize"]
     1081 GETTABLEKS                       R26 R6 K352 ["EmptyState"]
     1083 SETTABLEKS                       R26 R25 K28 ["Image"]
     1085 SETTABLE                         R25 R23 R24
     1086 LOADK                            R26 K353 ["SkinPreview"]
     1087 NAMECALL                         R24 R8 K43 ["add"]
     1089 CALL                             R24 2 0
     1090 GETTABLEKS                       R24 R8 K353 ["SkinPreview"]
     1092 DUPTABLE                         R25 K359 [{["HoveredBorderColor"], ["HoveredBorderThickness"] = 1, ["SelectedBorderColor"], ["SelectedBorderThickness"] = 2, ["DisabledColorToBlend"]}]
     1093 GETTABLEKS                       R26 R6 K360 ["SecondaryStatesHoverOutlineBorder"]
     1095 SETTABLEKS                       R26 R25 K354 ["HoveredBorderColor"]
     1097 GETTABLEKS                       R26 R6 K361 ["PrimaryMain"]
     1099 SETTABLEKS                       R26 R25 K356 ["SelectedBorderColor"]
     1101 GETIMPORT                        R26 K312 [Color3.fromRGB]
     1103 LOADN                            R27 76
     1104 LOADN                            R28 76
     1105 LOADN                            R29 76
     1106 CALL                             R26 3 1
     1107 SETTABLEKS                       R26 R25 K358 ["DisabledColorToBlend"]
     1109 SETTABLE                         R25 R23 R24
     1110 LOADK                            R26 K362 ["SortClothingTable"]
     1111 NAMECALL                         R24 R8 K43 ["add"]
     1113 CALL                             R24 2 0
     1114 GETTABLEKS                       R24 R8 K362 ["SortClothingTable"]
     1116 DUPTABLE                         R25 K367 [{["CellPadding"], ["RowHeight"] = 28, ["TableHeight"] = 200}]
     1117 DUPTABLE                         R26 K368 [{["Left"] = 4, ["Right"] = 4, ["Top"] = 2, ["Bottom"] = 2}]
     1118 SETTABLEKS                       R26 R25 K363 ["CellPadding"]
     1120 SETTABLE                         R25 R23 R24
     1121 LOADK                            R26 K369 ["StageSelector"]
     1122 NAMECALL                         R24 R8 K43 ["add"]
     1124 CALL                             R24 2 0
     1125 GETTABLEKS                       R24 R8 K369 ["StageSelector"]
     1127 DUPTABLE                         R25 K374 [{["BackgroundColor"], ["BorderColor"], ["ButtonSelectedBackgroundColor"], ["ButtonHeight"] = 32, ["IconColor"], ["IconColorDisabled"], ["IconSize"] = 18, ["MenuIndicatorSize"] = 20, ["Width"] = 64}]
     1128 GETTABLEKS                       R26 R6 K375 ["MainBackground"]
     1130 SETTABLEKS                       R26 R25 K95 ["BackgroundColor"]
     1132 GETTABLEKS                       R26 R6 K376 ["BackgroundPaper"]
     1134 SETTABLEKS                       R26 R25 K370 ["BorderColor"]
     1136 GETTABLEKS                       R26 R6 K377 ["ButtonHover"]
     1138 SETTABLEKS                       R26 R25 K371 ["ButtonSelectedBackgroundColor"]
     1140 GETTABLEKS                       R26 R6 K378 ["MainText"]
     1142 SETTABLEKS                       R26 R25 K336 ["IconColor"]
     1144 GETTABLEKS                       R26 R6 K379 ["MainTextDisabled"]
     1146 SETTABLEKS                       R26 R25 K372 ["IconColorDisabled"]
     1148 SETTABLE                         R25 R23 R24
     1149 LOADK                            R26 K380 ["Stars"]
     1150 NAMECALL                         R24 R8 K43 ["add"]
     1152 CALL                             R24 2 0
     1153 GETTABLEKS                       R24 R8 K380 ["Stars"]
     1155 DUPTABLE                         R25 K387 [{["StarColor"], ["StarSize"], ["StarFilled"], ["StarUnfilled"], ["StarSpacing"] = 4, ["RatingSpacing"] = 10}]
     1156 GETTABLEKS                       R26 R6 K378 ["MainText"]
     1158 SETTABLEKS                       R26 R25 K381 ["StarColor"]
     1160 GETIMPORT                        R26 K196 [UDim2.fromOffset]
     1162 LOADN                            R27 16
     1163 LOADN                            R28 16
     1164 CALL                             R26 2 1
     1165 SETTABLEKS                       R26 R25 K382 ["StarSize"]
     1167 GETTABLEKS                       R26 R6 K388 ["Star"]
     1169 SETTABLEKS                       R26 R25 K383 ["StarFilled"]
     1171 GETTABLEKS                       R26 R6 K384 ["StarUnfilled"]
     1173 SETTABLEKS                       R26 R25 K384 ["StarUnfilled"]
     1175 SETTABLE                         R25 R23 R24
     1176 LOADK                            R26 K389 ["SubmitDialog"]
     1177 NAMECALL                         R24 R8 K43 ["add"]
     1179 CALL                             R24 2 0
     1180 GETTABLEKS                       R24 R8 K389 ["SubmitDialog"]
     1182 DUPTABLE                         R25 K390 [{["Width"] = 500}]
     1183 SETTABLE                         R25 R23 R24
     1184 LOADK                            R26 K391 ["SubmitInner"]
     1185 NAMECALL                         R24 R8 K43 ["add"]
     1187 CALL                             R24 2 0
     1188 GETTABLEKS                       R24 R8 K391 ["SubmitInner"]
     1190 DUPTABLE                         R25 K396 [{["CallToActionSpacing"], ["CheckboxSpacing"], ["ContentPadding"] = 40}]
     1191 GETIMPORT                        R26 K63 [UDim.new]
     1193 LOADN                            R27 0
     1194 LOADN                            R28 18
     1195 CALL                             R26 2 1
     1196 SETTABLEKS                       R26 R25 K392 ["CallToActionSpacing"]
     1198 GETIMPORT                        R26 K63 [UDim.new]
     1200 LOADN                            R27 0
     1201 LOADN                            R28 4
     1202 CALL                             R26 2 1
     1203 SETTABLEKS                       R26 R25 K393 ["CheckboxSpacing"]
     1205 SETTABLE                         R25 R23 R24
     1206 LOADK                            R26 K397 ["Survey"]
     1207 NAMECALL                         R24 R8 K43 ["add"]
     1209 CALL                             R24 2 0
     1210 GETTABLEKS                       R24 R8 K397 ["Survey"]
     1212 DUPTABLE                         R25 K401 [{["HeadIndent"] = 22, ["Spacing"] = 10, ["MessageHeight"] = 96}]
     1213 SETTABLE                         R25 R23 R24
     1214 LOADK                            R26 K402 ["SurveyDialog"]
     1215 NAMECALL                         R24 R8 K43 ["add"]
     1217 CALL                             R24 2 0
     1218 GETTABLEKS                       R24 R8 K402 ["SurveyDialog"]
     1220 DUPTABLE                         R25 K405 [{["Width"] = 440, ["FinishDialogSize"]}]
     1221 GETIMPORT                        R26 K132 [Vector2.new]
     1223 LOADN                            R27 250
     1224 LOADN                            R28 30
     1225 CALL                             R26 2 1
     1226 SETTABLEKS                       R26 R25 K404 ["FinishDialogSize"]
     1228 SETTABLE                         R25 R23 R24
     1229 LOADK                            R26 K406 ["TabBar"]
     1230 NAMECALL                         R24 R8 K43 ["add"]
     1232 CALL                             R24 2 0
     1233 GETTABLEKS                       R24 R8 K406 ["TabBar"]
     1235 DUPTABLE                         R25 K407 [{"BackgroundColor", "BackgroundColorHover"}]
     1236 GETTABLEKS                       R26 R6 K155 ["SubBackground"]
     1238 SETTABLEKS                       R26 R25 K95 ["BackgroundColor"]
     1240 GETTABLEKS                       R26 R6 K99 ["ActionHover"]
     1242 SETTABLEKS                       R26 R25 K96 ["BackgroundColorHover"]
     1244 SETTABLE                         R25 R23 R24
     1245 LOADK                            R26 K408 ["TestingScreen"]
     1246 NAMECALL                         R24 R8 K43 ["add"]
     1248 CALL                             R24 2 0
     1249 GETTABLEKS                       R24 R8 K408 ["TestingScreen"]
     1251 DUPTABLE                         R25 K333 [{["ButtonHeight"] = 24, ["Spacing"]}]
     1252 GETIMPORT                        R26 K63 [UDim.new]
     1254 LOADN                            R27 0
     1255 LOADN                            R28 18
     1256 CALL                             R26 2 1
     1257 SETTABLEKS                       R26 R25 K106 ["Spacing"]
     1259 SETTABLE                         R25 R23 R24
     1260 LOADK                            R26 K409 ["ResizeNotice"]
     1261 NAMECALL                         R24 R8 K43 ["add"]
     1263 CALL                             R24 2 0
     1264 GETTABLEKS                       R24 R8 K409 ["ResizeNotice"]
     1266 DUPTABLE                         R25 K410 [{"BackgroundColor", "Position", "AnchorPoint", "Size"}]
     1267 GETTABLEKS                       R26 R6 K155 ["SubBackground"]
     1269 SETTABLEKS                       R26 R25 K95 ["BackgroundColor"]
     1271 GETIMPORT                        R26 K71 [UDim2.new]
     1273 LOADN                            R27 0
     1274 LOADN                            R28 10
     1275 LOADN                            R29 0
     1276 LOADN                            R30 60
     1277 CALL                             R26 4 1
     1278 SETTABLEKS                       R26 R25 K67 ["Position"]
     1280 GETIMPORT                        R26 K132 [Vector2.new]
     1282 LOADN                            R27 0
     1283 LOADN                            R28 0
     1284 CALL                             R26 2 1
     1285 SETTABLEKS                       R26 R25 K120 ["AnchorPoint"]
     1287 GETIMPORT                        R26 K71 [UDim2.new]
     1289 LOADN                            R27 1
     1290 LOADN                            R28 -95
     1291 LOADN                            R29 0
     1292 LOADN                            R30 0
     1293 CALL                             R26 4 1
     1294 SETTABLEKS                       R26 R25 K68 ["Size"]
     1296 SETTABLE                         R25 R23 R24
     1297 LOADK                            R26 K411 ["UGCValidationErrorDialog"]
     1298 NAMECALL                         R24 R8 K43 ["add"]
     1300 CALL                             R24 2 0
     1301 GETTABLEKS                       R24 R8 K411 ["UGCValidationErrorDialog"]
     1303 DUPTABLE                         R25 K421 [{["DetailsSpacing"] = 12, ["IconTextSpacing"] = 4, ["TitleDetailsSpacing"] = 26, ["AlertMinContentSize"], ["TextSize"] = 18, ["WarningColor"], ["WarningFont"], ["WarningImage"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/warning.png"}]
     1304 GETIMPORT                        R26 K132 [Vector2.new]
     1306 LOADN                            R27 500
     1307 LOADN                            R28 300
     1308 CALL                             R26 2 1
     1309 SETTABLEKS                       R26 R25 K416 ["AlertMinContentSize"]
     1311 GETTABLEKS                       R26 R6 K422 ["WarningText"]
     1313 SETTABLEKS                       R26 R25 K417 ["WarningColor"]
     1315 GETIMPORT                        R26 K424 [Enum.Font.SourceSansSemibold]
     1317 SETTABLEKS                       R26 R25 K418 ["WarningFont"]
     1319 SETTABLE                         R25 R23 R24
     1320 LOADK                            R26 K425 ["UGCValidationNotice"]
     1321 NAMECALL                         R24 R8 K43 ["add"]
     1323 CALL                             R24 2 0
     1324 GETTABLEKS                       R24 R8 K425 ["UGCValidationNotice"]
     1326 DUPTABLE                         R25 K427 [{["Position"], ["Size"], ["ValidationIconSize"], ["WarningColor"], ["WarningImage"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/warning.png"}]
     1327 GETIMPORT                        R26 K196 [UDim2.fromOffset]
     1329 LOADN                            R27 10
     1330 LOADN                            R28 10
     1331 CALL                             R26 2 1
     1332 SETTABLEKS                       R26 R25 K67 ["Position"]
     1334 GETIMPORT                        R26 K71 [UDim2.new]
     1336 LOADN                            R27 1
     1337 LOADN                            R28 -95
     1338 LOADN                            R29 0
     1339 LOADN                            R30 48
     1340 CALL                             R26 4 1
     1341 SETTABLEKS                       R26 R25 K68 ["Size"]
     1343 GETIMPORT                        R26 K196 [UDim2.fromOffset]
     1345 LOADN                            R27 24
     1346 LOADN                            R28 24
     1347 CALL                             R26 2 1
     1348 SETTABLEKS                       R26 R25 K426 ["ValidationIconSize"]
     1350 GETTABLEKS                       R26 R6 K422 ["WarningText"]
     1352 SETTABLEKS                       R26 R25 K417 ["WarningColor"]
     1354 SETTABLE                         R25 R23 R24
     1355 LOADK                            R26 K428 ["UGCValidationStatusIcon"]
     1356 NAMECALL                         R24 R8 K43 ["add"]
     1358 CALL                             R24 2 0
     1359 DUPTABLE                         R24 K429 [{"Color", "Position", "Size"}]
     1360 GETIMPORT                        R25 K294 [Color3.new]
     1362 LOADN                            R26 1
     1363 LOADN                            R27 1
     1364 LOADN                            R28 1
     1365 CALL                             R25 3 1
     1366 SETTABLEKS                       R25 R24 K203 ["Color"]
     1368 GETIMPORT                        R25 K196 [UDim2.fromOffset]
     1370 LOADN                            R26 4
     1371 LOADN                            R27 14
     1372 CALL                             R25 2 1
     1373 SETTABLEKS                       R25 R24 K67 ["Position"]
     1375 GETIMPORT                        R25 K196 [UDim2.fromOffset]
     1377 LOADN                            R26 24
     1378 LOADN                            R27 24
     1379 CALL                             R25 2 1
     1380 SETTABLEKS                       R25 R24 K68 ["Size"]
     1382 GETTABLEKS                       R25 R8 K428 ["UGCValidationStatusIcon"]
     1384 NEWTABLE                         R26 4 0
     1386 GETTABLEKS                       R27 R1 K100 ["Dictionary"]
     1388 GETTABLEKS                       R27 R27 K101 ["join"]
     1390 MOVE                             R28 R24
     1391 DUPTABLE                         R29 K430 [{["Color"], ["Image"] = "rbxasset://studio_svg_textures/Lua/AvatarCompatibilityPreviewer/Dark/Large/warning.png"}]
     1392 GETTABLEKS                       R30 R6 K422 ["WarningText"]
     1394 SETTABLEKS                       R30 R29 K203 ["Color"]
     1396 CALL                             R27 2 1
     1397 SETTABLEKS                       R27 R26 K431 ["&Failure"]
     1399 GETTABLEKS                       R27 R1 K100 ["Dictionary"]
     1401 GETTABLEKS                       R27 R27 K101 ["join"]
     1403 MOVE                             R28 R24
     1404 DUPTABLE                         R29 K161 [{"Image"}]
     1405 GETTABLEKS                       R30 R6 K432 ["UGCValidationSuccessImage"]
     1407 SETTABLEKS                       R30 R29 K28 ["Image"]
     1409 CALL                             R27 2 1
     1410 SETTABLEKS                       R27 R26 K433 ["&Success"]
     1412 DUPTABLE                         R27 K435 [{["Color"], ["Position"], ["Size"], ["Image"] = "rbxasset://textures/StudioToolbox/AssetConfig/recent.png"}]
     1413 GETTABLEKS                       R28 R6 K436 ["DimmedText"]
     1415 SETTABLEKS                       R28 R27 K203 ["Color"]
     1417 GETIMPORT                        R28 K196 [UDim2.fromOffset]
     1419 LOADN                            R29 4
     1420 LOADN                            R30 14
     1421 CALL                             R28 2 1
     1422 SETTABLEKS                       R28 R27 K67 ["Position"]
     1424 GETIMPORT                        R28 K196 [UDim2.fromOffset]
     1426 LOADN                            R29 20
     1427 LOADN                            R30 20
     1428 CALL                             R28 2 1
     1429 SETTABLEKS                       R28 R27 K68 ["Size"]
     1431 SETTABLEKS                       R27 R26 K437 ["&InProgress"]
     1433 SETTABLE                         R26 R23 R25
     1434 LOADK                            R27 K438 ["DisambiguationMenu"]
     1435 NAMECALL                         R25 R8 K43 ["add"]
     1437 CALL                             R25 2 0
     1438 GETTABLEKS                       R25 R8 K438 ["DisambiguationMenu"]
     1440 DUPTABLE                         R26 K450 [{["MinContentSize"], ["ConfirmCancelContentSize"], ["HorizontalSpacing"] = 8, ["VerticalSpacing"] = 8, ["TitleContentsSpacing"] = 24, ["TextSpacing"] = 8, ["DropdownWidth"] = 150, ["AttachmentDropdownWidth"] = 120, ["IconBackground"], ["IconSize"]}]
     1441 GETIMPORT                        R27 K132 [Vector2.new]
     1443 LOADN                            R28 500
     1444 LOADN                            R29 300
     1445 CALL                             R27 2 1
     1446 SETTABLEKS                       R27 R26 K439 ["MinContentSize"]
     1448 GETIMPORT                        R27 K132 [Vector2.new]
     1450 LOADN                            R28 200
     1451 LOADN                            R29 150
     1452 CALL                             R27 2 1
     1453 SETTABLEKS                       R27 R26 K440 ["ConfirmCancelContentSize"]
     1455 GETTABLEKS                       R27 R6 K155 ["SubBackground"]
     1457 SETTABLEKS                       R27 R26 K449 ["IconBackground"]
     1459 GETIMPORT                        R27 K196 [UDim2.fromOffset]
     1461 LOADN                            R28 72
     1462 LOADN                            R29 72
     1463 CALL                             R27 2 1
     1464 SETTABLEKS                       R27 R26 K269 ["IconSize"]
     1466 SETTABLE                         R26 R23 R25
     1467 LOADK                            R27 K451 ["AvatarSizeRuler"]
     1468 NAMECALL                         R25 R8 K43 ["add"]
     1470 CALL                             R25 2 0
     1471 GETTABLEKS                       R25 R8 K451 ["AvatarSizeRuler"]
     1473 DUPTABLE                         R26 K460 [{["GridSize"] = 0.1, ["DimTransparency"] = 0.75, ["MainTransparency"] = 0.5, ["Padding"] = 30, ["TextSize"] = 60, ["PixelsPerStud"] = 200, ["MajorStep"] = 10, ["RulerColor"]}]
     1474 GETIMPORT                        R27 K294 [Color3.new]
     1476 LOADN                            R28 1
     1477 LOADN                            R29 1
     1478 LOADN                            R30 1
     1479 CALL                             R27 3 1
     1480 SETTABLEKS                       R27 R26 K459 ["RulerColor"]
     1482 SETTABLE                         R26 R23 R25
     1483 LOADK                            R27 K461 ["AvatarSizingBoundingBox"]
     1484 NAMECALL                         R25 R8 K43 ["add"]
     1486 CALL                             R25 2 0
     1487 GETTABLEKS                       R25 R8 K461 ["AvatarSizingBoundingBox"]
     1489 DUPTABLE                         R26 K467 [{["NeutralColor"], ["ValidColor"], ["InvalidColor"], ["ValidTransparency"] = 0.8, ["NeutralTransparency"] = 0.5}]
     1490 GETIMPORT                        R27 K294 [Color3.new]
     1492 LOADK                            R28 K82 [0.5]
     1493 LOADK                            R29 K82 [0.5]
     1494 LOADK                            R30 K82 [0.5]
     1495 CALL                             R27 3 1
     1496 SETTABLEKS                       R27 R26 K462 ["NeutralColor"]
     1498 GETIMPORT                        R27 K294 [Color3.new]
     1500 LOADK                            R28 K82 [0.5]
     1501 LOADN                            R29 1
     1502 LOADK                            R30 K82 [0.5]
     1503 CALL                             R27 3 1
     1504 SETTABLEKS                       R27 R26 K463 ["ValidColor"]
     1506 GETIMPORT                        R27 K294 [Color3.new]
     1508 LOADN                            R28 1
     1509 LOADK                            R29 K82 [0.5]
     1510 LOADK                            R30 K82 [0.5]
     1511 CALL                             R27 3 1
     1512 SETTABLEKS                       R27 R26 K464 ["InvalidColor"]
     1514 SETTABLE                         R26 R23 R25
     1515 GETTABLEKS                       R25 R8 K23 ["Alert"]
     1517 GETTABLEKS                       R26 R1 K100 ["Dictionary"]
     1519 GETTABLEKS                       R26 R26 K101 ["join"]
     1521 MOVE                             R27 R10
     1522 NEWTABLE                         R28 8 0
     1524 GETTABLEKS                       R29 R1 K100 ["Dictionary"]
     1526 GETTABLEKS                       R29 R29 K101 ["join"]
     1528 GETTABLEKS                       R30 R10 K468 ["&Warning"]
     1530 DUPTABLE                         R31 K471 [{"HorizontalPadding", "TopPadding"}]
     1531 GETIMPORT                        R32 K63 [UDim.new]
     1533 LOADN                            R33 0
     1534 LOADN                            R34 0
     1535 CALL                             R32 2 1
     1536 SETTABLEKS                       R32 R31 K469 ["HorizontalPadding"]
     1538 GETIMPORT                        R32 K63 [UDim.new]
     1540 LOADN                            R33 0
     1541 LOADN                            R34 0
     1542 CALL                             R32 2 1
     1543 SETTABLEKS                       R32 R31 K470 ["TopPadding"]
     1545 CALL                             R29 2 1
     1546 SETTABLEKS                       R29 R28 K468 ["&Warning"]
     1548 GETTABLEKS                       R29 R1 K100 ["Dictionary"]
     1550 GETTABLEKS                       R29 R29 K101 ["join"]
     1552 GETTABLEKS                       R30 R10 K472 ["&Error"]
     1554 DUPTABLE                         R31 K471 [{"HorizontalPadding", "TopPadding"}]
     1555 GETIMPORT                        R32 K63 [UDim.new]
     1557 LOADN                            R33 0
     1558 LOADN                            R34 0
     1559 CALL                             R32 2 1
     1560 SETTABLEKS                       R32 R31 K469 ["HorizontalPadding"]
     1562 GETIMPORT                        R32 K63 [UDim.new]
     1564 LOADN                            R33 0
     1565 LOADN                            R34 0
     1566 CALL                             R32 2 1
     1567 SETTABLEKS                       R32 R31 K470 ["TopPadding"]
     1569 CALL                             R29 2 1
     1570 SETTABLEKS                       R29 R28 K472 ["&Error"]
     1572 GETTABLEKS                       R29 R1 K100 ["Dictionary"]
     1574 GETTABLEKS                       R29 R29 K101 ["join"]
     1576 GETTABLEKS                       R30 R10 K433 ["&Success"]
     1578 DUPTABLE                         R31 K471 [{"HorizontalPadding", "TopPadding"}]
     1579 GETIMPORT                        R32 K63 [UDim.new]
     1581 LOADN                            R33 0
     1582 LOADN                            R34 0
     1583 CALL                             R32 2 1
     1584 SETTABLEKS                       R32 R31 K469 ["HorizontalPadding"]
     1586 GETIMPORT                        R32 K63 [UDim.new]
     1588 LOADN                            R33 0
     1589 LOADN                            R34 0
     1590 CALL                             R32 2 1
     1591 SETTABLEKS                       R32 R31 K470 ["TopPadding"]
     1593 CALL                             R29 2 1
     1594 SETTABLEKS                       R29 R28 K433 ["&Success"]
     1596 GETTABLEKS                       R29 R1 K100 ["Dictionary"]
     1598 GETTABLEKS                       R29 R29 K101 ["join"]
     1600 GETTABLEKS                       R30 R10 K473 ["&Info"]
     1602 DUPTABLE                         R31 K471 [{"HorizontalPadding", "TopPadding"}]
     1603 GETIMPORT                        R32 K63 [UDim.new]
     1605 LOADN                            R33 0
     1606 LOADN                            R34 0
     1607 CALL                             R32 2 1
     1608 SETTABLEKS                       R32 R31 K469 ["HorizontalPadding"]
     1610 GETIMPORT                        R32 K63 [UDim.new]
     1612 LOADN                            R33 0
     1613 LOADN                            R34 0
     1614 CALL                             R32 2 1
     1615 SETTABLEKS                       R32 R31 K470 ["TopPadding"]
     1617 CALL                             R29 2 1
     1618 SETTABLEKS                       R29 R28 K473 ["&Info"]
     1620 GETTABLEKS                       R29 R1 K100 ["Dictionary"]
     1622 GETTABLEKS                       R29 R29 K101 ["join"]
     1624 GETTABLEKS                       R30 R10 K468 ["&Warning"]
     1626 DUPTABLE                         R31 K475 [{["HorizontalPadding"], ["TopPadding"], ["MaxWidth"] = 900}]
     1627 GETIMPORT                        R32 K63 [UDim.new]
     1629 LOADN                            R33 0
     1630 LOADN                            R34 0
     1631 CALL                             R32 2 1
     1632 SETTABLEKS                       R32 R31 K469 ["HorizontalPadding"]
     1634 GETIMPORT                        R32 K63 [UDim.new]
     1636 LOADN                            R33 0
     1637 LOADN                            R34 0
     1638 CALL                             R32 2 1
     1639 SETTABLEKS                       R32 R31 K470 ["TopPadding"]
     1641 CALL                             R29 2 1
     1642 SETTABLEKS                       R29 R28 K476 ["&WarningLong"]
     1644 CALL                             R26 2 1
     1645 SETTABLE                         R26 R23 R25
     1646 GETTABLEKS                       R25 R8 K25 ["Button"]
     1648 GETTABLEKS                       R26 R1 K100 ["Dictionary"]
     1650 GETTABLEKS                       R26 R26 K101 ["join"]
     1652 MOVE                             R27 R11
     1653 NEWTABLE                         R28 1 0
     1655 GETTABLEKS                       R29 R1 K100 ["Dictionary"]
     1657 GETTABLEKS                       R29 R29 K101 ["join"]
     1659 GETTABLEKS                       R30 R11 K477 ["&Round"]
     1661 NEWTABLE                         R31 2 0
     1663 GETTABLEKS                       R32 R1 K100 ["Dictionary"]
     1665 GETTABLEKS                       R32 R32 K101 ["join"]
     1667 GETTABLEKS                       R33 R11 K478 ["BackgroundStyle"]
     1669 DUPTABLE                         R34 K479 [{"BorderColor"}]
     1670 GETTABLEKS                       R35 R6 K480 ["SubText"]
     1672 SETTABLEKS                       R35 R34 K370 ["BorderColor"]
     1674 CALL                             R32 2 1
     1675 SETTABLEKS                       R32 R31 K478 ["BackgroundStyle"]
     1677 GETTABLEKS                       R32 R7 K481 ["Hover"]
     1679 GETTABLEKS                       R33 R1 K100 ["Dictionary"]
     1681 GETTABLEKS                       R33 R33 K101 ["join"]
     1683 GETTABLEKS                       R35 R7 K481 ["Hover"]
     1685 GETTABLE                         R34 R11 R35
     1686 DUPTABLE                         R35 K482 [{"BackgroundStyle"}]
     1687 GETTABLEKS                       R36 R1 K100 ["Dictionary"]
     1689 GETTABLEKS                       R36 R36 K101 ["join"]
     1691 GETTABLEKS                       R38 R7 K481 ["Hover"]
     1693 GETTABLE                         R37 R11 R38
     1694 GETTABLEKS                       R37 R37 K478 ["BackgroundStyle"]
     1696 DUPTABLE                         R38 K479 [{"BorderColor"}]
     1697 GETTABLEKS                       R39 R6 K480 ["SubText"]
     1699 SETTABLEKS                       R39 R38 K370 ["BorderColor"]
     1701 CALL                             R36 2 1
     1702 SETTABLEKS                       R36 R35 K478 ["BackgroundStyle"]
     1704 CALL                             R33 2 1
     1705 SETTABLE                         R33 R31 R32
     1706 CALL                             R29 2 1
     1707 SETTABLEKS                       R29 R28 K483 ["&RoundHighlighted"]
     1709 CALL                             R26 2 1
     1710 SETTABLE                         R26 R23 R25
     1711 JUMPIFNOT                        R22 ; [+30]
     1712 GETTABLEKS                       R25 R8 K26 ["DropdownMenu"]
     1714 GETTABLEKS                       R26 R1 K100 ["Dictionary"]
     1716 GETTABLEKS                       R26 R26 K101 ["join"]
     1718 MOVE                             R27 R12
     1719 DUPTABLE                         R28 K486 [{["MaxHeight"] = ∞}]
     1720 CALL                             R26 2 1
     1721 SETTABLE                         R26 R23 R25
     1722 GETTABLEKS                       R25 R8 K31 ["SelectInput"]
     1724 GETTABLEKS                       R26 R1 K100 ["Dictionary"]
     1726 GETTABLEKS                       R26 R26 K101 ["join"]
     1728 MOVE                             R27 R17
     1729 DUPTABLE                         R28 K487 [{"DropdownMenu"}]
     1730 GETTABLEKS                       R29 R1 K100 ["Dictionary"]
     1732 GETTABLEKS                       R29 R29 K101 ["join"]
     1734 GETTABLEKS                       R30 R17 K26 ["DropdownMenu"]
     1736 DUPTABLE                         R31 K486 [{["MaxHeight"] = ∞}]
     1737 CALL                             R29 2 1
     1738 SETTABLEKS                       R29 R28 K26 ["DropdownMenu"]
     1740 CALL                             R26 2 1
     1741 SETTABLE                         R26 R23 R25
     1742 GETTABLEKS                       R25 R8 K27 ["IconButton"]
     1744 GETTABLEKS                       R26 R1 K100 ["Dictionary"]
     1746 GETTABLEKS                       R26 R26 K101 ["join"]
     1748 MOVE                             R27 R13
     1749 NEWTABLE                         R28 1 0
     1751 DUPTABLE                         R29 K488 [{"BackgroundColor", "TextColor", "Hover"}]
     1752 GETTABLEKS                       R30 R6 K489 ["IconButtonSecondaryMain"]
     1754 SETTABLEKS                       R30 R29 K95 ["BackgroundColor"]
     1756 GETTABLEKS                       R30 R6 K238 ["TextPrimary"]
     1758 SETTABLEKS                       R30 R29 K221 ["TextColor"]
     1760 DUPTABLE                         R30 K490 [{"Background"}]
     1761 GETTABLEKS                       R31 R6 K491 ["IconButtonSecondaryHover"]
     1763 SETTABLEKS                       R31 R30 K160 ["Background"]
     1765 SETTABLEKS                       R30 R29 K481 ["Hover"]
     1767 SETTABLEKS                       R29 R28 K492 ["&Secondary"]
     1769 CALL                             R26 2 1
     1770 SETTABLE                         R26 R23 R25
     1771 GETTABLEKS                       R25 R8 K28 ["Image"]
     1773 GETTABLEKS                       R26 R1 K100 ["Dictionary"]
     1775 GETTABLEKS                       R26 R26 K101 ["join"]
     1777 MOVE                             R27 R14
     1778 NEWTABLE                         R28 16 0
     1780 DUPTABLE                         R29 K493 [{"Image", "Size"}]
     1781 GETTABLEKS                       R30 R6 K494 ["Collapse"]
     1783 SETTABLEKS                       R30 R29 K28 ["Image"]
     1785 GETIMPORT                        R30 K196 [UDim2.fromOffset]
     1787 LOADN                            R31 16
     1788 LOADN                            R32 16
     1789 CALL                             R30 2 1
     1790 SETTABLEKS                       R30 R29 K68 ["Size"]
     1792 SETTABLEKS                       R29 R28 K495 ["&Collapse"]
     1794 DUPTABLE                         R29 K161 [{"Image"}]
     1795 GETTABLEKS                       R30 R6 K496 ["Hide"]
     1797 SETTABLEKS                       R30 R29 K28 ["Image"]
     1799 SETTABLEKS                       R29 R28 K497 ["&EquippedItemHideIcon"]
     1801 DUPTABLE                         R29 K161 [{"Image"}]
     1802 GETTABLEKS                       R30 R6 K498 ["HideHover"]
     1804 SETTABLEKS                       R30 R29 K28 ["Image"]
     1806 SETTABLEKS                       R29 R28 K499 ["&EquippedItemHideHoverIcon"]
     1808 DUPTABLE                         R29 K161 [{"Image"}]
     1809 GETTABLEKS                       R30 R6 K500 ["HoverMenu"]
     1811 SETTABLEKS                       R30 R29 K28 ["Image"]
     1813 SETTABLEKS                       R29 R28 K501 ["&EquippedItemHoverMenuBackground"]
     1815 DUPTABLE                         R29 K161 [{"Image"}]
     1816 GETTABLEKS                       R30 R6 K502 ["Unhide"]
     1818 SETTABLEKS                       R30 R29 K28 ["Image"]
     1820 SETTABLEKS                       R29 R28 K503 ["&EquippedItemUnhideIcon"]
     1822 DUPTABLE                         R29 K161 [{"Image"}]
     1823 GETTABLEKS                       R30 R6 K504 ["UnhideHover"]
     1825 SETTABLEKS                       R30 R29 K28 ["Image"]
     1827 SETTABLEKS                       R29 R28 K505 ["&EquippedItemUnhideHoverIcon"]
     1829 DUPTABLE                         R29 K161 [{"Image"}]
     1830 GETTABLEKS                       R30 R6 K506 ["HoverMenuDisabled"]
     1832 SETTABLEKS                       R30 R29 K28 ["Image"]
     1834 SETTABLEKS                       R29 R28 K507 ["&EquippedItemDisabledBackground"]
     1836 NEWTABLE                         R29 4 0
     1838 GETTABLEKS                       R30 R6 K508 ["Dots"]
     1840 SETTABLEKS                       R30 R29 K28 ["Image"]
     1842 GETTABLEKS                       R30 R6 K25 ["Button"]
     1844 SETTABLEKS                       R30 R29 K509 ["ImageColor3"]
     1846 GETTABLEKS                       R30 R7 K481 ["Hover"]
     1848 DUPTABLE                         R31 K510 [{"ImageColor3"}]
     1849 GETTABLEKS                       R32 R6 K511 ["ImageButtonHover"]
     1851 SETTABLEKS                       R32 R31 K509 ["ImageColor3"]
     1853 SETTABLE                         R31 R29 R30
     1854 SETTABLEKS                       R29 R28 K512 ["&EquippedItemDotsIcon"]
     1856 DUPTABLE                         R29 K493 [{"Image", "Size"}]
     1857 GETTABLEKS                       R30 R6 K513 ["DotsVertical"]
     1859 SETTABLEKS                       R30 R29 K28 ["Image"]
     1861 GETIMPORT                        R30 K196 [UDim2.fromOffset]
     1863 LOADN                            R31 20
     1864 LOADN                            R32 20
     1865 CALL                             R30 2 1
     1866 SETTABLEKS                       R30 R29 K68 ["Size"]
     1868 SETTABLEKS                       R29 R28 K514 ["&PickTabMenu"]
     1870 DUPTABLE                         R29 K493 [{"Image", "Size"}]
     1871 GETTABLEKS                       R30 R6 K515 ["Unfold"]
     1873 SETTABLEKS                       R30 R29 K28 ["Image"]
     1875 GETIMPORT                        R30 K196 [UDim2.fromOffset]
     1877 LOADN                            R31 32
     1878 LOADN                            R32 32
     1879 CALL                             R30 2 1
     1880 SETTABLEKS                       R30 R29 K68 ["Size"]
     1882 SETTABLEKS                       R29 R28 K516 ["&Unfold"]
     1884 CALL                             R26 2 1
     1885 SETTABLE                         R26 R23 R25
     1886 GETTABLEKS                       R25 R8 K32 ["Separator"]
     1888 GETTABLEKS                       R26 R1 K100 ["Dictionary"]
     1890 GETTABLEKS                       R26 R26 K101 ["join"]
     1892 MOVE                             R27 R18
     1893 NEWTABLE                         R28 1 0
     1895 DUPTABLE                         R29 K518 [{["StretchMargin"] = 5}]
     1896 SETTABLEKS                       R29 R28 K519 ["&SelectScreenSeparator"]
     1898 CALL                             R26 2 1
     1899 SETTABLE                         R26 R23 R25
     1900 GETTABLEKS                       R25 R8 K29 ["Pane"]
     1902 GETTABLEKS                       R26 R1 K100 ["Dictionary"]
     1904 GETTABLEKS                       R26 R26 K101 ["join"]
     1906 MOVE                             R27 R15
     1907 NEWTABLE                         R28 4 0
     1909 NEWTABLE                         R29 4 0
     1911 GETTABLEKS                       R30 R6 K25 ["Button"]
     1913 SETTABLEKS                       R30 R29 K160 ["Background"]
     1915 GETIMPORT                        R30 K63 [UDim.new]
     1917 LOADN                            R31 0
     1918 LOADN                            R32 4
     1919 CALL                             R30 2 1
     1920 SETTABLEKS                       R30 R29 K224 ["CornerRadius"]
     1922 GETTABLEKS                       R30 R7 K481 ["Hover"]
     1924 DUPTABLE                         R31 K490 [{"Background"}]
     1925 GETTABLEKS                       R32 R6 K377 ["ButtonHover"]
     1927 SETTABLEKS                       R32 R31 K160 ["Background"]
     1929 SETTABLE                         R31 R29 R30
     1930 GETTABLEKS                       R30 R7 K520 ["Disabled"]
     1932 DUPTABLE                         R31 K490 [{"Background"}]
     1933 GETTABLEKS                       R32 R6 K521 ["ButtonPressed"]
     1935 SETTABLEKS                       R32 R31 K160 ["Background"]
     1937 SETTABLE                         R31 R29 R30
     1938 SETTABLEKS                       R29 R28 K522 ["&EquippedItemPreview"]
     1940 DUPTABLE                         R29 K523 [{"CornerRadius"}]
     1941 GETIMPORT                        R30 K63 [UDim.new]
     1943 LOADN                            R31 0
     1944 LOADN                            R32 4
     1945 CALL                             R30 2 1
     1946 SETTABLEKS                       R30 R29 K224 ["CornerRadius"]
     1948 SETTABLEKS                       R29 R28 K524 ["&EquippedItemPreviewInner"]
     1950 DUPTABLE                         R29 K490 [{"Background"}]
     1951 GETTABLEKS                       R30 R6 K525 ["ForegroundMuted"]
     1953 SETTABLEKS                       R30 R29 K160 ["Background"]
     1955 SETTABLEKS                       R29 R28 K526 ["&EquippedItemHoverMenu"]
     1957 DUPTABLE                         R29 K523 [{"CornerRadius"}]
     1958 GETIMPORT                        R30 K63 [UDim.new]
     1960 LOADN                            R31 0
     1961 LOADN                            R32 4
     1962 CALL                             R30 2 1
     1963 SETTABLEKS                       R30 R29 K224 ["CornerRadius"]
     1965 SETTABLEKS                       R29 R28 K527 ["&SkinPreview"]
     1967 CALL                             R26 2 1
     1968 SETTABLE                         R26 R23 R25
     1969 GETTABLEKS                       R25 R8 K33 ["SimpleTab"]
     1971 GETTABLEKS                       R26 R1 K100 ["Dictionary"]
     1973 GETTABLEKS                       R26 R26 K101 ["join"]
     1975 MOVE                             R27 R19
     1976 NEWTABLE                         R28 2 0
     1978 NEWTABLE                         R29 8 0
     1980 GETTABLEKS                       R30 R6 K98 ["SubBackground2"]
     1982 SETTABLEKS                       R30 R29 K95 ["BackgroundColor"]
     1984 LOADN                            R30 1
     1985 SETTABLEKS                       R30 R29 K103 ["BackgroundTransparency"]
     1987 LOADN                            R30 0
     1988 SETTABLEKS                       R30 R29 K528 ["BorderSize"]
     1990 DUPTABLE                         R30 K529 [{["Left"] = 12, ["Top"] = 2, ["Bottom"] = 0, ["Right"] = 12}]
     1991 SETTABLEKS                       R30 R29 K65 ["Padding"]
     1993 LOADN                            R30 0
     1994 SETTABLEKS                       R30 R29 K530 ["TopLineHeight"]
     1996 GETTABLEKS                       R30 R7 K531 ["Selected"]
     1998 DUPTABLE                         R31 K532 [{"BackgroundColor", "Font"}]
     1999 GETTABLEKS                       R32 R6 K98 ["SubBackground2"]
     2001 SETTABLEKS                       R32 R31 K95 ["BackgroundColor"]
     2003 GETIMPORT                        R32 K234 [Enum.Font.SourceSansBold]
     2005 SETTABLEKS                       R32 R31 K232 ["Font"]
     2007 SETTABLE                         R31 R29 R30
     2008 SETTABLEKS                       R29 R28 K533 ["&AssetPaletteTab"]
     2010 DUPTABLE                         R29 K535 [{["BorderSize"] = 0, ["TopLineHeight"] = 3}]
     2011 SETTABLEKS                       R29 R28 K536 ["&CategoryTab"]
     2013 CALL                             R26 2 1
     2014 SETTABLE                         R26 R23 R25
     2015 GETTABLEKS                       R25 R8 K34 ["Tooltip"]
     2017 GETTABLEKS                       R26 R1 K100 ["Dictionary"]
     2019 GETTABLEKS                       R26 R26 K101 ["join"]
     2021 MOVE                             R27 R20
     2022 NEWTABLE                         R28 1 0
     2024 DUPTABLE                         R29 K538 [{["ShowDelay"] = 0}]
     2025 SETTABLEKS                       R29 R28 K539 ["&NoDelay"]
     2027 CALL                             R26 2 1
     2028 SETTABLE                         R26 R23 R25
     2029 LOADK                            R27 K540 ["StageInfoBar"]
     2030 NAMECALL                         R25 R8 K43 ["add"]
     2032 CALL                             R25 2 0
     2033 GETTABLEKS                       R25 R8 K540 ["StageInfoBar"]
     2035 DUPTABLE                         R26 K546 [{"CircleBackground", "CircleStrokeSelected", "CircleStrokeUnselected", "DividerSelected", "DividerUnselected"}]
     2036 GETTABLEKS                       R27 R6 K155 ["SubBackground"]
     2038 SETTABLEKS                       R27 R26 K541 ["CircleBackground"]
     2040 GETTABLEKS                       R27 R6 K238 ["TextPrimary"]
     2042 SETTABLEKS                       R27 R26 K542 ["CircleStrokeSelected"]
     2044 GETTABLEKS                       R27 R6 K190 ["Border"]
     2046 SETTABLEKS                       R27 R26 K543 ["CircleStrokeUnselected"]
     2048 GETTABLEKS                       R27 R6 K238 ["TextPrimary"]
     2050 SETTABLEKS                       R27 R26 K544 ["DividerSelected"]
     2052 GETTABLEKS                       R27 R6 K190 ["Border"]
     2054 SETTABLEKS                       R27 R26 K545 ["DividerUnselected"]
     2056 SETTABLE                         R26 R23 R25
     2057 RETURN                           R23 1
