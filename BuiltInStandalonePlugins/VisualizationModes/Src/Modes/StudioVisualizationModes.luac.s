PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 JUMPIFNOT                        R2 ; [+6]
        7 GETTABLEKS                       R5 R0 K0 ["SettingsInstance"]
        9 JUMPIFNOT                        R5 ; [+3]
       10 GETTABLEKS                       R4 R0 K0 ["SettingsInstance"]
       12 JUMP                             ; [+3]
       13 GETIMPORT                        R4 K2 [settings]
       15 CALL                             R4 0 1
       16 GETUPVAL                         R5 3
       17 GETTABLEKS                       R5 R5 K3 ["Localization"]
       19 NAMECALL                         R5 R5 K4 ["use"]
       21 CALL                             R5 1 1
       22 GETUPVAL                         R6 4
       23 GETTABLEKS                       R7 R4 K5 ["Studio"]
       25 LOADK                            R8 K6 ["Show Animation Skeleton"]
       26 LOADB                            R9 0
       27 CALL                             R6 3 1
       28 MOVE                             R7 R3
       29 JUMPIFNOT                        R7 ; [+5]
       30 GETUPVAL                         R7 5
       31 LOADK                            R8 K7 ["AudioViewportVisualizations"]
       32 LOADK                            R9 K8 ["Toggle"]
       33 LOADB                            R10 0
       34 CALL                             R7 3 1
       35 GETUPVAL                         R8 6
       36 GETTABLEKS                       R8 R8 K9 ["createElement"]
       38 GETUPVAL                         R9 6
       39 GETTABLEKS                       R9 R9 K10 ["Fragment"]
       41 NEWTABLE                         R10 0 0
       43 DUPTABLE                         R11 K20 [{"GUI", "Lighting", "Animation", "Audio", "Pathfinding", "PhysicsConstraints", "PhysicsLabels", "PhysicsSimulation", "View"}]
       44 GETUPVAL                         R12 6
       45 GETTABLEKS                       R12 R12 K9 ["createElement"]
       47 LOADK                            R13 K21 ["VisualizationModeCategory"]
       48 DUPTABLE                         R14 K23 [{"Title"}]
       49 LOADK                            R17 K24 ["VisualizationModeCategories"]
       50 LOADK                            R18 K11 ["GUI"]
       51 NAMECALL                         R15 R5 K25 ["getText"]
       53 CALL                             R15 3 1
       54 SETTABLEKS                       R15 R14 K22 ["Title"]
       56 DUPTABLE                         R15 K28 [{"DeviceEmulation", "GUIOverlay"}]
       57 GETUPVAL                         R16 6
       58 GETTABLEKS                       R16 R16 K9 ["createElement"]
       60 GETUPVAL                         R17 7
       61 DUPTABLE                         R18 K33 [{["Title"], ["ToolTip"], ["FeatureId"] = "DeviceEmulation", ["ActionId"] = "Toggle", ["Actions"]}]
       62 GETUPVAL                         R20 8
       63 CALL                             R20 0 1
       64 JUMPIFNOT                        R20 ; [+6]
       65 LOADK                            R21 K34 ["StudioModes"]
       66 LOADK                            R22 K35 ["DeviceSimulation"]
       67 NAMECALL                         R19 R5 K25 ["getText"]
       69 CALL                             R19 3 1
       70 JUMP                             ; [+5]
       71 LOADK                            R21 K34 ["StudioModes"]
       72 LOADK                            R22 K26 ["DeviceEmulation"]
       73 NAMECALL                         R19 R5 K25 ["getText"]
       75 CALL                             R19 3 1
       76 SETTABLEKS                       R19 R18 K22 ["Title"]
       78 GETUPVAL                         R20 8
       79 CALL                             R20 0 1
       80 JUMPIFNOT                        R20 ; [+6]
       81 LOADK                            R21 K34 ["StudioModes"]
       82 LOADK                            R22 K36 ["DeviceSimulationTooltip"]
       83 NAMECALL                         R19 R5 K25 ["getText"]
       85 CALL                             R19 3 1
       86 JUMP                             ; [+5]
       87 LOADK                            R21 K34 ["StudioModes"]
       88 LOADK                            R22 K37 ["DeviceEmulationToolTip"]
       89 NAMECALL                         R19 R5 K25 ["getText"]
       91 CALL                             R19 3 1
       92 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
       94 GETTABLEKS                       R19 R0 K32 ["Actions"]
       96 SETTABLEKS                       R19 R18 K32 ["Actions"]
       98 CALL                             R16 2 1
       99 SETTABLEKS                       R16 R15 K26 ["DeviceEmulation"]
      101 GETUPVAL                         R16 6
      102 GETTABLEKS                       R16 R16 K9 ["createElement"]
      104 GETUPVAL                         R17 9
      105 DUPTABLE                         R18 K41 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDevelopmentGui"}]
      106 LOADK                            R21 K34 ["StudioModes"]
      107 LOADK                            R22 K27 ["GUIOverlay"]
      108 NAMECALL                         R19 R5 K25 ["getText"]
      110 CALL                             R19 3 1
      111 SETTABLEKS                       R19 R18 K22 ["Title"]
      113 LOADK                            R21 K34 ["StudioModes"]
      114 LOADK                            R22 K42 ["GUIOverlayToolTip"]
      115 NAMECALL                         R19 R5 K25 ["getText"]
      117 CALL                             R19 3 1
      118 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      120 JUMPIFNOT                        R1 ; [+7]
      121 GETIMPORT                        R19 K44 [game]
      123 LOADK                            R21 K45 ["StarterGui"]
      124 NAMECALL                         R19 R19 K46 ["GetService"]
      126 CALL                             R19 2 1
      127 JUMP                             ; [+4]
      128 GETIMPORT                        R19 K44 [game]
      130 GETTABLEKS                       R19 R19 K45 ["StarterGui"]
      132 SETTABLEKS                       R19 R18 K38 ["Setting"]
      134 CALL                             R16 2 1
      135 SETTABLEKS                       R16 R15 K27 ["GUIOverlay"]
      137 CALL                             R12 3 1
      138 SETTABLEKS                       R12 R11 K11 ["GUI"]
      140 GETUPVAL                         R12 6
      141 GETTABLEKS                       R12 R12 K9 ["createElement"]
      143 LOADK                            R13 K21 ["VisualizationModeCategory"]
      144 DUPTABLE                         R14 K23 [{"Title"}]
      145 LOADK                            R17 K24 ["VisualizationModeCategories"]
      146 LOADK                            R18 K12 ["Lighting"]
      147 NAMECALL                         R15 R5 K25 ["getText"]
      149 CALL                             R15 3 1
      150 SETTABLEKS                       R15 R14 K22 ["Title"]
      152 DUPTABLE                         R15 K48 [{"Lights"}]
      153 GETUPVAL                         R16 6
      154 GETTABLEKS                       R16 R16 K9 ["createElement"]
      156 GETUPVAL                         R17 9
      157 DUPTABLE                         R18 K50 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Light Guides"}]
      158 LOADK                            R21 K34 ["StudioModes"]
      159 LOADK                            R22 K47 ["Lights"]
      160 NAMECALL                         R19 R5 K25 ["getText"]
      162 CALL                             R19 3 1
      163 SETTABLEKS                       R19 R18 K22 ["Title"]
      165 LOADK                            R21 K34 ["StudioModes"]
      166 LOADK                            R22 K51 ["LightsToolTip"]
      167 NAMECALL                         R19 R5 K25 ["getText"]
      169 CALL                             R19 3 1
      170 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      172 GETTABLEKS                       R19 R4 K5 ["Studio"]
      174 SETTABLEKS                       R19 R18 K38 ["Setting"]
      176 CALL                             R16 2 1
      177 SETTABLEKS                       R16 R15 K47 ["Lights"]
      179 CALL                             R12 3 1
      180 SETTABLEKS                       R12 R11 K12 ["Lighting"]
      182 GETUPVAL                         R12 6
      183 GETTABLEKS                       R12 R12 K9 ["createElement"]
      185 LOADK                            R13 K21 ["VisualizationModeCategory"]
      186 DUPTABLE                         R14 K23 [{"Title"}]
      187 LOADK                            R17 K24 ["VisualizationModeCategories"]
      188 LOADK                            R18 K13 ["Animation"]
      189 NAMECALL                         R15 R5 K25 ["getText"]
      191 CALL                             R15 3 1
      192 SETTABLEKS                       R15 R14 K22 ["Title"]
      194 DUPTABLE                         R15 K57 [{"ShowAnimationSkeleton", "ShowAnimationSkeletonAxes", "ShowAnimationSkeletonAttachments", "ShowAnimationSkeletonText", "ShowAnimationSkeletonRotations"}]
      195 GETUPVAL                         R16 6
      196 GETTABLEKS                       R16 R16 K9 ["createElement"]
      198 GETUPVAL                         R17 9
      199 DUPTABLE                         R18 K60 [{["Title"], ["ToolTip"], ["SortOrder"] = 1, ["Setting"], ["Property"] = "Show Animation Skeleton"}]
      200 LOADK                            R21 K34 ["StudioModes"]
      201 LOADK                            R22 K52 ["ShowAnimationSkeleton"]
      202 NAMECALL                         R19 R5 K25 ["getText"]
      204 CALL                             R19 3 1
      205 SETTABLEKS                       R19 R18 K22 ["Title"]
      207 LOADK                            R21 K34 ["StudioModes"]
      208 LOADK                            R22 K61 ["ShowAnimationSkeletonToolTip"]
      209 NAMECALL                         R19 R5 K25 ["getText"]
      211 CALL                             R19 3 1
      212 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      214 GETTABLEKS                       R19 R4 K5 ["Studio"]
      216 SETTABLEKS                       R19 R18 K38 ["Setting"]
      218 CALL                             R16 2 1
      219 SETTABLEKS                       R16 R15 K52 ["ShowAnimationSkeleton"]
      221 MOVE                             R16 R6
      222 JUMPIFNOT                        R16 ; [+24]
      223 GETUPVAL                         R16 6
      224 GETTABLEKS                       R16 R16 K9 ["createElement"]
      226 GETUPVAL                         R17 9
      227 DUPTABLE                         R18 K64 [{["Title"], ["ToolTip"], ["SortOrder"] = 2, ["Setting"], ["Property"] = "Show Animation Skeleton Axes"}]
      228 LOADK                            R21 K34 ["StudioModes"]
      229 LOADK                            R22 K53 ["ShowAnimationSkeletonAxes"]
      230 NAMECALL                         R19 R5 K25 ["getText"]
      232 CALL                             R19 3 1
      233 SETTABLEKS                       R19 R18 K22 ["Title"]
      235 LOADK                            R21 K34 ["StudioModes"]
      236 LOADK                            R22 K65 ["ShowAnimationSkeletonAxesToolTip"]
      237 NAMECALL                         R19 R5 K25 ["getText"]
      239 CALL                             R19 3 1
      240 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      242 GETTABLEKS                       R19 R4 K5 ["Studio"]
      244 SETTABLEKS                       R19 R18 K38 ["Setting"]
      246 CALL                             R16 2 1
      247 SETTABLEKS                       R16 R15 K53 ["ShowAnimationSkeletonAxes"]
      249 MOVE                             R16 R6
      250 JUMPIFNOT                        R16 ; [+24]
      251 GETUPVAL                         R16 6
      252 GETTABLEKS                       R16 R16 K9 ["createElement"]
      254 GETUPVAL                         R17 9
      255 DUPTABLE                         R18 K68 [{["Title"], ["ToolTip"], ["SortOrder"] = 3, ["Setting"], ["Property"] = "Show Animation Skeleton Attachments"}]
      256 LOADK                            R21 K34 ["StudioModes"]
      257 LOADK                            R22 K54 ["ShowAnimationSkeletonAttachments"]
      258 NAMECALL                         R19 R5 K25 ["getText"]
      260 CALL                             R19 3 1
      261 SETTABLEKS                       R19 R18 K22 ["Title"]
      263 LOADK                            R21 K34 ["StudioModes"]
      264 LOADK                            R22 K69 ["ShowAnimationSkeletonAttachmentsToolTip"]
      265 NAMECALL                         R19 R5 K25 ["getText"]
      267 CALL                             R19 3 1
      268 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      270 GETTABLEKS                       R19 R4 K5 ["Studio"]
      272 SETTABLEKS                       R19 R18 K38 ["Setting"]
      274 CALL                             R16 2 1
      275 SETTABLEKS                       R16 R15 K54 ["ShowAnimationSkeletonAttachments"]
      277 MOVE                             R16 R6
      278 JUMPIFNOT                        R16 ; [+24]
      279 GETUPVAL                         R16 6
      280 GETTABLEKS                       R16 R16 K9 ["createElement"]
      282 GETUPVAL                         R17 9
      283 DUPTABLE                         R18 K72 [{["Title"], ["ToolTip"], ["SortOrder"] = 4, ["Setting"], ["Property"] = "Show Animation Skeleton Text"}]
      284 LOADK                            R21 K34 ["StudioModes"]
      285 LOADK                            R22 K55 ["ShowAnimationSkeletonText"]
      286 NAMECALL                         R19 R5 K25 ["getText"]
      288 CALL                             R19 3 1
      289 SETTABLEKS                       R19 R18 K22 ["Title"]
      291 LOADK                            R21 K34 ["StudioModes"]
      292 LOADK                            R22 K73 ["ShowAnimationSkeletonTextToolTip"]
      293 NAMECALL                         R19 R5 K25 ["getText"]
      295 CALL                             R19 3 1
      296 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      298 GETTABLEKS                       R19 R4 K5 ["Studio"]
      300 SETTABLEKS                       R19 R18 K38 ["Setting"]
      302 CALL                             R16 2 1
      303 SETTABLEKS                       R16 R15 K55 ["ShowAnimationSkeletonText"]
      305 MOVE                             R16 R6
      306 JUMPIFNOT                        R16 ; [+24]
      307 GETUPVAL                         R16 6
      308 GETTABLEKS                       R16 R16 K9 ["createElement"]
      310 GETUPVAL                         R17 9
      311 DUPTABLE                         R18 K76 [{["Title"], ["ToolTip"], ["SortOrder"] = 5, ["Setting"], ["Property"] = "Show Animation Skeleton Rotations"}]
      312 LOADK                            R21 K34 ["StudioModes"]
      313 LOADK                            R22 K56 ["ShowAnimationSkeletonRotations"]
      314 NAMECALL                         R19 R5 K25 ["getText"]
      316 CALL                             R19 3 1
      317 SETTABLEKS                       R19 R18 K22 ["Title"]
      319 LOADK                            R21 K34 ["StudioModes"]
      320 LOADK                            R22 K77 ["ShowAnimationSkeletonRotationsToolTip"]
      321 NAMECALL                         R19 R5 K25 ["getText"]
      323 CALL                             R19 3 1
      324 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      326 GETTABLEKS                       R19 R4 K5 ["Studio"]
      328 SETTABLEKS                       R19 R18 K38 ["Setting"]
      330 CALL                             R16 2 1
      331 SETTABLEKS                       R16 R15 K56 ["ShowAnimationSkeletonRotations"]
      333 CALL                             R12 3 1
      334 SETTABLEKS                       R12 R11 K13 ["Animation"]
      336 MOVE                             R12 R3
      337 JUMPIFNOT                        R12 ; [+68]
      338 GETUPVAL                         R12 6
      339 GETTABLEKS                       R12 R12 K9 ["createElement"]
      341 LOADK                            R13 K21 ["VisualizationModeCategory"]
      342 DUPTABLE                         R14 K23 [{"Title"}]
      343 LOADK                            R17 K24 ["VisualizationModeCategories"]
      344 LOADK                            R18 K14 ["Audio"]
      345 NAMECALL                         R15 R5 K25 ["getText"]
      347 CALL                             R15 3 1
      348 SETTABLEKS                       R15 R14 K22 ["Title"]
      350 DUPTABLE                         R15 K80 [{"ShowSources", "ShowInactiveSources"}]
      351 GETUPVAL                         R16 6
      352 GETTABLEKS                       R16 R16 K9 ["createElement"]
      354 GETUPVAL                         R17 7
      355 DUPTABLE                         R18 K81 [{["Title"], ["ToolTip"], ["SortOrder"] = 1, ["FeatureId"] = "AudioViewportVisualizations", ["ActionId"] = "Toggle", ["Actions"]}]
      356 LOADK                            R21 K34 ["StudioModes"]
      357 LOADK                            R22 K82 ["ShowAudioSources"]
      358 NAMECALL                         R19 R5 K25 ["getText"]
      360 CALL                             R19 3 1
      361 SETTABLEKS                       R19 R18 K22 ["Title"]
      363 LOADK                            R21 K34 ["StudioModes"]
      364 LOADK                            R22 K83 ["ShowAudioSourcesToolTip"]
      365 NAMECALL                         R19 R5 K25 ["getText"]
      367 CALL                             R19 3 1
      368 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      370 GETTABLEKS                       R19 R0 K32 ["Actions"]
      372 SETTABLEKS                       R19 R18 K32 ["Actions"]
      374 CALL                             R16 2 1
      375 SETTABLEKS                       R16 R15 K78 ["ShowSources"]
      377 MOVE                             R16 R7
      378 JUMPIFNOT                        R16 ; [+24]
      379 GETUPVAL                         R16 6
      380 GETTABLEKS                       R16 R16 K9 ["createElement"]
      382 GETUPVAL                         R17 7
      383 DUPTABLE                         R18 K85 [{["Title"], ["ToolTip"], ["SortOrder"] = 2, ["FeatureId"] = "AudioViewportVisualizations", ["ActionId"] = "ToggleShowInactiveSources", ["Actions"]}]
      384 LOADK                            R21 K34 ["StudioModes"]
      385 LOADK                            R22 K86 ["ShowAudioInactiveSources"]
      386 NAMECALL                         R19 R5 K25 ["getText"]
      388 CALL                             R19 3 1
      389 SETTABLEKS                       R19 R18 K22 ["Title"]
      391 LOADK                            R21 K34 ["StudioModes"]
      392 LOADK                            R22 K87 ["ShowAudioInactiveSourcesToolTip"]
      393 NAMECALL                         R19 R5 K25 ["getText"]
      395 CALL                             R19 3 1
      396 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      398 GETTABLEKS                       R19 R0 K32 ["Actions"]
      400 SETTABLEKS                       R19 R18 K32 ["Actions"]
      402 CALL                             R16 2 1
      403 SETTABLEKS                       R16 R15 K79 ["ShowInactiveSources"]
      405 CALL                             R12 3 1
      406 SETTABLEKS                       R12 R11 K14 ["Audio"]
      408 GETUPVAL                         R12 6
      409 GETTABLEKS                       R12 R12 K9 ["createElement"]
      411 LOADK                            R13 K21 ["VisualizationModeCategory"]
      412 DUPTABLE                         R14 K23 [{"Title"}]
      413 LOADK                            R17 K24 ["VisualizationModeCategories"]
      414 LOADK                            R18 K15 ["Pathfinding"]
      415 NAMECALL                         R15 R5 K25 ["getText"]
      417 CALL                             R15 3 1
      418 SETTABLEKS                       R15 R14 K22 ["Title"]
      420 DUPTABLE                         R15 K91 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
      421 GETUPVAL                         R16 6
      422 GETTABLEKS                       R16 R16 K9 ["createElement"]
      424 GETUPVAL                         R17 9
      425 DUPTABLE                         R18 K93 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Mesh"}]
      426 LOADK                            R21 K34 ["StudioModes"]
      427 LOADK                            R22 K88 ["PathfindingMesh"]
      428 NAMECALL                         R19 R5 K25 ["getText"]
      430 CALL                             R19 3 1
      431 SETTABLEKS                       R19 R18 K22 ["Title"]
      433 LOADK                            R21 K34 ["StudioModes"]
      434 LOADK                            R22 K94 ["PathfindingMeshToolTip"]
      435 NAMECALL                         R19 R5 K25 ["getText"]
      437 CALL                             R19 3 1
      438 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      440 GETTABLEKS                       R19 R4 K5 ["Studio"]
      442 SETTABLEKS                       R19 R18 K38 ["Setting"]
      444 CALL                             R16 2 1
      445 SETTABLEKS                       R16 R15 K88 ["PathfindingMesh"]
      447 GETUPVAL                         R16 6
      448 GETTABLEKS                       R16 R16 K9 ["createElement"]
      450 GETUPVAL                         R17 9
      451 DUPTABLE                         R18 K96 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Labels"}]
      452 LOADK                            R21 K34 ["StudioModes"]
      453 LOADK                            R22 K89 ["PathfindingModifiers"]
      454 NAMECALL                         R19 R5 K25 ["getText"]
      456 CALL                             R19 3 1
      457 SETTABLEKS                       R19 R18 K22 ["Title"]
      459 LOADK                            R21 K34 ["StudioModes"]
      460 LOADK                            R22 K97 ["PathfindingModifiersToolTip"]
      461 NAMECALL                         R19 R5 K25 ["getText"]
      463 CALL                             R19 3 1
      464 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      466 GETTABLEKS                       R19 R4 K5 ["Studio"]
      468 SETTABLEKS                       R19 R18 K38 ["Setting"]
      470 CALL                             R16 2 1
      471 SETTABLEKS                       R16 R15 K89 ["PathfindingModifiers"]
      473 GETUPVAL                         R16 6
      474 GETTABLEKS                       R16 R16 K9 ["createElement"]
      476 GETUPVAL                         R17 9
      477 DUPTABLE                         R18 K99 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Pathfinding Links"}]
      478 LOADK                            R21 K34 ["StudioModes"]
      479 LOADK                            R22 K90 ["PathfindingLinks"]
      480 NAMECALL                         R19 R5 K25 ["getText"]
      482 CALL                             R19 3 1
      483 SETTABLEKS                       R19 R18 K22 ["Title"]
      485 LOADK                            R21 K34 ["StudioModes"]
      486 LOADK                            R22 K100 ["PathfindingLinksToolTip"]
      487 NAMECALL                         R19 R5 K25 ["getText"]
      489 CALL                             R19 3 1
      490 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      492 GETTABLEKS                       R19 R4 K5 ["Studio"]
      494 SETTABLEKS                       R19 R18 K38 ["Setting"]
      496 CALL                             R16 2 1
      497 SETTABLEKS                       R16 R15 K90 ["PathfindingLinks"]
      499 CALL                             R12 3 1
      500 SETTABLEKS                       R12 R11 K15 ["Pathfinding"]
      502 GETUPVAL                         R12 6
      503 GETTABLEKS                       R12 R12 K9 ["createElement"]
      505 LOADK                            R13 K21 ["VisualizationModeCategory"]
      506 DUPTABLE                         R14 K23 [{"Title"}]
      507 LOADK                            R17 K24 ["VisualizationModeCategories"]
      508 LOADK                            R18 K16 ["PhysicsConstraints"]
      509 NAMECALL                         R15 R5 K25 ["getText"]
      511 CALL                             R15 3 1
      512 SETTABLEKS                       R15 R14 K22 ["Title"]
      514 DUPTABLE                         R15 K103 [{"Constraints", "Welds"}]
      515 GETUPVAL                         R16 6
      516 GETTABLEKS                       R16 R16 K9 ["createElement"]
      518 GETUPVAL                         R17 7
      519 DUPTABLE                         R18 K105 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowDetails", ["Actions"]}]
      520 LOADK                            R21 K34 ["StudioModes"]
      521 LOADK                            R22 K101 ["Constraints"]
      522 NAMECALL                         R19 R5 K25 ["getText"]
      524 CALL                             R19 3 1
      525 SETTABLEKS                       R19 R18 K22 ["Title"]
      527 LOADK                            R21 K34 ["StudioModes"]
      528 LOADK                            R22 K106 ["ConstraintsToolTip"]
      529 NAMECALL                         R19 R5 K25 ["getText"]
      531 CALL                             R19 3 1
      532 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      534 GETTABLEKS                       R19 R0 K32 ["Actions"]
      536 SETTABLEKS                       R19 R18 K32 ["Actions"]
      538 CALL                             R16 2 1
      539 SETTABLEKS                       R16 R15 K101 ["Constraints"]
      541 GETUPVAL                         R16 6
      542 GETTABLEKS                       R16 R16 K9 ["createElement"]
      544 GETUPVAL                         R17 7
      545 DUPTABLE                         R18 K108 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowWelds", ["Actions"]}]
      546 LOADK                            R21 K34 ["StudioModes"]
      547 LOADK                            R22 K102 ["Welds"]
      548 NAMECALL                         R19 R5 K25 ["getText"]
      550 CALL                             R19 3 1
      551 SETTABLEKS                       R19 R18 K22 ["Title"]
      553 LOADK                            R21 K34 ["StudioModes"]
      554 LOADK                            R22 K109 ["WeldsToolTip"]
      555 NAMECALL                         R19 R5 K25 ["getText"]
      557 CALL                             R19 3 1
      558 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      560 GETTABLEKS                       R19 R0 K32 ["Actions"]
      562 SETTABLEKS                       R19 R18 K32 ["Actions"]
      564 CALL                             R16 2 1
      565 SETTABLEKS                       R16 R15 K102 ["Welds"]
      567 CALL                             R12 3 1
      568 SETTABLEKS                       R12 R11 K16 ["PhysicsConstraints"]
      570 GETUPVAL                         R12 6
      571 GETTABLEKS                       R12 R12 K9 ["createElement"]
      573 LOADK                            R13 K21 ["VisualizationModeCategory"]
      574 DUPTABLE                         R14 K23 [{"Title"}]
      575 LOADK                            R17 K24 ["VisualizationModeCategories"]
      576 LOADK                            R18 K17 ["PhysicsLabels"]
      577 NAMECALL                         R15 R5 K25 ["getText"]
      579 CALL                             R15 3 1
      580 SETTABLEKS                       R15 R14 K22 ["Title"]
      582 DUPTABLE                         R15 K115 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
      583 GETUPVAL                         R16 6
      584 GETTABLEKS                       R16 R16 K9 ["createElement"]
      586 GETUPVAL                         R17 9
      587 DUPTABLE                         R18 K117 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAnchorsShown"}]
      588 LOADK                            R21 K34 ["StudioModes"]
      589 LOADK                            R22 K110 ["AnchoredParts"]
      590 NAMECALL                         R19 R5 K25 ["getText"]
      592 CALL                             R19 3 1
      593 SETTABLEKS                       R19 R18 K22 ["Title"]
      595 LOADK                            R21 K34 ["StudioModes"]
      596 LOADK                            R22 K118 ["AnchoredPartsToolTip"]
      597 NAMECALL                         R19 R5 K25 ["getText"]
      599 CALL                             R19 3 1
      600 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      602 GETTABLEKS                       R19 R4 K119 ["Physics"]
      604 SETTABLEKS                       R19 R18 K38 ["Setting"]
      606 CALL                             R16 2 1
      607 SETTABLEKS                       R16 R15 K110 ["AnchoredParts"]
      609 GETUPVAL                         R16 6
      610 GETTABLEKS                       R16 R16 K9 ["createElement"]
      612 GETUPVAL                         R17 9
      613 DUPTABLE                         R18 K121 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAwakePartsHighlighted"}]
      614 LOADK                            R21 K34 ["StudioModes"]
      615 LOADK                            R22 K111 ["AwakeParts"]
      616 NAMECALL                         R19 R5 K25 ["getText"]
      618 CALL                             R19 3 1
      619 SETTABLEKS                       R19 R18 K22 ["Title"]
      621 LOADK                            R21 K34 ["StudioModes"]
      622 LOADK                            R22 K122 ["AwakePartsToolTip"]
      623 NAMECALL                         R19 R5 K25 ["getText"]
      625 CALL                             R19 3 1
      626 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      628 GETTABLEKS                       R19 R4 K119 ["Physics"]
      630 SETTABLEKS                       R19 R18 K38 ["Setting"]
      632 CALL                             R16 2 1
      633 SETTABLEKS                       R16 R15 K111 ["AwakeParts"]
      635 GETUPVAL                         R16 6
      636 GETTABLEKS                       R16 R16 K9 ["createElement"]
      638 GETUPVAL                         R17 9
      639 DUPTABLE                         R18 K124 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAssembliesShown"}]
      640 LOADK                            R21 K34 ["StudioModes"]
      641 LOADK                            R22 K125 ["ShowAssemblies"]
      642 NAMECALL                         R19 R5 K25 ["getText"]
      644 CALL                             R19 3 1
      645 SETTABLEKS                       R19 R18 K22 ["Title"]
      647 LOADK                            R21 K34 ["StudioModes"]
      648 LOADK                            R22 K126 ["ShowAssembliesToolTip"]
      649 NAMECALL                         R19 R5 K25 ["getText"]
      651 CALL                             R19 3 1
      652 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      654 GETTABLEKS                       R19 R4 K119 ["Physics"]
      656 SETTABLEKS                       R19 R18 K38 ["Setting"]
      658 CALL                             R16 2 1
      659 SETTABLEKS                       R16 R15 K112 ["Assemblies"]
      661 GETUPVAL                         R16 6
      662 GETTABLEKS                       R16 R16 K9 ["createElement"]
      664 GETUPVAL                         R17 9
      665 DUPTABLE                         R18 K128 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreMechanismsShown"}]
      666 LOADK                            R21 K34 ["StudioModes"]
      667 LOADK                            R22 K113 ["Mechanisms"]
      668 NAMECALL                         R19 R5 K25 ["getText"]
      670 CALL                             R19 3 1
      671 SETTABLEKS                       R19 R18 K22 ["Title"]
      673 LOADK                            R21 K34 ["StudioModes"]
      674 LOADK                            R22 K129 ["MechanismsToolTip"]
      675 NAMECALL                         R19 R5 K25 ["getText"]
      677 CALL                             R19 3 1
      678 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      680 GETTABLEKS                       R19 R4 K119 ["Physics"]
      682 SETTABLEKS                       R19 R18 K38 ["Setting"]
      684 CALL                             R16 2 1
      685 SETTABLEKS                       R16 R15 K113 ["Mechanisms"]
      687 GETUPVAL                         R16 6
      688 GETTABLEKS                       R16 R16 K9 ["createElement"]
      690 GETUPVAL                         R17 9
      691 DUPTABLE                         R18 K131 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreOwnersShown"}]
      692 LOADK                            R21 K34 ["StudioModes"]
      693 LOADK                            R22 K114 ["NetworkOwner"]
      694 NAMECALL                         R19 R5 K25 ["getText"]
      696 CALL                             R19 3 1
      697 SETTABLEKS                       R19 R18 K22 ["Title"]
      699 LOADK                            R21 K34 ["StudioModes"]
      700 LOADK                            R22 K132 ["NetworkOwnerToolTip"]
      701 NAMECALL                         R19 R5 K25 ["getText"]
      703 CALL                             R19 3 1
      704 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      706 GETTABLEKS                       R19 R4 K119 ["Physics"]
      708 SETTABLEKS                       R19 R18 K38 ["Setting"]
      710 CALL                             R16 2 1
      711 SETTABLEKS                       R16 R15 K114 ["NetworkOwner"]
      713 CALL                             R12 3 1
      714 SETTABLEKS                       R12 R11 K17 ["PhysicsLabels"]
      716 GETUPVAL                         R12 6
      717 GETTABLEKS                       R12 R12 K9 ["createElement"]
      719 LOADK                            R13 K21 ["VisualizationModeCategory"]
      720 DUPTABLE                         R14 K23 [{"Title"}]
      721 LOADK                            R17 K24 ["VisualizationModeCategories"]
      722 LOADK                            R18 K18 ["PhysicsSimulation"]
      723 NAMECALL                         R15 R5 K25 ["getText"]
      725 CALL                             R15 3 1
      726 SETTABLEKS                       R15 R14 K22 ["Title"]
      728 DUPTABLE                         R15 K137 [{"CollisionFidelity", "ContactPoints", "Shapecasts", "WindDirection"}]
      729 GETUPVAL                         R17 10
      730 CALL                             R17 0 1
      731 JUMPIF                           R17 ; [+25]
      732 GETUPVAL                         R16 6
      733 GETTABLEKS                       R16 R16 K9 ["createElement"]
      735 GETUPVAL                         R17 9
      736 DUPTABLE                         R18 K139 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDecompositionGeometry"}]
      737 LOADK                            R21 K34 ["StudioModes"]
      738 LOADK                            R22 K133 ["CollisionFidelity"]
      739 NAMECALL                         R19 R5 K25 ["getText"]
      741 CALL                             R19 3 1
      742 SETTABLEKS                       R19 R18 K22 ["Title"]
      744 LOADK                            R21 K34 ["StudioModes"]
      745 LOADK                            R22 K140 ["CollisionFidelityToolTip"]
      746 NAMECALL                         R19 R5 K25 ["getText"]
      748 CALL                             R19 3 1
      749 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      751 GETTABLEKS                       R19 R4 K119 ["Physics"]
      753 SETTABLEKS                       R19 R18 K38 ["Setting"]
      755 CALL                             R16 2 1
      756 JUMP                             ; [+1]
      757 LOADNIL                          R16
      758 SETTABLEKS                       R16 R15 K133 ["CollisionFidelity"]
      760 GETUPVAL                         R16 6
      761 GETTABLEKS                       R16 R16 K9 ["createElement"]
      763 GETUPVAL                         R17 9
      764 DUPTABLE                         R18 K142 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreContactPointsShown"}]
      765 LOADK                            R21 K34 ["StudioModes"]
      766 LOADK                            R22 K134 ["ContactPoints"]
      767 NAMECALL                         R19 R5 K25 ["getText"]
      769 CALL                             R19 3 1
      770 SETTABLEKS                       R19 R18 K22 ["Title"]
      772 LOADK                            R21 K34 ["StudioModes"]
      773 LOADK                            R22 K143 ["ContactPointsToolTip"]
      774 NAMECALL                         R19 R5 K25 ["getText"]
      776 CALL                             R19 3 1
      777 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      779 GETTABLEKS                       R19 R4 K119 ["Physics"]
      781 SETTABLEKS                       R19 R18 K38 ["Setting"]
      783 CALL                             R16 2 1
      784 SETTABLEKS                       R16 R15 K134 ["ContactPoints"]
      786 GETUPVAL                         R16 11
      787 CALL                             R16 0 1
      788 JUMPIFNOT                        R16 ; [+24]
      789 GETUPVAL                         R16 6
      790 GETTABLEKS                       R16 R16 K9 ["createElement"]
      792 GETUPVAL                         R17 9
      793 DUPTABLE                         R18 K145 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "DrawShapecast"}]
      794 LOADK                            R21 K34 ["StudioModes"]
      795 LOADK                            R22 K135 ["Shapecasts"]
      796 NAMECALL                         R19 R5 K25 ["getText"]
      798 CALL                             R19 3 1
      799 SETTABLEKS                       R19 R18 K22 ["Title"]
      801 LOADK                            R21 K34 ["StudioModes"]
      802 LOADK                            R22 K146 ["ShapecastsToolTip"]
      803 NAMECALL                         R19 R5 K25 ["getText"]
      805 CALL                             R19 3 1
      806 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      808 GETTABLEKS                       R19 R4 K119 ["Physics"]
      810 SETTABLEKS                       R19 R18 K38 ["Setting"]
      812 CALL                             R16 2 1
      813 SETTABLEKS                       R16 R15 K135 ["Shapecasts"]
      815 GETUPVAL                         R16 6
      816 GETTABLEKS                       R16 R16 K9 ["createElement"]
      818 GETUPVAL                         R17 7
      819 DUPTABLE                         R18 K148 [{["Title"], ["ToolTip"], ["FeatureId"] = "WindControl", ["ActionId"] = "Toggle", ["Actions"]}]
      820 LOADK                            R21 K34 ["StudioModes"]
      821 LOADK                            R22 K136 ["WindDirection"]
      822 NAMECALL                         R19 R5 K25 ["getText"]
      824 CALL                             R19 3 1
      825 SETTABLEKS                       R19 R18 K22 ["Title"]
      827 LOADK                            R21 K34 ["StudioModes"]
      828 LOADK                            R22 K149 ["WindDirectionToolTip"]
      829 NAMECALL                         R19 R5 K25 ["getText"]
      831 CALL                             R19 3 1
      832 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      834 GETTABLEKS                       R19 R0 K32 ["Actions"]
      836 SETTABLEKS                       R19 R18 K32 ["Actions"]
      838 CALL                             R16 2 1
      839 SETTABLEKS                       R16 R15 K136 ["WindDirection"]
      841 CALL                             R12 3 1
      842 SETTABLEKS                       R12 R11 K18 ["PhysicsSimulation"]
      844 GETUPVAL                         R12 6
      845 GETTABLEKS                       R12 R12 K9 ["createElement"]
      847 LOADK                            R13 K21 ["VisualizationModeCategory"]
      848 DUPTABLE                         R14 K23 [{"Title"}]
      849 LOADK                            R17 K24 ["VisualizationModeCategories"]
      850 LOADK                            R18 K19 ["View"]
      851 NAMECALL                         R15 R5 K25 ["getText"]
      853 CALL                             R15 3 1
      854 SETTABLEKS                       R15 R14 K22 ["Title"]
      856 DUPTABLE                         R15 K154 [{"ViewSelector", "Grid", "GridMaterial", "CollaboratorHighlights"}]
      857 GETUPVAL                         R16 6
      858 GETTABLEKS                       R16 R16 K9 ["createElement"]
      860 GETUPVAL                         R17 7
      861 DUPTABLE                         R18 K155 [{["Title"], ["ToolTip"], ["FeatureId"] = "ViewSelector", ["ActionId"] = "Toggle", ["Actions"]}]
      862 LOADK                            R21 K34 ["StudioModes"]
      863 LOADK                            R22 K150 ["ViewSelector"]
      864 NAMECALL                         R19 R5 K25 ["getText"]
      866 CALL                             R19 3 1
      867 SETTABLEKS                       R19 R18 K22 ["Title"]
      869 LOADK                            R21 K34 ["StudioModes"]
      870 LOADK                            R22 K156 ["ViewSelectorToolTip"]
      871 NAMECALL                         R19 R5 K25 ["getText"]
      873 CALL                             R19 3 1
      874 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      876 GETTABLEKS                       R19 R0 K32 ["Actions"]
      878 SETTABLEKS                       R19 R18 K32 ["Actions"]
      880 CALL                             R16 2 1
      881 SETTABLEKS                       R16 R15 K150 ["ViewSelector"]
      883 GETUPVAL                         R16 6
      884 GETTABLEKS                       R16 R16 K9 ["createElement"]
      886 GETUPVAL                         R17 7
      887 DUPTABLE                         R18 K158 [{["Title"], ["ToolTip"], ["FeatureId"] = "3DGrid", ["ActionId"] = "Toggle", ["Actions"]}]
      888 LOADK                            R21 K34 ["StudioModes"]
      889 LOADK                            R22 K151 ["Grid"]
      890 NAMECALL                         R19 R5 K25 ["getText"]
      892 CALL                             R19 3 1
      893 SETTABLEKS                       R19 R18 K22 ["Title"]
      895 LOADK                            R21 K34 ["StudioModes"]
      896 LOADK                            R22 K159 ["GridToolTip"]
      897 NAMECALL                         R19 R5 K25 ["getText"]
      899 CALL                             R19 3 1
      900 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      902 GETTABLEKS                       R19 R0 K32 ["Actions"]
      904 SETTABLEKS                       R19 R18 K32 ["Actions"]
      906 CALL                             R16 2 1
      907 SETTABLEKS                       R16 R15 K151 ["Grid"]
      909 GETUPVAL                         R16 6
      910 GETTABLEKS                       R16 R16 K9 ["createElement"]
      912 GETUPVAL                         R17 7
      913 DUPTABLE                         R18 K160 [{["Title"], ["ToolTip"], ["FeatureId"] = "GridMaterial", ["ActionId"] = "Toggle", ["Actions"]}]
      914 LOADK                            R21 K34 ["StudioModes"]
      915 LOADK                            R22 K152 ["GridMaterial"]
      916 NAMECALL                         R19 R5 K25 ["getText"]
      918 CALL                             R19 3 1
      919 SETTABLEKS                       R19 R18 K22 ["Title"]
      921 LOADK                            R21 K34 ["StudioModes"]
      922 LOADK                            R22 K161 ["GridMaterialToolTip"]
      923 NAMECALL                         R19 R5 K25 ["getText"]
      925 CALL                             R19 3 1
      926 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      928 GETTABLEKS                       R19 R0 K32 ["Actions"]
      930 SETTABLEKS                       R19 R18 K32 ["Actions"]
      932 CALL                             R16 2 1
      933 SETTABLEKS                       R16 R15 K152 ["GridMaterial"]
      935 MOVE                             R16 R1
      936 JUMPIFNOT                        R16 ; [+23]
      937 GETUPVAL                         R16 6
      938 GETTABLEKS                       R16 R16 K9 ["createElement"]
      940 GETUPVAL                         R17 12
      941 DUPTABLE                         R18 K163 [{"Title", "ToolTip", "UseState"}]
      942 LOADK                            R21 K34 ["StudioModes"]
      943 LOADK                            R22 K153 ["CollaboratorHighlights"]
      944 NAMECALL                         R19 R5 K25 ["getText"]
      946 CALL                             R19 3 1
      947 SETTABLEKS                       R19 R18 K22 ["Title"]
      949 LOADK                            R21 K34 ["StudioModes"]
      950 LOADK                            R22 K164 ["CollaboratorHighlightsToolTip"]
      951 NAMECALL                         R19 R5 K25 ["getText"]
      953 CALL                             R19 3 1
      954 SETTABLEKS                       R19 R18 K29 ["ToolTip"]
      956 GETUPVAL                         R19 13
      957 SETTABLEKS                       R19 R18 K162 ["UseState"]
      959 CALL                             R16 2 1
      960 SETTABLEKS                       R16 R15 K153 ["CollaboratorHighlights"]
      962 CALL                             R12 3 1
      963 SETTABLEKS                       R12 R11 K19 ["View"]
      965 CALL                             R8 3 -1
      966 RETURN                           R8 -1

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
       81 GETTABLEKS                       R10 R10 K19 ["getFFlagStudioVisualizationModesServiceFix"]
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
      132 CAPTURE                          VAL R9
      133 CAPTURE                          VAL R10
      134 CAPTURE                          VAL R11
      135 CAPTURE                          VAL R15
      136 CAPTURE                          VAL R6
      137 CAPTURE                          VAL R7
      138 CAPTURE                          VAL R2
      139 CAPTURE                          VAL R4
      140 CAPTURE                          VAL R14
      141 CAPTURE                          VAL R3
      142 CAPTURE                          VAL R12
      143 CAPTURE                          VAL R13
      144 CAPTURE                          VAL R8
      145 CAPTURE                          VAL R5
      146 RETURN                           R16 1
