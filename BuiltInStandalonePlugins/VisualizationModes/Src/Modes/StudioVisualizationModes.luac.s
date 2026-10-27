PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R1 ; [+6]
        5 GETTABLEKS                       R4 R0 K0 ["SettingsInstance"]
        7 JUMPIFNOT                        R4 ; [+3]
        8 GETTABLEKS                       R3 R0 K0 ["SettingsInstance"]
       10 JUMP                             ; [+3]
       11 GETIMPORT                        R3 K2 [settings]
       13 CALL                             R3 0 1
       14 GETUPVAL                         R4 2
       15 GETTABLEKS                       R4 R4 K3 ["Localization"]
       17 NAMECALL                         R4 R4 K4 ["use"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R5 3
       21 GETTABLEKS                       R6 R3 K5 ["Studio"]
       23 LOADK                            R7 K6 ["Show Animation Skeleton"]
       24 LOADB                            R8 0
       25 CALL                             R5 3 1
       26 MOVE                             R6 R2
       27 JUMPIFNOT                        R6 ; [+5]
       28 GETUPVAL                         R6 4
       29 LOADK                            R7 K7 ["AudioViewportVisualizations"]
       30 LOADK                            R8 K8 ["Toggle"]
       31 LOADB                            R9 0
       32 CALL                             R6 3 1
       33 GETUPVAL                         R7 5
       34 GETTABLEKS                       R7 R7 K9 ["createElement"]
       36 GETUPVAL                         R8 5
       37 GETTABLEKS                       R8 R8 K10 ["Fragment"]
       39 NEWTABLE                         R9 0 0
       41 DUPTABLE                         R10 K20 [{"GUI", "Lighting", "Animation", "Audio", "Pathfinding", "PhysicsConstraints", "PhysicsLabels", "PhysicsSimulation", "View"}]
       42 GETUPVAL                         R11 5
       43 GETTABLEKS                       R11 R11 K9 ["createElement"]
       45 LOADK                            R12 K21 ["VisualizationModeCategory"]
       46 DUPTABLE                         R13 K23 [{"Title"}]
       47 LOADK                            R16 K24 ["VisualizationModeCategories"]
       48 LOADK                            R17 K11 ["GUI"]
       49 NAMECALL                         R14 R4 K25 ["getText"]
       51 CALL                             R14 3 1
       52 SETTABLEKS                       R14 R13 K22 ["Title"]
       54 DUPTABLE                         R14 K28 [{"DeviceEmulation", "GUIOverlay"}]
       55 GETUPVAL                         R15 5
       56 GETTABLEKS                       R15 R15 K9 ["createElement"]
       58 GETUPVAL                         R16 6
       59 DUPTABLE                         R17 K33 [{["Title"], ["ToolTip"], ["FeatureId"] = "DeviceEmulation", ["ActionId"] = "Toggle", ["Actions"]}]
       60 GETUPVAL                         R19 7
       61 CALL                             R19 0 1
       62 JUMPIFNOT                        R19 ; [+6]
       63 LOADK                            R20 K34 ["StudioModes"]
       64 LOADK                            R21 K35 ["DeviceSimulation"]
       65 NAMECALL                         R18 R4 K25 ["getText"]
       67 CALL                             R18 3 1
       68 JUMP                             ; [+5]
       69 LOADK                            R20 K34 ["StudioModes"]
       70 LOADK                            R21 K26 ["DeviceEmulation"]
       71 NAMECALL                         R18 R4 K25 ["getText"]
       73 CALL                             R18 3 1
       74 SETTABLEKS                       R18 R17 K22 ["Title"]
       76 GETUPVAL                         R19 7
       77 CALL                             R19 0 1
       78 JUMPIFNOT                        R19 ; [+6]
       79 LOADK                            R20 K34 ["StudioModes"]
       80 LOADK                            R21 K36 ["DeviceSimulationTooltip"]
       81 NAMECALL                         R18 R4 K25 ["getText"]
       83 CALL                             R18 3 1
       84 JUMP                             ; [+5]
       85 LOADK                            R20 K34 ["StudioModes"]
       86 LOADK                            R21 K37 ["DeviceEmulationToolTip"]
       87 NAMECALL                         R18 R4 K25 ["getText"]
       89 CALL                             R18 3 1
       90 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
       92 GETTABLEKS                       R18 R0 K32 ["Actions"]
       94 SETTABLEKS                       R18 R17 K32 ["Actions"]
       96 CALL                             R15 2 1
       97 SETTABLEKS                       R15 R14 K26 ["DeviceEmulation"]
       99 GETUPVAL                         R15 5
      100 GETTABLEKS                       R15 R15 K9 ["createElement"]
      102 GETUPVAL                         R16 8
      103 DUPTABLE                         R17 K41 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDevelopmentGui"}]
      104 LOADK                            R20 K34 ["StudioModes"]
      105 LOADK                            R21 K27 ["GUIOverlay"]
      106 NAMECALL                         R18 R4 K25 ["getText"]
      108 CALL                             R18 3 1
      109 SETTABLEKS                       R18 R17 K22 ["Title"]
      111 LOADK                            R20 K34 ["StudioModes"]
      112 LOADK                            R21 K42 ["GUIOverlayToolTip"]
      113 NAMECALL                         R18 R4 K25 ["getText"]
      115 CALL                             R18 3 1
      116 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      118 GETIMPORT                        R18 K44 [game]
      120 LOADK                            R20 K45 ["StarterGui"]
      121 NAMECALL                         R18 R18 K46 ["GetService"]
      123 CALL                             R18 2 1
      124 SETTABLEKS                       R18 R17 K38 ["Setting"]
      126 CALL                             R15 2 1
      127 SETTABLEKS                       R15 R14 K27 ["GUIOverlay"]
      129 CALL                             R11 3 1
      130 SETTABLEKS                       R11 R10 K11 ["GUI"]
      132 GETUPVAL                         R11 5
      133 GETTABLEKS                       R11 R11 K9 ["createElement"]
      135 LOADK                            R12 K21 ["VisualizationModeCategory"]
      136 DUPTABLE                         R13 K23 [{"Title"}]
      137 LOADK                            R16 K24 ["VisualizationModeCategories"]
      138 LOADK                            R17 K12 ["Lighting"]
      139 NAMECALL                         R14 R4 K25 ["getText"]
      141 CALL                             R14 3 1
      142 SETTABLEKS                       R14 R13 K22 ["Title"]
      144 DUPTABLE                         R14 K48 [{"Lights"}]
      145 GETUPVAL                         R15 5
      146 GETTABLEKS                       R15 R15 K9 ["createElement"]
      148 GETUPVAL                         R16 8
      149 DUPTABLE                         R17 K50 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Light Guides"}]
      150 LOADK                            R20 K34 ["StudioModes"]
      151 LOADK                            R21 K47 ["Lights"]
      152 NAMECALL                         R18 R4 K25 ["getText"]
      154 CALL                             R18 3 1
      155 SETTABLEKS                       R18 R17 K22 ["Title"]
      157 LOADK                            R20 K34 ["StudioModes"]
      158 LOADK                            R21 K51 ["LightsToolTip"]
      159 NAMECALL                         R18 R4 K25 ["getText"]
      161 CALL                             R18 3 1
      162 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      164 GETTABLEKS                       R18 R3 K5 ["Studio"]
      166 SETTABLEKS                       R18 R17 K38 ["Setting"]
      168 CALL                             R15 2 1
      169 SETTABLEKS                       R15 R14 K47 ["Lights"]
      171 CALL                             R11 3 1
      172 SETTABLEKS                       R11 R10 K12 ["Lighting"]
      174 GETUPVAL                         R11 5
      175 GETTABLEKS                       R11 R11 K9 ["createElement"]
      177 LOADK                            R12 K21 ["VisualizationModeCategory"]
      178 DUPTABLE                         R13 K23 [{"Title"}]
      179 LOADK                            R16 K24 ["VisualizationModeCategories"]
      180 LOADK                            R17 K13 ["Animation"]
      181 NAMECALL                         R14 R4 K25 ["getText"]
      183 CALL                             R14 3 1
      184 SETTABLEKS                       R14 R13 K22 ["Title"]
      186 DUPTABLE                         R14 K57 [{"ShowAnimationSkeleton", "ShowAnimationSkeletonAxes", "ShowAnimationSkeletonAttachments", "ShowAnimationSkeletonText", "ShowAnimationSkeletonRotations"}]
      187 GETUPVAL                         R15 5
      188 GETTABLEKS                       R15 R15 K9 ["createElement"]
      190 GETUPVAL                         R16 8
      191 DUPTABLE                         R17 K60 [{["Title"], ["ToolTip"], ["SortOrder"] = 1, ["Setting"], ["Property"] = "Show Animation Skeleton"}]
      192 LOADK                            R20 K34 ["StudioModes"]
      193 LOADK                            R21 K52 ["ShowAnimationSkeleton"]
      194 NAMECALL                         R18 R4 K25 ["getText"]
      196 CALL                             R18 3 1
      197 SETTABLEKS                       R18 R17 K22 ["Title"]
      199 LOADK                            R20 K34 ["StudioModes"]
      200 LOADK                            R21 K61 ["ShowAnimationSkeletonToolTip"]
      201 NAMECALL                         R18 R4 K25 ["getText"]
      203 CALL                             R18 3 1
      204 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      206 GETTABLEKS                       R18 R3 K5 ["Studio"]
      208 SETTABLEKS                       R18 R17 K38 ["Setting"]
      210 CALL                             R15 2 1
      211 SETTABLEKS                       R15 R14 K52 ["ShowAnimationSkeleton"]
      213 MOVE                             R15 R5
      214 JUMPIFNOT                        R15 ; [+24]
      215 GETUPVAL                         R15 5
      216 GETTABLEKS                       R15 R15 K9 ["createElement"]
      218 GETUPVAL                         R16 8
      219 DUPTABLE                         R17 K64 [{["Title"], ["ToolTip"], ["SortOrder"] = 2, ["Setting"], ["Property"] = "Show Animation Skeleton Axes"}]
      220 LOADK                            R20 K34 ["StudioModes"]
      221 LOADK                            R21 K53 ["ShowAnimationSkeletonAxes"]
      222 NAMECALL                         R18 R4 K25 ["getText"]
      224 CALL                             R18 3 1
      225 SETTABLEKS                       R18 R17 K22 ["Title"]
      227 LOADK                            R20 K34 ["StudioModes"]
      228 LOADK                            R21 K65 ["ShowAnimationSkeletonAxesToolTip"]
      229 NAMECALL                         R18 R4 K25 ["getText"]
      231 CALL                             R18 3 1
      232 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      234 GETTABLEKS                       R18 R3 K5 ["Studio"]
      236 SETTABLEKS                       R18 R17 K38 ["Setting"]
      238 CALL                             R15 2 1
      239 SETTABLEKS                       R15 R14 K53 ["ShowAnimationSkeletonAxes"]
      241 MOVE                             R15 R5
      242 JUMPIFNOT                        R15 ; [+24]
      243 GETUPVAL                         R15 5
      244 GETTABLEKS                       R15 R15 K9 ["createElement"]
      246 GETUPVAL                         R16 8
      247 DUPTABLE                         R17 K68 [{["Title"], ["ToolTip"], ["SortOrder"] = 3, ["Setting"], ["Property"] = "Show Animation Skeleton Attachments"}]
      248 LOADK                            R20 K34 ["StudioModes"]
      249 LOADK                            R21 K54 ["ShowAnimationSkeletonAttachments"]
      250 NAMECALL                         R18 R4 K25 ["getText"]
      252 CALL                             R18 3 1
      253 SETTABLEKS                       R18 R17 K22 ["Title"]
      255 LOADK                            R20 K34 ["StudioModes"]
      256 LOADK                            R21 K69 ["ShowAnimationSkeletonAttachmentsToolTip"]
      257 NAMECALL                         R18 R4 K25 ["getText"]
      259 CALL                             R18 3 1
      260 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      262 GETTABLEKS                       R18 R3 K5 ["Studio"]
      264 SETTABLEKS                       R18 R17 K38 ["Setting"]
      266 CALL                             R15 2 1
      267 SETTABLEKS                       R15 R14 K54 ["ShowAnimationSkeletonAttachments"]
      269 MOVE                             R15 R5
      270 JUMPIFNOT                        R15 ; [+24]
      271 GETUPVAL                         R15 5
      272 GETTABLEKS                       R15 R15 K9 ["createElement"]
      274 GETUPVAL                         R16 8
      275 DUPTABLE                         R17 K72 [{["Title"], ["ToolTip"], ["SortOrder"] = 4, ["Setting"], ["Property"] = "Show Animation Skeleton Text"}]
      276 LOADK                            R20 K34 ["StudioModes"]
      277 LOADK                            R21 K55 ["ShowAnimationSkeletonText"]
      278 NAMECALL                         R18 R4 K25 ["getText"]
      280 CALL                             R18 3 1
      281 SETTABLEKS                       R18 R17 K22 ["Title"]
      283 LOADK                            R20 K34 ["StudioModes"]
      284 LOADK                            R21 K73 ["ShowAnimationSkeletonTextToolTip"]
      285 NAMECALL                         R18 R4 K25 ["getText"]
      287 CALL                             R18 3 1
      288 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      290 GETTABLEKS                       R18 R3 K5 ["Studio"]
      292 SETTABLEKS                       R18 R17 K38 ["Setting"]
      294 CALL                             R15 2 1
      295 SETTABLEKS                       R15 R14 K55 ["ShowAnimationSkeletonText"]
      297 MOVE                             R15 R5
      298 JUMPIFNOT                        R15 ; [+24]
      299 GETUPVAL                         R15 5
      300 GETTABLEKS                       R15 R15 K9 ["createElement"]
      302 GETUPVAL                         R16 8
      303 DUPTABLE                         R17 K76 [{["Title"], ["ToolTip"], ["SortOrder"] = 5, ["Setting"], ["Property"] = "Show Animation Skeleton Rotations"}]
      304 LOADK                            R20 K34 ["StudioModes"]
      305 LOADK                            R21 K56 ["ShowAnimationSkeletonRotations"]
      306 NAMECALL                         R18 R4 K25 ["getText"]
      308 CALL                             R18 3 1
      309 SETTABLEKS                       R18 R17 K22 ["Title"]
      311 LOADK                            R20 K34 ["StudioModes"]
      312 LOADK                            R21 K77 ["ShowAnimationSkeletonRotationsToolTip"]
      313 NAMECALL                         R18 R4 K25 ["getText"]
      315 CALL                             R18 3 1
      316 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      318 GETTABLEKS                       R18 R3 K5 ["Studio"]
      320 SETTABLEKS                       R18 R17 K38 ["Setting"]
      322 CALL                             R15 2 1
      323 SETTABLEKS                       R15 R14 K56 ["ShowAnimationSkeletonRotations"]
      325 CALL                             R11 3 1
      326 SETTABLEKS                       R11 R10 K13 ["Animation"]
      328 MOVE                             R11 R2
      329 JUMPIFNOT                        R11 ; [+68]
      330 GETUPVAL                         R11 5
      331 GETTABLEKS                       R11 R11 K9 ["createElement"]
      333 LOADK                            R12 K21 ["VisualizationModeCategory"]
      334 DUPTABLE                         R13 K23 [{"Title"}]
      335 LOADK                            R16 K24 ["VisualizationModeCategories"]
      336 LOADK                            R17 K14 ["Audio"]
      337 NAMECALL                         R14 R4 K25 ["getText"]
      339 CALL                             R14 3 1
      340 SETTABLEKS                       R14 R13 K22 ["Title"]
      342 DUPTABLE                         R14 K80 [{"ShowSources", "ShowInactiveSources"}]
      343 GETUPVAL                         R15 5
      344 GETTABLEKS                       R15 R15 K9 ["createElement"]
      346 GETUPVAL                         R16 6
      347 DUPTABLE                         R17 K81 [{["Title"], ["ToolTip"], ["SortOrder"] = 1, ["FeatureId"] = "AudioViewportVisualizations", ["ActionId"] = "Toggle", ["Actions"]}]
      348 LOADK                            R20 K34 ["StudioModes"]
      349 LOADK                            R21 K82 ["ShowAudioSources"]
      350 NAMECALL                         R18 R4 K25 ["getText"]
      352 CALL                             R18 3 1
      353 SETTABLEKS                       R18 R17 K22 ["Title"]
      355 LOADK                            R20 K34 ["StudioModes"]
      356 LOADK                            R21 K83 ["ShowAudioSourcesToolTip"]
      357 NAMECALL                         R18 R4 K25 ["getText"]
      359 CALL                             R18 3 1
      360 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      362 GETTABLEKS                       R18 R0 K32 ["Actions"]
      364 SETTABLEKS                       R18 R17 K32 ["Actions"]
      366 CALL                             R15 2 1
      367 SETTABLEKS                       R15 R14 K78 ["ShowSources"]
      369 MOVE                             R15 R6
      370 JUMPIFNOT                        R15 ; [+24]
      371 GETUPVAL                         R15 5
      372 GETTABLEKS                       R15 R15 K9 ["createElement"]
      374 GETUPVAL                         R16 6
      375 DUPTABLE                         R17 K85 [{["Title"], ["ToolTip"], ["SortOrder"] = 2, ["FeatureId"] = "AudioViewportVisualizations", ["ActionId"] = "ToggleShowInactiveSources", ["Actions"]}]
      376 LOADK                            R20 K34 ["StudioModes"]
      377 LOADK                            R21 K86 ["ShowAudioInactiveSources"]
      378 NAMECALL                         R18 R4 K25 ["getText"]
      380 CALL                             R18 3 1
      381 SETTABLEKS                       R18 R17 K22 ["Title"]
      383 LOADK                            R20 K34 ["StudioModes"]
      384 LOADK                            R21 K87 ["ShowAudioInactiveSourcesToolTip"]
      385 NAMECALL                         R18 R4 K25 ["getText"]
      387 CALL                             R18 3 1
      388 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      390 GETTABLEKS                       R18 R0 K32 ["Actions"]
      392 SETTABLEKS                       R18 R17 K32 ["Actions"]
      394 CALL                             R15 2 1
      395 SETTABLEKS                       R15 R14 K79 ["ShowInactiveSources"]
      397 CALL                             R11 3 1
      398 SETTABLEKS                       R11 R10 K14 ["Audio"]
      400 GETUPVAL                         R11 5
      401 GETTABLEKS                       R11 R11 K9 ["createElement"]
      403 LOADK                            R12 K21 ["VisualizationModeCategory"]
      404 DUPTABLE                         R13 K23 [{"Title"}]
      405 LOADK                            R16 K24 ["VisualizationModeCategories"]
      406 LOADK                            R17 K15 ["Pathfinding"]
      407 NAMECALL                         R14 R4 K25 ["getText"]
      409 CALL                             R14 3 1
      410 SETTABLEKS                       R14 R13 K22 ["Title"]
      412 DUPTABLE                         R14 K91 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
      413 GETUPVAL                         R15 5
      414 GETTABLEKS                       R15 R15 K9 ["createElement"]
      416 GETUPVAL                         R16 8
      417 DUPTABLE                         R17 K93 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Mesh"}]
      418 LOADK                            R20 K34 ["StudioModes"]
      419 LOADK                            R21 K88 ["PathfindingMesh"]
      420 NAMECALL                         R18 R4 K25 ["getText"]
      422 CALL                             R18 3 1
      423 SETTABLEKS                       R18 R17 K22 ["Title"]
      425 LOADK                            R20 K34 ["StudioModes"]
      426 LOADK                            R21 K94 ["PathfindingMeshToolTip"]
      427 NAMECALL                         R18 R4 K25 ["getText"]
      429 CALL                             R18 3 1
      430 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      432 GETTABLEKS                       R18 R3 K5 ["Studio"]
      434 SETTABLEKS                       R18 R17 K38 ["Setting"]
      436 CALL                             R15 2 1
      437 SETTABLEKS                       R15 R14 K88 ["PathfindingMesh"]
      439 GETUPVAL                         R15 5
      440 GETTABLEKS                       R15 R15 K9 ["createElement"]
      442 GETUPVAL                         R16 8
      443 DUPTABLE                         R17 K96 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Labels"}]
      444 LOADK                            R20 K34 ["StudioModes"]
      445 LOADK                            R21 K89 ["PathfindingModifiers"]
      446 NAMECALL                         R18 R4 K25 ["getText"]
      448 CALL                             R18 3 1
      449 SETTABLEKS                       R18 R17 K22 ["Title"]
      451 LOADK                            R20 K34 ["StudioModes"]
      452 LOADK                            R21 K97 ["PathfindingModifiersToolTip"]
      453 NAMECALL                         R18 R4 K25 ["getText"]
      455 CALL                             R18 3 1
      456 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      458 GETTABLEKS                       R18 R3 K5 ["Studio"]
      460 SETTABLEKS                       R18 R17 K38 ["Setting"]
      462 CALL                             R15 2 1
      463 SETTABLEKS                       R15 R14 K89 ["PathfindingModifiers"]
      465 GETUPVAL                         R15 5
      466 GETTABLEKS                       R15 R15 K9 ["createElement"]
      468 GETUPVAL                         R16 8
      469 DUPTABLE                         R17 K99 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Pathfinding Links"}]
      470 LOADK                            R20 K34 ["StudioModes"]
      471 LOADK                            R21 K90 ["PathfindingLinks"]
      472 NAMECALL                         R18 R4 K25 ["getText"]
      474 CALL                             R18 3 1
      475 SETTABLEKS                       R18 R17 K22 ["Title"]
      477 LOADK                            R20 K34 ["StudioModes"]
      478 LOADK                            R21 K100 ["PathfindingLinksToolTip"]
      479 NAMECALL                         R18 R4 K25 ["getText"]
      481 CALL                             R18 3 1
      482 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      484 GETTABLEKS                       R18 R3 K5 ["Studio"]
      486 SETTABLEKS                       R18 R17 K38 ["Setting"]
      488 CALL                             R15 2 1
      489 SETTABLEKS                       R15 R14 K90 ["PathfindingLinks"]
      491 CALL                             R11 3 1
      492 SETTABLEKS                       R11 R10 K15 ["Pathfinding"]
      494 GETUPVAL                         R11 5
      495 GETTABLEKS                       R11 R11 K9 ["createElement"]
      497 LOADK                            R12 K21 ["VisualizationModeCategory"]
      498 DUPTABLE                         R13 K23 [{"Title"}]
      499 LOADK                            R16 K24 ["VisualizationModeCategories"]
      500 LOADK                            R17 K16 ["PhysicsConstraints"]
      501 NAMECALL                         R14 R4 K25 ["getText"]
      503 CALL                             R14 3 1
      504 SETTABLEKS                       R14 R13 K22 ["Title"]
      506 DUPTABLE                         R14 K103 [{"Constraints", "Welds"}]
      507 GETUPVAL                         R15 5
      508 GETTABLEKS                       R15 R15 K9 ["createElement"]
      510 GETUPVAL                         R16 6
      511 DUPTABLE                         R17 K105 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowDetails", ["Actions"]}]
      512 LOADK                            R20 K34 ["StudioModes"]
      513 LOADK                            R21 K101 ["Constraints"]
      514 NAMECALL                         R18 R4 K25 ["getText"]
      516 CALL                             R18 3 1
      517 SETTABLEKS                       R18 R17 K22 ["Title"]
      519 LOADK                            R20 K34 ["StudioModes"]
      520 LOADK                            R21 K106 ["ConstraintsToolTip"]
      521 NAMECALL                         R18 R4 K25 ["getText"]
      523 CALL                             R18 3 1
      524 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      526 GETTABLEKS                       R18 R0 K32 ["Actions"]
      528 SETTABLEKS                       R18 R17 K32 ["Actions"]
      530 CALL                             R15 2 1
      531 SETTABLEKS                       R15 R14 K101 ["Constraints"]
      533 GETUPVAL                         R15 5
      534 GETTABLEKS                       R15 R15 K9 ["createElement"]
      536 GETUPVAL                         R16 6
      537 DUPTABLE                         R17 K108 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowWelds", ["Actions"]}]
      538 LOADK                            R20 K34 ["StudioModes"]
      539 LOADK                            R21 K102 ["Welds"]
      540 NAMECALL                         R18 R4 K25 ["getText"]
      542 CALL                             R18 3 1
      543 SETTABLEKS                       R18 R17 K22 ["Title"]
      545 LOADK                            R20 K34 ["StudioModes"]
      546 LOADK                            R21 K109 ["WeldsToolTip"]
      547 NAMECALL                         R18 R4 K25 ["getText"]
      549 CALL                             R18 3 1
      550 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      552 GETTABLEKS                       R18 R0 K32 ["Actions"]
      554 SETTABLEKS                       R18 R17 K32 ["Actions"]
      556 CALL                             R15 2 1
      557 SETTABLEKS                       R15 R14 K102 ["Welds"]
      559 CALL                             R11 3 1
      560 SETTABLEKS                       R11 R10 K16 ["PhysicsConstraints"]
      562 GETUPVAL                         R11 5
      563 GETTABLEKS                       R11 R11 K9 ["createElement"]
      565 LOADK                            R12 K21 ["VisualizationModeCategory"]
      566 DUPTABLE                         R13 K23 [{"Title"}]
      567 LOADK                            R16 K24 ["VisualizationModeCategories"]
      568 LOADK                            R17 K17 ["PhysicsLabels"]
      569 NAMECALL                         R14 R4 K25 ["getText"]
      571 CALL                             R14 3 1
      572 SETTABLEKS                       R14 R13 K22 ["Title"]
      574 DUPTABLE                         R14 K115 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
      575 GETUPVAL                         R15 5
      576 GETTABLEKS                       R15 R15 K9 ["createElement"]
      578 GETUPVAL                         R16 8
      579 DUPTABLE                         R17 K117 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAnchorsShown"}]
      580 LOADK                            R20 K34 ["StudioModes"]
      581 LOADK                            R21 K110 ["AnchoredParts"]
      582 NAMECALL                         R18 R4 K25 ["getText"]
      584 CALL                             R18 3 1
      585 SETTABLEKS                       R18 R17 K22 ["Title"]
      587 LOADK                            R20 K34 ["StudioModes"]
      588 LOADK                            R21 K118 ["AnchoredPartsToolTip"]
      589 NAMECALL                         R18 R4 K25 ["getText"]
      591 CALL                             R18 3 1
      592 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      594 GETTABLEKS                       R18 R3 K119 ["Physics"]
      596 SETTABLEKS                       R18 R17 K38 ["Setting"]
      598 CALL                             R15 2 1
      599 SETTABLEKS                       R15 R14 K110 ["AnchoredParts"]
      601 GETUPVAL                         R15 5
      602 GETTABLEKS                       R15 R15 K9 ["createElement"]
      604 GETUPVAL                         R16 8
      605 DUPTABLE                         R17 K121 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAwakePartsHighlighted"}]
      606 LOADK                            R20 K34 ["StudioModes"]
      607 LOADK                            R21 K111 ["AwakeParts"]
      608 NAMECALL                         R18 R4 K25 ["getText"]
      610 CALL                             R18 3 1
      611 SETTABLEKS                       R18 R17 K22 ["Title"]
      613 LOADK                            R20 K34 ["StudioModes"]
      614 LOADK                            R21 K122 ["AwakePartsToolTip"]
      615 NAMECALL                         R18 R4 K25 ["getText"]
      617 CALL                             R18 3 1
      618 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      620 GETTABLEKS                       R18 R3 K119 ["Physics"]
      622 SETTABLEKS                       R18 R17 K38 ["Setting"]
      624 CALL                             R15 2 1
      625 SETTABLEKS                       R15 R14 K111 ["AwakeParts"]
      627 GETUPVAL                         R15 5
      628 GETTABLEKS                       R15 R15 K9 ["createElement"]
      630 GETUPVAL                         R16 8
      631 DUPTABLE                         R17 K124 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAssembliesShown"}]
      632 LOADK                            R20 K34 ["StudioModes"]
      633 LOADK                            R21 K125 ["ShowAssemblies"]
      634 NAMECALL                         R18 R4 K25 ["getText"]
      636 CALL                             R18 3 1
      637 SETTABLEKS                       R18 R17 K22 ["Title"]
      639 LOADK                            R20 K34 ["StudioModes"]
      640 LOADK                            R21 K126 ["ShowAssembliesToolTip"]
      641 NAMECALL                         R18 R4 K25 ["getText"]
      643 CALL                             R18 3 1
      644 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      646 GETTABLEKS                       R18 R3 K119 ["Physics"]
      648 SETTABLEKS                       R18 R17 K38 ["Setting"]
      650 CALL                             R15 2 1
      651 SETTABLEKS                       R15 R14 K112 ["Assemblies"]
      653 GETUPVAL                         R15 5
      654 GETTABLEKS                       R15 R15 K9 ["createElement"]
      656 GETUPVAL                         R16 8
      657 DUPTABLE                         R17 K128 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreMechanismsShown"}]
      658 LOADK                            R20 K34 ["StudioModes"]
      659 LOADK                            R21 K113 ["Mechanisms"]
      660 NAMECALL                         R18 R4 K25 ["getText"]
      662 CALL                             R18 3 1
      663 SETTABLEKS                       R18 R17 K22 ["Title"]
      665 LOADK                            R20 K34 ["StudioModes"]
      666 LOADK                            R21 K129 ["MechanismsToolTip"]
      667 NAMECALL                         R18 R4 K25 ["getText"]
      669 CALL                             R18 3 1
      670 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      672 GETTABLEKS                       R18 R3 K119 ["Physics"]
      674 SETTABLEKS                       R18 R17 K38 ["Setting"]
      676 CALL                             R15 2 1
      677 SETTABLEKS                       R15 R14 K113 ["Mechanisms"]
      679 GETUPVAL                         R15 5
      680 GETTABLEKS                       R15 R15 K9 ["createElement"]
      682 GETUPVAL                         R16 8
      683 DUPTABLE                         R17 K131 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreOwnersShown"}]
      684 LOADK                            R20 K34 ["StudioModes"]
      685 LOADK                            R21 K114 ["NetworkOwner"]
      686 NAMECALL                         R18 R4 K25 ["getText"]
      688 CALL                             R18 3 1
      689 SETTABLEKS                       R18 R17 K22 ["Title"]
      691 LOADK                            R20 K34 ["StudioModes"]
      692 LOADK                            R21 K132 ["NetworkOwnerToolTip"]
      693 NAMECALL                         R18 R4 K25 ["getText"]
      695 CALL                             R18 3 1
      696 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      698 GETTABLEKS                       R18 R3 K119 ["Physics"]
      700 SETTABLEKS                       R18 R17 K38 ["Setting"]
      702 CALL                             R15 2 1
      703 SETTABLEKS                       R15 R14 K114 ["NetworkOwner"]
      705 CALL                             R11 3 1
      706 SETTABLEKS                       R11 R10 K17 ["PhysicsLabels"]
      708 GETUPVAL                         R11 5
      709 GETTABLEKS                       R11 R11 K9 ["createElement"]
      711 LOADK                            R12 K21 ["VisualizationModeCategory"]
      712 DUPTABLE                         R13 K23 [{"Title"}]
      713 LOADK                            R16 K24 ["VisualizationModeCategories"]
      714 LOADK                            R17 K18 ["PhysicsSimulation"]
      715 NAMECALL                         R14 R4 K25 ["getText"]
      717 CALL                             R14 3 1
      718 SETTABLEKS                       R14 R13 K22 ["Title"]
      720 DUPTABLE                         R14 K137 [{"CollisionFidelity", "ContactPoints", "Shapecasts", "WindDirection"}]
      721 GETUPVAL                         R16 9
      722 CALL                             R16 0 1
      723 JUMPIF                           R16 ; [+25]
      724 GETUPVAL                         R15 5
      725 GETTABLEKS                       R15 R15 K9 ["createElement"]
      727 GETUPVAL                         R16 8
      728 DUPTABLE                         R17 K139 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDecompositionGeometry"}]
      729 LOADK                            R20 K34 ["StudioModes"]
      730 LOADK                            R21 K133 ["CollisionFidelity"]
      731 NAMECALL                         R18 R4 K25 ["getText"]
      733 CALL                             R18 3 1
      734 SETTABLEKS                       R18 R17 K22 ["Title"]
      736 LOADK                            R20 K34 ["StudioModes"]
      737 LOADK                            R21 K140 ["CollisionFidelityToolTip"]
      738 NAMECALL                         R18 R4 K25 ["getText"]
      740 CALL                             R18 3 1
      741 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      743 GETTABLEKS                       R18 R3 K119 ["Physics"]
      745 SETTABLEKS                       R18 R17 K38 ["Setting"]
      747 CALL                             R15 2 1
      748 JUMP                             ; [+1]
      749 LOADNIL                          R15
      750 SETTABLEKS                       R15 R14 K133 ["CollisionFidelity"]
      752 GETUPVAL                         R15 5
      753 GETTABLEKS                       R15 R15 K9 ["createElement"]
      755 GETUPVAL                         R16 8
      756 DUPTABLE                         R17 K142 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreContactPointsShown"}]
      757 LOADK                            R20 K34 ["StudioModes"]
      758 LOADK                            R21 K134 ["ContactPoints"]
      759 NAMECALL                         R18 R4 K25 ["getText"]
      761 CALL                             R18 3 1
      762 SETTABLEKS                       R18 R17 K22 ["Title"]
      764 LOADK                            R20 K34 ["StudioModes"]
      765 LOADK                            R21 K143 ["ContactPointsToolTip"]
      766 NAMECALL                         R18 R4 K25 ["getText"]
      768 CALL                             R18 3 1
      769 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      771 GETTABLEKS                       R18 R3 K119 ["Physics"]
      773 SETTABLEKS                       R18 R17 K38 ["Setting"]
      775 CALL                             R15 2 1
      776 SETTABLEKS                       R15 R14 K134 ["ContactPoints"]
      778 GETUPVAL                         R15 10
      779 CALL                             R15 0 1
      780 JUMPIFNOT                        R15 ; [+24]
      781 GETUPVAL                         R15 5
      782 GETTABLEKS                       R15 R15 K9 ["createElement"]
      784 GETUPVAL                         R16 8
      785 DUPTABLE                         R17 K145 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "DrawShapecast"}]
      786 LOADK                            R20 K34 ["StudioModes"]
      787 LOADK                            R21 K135 ["Shapecasts"]
      788 NAMECALL                         R18 R4 K25 ["getText"]
      790 CALL                             R18 3 1
      791 SETTABLEKS                       R18 R17 K22 ["Title"]
      793 LOADK                            R20 K34 ["StudioModes"]
      794 LOADK                            R21 K146 ["ShapecastsToolTip"]
      795 NAMECALL                         R18 R4 K25 ["getText"]
      797 CALL                             R18 3 1
      798 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      800 GETTABLEKS                       R18 R3 K119 ["Physics"]
      802 SETTABLEKS                       R18 R17 K38 ["Setting"]
      804 CALL                             R15 2 1
      805 SETTABLEKS                       R15 R14 K135 ["Shapecasts"]
      807 GETUPVAL                         R15 5
      808 GETTABLEKS                       R15 R15 K9 ["createElement"]
      810 GETUPVAL                         R16 6
      811 DUPTABLE                         R17 K148 [{["Title"], ["ToolTip"], ["FeatureId"] = "WindControl", ["ActionId"] = "Toggle", ["Actions"]}]
      812 LOADK                            R20 K34 ["StudioModes"]
      813 LOADK                            R21 K136 ["WindDirection"]
      814 NAMECALL                         R18 R4 K25 ["getText"]
      816 CALL                             R18 3 1
      817 SETTABLEKS                       R18 R17 K22 ["Title"]
      819 LOADK                            R20 K34 ["StudioModes"]
      820 LOADK                            R21 K149 ["WindDirectionToolTip"]
      821 NAMECALL                         R18 R4 K25 ["getText"]
      823 CALL                             R18 3 1
      824 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      826 GETTABLEKS                       R18 R0 K32 ["Actions"]
      828 SETTABLEKS                       R18 R17 K32 ["Actions"]
      830 CALL                             R15 2 1
      831 SETTABLEKS                       R15 R14 K136 ["WindDirection"]
      833 CALL                             R11 3 1
      834 SETTABLEKS                       R11 R10 K18 ["PhysicsSimulation"]
      836 GETUPVAL                         R11 5
      837 GETTABLEKS                       R11 R11 K9 ["createElement"]
      839 LOADK                            R12 K21 ["VisualizationModeCategory"]
      840 DUPTABLE                         R13 K23 [{"Title"}]
      841 LOADK                            R16 K24 ["VisualizationModeCategories"]
      842 LOADK                            R17 K19 ["View"]
      843 NAMECALL                         R14 R4 K25 ["getText"]
      845 CALL                             R14 3 1
      846 SETTABLEKS                       R14 R13 K22 ["Title"]
      848 DUPTABLE                         R14 K154 [{"ViewSelector", "Grid", "GridMaterial", "CollaboratorHighlights"}]
      849 GETUPVAL                         R15 5
      850 GETTABLEKS                       R15 R15 K9 ["createElement"]
      852 GETUPVAL                         R16 6
      853 DUPTABLE                         R17 K155 [{["Title"], ["ToolTip"], ["FeatureId"] = "ViewSelector", ["ActionId"] = "Toggle", ["Actions"]}]
      854 LOADK                            R20 K34 ["StudioModes"]
      855 LOADK                            R21 K150 ["ViewSelector"]
      856 NAMECALL                         R18 R4 K25 ["getText"]
      858 CALL                             R18 3 1
      859 SETTABLEKS                       R18 R17 K22 ["Title"]
      861 LOADK                            R20 K34 ["StudioModes"]
      862 LOADK                            R21 K156 ["ViewSelectorToolTip"]
      863 NAMECALL                         R18 R4 K25 ["getText"]
      865 CALL                             R18 3 1
      866 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      868 GETTABLEKS                       R18 R0 K32 ["Actions"]
      870 SETTABLEKS                       R18 R17 K32 ["Actions"]
      872 CALL                             R15 2 1
      873 SETTABLEKS                       R15 R14 K150 ["ViewSelector"]
      875 GETUPVAL                         R15 5
      876 GETTABLEKS                       R15 R15 K9 ["createElement"]
      878 GETUPVAL                         R16 6
      879 DUPTABLE                         R17 K158 [{["Title"], ["ToolTip"], ["FeatureId"] = "3DGrid", ["ActionId"] = "Toggle", ["Actions"]}]
      880 LOADK                            R20 K34 ["StudioModes"]
      881 LOADK                            R21 K151 ["Grid"]
      882 NAMECALL                         R18 R4 K25 ["getText"]
      884 CALL                             R18 3 1
      885 SETTABLEKS                       R18 R17 K22 ["Title"]
      887 LOADK                            R20 K34 ["StudioModes"]
      888 LOADK                            R21 K159 ["GridToolTip"]
      889 NAMECALL                         R18 R4 K25 ["getText"]
      891 CALL                             R18 3 1
      892 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      894 GETTABLEKS                       R18 R0 K32 ["Actions"]
      896 SETTABLEKS                       R18 R17 K32 ["Actions"]
      898 CALL                             R15 2 1
      899 SETTABLEKS                       R15 R14 K151 ["Grid"]
      901 GETUPVAL                         R15 5
      902 GETTABLEKS                       R15 R15 K9 ["createElement"]
      904 GETUPVAL                         R16 6
      905 DUPTABLE                         R17 K160 [{["Title"], ["ToolTip"], ["FeatureId"] = "GridMaterial", ["ActionId"] = "Toggle", ["Actions"]}]
      906 LOADK                            R20 K34 ["StudioModes"]
      907 LOADK                            R21 K152 ["GridMaterial"]
      908 NAMECALL                         R18 R4 K25 ["getText"]
      910 CALL                             R18 3 1
      911 SETTABLEKS                       R18 R17 K22 ["Title"]
      913 LOADK                            R20 K34 ["StudioModes"]
      914 LOADK                            R21 K161 ["GridMaterialToolTip"]
      915 NAMECALL                         R18 R4 K25 ["getText"]
      917 CALL                             R18 3 1
      918 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      920 GETTABLEKS                       R18 R0 K32 ["Actions"]
      922 SETTABLEKS                       R18 R17 K32 ["Actions"]
      924 CALL                             R15 2 1
      925 SETTABLEKS                       R15 R14 K152 ["GridMaterial"]
      927 GETUPVAL                         R15 5
      928 GETTABLEKS                       R15 R15 K9 ["createElement"]
      930 GETUPVAL                         R16 11
      931 DUPTABLE                         R17 K163 [{"Title", "ToolTip", "UseState"}]
      932 LOADK                            R20 K34 ["StudioModes"]
      933 LOADK                            R21 K153 ["CollaboratorHighlights"]
      934 NAMECALL                         R18 R4 K25 ["getText"]
      936 CALL                             R18 3 1
      937 SETTABLEKS                       R18 R17 K22 ["Title"]
      939 LOADK                            R20 K34 ["StudioModes"]
      940 LOADK                            R21 K164 ["CollaboratorHighlightsToolTip"]
      941 NAMECALL                         R18 R4 K25 ["getText"]
      943 CALL                             R18 3 1
      944 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      946 GETUPVAL                         R18 12
      947 SETTABLEKS                       R18 R17 K162 ["UseState"]
      949 CALL                             R15 2 1
      950 SETTABLEKS                       R15 R14 K153 ["CollaboratorHighlights"]
      952 CALL                             R11 3 1
      953 SETTABLEKS                       R11 R10 K19 ["View"]
      955 CALL                             R7 3 -1
      956 RETURN                           R7 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R2 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R3 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R3 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R4 R0 K9 ["Src"]
       25 GETTABLEKS                       R4 R4 K10 ["Modes"]
       27 GETTABLEKS                       R4 R4 K11 ["SettingVisualizationMode"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R5 R0 K9 ["Src"]
       34 GETTABLEKS                       R5 R5 K10 ["Modes"]
       36 GETTABLEKS                       R5 R5 K12 ["ToggleActionVisualizationMode"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R6 R0 K9 ["Src"]
       43 GETTABLEKS                       R6 R6 K13 ["Hooks"]
       45 GETTABLEKS                       R6 R6 K14 ["useCollaborationHighlights"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R7 R0 K9 ["Src"]
       52 GETTABLEKS                       R7 R7 K13 ["Hooks"]
       54 GETTABLEKS                       R7 R7 K15 ["useInstanceSetting"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R8 R0 K9 ["Src"]
       61 GETTABLEKS                       R8 R8 K13 ["Hooks"]
       63 GETTABLEKS                       R8 R8 K16 ["useToggleAction"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K10 ["Modes"]
       72 GETTABLEKS                       R9 R9 K17 ["VisualizationMode"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K9 ["Src"]
       79 GETTABLEKS                       R10 R10 K18 ["Flags"]
       81 GETTABLEKS                       R10 R10 K19 ["getFFlagStudioVisualizationModesTestSupport"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K9 ["Src"]
       88 GETTABLEKS                       R11 R11 K18 ["Flags"]
       90 GETTABLEKS                       R11 R11 K20 ["getFFlagStudioVisualizationModesShowAudio"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K9 ["Src"]
       97 GETTABLEKS                       R12 R12 K18 ["Flags"]
       99 GETTABLEKS                       R12 R12 K21 ["getFFlagUseAdornBasedCDDebugVis"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K9 ["Src"]
      106 GETTABLEKS                       R13 R13 K18 ["Flags"]
      108 GETTABLEKS                       R13 R13 K22 ["getFFlagUseNewShapecasts"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K9 ["Src"]
      115 GETTABLEKS                       R14 R14 K18 ["Flags"]
      117 GETTABLEKS                       R14 R14 K23 ["getRenameEmulatorToSimulatorEngineFeature"]
      119 CALL                             R13 1 1
      120 GETTABLEKS                       R14 R1 K24 ["ContextServices"]
      122 DUPCLOSURE                       R15 K25 [PROTO_0]
      123 CAPTURE                          VAL R9
      124 CAPTURE                          VAL R10
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R6
      127 CAPTURE                          VAL R7
      128 CAPTURE                          VAL R2
      129 CAPTURE                          VAL R4
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R3
      132 CAPTURE                          VAL R11
      133 CAPTURE                          VAL R12
      134 CAPTURE                          VAL R8
      135 CAPTURE                          VAL R5
      136 RETURN                           R15 1
