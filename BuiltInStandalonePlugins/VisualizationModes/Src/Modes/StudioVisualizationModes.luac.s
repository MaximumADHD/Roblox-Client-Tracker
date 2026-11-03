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
      144 DUPTABLE                         R14 K49 [{"Lights", "AmbientOcclusion"}]
      145 GETUPVAL                         R15 5
      146 GETTABLEKS                       R15 R15 K9 ["createElement"]
      148 GETUPVAL                         R16 8
      149 DUPTABLE                         R17 K51 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Light Guides"}]
      150 LOADK                            R20 K34 ["StudioModes"]
      151 LOADK                            R21 K47 ["Lights"]
      152 NAMECALL                         R18 R4 K25 ["getText"]
      154 CALL                             R18 3 1
      155 SETTABLEKS                       R18 R17 K22 ["Title"]
      157 LOADK                            R20 K34 ["StudioModes"]
      158 LOADK                            R21 K52 ["LightsToolTip"]
      159 NAMECALL                         R18 R4 K25 ["getText"]
      161 CALL                             R18 3 1
      162 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      164 GETTABLEKS                       R18 R3 K5 ["Studio"]
      166 SETTABLEKS                       R18 R17 K38 ["Setting"]
      168 CALL                             R15 2 1
      169 SETTABLEKS                       R15 R14 K47 ["Lights"]
      171 GETUPVAL                         R15 9
      172 CALL                             R15 0 1
      173 JUMPIFNOT                        R15 ; [+24]
      174 GETUPVAL                         R15 5
      175 GETTABLEKS                       R15 R15 K9 ["createElement"]
      177 GETUPVAL                         R16 6
      178 DUPTABLE                         R17 K54 [{["Title"], ["ToolTip"], ["FeatureId"] = "AmbientOcclusionVisualization", ["ActionId"] = "Toggle", ["Actions"]}]
      179 LOADK                            R20 K34 ["StudioModes"]
      180 LOADK                            R21 K48 ["AmbientOcclusion"]
      181 NAMECALL                         R18 R4 K25 ["getText"]
      183 CALL                             R18 3 1
      184 SETTABLEKS                       R18 R17 K22 ["Title"]
      186 LOADK                            R20 K34 ["StudioModes"]
      187 LOADK                            R21 K55 ["AmbientOcclusionToolTip"]
      188 NAMECALL                         R18 R4 K25 ["getText"]
      190 CALL                             R18 3 1
      191 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      193 GETTABLEKS                       R18 R0 K32 ["Actions"]
      195 SETTABLEKS                       R18 R17 K32 ["Actions"]
      197 CALL                             R15 2 1
      198 SETTABLEKS                       R15 R14 K48 ["AmbientOcclusion"]
      200 CALL                             R11 3 1
      201 SETTABLEKS                       R11 R10 K12 ["Lighting"]
      203 GETUPVAL                         R11 5
      204 GETTABLEKS                       R11 R11 K9 ["createElement"]
      206 LOADK                            R12 K21 ["VisualizationModeCategory"]
      207 DUPTABLE                         R13 K23 [{"Title"}]
      208 LOADK                            R16 K24 ["VisualizationModeCategories"]
      209 LOADK                            R17 K13 ["Animation"]
      210 NAMECALL                         R14 R4 K25 ["getText"]
      212 CALL                             R14 3 1
      213 SETTABLEKS                       R14 R13 K22 ["Title"]
      215 DUPTABLE                         R14 K61 [{"ShowAnimationSkeleton", "ShowAnimationSkeletonAxes", "ShowAnimationSkeletonAttachments", "ShowAnimationSkeletonText", "ShowAnimationSkeletonRotations"}]
      216 GETUPVAL                         R15 5
      217 GETTABLEKS                       R15 R15 K9 ["createElement"]
      219 GETUPVAL                         R16 8
      220 DUPTABLE                         R17 K64 [{["Title"], ["ToolTip"], ["SortOrder"] = 1, ["Setting"], ["Property"] = "Show Animation Skeleton"}]
      221 LOADK                            R20 K34 ["StudioModes"]
      222 LOADK                            R21 K56 ["ShowAnimationSkeleton"]
      223 NAMECALL                         R18 R4 K25 ["getText"]
      225 CALL                             R18 3 1
      226 SETTABLEKS                       R18 R17 K22 ["Title"]
      228 LOADK                            R20 K34 ["StudioModes"]
      229 LOADK                            R21 K65 ["ShowAnimationSkeletonToolTip"]
      230 NAMECALL                         R18 R4 K25 ["getText"]
      232 CALL                             R18 3 1
      233 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      235 GETTABLEKS                       R18 R3 K5 ["Studio"]
      237 SETTABLEKS                       R18 R17 K38 ["Setting"]
      239 CALL                             R15 2 1
      240 SETTABLEKS                       R15 R14 K56 ["ShowAnimationSkeleton"]
      242 MOVE                             R15 R5
      243 JUMPIFNOT                        R15 ; [+24]
      244 GETUPVAL                         R15 5
      245 GETTABLEKS                       R15 R15 K9 ["createElement"]
      247 GETUPVAL                         R16 8
      248 DUPTABLE                         R17 K68 [{["Title"], ["ToolTip"], ["SortOrder"] = 2, ["Setting"], ["Property"] = "Show Animation Skeleton Axes"}]
      249 LOADK                            R20 K34 ["StudioModes"]
      250 LOADK                            R21 K57 ["ShowAnimationSkeletonAxes"]
      251 NAMECALL                         R18 R4 K25 ["getText"]
      253 CALL                             R18 3 1
      254 SETTABLEKS                       R18 R17 K22 ["Title"]
      256 LOADK                            R20 K34 ["StudioModes"]
      257 LOADK                            R21 K69 ["ShowAnimationSkeletonAxesToolTip"]
      258 NAMECALL                         R18 R4 K25 ["getText"]
      260 CALL                             R18 3 1
      261 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      263 GETTABLEKS                       R18 R3 K5 ["Studio"]
      265 SETTABLEKS                       R18 R17 K38 ["Setting"]
      267 CALL                             R15 2 1
      268 SETTABLEKS                       R15 R14 K57 ["ShowAnimationSkeletonAxes"]
      270 MOVE                             R15 R5
      271 JUMPIFNOT                        R15 ; [+24]
      272 GETUPVAL                         R15 5
      273 GETTABLEKS                       R15 R15 K9 ["createElement"]
      275 GETUPVAL                         R16 8
      276 DUPTABLE                         R17 K72 [{["Title"], ["ToolTip"], ["SortOrder"] = 3, ["Setting"], ["Property"] = "Show Animation Skeleton Attachments"}]
      277 LOADK                            R20 K34 ["StudioModes"]
      278 LOADK                            R21 K58 ["ShowAnimationSkeletonAttachments"]
      279 NAMECALL                         R18 R4 K25 ["getText"]
      281 CALL                             R18 3 1
      282 SETTABLEKS                       R18 R17 K22 ["Title"]
      284 LOADK                            R20 K34 ["StudioModes"]
      285 LOADK                            R21 K73 ["ShowAnimationSkeletonAttachmentsToolTip"]
      286 NAMECALL                         R18 R4 K25 ["getText"]
      288 CALL                             R18 3 1
      289 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      291 GETTABLEKS                       R18 R3 K5 ["Studio"]
      293 SETTABLEKS                       R18 R17 K38 ["Setting"]
      295 CALL                             R15 2 1
      296 SETTABLEKS                       R15 R14 K58 ["ShowAnimationSkeletonAttachments"]
      298 MOVE                             R15 R5
      299 JUMPIFNOT                        R15 ; [+24]
      300 GETUPVAL                         R15 5
      301 GETTABLEKS                       R15 R15 K9 ["createElement"]
      303 GETUPVAL                         R16 8
      304 DUPTABLE                         R17 K76 [{["Title"], ["ToolTip"], ["SortOrder"] = 4, ["Setting"], ["Property"] = "Show Animation Skeleton Text"}]
      305 LOADK                            R20 K34 ["StudioModes"]
      306 LOADK                            R21 K59 ["ShowAnimationSkeletonText"]
      307 NAMECALL                         R18 R4 K25 ["getText"]
      309 CALL                             R18 3 1
      310 SETTABLEKS                       R18 R17 K22 ["Title"]
      312 LOADK                            R20 K34 ["StudioModes"]
      313 LOADK                            R21 K77 ["ShowAnimationSkeletonTextToolTip"]
      314 NAMECALL                         R18 R4 K25 ["getText"]
      316 CALL                             R18 3 1
      317 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      319 GETTABLEKS                       R18 R3 K5 ["Studio"]
      321 SETTABLEKS                       R18 R17 K38 ["Setting"]
      323 CALL                             R15 2 1
      324 SETTABLEKS                       R15 R14 K59 ["ShowAnimationSkeletonText"]
      326 MOVE                             R15 R5
      327 JUMPIFNOT                        R15 ; [+24]
      328 GETUPVAL                         R15 5
      329 GETTABLEKS                       R15 R15 K9 ["createElement"]
      331 GETUPVAL                         R16 8
      332 DUPTABLE                         R17 K80 [{["Title"], ["ToolTip"], ["SortOrder"] = 5, ["Setting"], ["Property"] = "Show Animation Skeleton Rotations"}]
      333 LOADK                            R20 K34 ["StudioModes"]
      334 LOADK                            R21 K60 ["ShowAnimationSkeletonRotations"]
      335 NAMECALL                         R18 R4 K25 ["getText"]
      337 CALL                             R18 3 1
      338 SETTABLEKS                       R18 R17 K22 ["Title"]
      340 LOADK                            R20 K34 ["StudioModes"]
      341 LOADK                            R21 K81 ["ShowAnimationSkeletonRotationsToolTip"]
      342 NAMECALL                         R18 R4 K25 ["getText"]
      344 CALL                             R18 3 1
      345 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      347 GETTABLEKS                       R18 R3 K5 ["Studio"]
      349 SETTABLEKS                       R18 R17 K38 ["Setting"]
      351 CALL                             R15 2 1
      352 SETTABLEKS                       R15 R14 K60 ["ShowAnimationSkeletonRotations"]
      354 CALL                             R11 3 1
      355 SETTABLEKS                       R11 R10 K13 ["Animation"]
      357 MOVE                             R11 R2
      358 JUMPIFNOT                        R11 ; [+68]
      359 GETUPVAL                         R11 5
      360 GETTABLEKS                       R11 R11 K9 ["createElement"]
      362 LOADK                            R12 K21 ["VisualizationModeCategory"]
      363 DUPTABLE                         R13 K23 [{"Title"}]
      364 LOADK                            R16 K24 ["VisualizationModeCategories"]
      365 LOADK                            R17 K14 ["Audio"]
      366 NAMECALL                         R14 R4 K25 ["getText"]
      368 CALL                             R14 3 1
      369 SETTABLEKS                       R14 R13 K22 ["Title"]
      371 DUPTABLE                         R14 K84 [{"ShowSources", "ShowInactiveSources"}]
      372 GETUPVAL                         R15 5
      373 GETTABLEKS                       R15 R15 K9 ["createElement"]
      375 GETUPVAL                         R16 6
      376 DUPTABLE                         R17 K85 [{["Title"], ["ToolTip"], ["SortOrder"] = 1, ["FeatureId"] = "AudioViewportVisualizations", ["ActionId"] = "Toggle", ["Actions"]}]
      377 LOADK                            R20 K34 ["StudioModes"]
      378 LOADK                            R21 K86 ["ShowAudioSources"]
      379 NAMECALL                         R18 R4 K25 ["getText"]
      381 CALL                             R18 3 1
      382 SETTABLEKS                       R18 R17 K22 ["Title"]
      384 LOADK                            R20 K34 ["StudioModes"]
      385 LOADK                            R21 K87 ["ShowAudioSourcesToolTip"]
      386 NAMECALL                         R18 R4 K25 ["getText"]
      388 CALL                             R18 3 1
      389 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      391 GETTABLEKS                       R18 R0 K32 ["Actions"]
      393 SETTABLEKS                       R18 R17 K32 ["Actions"]
      395 CALL                             R15 2 1
      396 SETTABLEKS                       R15 R14 K82 ["ShowSources"]
      398 MOVE                             R15 R6
      399 JUMPIFNOT                        R15 ; [+24]
      400 GETUPVAL                         R15 5
      401 GETTABLEKS                       R15 R15 K9 ["createElement"]
      403 GETUPVAL                         R16 6
      404 DUPTABLE                         R17 K89 [{["Title"], ["ToolTip"], ["SortOrder"] = 2, ["FeatureId"] = "AudioViewportVisualizations", ["ActionId"] = "ToggleShowInactiveSources", ["Actions"]}]
      405 LOADK                            R20 K34 ["StudioModes"]
      406 LOADK                            R21 K90 ["ShowAudioInactiveSources"]
      407 NAMECALL                         R18 R4 K25 ["getText"]
      409 CALL                             R18 3 1
      410 SETTABLEKS                       R18 R17 K22 ["Title"]
      412 LOADK                            R20 K34 ["StudioModes"]
      413 LOADK                            R21 K91 ["ShowAudioInactiveSourcesToolTip"]
      414 NAMECALL                         R18 R4 K25 ["getText"]
      416 CALL                             R18 3 1
      417 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      419 GETTABLEKS                       R18 R0 K32 ["Actions"]
      421 SETTABLEKS                       R18 R17 K32 ["Actions"]
      423 CALL                             R15 2 1
      424 SETTABLEKS                       R15 R14 K83 ["ShowInactiveSources"]
      426 CALL                             R11 3 1
      427 SETTABLEKS                       R11 R10 K14 ["Audio"]
      429 GETUPVAL                         R11 5
      430 GETTABLEKS                       R11 R11 K9 ["createElement"]
      432 LOADK                            R12 K21 ["VisualizationModeCategory"]
      433 DUPTABLE                         R13 K23 [{"Title"}]
      434 LOADK                            R16 K24 ["VisualizationModeCategories"]
      435 LOADK                            R17 K15 ["Pathfinding"]
      436 NAMECALL                         R14 R4 K25 ["getText"]
      438 CALL                             R14 3 1
      439 SETTABLEKS                       R14 R13 K22 ["Title"]
      441 DUPTABLE                         R14 K95 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
      442 GETUPVAL                         R15 5
      443 GETTABLEKS                       R15 R15 K9 ["createElement"]
      445 GETUPVAL                         R16 8
      446 DUPTABLE                         R17 K97 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Mesh"}]
      447 LOADK                            R20 K34 ["StudioModes"]
      448 LOADK                            R21 K92 ["PathfindingMesh"]
      449 NAMECALL                         R18 R4 K25 ["getText"]
      451 CALL                             R18 3 1
      452 SETTABLEKS                       R18 R17 K22 ["Title"]
      454 LOADK                            R20 K34 ["StudioModes"]
      455 LOADK                            R21 K98 ["PathfindingMeshToolTip"]
      456 NAMECALL                         R18 R4 K25 ["getText"]
      458 CALL                             R18 3 1
      459 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      461 GETTABLEKS                       R18 R3 K5 ["Studio"]
      463 SETTABLEKS                       R18 R17 K38 ["Setting"]
      465 CALL                             R15 2 1
      466 SETTABLEKS                       R15 R14 K92 ["PathfindingMesh"]
      468 GETUPVAL                         R15 5
      469 GETTABLEKS                       R15 R15 K9 ["createElement"]
      471 GETUPVAL                         R16 8
      472 DUPTABLE                         R17 K100 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Labels"}]
      473 LOADK                            R20 K34 ["StudioModes"]
      474 LOADK                            R21 K93 ["PathfindingModifiers"]
      475 NAMECALL                         R18 R4 K25 ["getText"]
      477 CALL                             R18 3 1
      478 SETTABLEKS                       R18 R17 K22 ["Title"]
      480 LOADK                            R20 K34 ["StudioModes"]
      481 LOADK                            R21 K101 ["PathfindingModifiersToolTip"]
      482 NAMECALL                         R18 R4 K25 ["getText"]
      484 CALL                             R18 3 1
      485 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      487 GETTABLEKS                       R18 R3 K5 ["Studio"]
      489 SETTABLEKS                       R18 R17 K38 ["Setting"]
      491 CALL                             R15 2 1
      492 SETTABLEKS                       R15 R14 K93 ["PathfindingModifiers"]
      494 GETUPVAL                         R15 5
      495 GETTABLEKS                       R15 R15 K9 ["createElement"]
      497 GETUPVAL                         R16 8
      498 DUPTABLE                         R17 K103 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Pathfinding Links"}]
      499 LOADK                            R20 K34 ["StudioModes"]
      500 LOADK                            R21 K94 ["PathfindingLinks"]
      501 NAMECALL                         R18 R4 K25 ["getText"]
      503 CALL                             R18 3 1
      504 SETTABLEKS                       R18 R17 K22 ["Title"]
      506 LOADK                            R20 K34 ["StudioModes"]
      507 LOADK                            R21 K104 ["PathfindingLinksToolTip"]
      508 NAMECALL                         R18 R4 K25 ["getText"]
      510 CALL                             R18 3 1
      511 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      513 GETTABLEKS                       R18 R3 K5 ["Studio"]
      515 SETTABLEKS                       R18 R17 K38 ["Setting"]
      517 CALL                             R15 2 1
      518 SETTABLEKS                       R15 R14 K94 ["PathfindingLinks"]
      520 CALL                             R11 3 1
      521 SETTABLEKS                       R11 R10 K15 ["Pathfinding"]
      523 GETUPVAL                         R11 5
      524 GETTABLEKS                       R11 R11 K9 ["createElement"]
      526 LOADK                            R12 K21 ["VisualizationModeCategory"]
      527 DUPTABLE                         R13 K23 [{"Title"}]
      528 LOADK                            R16 K24 ["VisualizationModeCategories"]
      529 LOADK                            R17 K16 ["PhysicsConstraints"]
      530 NAMECALL                         R14 R4 K25 ["getText"]
      532 CALL                             R14 3 1
      533 SETTABLEKS                       R14 R13 K22 ["Title"]
      535 DUPTABLE                         R14 K107 [{"Constraints", "Welds"}]
      536 GETUPVAL                         R15 5
      537 GETTABLEKS                       R15 R15 K9 ["createElement"]
      539 GETUPVAL                         R16 6
      540 DUPTABLE                         R17 K109 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowDetails", ["Actions"]}]
      541 LOADK                            R20 K34 ["StudioModes"]
      542 LOADK                            R21 K105 ["Constraints"]
      543 NAMECALL                         R18 R4 K25 ["getText"]
      545 CALL                             R18 3 1
      546 SETTABLEKS                       R18 R17 K22 ["Title"]
      548 LOADK                            R20 K34 ["StudioModes"]
      549 LOADK                            R21 K110 ["ConstraintsToolTip"]
      550 NAMECALL                         R18 R4 K25 ["getText"]
      552 CALL                             R18 3 1
      553 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      555 GETTABLEKS                       R18 R0 K32 ["Actions"]
      557 SETTABLEKS                       R18 R17 K32 ["Actions"]
      559 CALL                             R15 2 1
      560 SETTABLEKS                       R15 R14 K105 ["Constraints"]
      562 GETUPVAL                         R15 5
      563 GETTABLEKS                       R15 R15 K9 ["createElement"]
      565 GETUPVAL                         R16 6
      566 DUPTABLE                         R17 K112 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowWelds", ["Actions"]}]
      567 LOADK                            R20 K34 ["StudioModes"]
      568 LOADK                            R21 K106 ["Welds"]
      569 NAMECALL                         R18 R4 K25 ["getText"]
      571 CALL                             R18 3 1
      572 SETTABLEKS                       R18 R17 K22 ["Title"]
      574 LOADK                            R20 K34 ["StudioModes"]
      575 LOADK                            R21 K113 ["WeldsToolTip"]
      576 NAMECALL                         R18 R4 K25 ["getText"]
      578 CALL                             R18 3 1
      579 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      581 GETTABLEKS                       R18 R0 K32 ["Actions"]
      583 SETTABLEKS                       R18 R17 K32 ["Actions"]
      585 CALL                             R15 2 1
      586 SETTABLEKS                       R15 R14 K106 ["Welds"]
      588 CALL                             R11 3 1
      589 SETTABLEKS                       R11 R10 K16 ["PhysicsConstraints"]
      591 GETUPVAL                         R11 5
      592 GETTABLEKS                       R11 R11 K9 ["createElement"]
      594 LOADK                            R12 K21 ["VisualizationModeCategory"]
      595 DUPTABLE                         R13 K23 [{"Title"}]
      596 LOADK                            R16 K24 ["VisualizationModeCategories"]
      597 LOADK                            R17 K17 ["PhysicsLabels"]
      598 NAMECALL                         R14 R4 K25 ["getText"]
      600 CALL                             R14 3 1
      601 SETTABLEKS                       R14 R13 K22 ["Title"]
      603 DUPTABLE                         R14 K119 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
      604 GETUPVAL                         R15 5
      605 GETTABLEKS                       R15 R15 K9 ["createElement"]
      607 GETUPVAL                         R16 8
      608 DUPTABLE                         R17 K121 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAnchorsShown"}]
      609 LOADK                            R20 K34 ["StudioModes"]
      610 LOADK                            R21 K114 ["AnchoredParts"]
      611 NAMECALL                         R18 R4 K25 ["getText"]
      613 CALL                             R18 3 1
      614 SETTABLEKS                       R18 R17 K22 ["Title"]
      616 LOADK                            R20 K34 ["StudioModes"]
      617 LOADK                            R21 K122 ["AnchoredPartsToolTip"]
      618 NAMECALL                         R18 R4 K25 ["getText"]
      620 CALL                             R18 3 1
      621 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      623 GETTABLEKS                       R18 R3 K123 ["Physics"]
      625 SETTABLEKS                       R18 R17 K38 ["Setting"]
      627 CALL                             R15 2 1
      628 SETTABLEKS                       R15 R14 K114 ["AnchoredParts"]
      630 GETUPVAL                         R15 5
      631 GETTABLEKS                       R15 R15 K9 ["createElement"]
      633 GETUPVAL                         R16 8
      634 DUPTABLE                         R17 K125 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAwakePartsHighlighted"}]
      635 LOADK                            R20 K34 ["StudioModes"]
      636 LOADK                            R21 K115 ["AwakeParts"]
      637 NAMECALL                         R18 R4 K25 ["getText"]
      639 CALL                             R18 3 1
      640 SETTABLEKS                       R18 R17 K22 ["Title"]
      642 LOADK                            R20 K34 ["StudioModes"]
      643 LOADK                            R21 K126 ["AwakePartsToolTip"]
      644 NAMECALL                         R18 R4 K25 ["getText"]
      646 CALL                             R18 3 1
      647 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      649 GETTABLEKS                       R18 R3 K123 ["Physics"]
      651 SETTABLEKS                       R18 R17 K38 ["Setting"]
      653 CALL                             R15 2 1
      654 SETTABLEKS                       R15 R14 K115 ["AwakeParts"]
      656 GETUPVAL                         R15 5
      657 GETTABLEKS                       R15 R15 K9 ["createElement"]
      659 GETUPVAL                         R16 8
      660 DUPTABLE                         R17 K128 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAssembliesShown"}]
      661 LOADK                            R20 K34 ["StudioModes"]
      662 LOADK                            R21 K129 ["ShowAssemblies"]
      663 NAMECALL                         R18 R4 K25 ["getText"]
      665 CALL                             R18 3 1
      666 SETTABLEKS                       R18 R17 K22 ["Title"]
      668 LOADK                            R20 K34 ["StudioModes"]
      669 LOADK                            R21 K130 ["ShowAssembliesToolTip"]
      670 NAMECALL                         R18 R4 K25 ["getText"]
      672 CALL                             R18 3 1
      673 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      675 GETTABLEKS                       R18 R3 K123 ["Physics"]
      677 SETTABLEKS                       R18 R17 K38 ["Setting"]
      679 CALL                             R15 2 1
      680 SETTABLEKS                       R15 R14 K116 ["Assemblies"]
      682 GETUPVAL                         R15 5
      683 GETTABLEKS                       R15 R15 K9 ["createElement"]
      685 GETUPVAL                         R16 8
      686 DUPTABLE                         R17 K132 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreMechanismsShown"}]
      687 LOADK                            R20 K34 ["StudioModes"]
      688 LOADK                            R21 K117 ["Mechanisms"]
      689 NAMECALL                         R18 R4 K25 ["getText"]
      691 CALL                             R18 3 1
      692 SETTABLEKS                       R18 R17 K22 ["Title"]
      694 LOADK                            R20 K34 ["StudioModes"]
      695 LOADK                            R21 K133 ["MechanismsToolTip"]
      696 NAMECALL                         R18 R4 K25 ["getText"]
      698 CALL                             R18 3 1
      699 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      701 GETTABLEKS                       R18 R3 K123 ["Physics"]
      703 SETTABLEKS                       R18 R17 K38 ["Setting"]
      705 CALL                             R15 2 1
      706 SETTABLEKS                       R15 R14 K117 ["Mechanisms"]
      708 GETUPVAL                         R15 5
      709 GETTABLEKS                       R15 R15 K9 ["createElement"]
      711 GETUPVAL                         R16 8
      712 DUPTABLE                         R17 K135 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreOwnersShown"}]
      713 LOADK                            R20 K34 ["StudioModes"]
      714 LOADK                            R21 K118 ["NetworkOwner"]
      715 NAMECALL                         R18 R4 K25 ["getText"]
      717 CALL                             R18 3 1
      718 SETTABLEKS                       R18 R17 K22 ["Title"]
      720 LOADK                            R20 K34 ["StudioModes"]
      721 LOADK                            R21 K136 ["NetworkOwnerToolTip"]
      722 NAMECALL                         R18 R4 K25 ["getText"]
      724 CALL                             R18 3 1
      725 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      727 GETTABLEKS                       R18 R3 K123 ["Physics"]
      729 SETTABLEKS                       R18 R17 K38 ["Setting"]
      731 CALL                             R15 2 1
      732 SETTABLEKS                       R15 R14 K118 ["NetworkOwner"]
      734 CALL                             R11 3 1
      735 SETTABLEKS                       R11 R10 K17 ["PhysicsLabels"]
      737 GETUPVAL                         R11 5
      738 GETTABLEKS                       R11 R11 K9 ["createElement"]
      740 LOADK                            R12 K21 ["VisualizationModeCategory"]
      741 DUPTABLE                         R13 K23 [{"Title"}]
      742 LOADK                            R16 K24 ["VisualizationModeCategories"]
      743 LOADK                            R17 K18 ["PhysicsSimulation"]
      744 NAMECALL                         R14 R4 K25 ["getText"]
      746 CALL                             R14 3 1
      747 SETTABLEKS                       R14 R13 K22 ["Title"]
      749 DUPTABLE                         R14 K141 [{"CollisionFidelity", "ContactPoints", "Shapecasts", "WindDirection"}]
      750 GETUPVAL                         R16 10
      751 CALL                             R16 0 1
      752 JUMPIF                           R16 ; [+25]
      753 GETUPVAL                         R15 5
      754 GETTABLEKS                       R15 R15 K9 ["createElement"]
      756 GETUPVAL                         R16 8
      757 DUPTABLE                         R17 K143 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDecompositionGeometry"}]
      758 LOADK                            R20 K34 ["StudioModes"]
      759 LOADK                            R21 K137 ["CollisionFidelity"]
      760 NAMECALL                         R18 R4 K25 ["getText"]
      762 CALL                             R18 3 1
      763 SETTABLEKS                       R18 R17 K22 ["Title"]
      765 LOADK                            R20 K34 ["StudioModes"]
      766 LOADK                            R21 K144 ["CollisionFidelityToolTip"]
      767 NAMECALL                         R18 R4 K25 ["getText"]
      769 CALL                             R18 3 1
      770 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      772 GETTABLEKS                       R18 R3 K123 ["Physics"]
      774 SETTABLEKS                       R18 R17 K38 ["Setting"]
      776 CALL                             R15 2 1
      777 JUMP                             ; [+1]
      778 LOADNIL                          R15
      779 SETTABLEKS                       R15 R14 K137 ["CollisionFidelity"]
      781 GETUPVAL                         R15 5
      782 GETTABLEKS                       R15 R15 K9 ["createElement"]
      784 GETUPVAL                         R16 8
      785 DUPTABLE                         R17 K146 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreContactPointsShown"}]
      786 LOADK                            R20 K34 ["StudioModes"]
      787 LOADK                            R21 K138 ["ContactPoints"]
      788 NAMECALL                         R18 R4 K25 ["getText"]
      790 CALL                             R18 3 1
      791 SETTABLEKS                       R18 R17 K22 ["Title"]
      793 LOADK                            R20 K34 ["StudioModes"]
      794 LOADK                            R21 K147 ["ContactPointsToolTip"]
      795 NAMECALL                         R18 R4 K25 ["getText"]
      797 CALL                             R18 3 1
      798 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      800 GETTABLEKS                       R18 R3 K123 ["Physics"]
      802 SETTABLEKS                       R18 R17 K38 ["Setting"]
      804 CALL                             R15 2 1
      805 SETTABLEKS                       R15 R14 K138 ["ContactPoints"]
      807 GETUPVAL                         R15 11
      808 CALL                             R15 0 1
      809 JUMPIFNOT                        R15 ; [+24]
      810 GETUPVAL                         R15 5
      811 GETTABLEKS                       R15 R15 K9 ["createElement"]
      813 GETUPVAL                         R16 8
      814 DUPTABLE                         R17 K149 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "DrawShapecast"}]
      815 LOADK                            R20 K34 ["StudioModes"]
      816 LOADK                            R21 K139 ["Shapecasts"]
      817 NAMECALL                         R18 R4 K25 ["getText"]
      819 CALL                             R18 3 1
      820 SETTABLEKS                       R18 R17 K22 ["Title"]
      822 LOADK                            R20 K34 ["StudioModes"]
      823 LOADK                            R21 K150 ["ShapecastsToolTip"]
      824 NAMECALL                         R18 R4 K25 ["getText"]
      826 CALL                             R18 3 1
      827 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      829 GETTABLEKS                       R18 R3 K123 ["Physics"]
      831 SETTABLEKS                       R18 R17 K38 ["Setting"]
      833 CALL                             R15 2 1
      834 SETTABLEKS                       R15 R14 K139 ["Shapecasts"]
      836 GETUPVAL                         R15 5
      837 GETTABLEKS                       R15 R15 K9 ["createElement"]
      839 GETUPVAL                         R16 6
      840 DUPTABLE                         R17 K152 [{["Title"], ["ToolTip"], ["FeatureId"] = "WindControl", ["ActionId"] = "Toggle", ["Actions"]}]
      841 LOADK                            R20 K34 ["StudioModes"]
      842 LOADK                            R21 K140 ["WindDirection"]
      843 NAMECALL                         R18 R4 K25 ["getText"]
      845 CALL                             R18 3 1
      846 SETTABLEKS                       R18 R17 K22 ["Title"]
      848 LOADK                            R20 K34 ["StudioModes"]
      849 LOADK                            R21 K153 ["WindDirectionToolTip"]
      850 NAMECALL                         R18 R4 K25 ["getText"]
      852 CALL                             R18 3 1
      853 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      855 GETTABLEKS                       R18 R0 K32 ["Actions"]
      857 SETTABLEKS                       R18 R17 K32 ["Actions"]
      859 CALL                             R15 2 1
      860 SETTABLEKS                       R15 R14 K140 ["WindDirection"]
      862 CALL                             R11 3 1
      863 SETTABLEKS                       R11 R10 K18 ["PhysicsSimulation"]
      865 GETUPVAL                         R11 5
      866 GETTABLEKS                       R11 R11 K9 ["createElement"]
      868 LOADK                            R12 K21 ["VisualizationModeCategory"]
      869 DUPTABLE                         R13 K23 [{"Title"}]
      870 LOADK                            R16 K24 ["VisualizationModeCategories"]
      871 LOADK                            R17 K19 ["View"]
      872 NAMECALL                         R14 R4 K25 ["getText"]
      874 CALL                             R14 3 1
      875 SETTABLEKS                       R14 R13 K22 ["Title"]
      877 DUPTABLE                         R14 K158 [{"ViewSelector", "Grid", "GridMaterial", "CollaboratorHighlights"}]
      878 GETUPVAL                         R15 5
      879 GETTABLEKS                       R15 R15 K9 ["createElement"]
      881 GETUPVAL                         R16 6
      882 DUPTABLE                         R17 K159 [{["Title"], ["ToolTip"], ["FeatureId"] = "ViewSelector", ["ActionId"] = "Toggle", ["Actions"]}]
      883 LOADK                            R20 K34 ["StudioModes"]
      884 LOADK                            R21 K154 ["ViewSelector"]
      885 NAMECALL                         R18 R4 K25 ["getText"]
      887 CALL                             R18 3 1
      888 SETTABLEKS                       R18 R17 K22 ["Title"]
      890 LOADK                            R20 K34 ["StudioModes"]
      891 LOADK                            R21 K160 ["ViewSelectorToolTip"]
      892 NAMECALL                         R18 R4 K25 ["getText"]
      894 CALL                             R18 3 1
      895 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      897 GETTABLEKS                       R18 R0 K32 ["Actions"]
      899 SETTABLEKS                       R18 R17 K32 ["Actions"]
      901 CALL                             R15 2 1
      902 SETTABLEKS                       R15 R14 K154 ["ViewSelector"]
      904 GETUPVAL                         R15 5
      905 GETTABLEKS                       R15 R15 K9 ["createElement"]
      907 GETUPVAL                         R16 6
      908 DUPTABLE                         R17 K162 [{["Title"], ["ToolTip"], ["FeatureId"] = "3DGrid", ["ActionId"] = "Toggle", ["Actions"]}]
      909 LOADK                            R20 K34 ["StudioModes"]
      910 LOADK                            R21 K155 ["Grid"]
      911 NAMECALL                         R18 R4 K25 ["getText"]
      913 CALL                             R18 3 1
      914 SETTABLEKS                       R18 R17 K22 ["Title"]
      916 LOADK                            R20 K34 ["StudioModes"]
      917 LOADK                            R21 K163 ["GridToolTip"]
      918 NAMECALL                         R18 R4 K25 ["getText"]
      920 CALL                             R18 3 1
      921 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      923 GETTABLEKS                       R18 R0 K32 ["Actions"]
      925 SETTABLEKS                       R18 R17 K32 ["Actions"]
      927 CALL                             R15 2 1
      928 SETTABLEKS                       R15 R14 K155 ["Grid"]
      930 GETUPVAL                         R15 5
      931 GETTABLEKS                       R15 R15 K9 ["createElement"]
      933 GETUPVAL                         R16 6
      934 DUPTABLE                         R17 K164 [{["Title"], ["ToolTip"], ["FeatureId"] = "GridMaterial", ["ActionId"] = "Toggle", ["Actions"]}]
      935 LOADK                            R20 K34 ["StudioModes"]
      936 LOADK                            R21 K156 ["GridMaterial"]
      937 NAMECALL                         R18 R4 K25 ["getText"]
      939 CALL                             R18 3 1
      940 SETTABLEKS                       R18 R17 K22 ["Title"]
      942 LOADK                            R20 K34 ["StudioModes"]
      943 LOADK                            R21 K165 ["GridMaterialToolTip"]
      944 NAMECALL                         R18 R4 K25 ["getText"]
      946 CALL                             R18 3 1
      947 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      949 GETTABLEKS                       R18 R0 K32 ["Actions"]
      951 SETTABLEKS                       R18 R17 K32 ["Actions"]
      953 CALL                             R15 2 1
      954 SETTABLEKS                       R15 R14 K156 ["GridMaterial"]
      956 GETUPVAL                         R15 5
      957 GETTABLEKS                       R15 R15 K9 ["createElement"]
      959 GETUPVAL                         R16 12
      960 DUPTABLE                         R17 K167 [{"Title", "ToolTip", "UseState"}]
      961 LOADK                            R20 K34 ["StudioModes"]
      962 LOADK                            R21 K157 ["CollaboratorHighlights"]
      963 NAMECALL                         R18 R4 K25 ["getText"]
      965 CALL                             R18 3 1
      966 SETTABLEKS                       R18 R17 K22 ["Title"]
      968 LOADK                            R20 K34 ["StudioModes"]
      969 LOADK                            R21 K168 ["CollaboratorHighlightsToolTip"]
      970 NAMECALL                         R18 R4 K25 ["getText"]
      972 CALL                             R18 3 1
      973 SETTABLEKS                       R18 R17 K29 ["ToolTip"]
      975 GETUPVAL                         R18 13
      976 SETTABLEKS                       R18 R17 K166 ["UseState"]
      978 CALL                             R15 2 1
      979 SETTABLEKS                       R15 R14 K157 ["CollaboratorHighlights"]
      981 CALL                             R11 3 1
      982 SETTABLEKS                       R11 R10 K19 ["View"]
      984 CALL                             R7 3 -1
      985 RETURN                           R7 -1

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
       81 GETTABLEKS                       R10 R10 K19 ["getEngineFeatureStudioVisualizationModesAmbientOcclusion"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K9 ["Src"]
       88 GETTABLEKS                       R11 R11 K18 ["Flags"]
       90 GETTABLEKS                       R11 R11 K20 ["getFFlagStudioVisualizationModesTestSupport"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K9 ["Src"]
       97 GETTABLEKS                       R12 R12 K18 ["Flags"]
       99 GETTABLEKS                       R12 R12 K21 ["getFFlagStudioVisualizationModesShowAudio"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K9 ["Src"]
      106 GETTABLEKS                       R13 R13 K18 ["Flags"]
      108 GETTABLEKS                       R13 R13 K22 ["getFFlagUseAdornBasedCDDebugVis"]
      110 CALL                             R12 1 1
      111 GETIMPORT                        R13 K5 [require]
      113 GETTABLEKS                       R14 R0 K9 ["Src"]
      115 GETTABLEKS                       R14 R14 K18 ["Flags"]
      117 GETTABLEKS                       R14 R14 K23 ["getFFlagUseNewShapecasts"]
      119 CALL                             R13 1 1
      120 GETIMPORT                        R14 K5 [require]
      122 GETTABLEKS                       R15 R0 K9 ["Src"]
      124 GETTABLEKS                       R15 R15 K18 ["Flags"]
      126 GETTABLEKS                       R15 R15 K24 ["getRenameEmulatorToSimulatorEngineFeature"]
      128 CALL                             R14 1 1
      129 GETTABLEKS                       R15 R1 K25 ["ContextServices"]
      131 DUPCLOSURE                       R16 K26 [PROTO_0]
      132 CAPTURE                          VAL R10
      133 CAPTURE                          VAL R11
      134 CAPTURE                          VAL R15
      135 CAPTURE                          VAL R6
      136 CAPTURE                          VAL R7
      137 CAPTURE                          VAL R2
      138 CAPTURE                          VAL R4
      139 CAPTURE                          VAL R14
      140 CAPTURE                          VAL R3
      141 CAPTURE                          VAL R9
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R5
      146 RETURN                           R16 1
