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
       28 GETUPVAL                         R7 5
       29 GETTABLEKS                       R7 R7 K7 ["createElement"]
       31 GETUPVAL                         R8 5
       32 GETTABLEKS                       R8 R8 K8 ["Fragment"]
       34 NEWTABLE                         R9 0 0
       36 DUPTABLE                         R10 K17 [{"GUI", "Lighting", "Animation", "Pathfinding", "PhysicsConstraints", "PhysicsLabels", "PhysicsSimulation", "View"}]
       37 GETUPVAL                         R11 5
       38 GETTABLEKS                       R11 R11 K7 ["createElement"]
       40 LOADK                            R12 K18 ["VisualizationModeCategory"]
       41 DUPTABLE                         R13 K20 [{"Title"}]
       42 LOADK                            R16 K21 ["VisualizationModeCategories"]
       43 LOADK                            R17 K9 ["GUI"]
       44 NAMECALL                         R14 R5 K22 ["getText"]
       46 CALL                             R14 3 1
       47 SETTABLEKS                       R14 R13 K19 ["Title"]
       49 DUPTABLE                         R14 K25 [{"DeviceEmulation", "GUIOverlay"}]
       50 GETUPVAL                         R15 5
       51 GETTABLEKS                       R15 R15 K7 ["createElement"]
       53 GETUPVAL                         R16 6
       54 DUPTABLE                         R17 K31 [{["Title"], ["ToolTip"], ["FeatureId"] = "DeviceEmulation", ["ActionId"] = "Toggle", ["Actions"]}]
       55 GETUPVAL                         R19 7
       56 CALL                             R19 0 1
       57 JUMPIFNOT                        R19 ; [+6]
       58 LOADK                            R20 K32 ["StudioModes"]
       59 LOADK                            R21 K33 ["DeviceSimulation"]
       60 NAMECALL                         R18 R5 K22 ["getText"]
       62 CALL                             R18 3 1
       63 JUMP                             ; [+5]
       64 LOADK                            R20 K32 ["StudioModes"]
       65 LOADK                            R21 K23 ["DeviceEmulation"]
       66 NAMECALL                         R18 R5 K22 ["getText"]
       68 CALL                             R18 3 1
       69 SETTABLEKS                       R18 R17 K19 ["Title"]
       71 GETUPVAL                         R19 7
       72 CALL                             R19 0 1
       73 JUMPIFNOT                        R19 ; [+6]
       74 LOADK                            R20 K32 ["StudioModes"]
       75 LOADK                            R21 K34 ["DeviceSimulationTooltip"]
       76 NAMECALL                         R18 R5 K22 ["getText"]
       78 CALL                             R18 3 1
       79 JUMP                             ; [+5]
       80 LOADK                            R20 K32 ["StudioModes"]
       81 LOADK                            R21 K35 ["DeviceEmulationToolTip"]
       82 NAMECALL                         R18 R5 K22 ["getText"]
       84 CALL                             R18 3 1
       85 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
       87 GETTABLEKS                       R18 R0 K30 ["Actions"]
       89 SETTABLEKS                       R18 R17 K30 ["Actions"]
       91 CALL                             R15 2 1
       92 SETTABLEKS                       R15 R14 K23 ["DeviceEmulation"]
       94 GETUPVAL                         R15 5
       95 GETTABLEKS                       R15 R15 K7 ["createElement"]
       97 GETUPVAL                         R16 8
       98 DUPTABLE                         R17 K39 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDevelopmentGui"}]
       99 LOADK                            R20 K32 ["StudioModes"]
      100 LOADK                            R21 K24 ["GUIOverlay"]
      101 NAMECALL                         R18 R5 K22 ["getText"]
      103 CALL                             R18 3 1
      104 SETTABLEKS                       R18 R17 K19 ["Title"]
      106 LOADK                            R20 K32 ["StudioModes"]
      107 LOADK                            R21 K40 ["GUIOverlayToolTip"]
      108 NAMECALL                         R18 R5 K22 ["getText"]
      110 CALL                             R18 3 1
      111 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      113 JUMPIFNOT                        R1 ; [+7]
      114 GETIMPORT                        R18 K42 [game]
      116 LOADK                            R20 K43 ["StarterGui"]
      117 NAMECALL                         R18 R18 K44 ["GetService"]
      119 CALL                             R18 2 1
      120 JUMP                             ; [+4]
      121 GETIMPORT                        R18 K42 [game]
      123 GETTABLEKS                       R18 R18 K43 ["StarterGui"]
      125 SETTABLEKS                       R18 R17 K36 ["Setting"]
      127 CALL                             R15 2 1
      128 SETTABLEKS                       R15 R14 K24 ["GUIOverlay"]
      130 CALL                             R11 3 1
      131 SETTABLEKS                       R11 R10 K9 ["GUI"]
      133 GETUPVAL                         R11 5
      134 GETTABLEKS                       R11 R11 K7 ["createElement"]
      136 LOADK                            R12 K18 ["VisualizationModeCategory"]
      137 DUPTABLE                         R13 K20 [{"Title"}]
      138 LOADK                            R16 K21 ["VisualizationModeCategories"]
      139 LOADK                            R17 K10 ["Lighting"]
      140 NAMECALL                         R14 R5 K22 ["getText"]
      142 CALL                             R14 3 1
      143 SETTABLEKS                       R14 R13 K19 ["Title"]
      145 DUPTABLE                         R14 K46 [{"Lights"}]
      146 GETUPVAL                         R15 5
      147 GETTABLEKS                       R15 R15 K7 ["createElement"]
      149 GETUPVAL                         R16 8
      150 DUPTABLE                         R17 K48 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Light Guides"}]
      151 LOADK                            R20 K32 ["StudioModes"]
      152 LOADK                            R21 K45 ["Lights"]
      153 NAMECALL                         R18 R5 K22 ["getText"]
      155 CALL                             R18 3 1
      156 SETTABLEKS                       R18 R17 K19 ["Title"]
      158 LOADK                            R20 K32 ["StudioModes"]
      159 LOADK                            R21 K49 ["LightsToolTip"]
      160 NAMECALL                         R18 R5 K22 ["getText"]
      162 CALL                             R18 3 1
      163 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      165 GETTABLEKS                       R18 R4 K5 ["Studio"]
      167 SETTABLEKS                       R18 R17 K36 ["Setting"]
      169 CALL                             R15 2 1
      170 SETTABLEKS                       R15 R14 K45 ["Lights"]
      172 CALL                             R11 3 1
      173 SETTABLEKS                       R11 R10 K10 ["Lighting"]
      175 GETUPVAL                         R11 5
      176 GETTABLEKS                       R11 R11 K7 ["createElement"]
      178 LOADK                            R12 K18 ["VisualizationModeCategory"]
      179 DUPTABLE                         R13 K20 [{"Title"}]
      180 LOADK                            R16 K21 ["VisualizationModeCategories"]
      181 LOADK                            R17 K11 ["Animation"]
      182 NAMECALL                         R14 R5 K22 ["getText"]
      184 CALL                             R14 3 1
      185 SETTABLEKS                       R14 R13 K19 ["Title"]
      187 DUPTABLE                         R14 K55 [{"ShowAnimationSkeleton", "ShowAnimationSkeletonAxes", "ShowAnimationSkeletonAttachments", "ShowAnimationSkeletonText", "ShowAnimationSkeletonRotations"}]
      188 GETUPVAL                         R15 5
      189 GETTABLEKS                       R15 R15 K7 ["createElement"]
      191 GETUPVAL                         R16 8
      192 DUPTABLE                         R17 K58 [{["Title"], ["ToolTip"], ["SortOrder"] = 1, ["Setting"], ["Property"] = "Show Animation Skeleton"}]
      193 LOADK                            R20 K32 ["StudioModes"]
      194 LOADK                            R21 K50 ["ShowAnimationSkeleton"]
      195 NAMECALL                         R18 R5 K22 ["getText"]
      197 CALL                             R18 3 1
      198 SETTABLEKS                       R18 R17 K19 ["Title"]
      200 LOADK                            R20 K32 ["StudioModes"]
      201 LOADK                            R21 K59 ["ShowAnimationSkeletonToolTip"]
      202 NAMECALL                         R18 R5 K22 ["getText"]
      204 CALL                             R18 3 1
      205 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      207 GETTABLEKS                       R18 R4 K5 ["Studio"]
      209 SETTABLEKS                       R18 R17 K36 ["Setting"]
      211 CALL                             R15 2 1
      212 SETTABLEKS                       R15 R14 K50 ["ShowAnimationSkeleton"]
      214 MOVE                             R15 R6
      215 JUMPIFNOT                        R15 ; [+24]
      216 GETUPVAL                         R15 5
      217 GETTABLEKS                       R15 R15 K7 ["createElement"]
      219 GETUPVAL                         R16 8
      220 DUPTABLE                         R17 K62 [{["Title"], ["ToolTip"], ["SortOrder"] = 2, ["Setting"], ["Property"] = "Show Animation Skeleton Axes"}]
      221 LOADK                            R20 K32 ["StudioModes"]
      222 LOADK                            R21 K51 ["ShowAnimationSkeletonAxes"]
      223 NAMECALL                         R18 R5 K22 ["getText"]
      225 CALL                             R18 3 1
      226 SETTABLEKS                       R18 R17 K19 ["Title"]
      228 LOADK                            R20 K32 ["StudioModes"]
      229 LOADK                            R21 K63 ["ShowAnimationSkeletonAxesToolTip"]
      230 NAMECALL                         R18 R5 K22 ["getText"]
      232 CALL                             R18 3 1
      233 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      235 GETTABLEKS                       R18 R4 K5 ["Studio"]
      237 SETTABLEKS                       R18 R17 K36 ["Setting"]
      239 CALL                             R15 2 1
      240 SETTABLEKS                       R15 R14 K51 ["ShowAnimationSkeletonAxes"]
      242 MOVE                             R15 R6
      243 JUMPIFNOT                        R15 ; [+24]
      244 GETUPVAL                         R15 5
      245 GETTABLEKS                       R15 R15 K7 ["createElement"]
      247 GETUPVAL                         R16 8
      248 DUPTABLE                         R17 K66 [{["Title"], ["ToolTip"], ["SortOrder"] = 3, ["Setting"], ["Property"] = "Show Animation Skeleton Attachments"}]
      249 LOADK                            R20 K32 ["StudioModes"]
      250 LOADK                            R21 K52 ["ShowAnimationSkeletonAttachments"]
      251 NAMECALL                         R18 R5 K22 ["getText"]
      253 CALL                             R18 3 1
      254 SETTABLEKS                       R18 R17 K19 ["Title"]
      256 LOADK                            R20 K32 ["StudioModes"]
      257 LOADK                            R21 K67 ["ShowAnimationSkeletonAttachmentsToolTip"]
      258 NAMECALL                         R18 R5 K22 ["getText"]
      260 CALL                             R18 3 1
      261 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      263 GETTABLEKS                       R18 R4 K5 ["Studio"]
      265 SETTABLEKS                       R18 R17 K36 ["Setting"]
      267 CALL                             R15 2 1
      268 SETTABLEKS                       R15 R14 K52 ["ShowAnimationSkeletonAttachments"]
      270 MOVE                             R15 R6
      271 JUMPIFNOT                        R15 ; [+24]
      272 GETUPVAL                         R15 5
      273 GETTABLEKS                       R15 R15 K7 ["createElement"]
      275 GETUPVAL                         R16 8
      276 DUPTABLE                         R17 K70 [{["Title"], ["ToolTip"], ["SortOrder"] = 4, ["Setting"], ["Property"] = "Show Animation Skeleton Text"}]
      277 LOADK                            R20 K32 ["StudioModes"]
      278 LOADK                            R21 K53 ["ShowAnimationSkeletonText"]
      279 NAMECALL                         R18 R5 K22 ["getText"]
      281 CALL                             R18 3 1
      282 SETTABLEKS                       R18 R17 K19 ["Title"]
      284 LOADK                            R20 K32 ["StudioModes"]
      285 LOADK                            R21 K71 ["ShowAnimationSkeletonTextToolTip"]
      286 NAMECALL                         R18 R5 K22 ["getText"]
      288 CALL                             R18 3 1
      289 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      291 GETTABLEKS                       R18 R4 K5 ["Studio"]
      293 SETTABLEKS                       R18 R17 K36 ["Setting"]
      295 CALL                             R15 2 1
      296 SETTABLEKS                       R15 R14 K53 ["ShowAnimationSkeletonText"]
      298 MOVE                             R15 R6
      299 JUMPIFNOT                        R15 ; [+24]
      300 GETUPVAL                         R15 5
      301 GETTABLEKS                       R15 R15 K7 ["createElement"]
      303 GETUPVAL                         R16 8
      304 DUPTABLE                         R17 K74 [{["Title"], ["ToolTip"], ["SortOrder"] = 5, ["Setting"], ["Property"] = "Show Animation Skeleton Rotations"}]
      305 LOADK                            R20 K32 ["StudioModes"]
      306 LOADK                            R21 K54 ["ShowAnimationSkeletonRotations"]
      307 NAMECALL                         R18 R5 K22 ["getText"]
      309 CALL                             R18 3 1
      310 SETTABLEKS                       R18 R17 K19 ["Title"]
      312 LOADK                            R20 K32 ["StudioModes"]
      313 LOADK                            R21 K75 ["ShowAnimationSkeletonRotationsToolTip"]
      314 NAMECALL                         R18 R5 K22 ["getText"]
      316 CALL                             R18 3 1
      317 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      319 GETTABLEKS                       R18 R4 K5 ["Studio"]
      321 SETTABLEKS                       R18 R17 K36 ["Setting"]
      323 CALL                             R15 2 1
      324 SETTABLEKS                       R15 R14 K54 ["ShowAnimationSkeletonRotations"]
      326 CALL                             R11 3 1
      327 SETTABLEKS                       R11 R10 K11 ["Animation"]
      329 GETUPVAL                         R11 5
      330 GETTABLEKS                       R11 R11 K7 ["createElement"]
      332 LOADK                            R12 K18 ["VisualizationModeCategory"]
      333 DUPTABLE                         R13 K20 [{"Title"}]
      334 LOADK                            R16 K21 ["VisualizationModeCategories"]
      335 LOADK                            R17 K12 ["Pathfinding"]
      336 NAMECALL                         R14 R5 K22 ["getText"]
      338 CALL                             R14 3 1
      339 SETTABLEKS                       R14 R13 K19 ["Title"]
      341 DUPTABLE                         R14 K79 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
      342 GETUPVAL                         R15 5
      343 GETTABLEKS                       R15 R15 K7 ["createElement"]
      345 GETUPVAL                         R16 8
      346 DUPTABLE                         R17 K81 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Mesh"}]
      347 LOADK                            R20 K32 ["StudioModes"]
      348 LOADK                            R21 K76 ["PathfindingMesh"]
      349 NAMECALL                         R18 R5 K22 ["getText"]
      351 CALL                             R18 3 1
      352 SETTABLEKS                       R18 R17 K19 ["Title"]
      354 LOADK                            R20 K32 ["StudioModes"]
      355 LOADK                            R21 K82 ["PathfindingMeshToolTip"]
      356 NAMECALL                         R18 R5 K22 ["getText"]
      358 CALL                             R18 3 1
      359 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      361 GETTABLEKS                       R18 R4 K5 ["Studio"]
      363 SETTABLEKS                       R18 R17 K36 ["Setting"]
      365 CALL                             R15 2 1
      366 SETTABLEKS                       R15 R14 K76 ["PathfindingMesh"]
      368 GETUPVAL                         R15 5
      369 GETTABLEKS                       R15 R15 K7 ["createElement"]
      371 GETUPVAL                         R16 8
      372 DUPTABLE                         R17 K84 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Labels"}]
      373 LOADK                            R20 K32 ["StudioModes"]
      374 LOADK                            R21 K77 ["PathfindingModifiers"]
      375 NAMECALL                         R18 R5 K22 ["getText"]
      377 CALL                             R18 3 1
      378 SETTABLEKS                       R18 R17 K19 ["Title"]
      380 LOADK                            R20 K32 ["StudioModes"]
      381 LOADK                            R21 K85 ["PathfindingModifiersToolTip"]
      382 NAMECALL                         R18 R5 K22 ["getText"]
      384 CALL                             R18 3 1
      385 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      387 GETTABLEKS                       R18 R4 K5 ["Studio"]
      389 SETTABLEKS                       R18 R17 K36 ["Setting"]
      391 CALL                             R15 2 1
      392 SETTABLEKS                       R15 R14 K77 ["PathfindingModifiers"]
      394 GETUPVAL                         R15 5
      395 GETTABLEKS                       R15 R15 K7 ["createElement"]
      397 GETUPVAL                         R16 8
      398 DUPTABLE                         R17 K87 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Pathfinding Links"}]
      399 LOADK                            R20 K32 ["StudioModes"]
      400 LOADK                            R21 K78 ["PathfindingLinks"]
      401 NAMECALL                         R18 R5 K22 ["getText"]
      403 CALL                             R18 3 1
      404 SETTABLEKS                       R18 R17 K19 ["Title"]
      406 LOADK                            R20 K32 ["StudioModes"]
      407 LOADK                            R21 K88 ["PathfindingLinksToolTip"]
      408 NAMECALL                         R18 R5 K22 ["getText"]
      410 CALL                             R18 3 1
      411 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      413 GETTABLEKS                       R18 R4 K5 ["Studio"]
      415 SETTABLEKS                       R18 R17 K36 ["Setting"]
      417 CALL                             R15 2 1
      418 SETTABLEKS                       R15 R14 K78 ["PathfindingLinks"]
      420 CALL                             R11 3 1
      421 SETTABLEKS                       R11 R10 K12 ["Pathfinding"]
      423 GETUPVAL                         R11 5
      424 GETTABLEKS                       R11 R11 K7 ["createElement"]
      426 LOADK                            R12 K18 ["VisualizationModeCategory"]
      427 DUPTABLE                         R13 K20 [{"Title"}]
      428 LOADK                            R16 K21 ["VisualizationModeCategories"]
      429 LOADK                            R17 K13 ["PhysicsConstraints"]
      430 NAMECALL                         R14 R5 K22 ["getText"]
      432 CALL                             R14 3 1
      433 SETTABLEKS                       R14 R13 K19 ["Title"]
      435 DUPTABLE                         R14 K91 [{"Constraints", "Welds"}]
      436 GETUPVAL                         R15 5
      437 GETTABLEKS                       R15 R15 K7 ["createElement"]
      439 GETUPVAL                         R16 6
      440 DUPTABLE                         R17 K93 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowDetails", ["Actions"]}]
      441 LOADK                            R20 K32 ["StudioModes"]
      442 LOADK                            R21 K89 ["Constraints"]
      443 NAMECALL                         R18 R5 K22 ["getText"]
      445 CALL                             R18 3 1
      446 SETTABLEKS                       R18 R17 K19 ["Title"]
      448 LOADK                            R20 K32 ["StudioModes"]
      449 LOADK                            R21 K94 ["ConstraintsToolTip"]
      450 NAMECALL                         R18 R5 K22 ["getText"]
      452 CALL                             R18 3 1
      453 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      455 GETTABLEKS                       R18 R0 K30 ["Actions"]
      457 SETTABLEKS                       R18 R17 K30 ["Actions"]
      459 CALL                             R15 2 1
      460 SETTABLEKS                       R15 R14 K89 ["Constraints"]
      462 GETUPVAL                         R15 5
      463 GETTABLEKS                       R15 R15 K7 ["createElement"]
      465 GETUPVAL                         R16 6
      466 DUPTABLE                         R17 K96 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowWelds", ["Actions"]}]
      467 LOADK                            R20 K32 ["StudioModes"]
      468 LOADK                            R21 K90 ["Welds"]
      469 NAMECALL                         R18 R5 K22 ["getText"]
      471 CALL                             R18 3 1
      472 SETTABLEKS                       R18 R17 K19 ["Title"]
      474 LOADK                            R20 K32 ["StudioModes"]
      475 LOADK                            R21 K97 ["WeldsToolTip"]
      476 NAMECALL                         R18 R5 K22 ["getText"]
      478 CALL                             R18 3 1
      479 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      481 GETTABLEKS                       R18 R0 K30 ["Actions"]
      483 SETTABLEKS                       R18 R17 K30 ["Actions"]
      485 CALL                             R15 2 1
      486 SETTABLEKS                       R15 R14 K90 ["Welds"]
      488 CALL                             R11 3 1
      489 SETTABLEKS                       R11 R10 K13 ["PhysicsConstraints"]
      491 GETUPVAL                         R11 5
      492 GETTABLEKS                       R11 R11 K7 ["createElement"]
      494 LOADK                            R12 K18 ["VisualizationModeCategory"]
      495 DUPTABLE                         R13 K20 [{"Title"}]
      496 LOADK                            R16 K21 ["VisualizationModeCategories"]
      497 LOADK                            R17 K14 ["PhysicsLabels"]
      498 NAMECALL                         R14 R5 K22 ["getText"]
      500 CALL                             R14 3 1
      501 SETTABLEKS                       R14 R13 K19 ["Title"]
      503 DUPTABLE                         R14 K103 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
      504 GETUPVAL                         R15 5
      505 GETTABLEKS                       R15 R15 K7 ["createElement"]
      507 GETUPVAL                         R16 8
      508 DUPTABLE                         R17 K105 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAnchorsShown"}]
      509 LOADK                            R20 K32 ["StudioModes"]
      510 LOADK                            R21 K98 ["AnchoredParts"]
      511 NAMECALL                         R18 R5 K22 ["getText"]
      513 CALL                             R18 3 1
      514 SETTABLEKS                       R18 R17 K19 ["Title"]
      516 LOADK                            R20 K32 ["StudioModes"]
      517 LOADK                            R21 K106 ["AnchoredPartsToolTip"]
      518 NAMECALL                         R18 R5 K22 ["getText"]
      520 CALL                             R18 3 1
      521 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      523 GETTABLEKS                       R18 R4 K107 ["Physics"]
      525 SETTABLEKS                       R18 R17 K36 ["Setting"]
      527 CALL                             R15 2 1
      528 SETTABLEKS                       R15 R14 K98 ["AnchoredParts"]
      530 GETUPVAL                         R15 5
      531 GETTABLEKS                       R15 R15 K7 ["createElement"]
      533 GETUPVAL                         R16 8
      534 DUPTABLE                         R17 K109 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAwakePartsHighlighted"}]
      535 LOADK                            R20 K32 ["StudioModes"]
      536 LOADK                            R21 K99 ["AwakeParts"]
      537 NAMECALL                         R18 R5 K22 ["getText"]
      539 CALL                             R18 3 1
      540 SETTABLEKS                       R18 R17 K19 ["Title"]
      542 LOADK                            R20 K32 ["StudioModes"]
      543 LOADK                            R21 K110 ["AwakePartsToolTip"]
      544 NAMECALL                         R18 R5 K22 ["getText"]
      546 CALL                             R18 3 1
      547 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      549 GETTABLEKS                       R18 R4 K107 ["Physics"]
      551 SETTABLEKS                       R18 R17 K36 ["Setting"]
      553 CALL                             R15 2 1
      554 SETTABLEKS                       R15 R14 K99 ["AwakeParts"]
      556 GETUPVAL                         R15 5
      557 GETTABLEKS                       R15 R15 K7 ["createElement"]
      559 GETUPVAL                         R16 8
      560 DUPTABLE                         R17 K112 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAssembliesShown"}]
      561 LOADK                            R20 K32 ["StudioModes"]
      562 LOADK                            R21 K113 ["ShowAssemblies"]
      563 NAMECALL                         R18 R5 K22 ["getText"]
      565 CALL                             R18 3 1
      566 SETTABLEKS                       R18 R17 K19 ["Title"]
      568 LOADK                            R20 K32 ["StudioModes"]
      569 LOADK                            R21 K114 ["ShowAssembliesToolTip"]
      570 NAMECALL                         R18 R5 K22 ["getText"]
      572 CALL                             R18 3 1
      573 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      575 GETTABLEKS                       R18 R4 K107 ["Physics"]
      577 SETTABLEKS                       R18 R17 K36 ["Setting"]
      579 CALL                             R15 2 1
      580 SETTABLEKS                       R15 R14 K100 ["Assemblies"]
      582 GETUPVAL                         R15 5
      583 GETTABLEKS                       R15 R15 K7 ["createElement"]
      585 GETUPVAL                         R16 8
      586 DUPTABLE                         R17 K116 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreMechanismsShown"}]
      587 LOADK                            R20 K32 ["StudioModes"]
      588 LOADK                            R21 K101 ["Mechanisms"]
      589 NAMECALL                         R18 R5 K22 ["getText"]
      591 CALL                             R18 3 1
      592 SETTABLEKS                       R18 R17 K19 ["Title"]
      594 LOADK                            R20 K32 ["StudioModes"]
      595 LOADK                            R21 K117 ["MechanismsToolTip"]
      596 NAMECALL                         R18 R5 K22 ["getText"]
      598 CALL                             R18 3 1
      599 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      601 GETTABLEKS                       R18 R4 K107 ["Physics"]
      603 SETTABLEKS                       R18 R17 K36 ["Setting"]
      605 CALL                             R15 2 1
      606 SETTABLEKS                       R15 R14 K101 ["Mechanisms"]
      608 GETUPVAL                         R15 5
      609 GETTABLEKS                       R15 R15 K7 ["createElement"]
      611 GETUPVAL                         R16 8
      612 DUPTABLE                         R17 K119 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreOwnersShown"}]
      613 LOADK                            R20 K32 ["StudioModes"]
      614 LOADK                            R21 K102 ["NetworkOwner"]
      615 NAMECALL                         R18 R5 K22 ["getText"]
      617 CALL                             R18 3 1
      618 SETTABLEKS                       R18 R17 K19 ["Title"]
      620 LOADK                            R20 K32 ["StudioModes"]
      621 LOADK                            R21 K120 ["NetworkOwnerToolTip"]
      622 NAMECALL                         R18 R5 K22 ["getText"]
      624 CALL                             R18 3 1
      625 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      627 GETTABLEKS                       R18 R4 K107 ["Physics"]
      629 SETTABLEKS                       R18 R17 K36 ["Setting"]
      631 CALL                             R15 2 1
      632 SETTABLEKS                       R15 R14 K102 ["NetworkOwner"]
      634 CALL                             R11 3 1
      635 SETTABLEKS                       R11 R10 K14 ["PhysicsLabels"]
      637 GETUPVAL                         R11 5
      638 GETTABLEKS                       R11 R11 K7 ["createElement"]
      640 LOADK                            R12 K18 ["VisualizationModeCategory"]
      641 DUPTABLE                         R13 K20 [{"Title"}]
      642 LOADK                            R16 K21 ["VisualizationModeCategories"]
      643 LOADK                            R17 K15 ["PhysicsSimulation"]
      644 NAMECALL                         R14 R5 K22 ["getText"]
      646 CALL                             R14 3 1
      647 SETTABLEKS                       R14 R13 K19 ["Title"]
      649 DUPTABLE                         R14 K124 [{"CollisionFidelity", "ContactPoints", "WindDirection"}]
      650 GETUPVAL                         R16 9
      651 CALL                             R16 0 1
      652 JUMPIF                           R16 ; [+25]
      653 GETUPVAL                         R15 5
      654 GETTABLEKS                       R15 R15 K7 ["createElement"]
      656 GETUPVAL                         R16 8
      657 DUPTABLE                         R17 K126 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDecompositionGeometry"}]
      658 LOADK                            R20 K32 ["StudioModes"]
      659 LOADK                            R21 K121 ["CollisionFidelity"]
      660 NAMECALL                         R18 R5 K22 ["getText"]
      662 CALL                             R18 3 1
      663 SETTABLEKS                       R18 R17 K19 ["Title"]
      665 LOADK                            R20 K32 ["StudioModes"]
      666 LOADK                            R21 K127 ["CollisionFidelityToolTip"]
      667 NAMECALL                         R18 R5 K22 ["getText"]
      669 CALL                             R18 3 1
      670 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      672 GETTABLEKS                       R18 R4 K107 ["Physics"]
      674 SETTABLEKS                       R18 R17 K36 ["Setting"]
      676 CALL                             R15 2 1
      677 JUMP                             ; [+1]
      678 LOADNIL                          R15
      679 SETTABLEKS                       R15 R14 K121 ["CollisionFidelity"]
      681 GETUPVAL                         R15 5
      682 GETTABLEKS                       R15 R15 K7 ["createElement"]
      684 GETUPVAL                         R16 8
      685 DUPTABLE                         R17 K129 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreContactPointsShown"}]
      686 LOADK                            R20 K32 ["StudioModes"]
      687 LOADK                            R21 K122 ["ContactPoints"]
      688 NAMECALL                         R18 R5 K22 ["getText"]
      690 CALL                             R18 3 1
      691 SETTABLEKS                       R18 R17 K19 ["Title"]
      693 LOADK                            R20 K32 ["StudioModes"]
      694 LOADK                            R21 K130 ["ContactPointsToolTip"]
      695 NAMECALL                         R18 R5 K22 ["getText"]
      697 CALL                             R18 3 1
      698 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      700 GETTABLEKS                       R18 R4 K107 ["Physics"]
      702 SETTABLEKS                       R18 R17 K36 ["Setting"]
      704 CALL                             R15 2 1
      705 SETTABLEKS                       R15 R14 K122 ["ContactPoints"]
      707 GETUPVAL                         R15 5
      708 GETTABLEKS                       R15 R15 K7 ["createElement"]
      710 GETUPVAL                         R16 6
      711 DUPTABLE                         R17 K132 [{["Title"], ["ToolTip"], ["FeatureId"] = "WindControl", ["ActionId"] = "Toggle", ["Actions"]}]
      712 LOADK                            R20 K32 ["StudioModes"]
      713 LOADK                            R21 K123 ["WindDirection"]
      714 NAMECALL                         R18 R5 K22 ["getText"]
      716 CALL                             R18 3 1
      717 SETTABLEKS                       R18 R17 K19 ["Title"]
      719 LOADK                            R20 K32 ["StudioModes"]
      720 LOADK                            R21 K133 ["WindDirectionToolTip"]
      721 NAMECALL                         R18 R5 K22 ["getText"]
      723 CALL                             R18 3 1
      724 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      726 GETTABLEKS                       R18 R0 K30 ["Actions"]
      728 SETTABLEKS                       R18 R17 K30 ["Actions"]
      730 CALL                             R15 2 1
      731 SETTABLEKS                       R15 R14 K123 ["WindDirection"]
      733 CALL                             R11 3 1
      734 SETTABLEKS                       R11 R10 K15 ["PhysicsSimulation"]
      736 GETUPVAL                         R11 5
      737 GETTABLEKS                       R11 R11 K7 ["createElement"]
      739 LOADK                            R12 K18 ["VisualizationModeCategory"]
      740 DUPTABLE                         R13 K20 [{"Title"}]
      741 LOADK                            R16 K21 ["VisualizationModeCategories"]
      742 LOADK                            R17 K16 ["View"]
      743 NAMECALL                         R14 R5 K22 ["getText"]
      745 CALL                             R14 3 1
      746 SETTABLEKS                       R14 R13 K19 ["Title"]
      748 DUPTABLE                         R14 K139 [{"ViewSelector", "Grid", "GridMaterial", "Slim", "CollaboratorHighlights"}]
      749 GETUPVAL                         R15 5
      750 GETTABLEKS                       R15 R15 K7 ["createElement"]
      752 GETUPVAL                         R16 6
      753 DUPTABLE                         R17 K140 [{["Title"], ["ToolTip"], ["FeatureId"] = "ViewSelector", ["ActionId"] = "Toggle", ["Actions"]}]
      754 LOADK                            R20 K32 ["StudioModes"]
      755 LOADK                            R21 K134 ["ViewSelector"]
      756 NAMECALL                         R18 R5 K22 ["getText"]
      758 CALL                             R18 3 1
      759 SETTABLEKS                       R18 R17 K19 ["Title"]
      761 LOADK                            R20 K32 ["StudioModes"]
      762 LOADK                            R21 K141 ["ViewSelectorToolTip"]
      763 NAMECALL                         R18 R5 K22 ["getText"]
      765 CALL                             R18 3 1
      766 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      768 GETTABLEKS                       R18 R0 K30 ["Actions"]
      770 SETTABLEKS                       R18 R17 K30 ["Actions"]
      772 CALL                             R15 2 1
      773 SETTABLEKS                       R15 R14 K134 ["ViewSelector"]
      775 GETUPVAL                         R15 5
      776 GETTABLEKS                       R15 R15 K7 ["createElement"]
      778 GETUPVAL                         R16 6
      779 DUPTABLE                         R17 K143 [{["Title"], ["ToolTip"], ["FeatureId"] = "3DGrid", ["ActionId"] = "Toggle", ["Actions"]}]
      780 LOADK                            R20 K32 ["StudioModes"]
      781 LOADK                            R21 K135 ["Grid"]
      782 NAMECALL                         R18 R5 K22 ["getText"]
      784 CALL                             R18 3 1
      785 SETTABLEKS                       R18 R17 K19 ["Title"]
      787 LOADK                            R20 K32 ["StudioModes"]
      788 LOADK                            R21 K144 ["GridToolTip"]
      789 NAMECALL                         R18 R5 K22 ["getText"]
      791 CALL                             R18 3 1
      792 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      794 GETTABLEKS                       R18 R0 K30 ["Actions"]
      796 SETTABLEKS                       R18 R17 K30 ["Actions"]
      798 CALL                             R15 2 1
      799 SETTABLEKS                       R15 R14 K135 ["Grid"]
      801 GETUPVAL                         R15 5
      802 GETTABLEKS                       R15 R15 K7 ["createElement"]
      804 GETUPVAL                         R16 6
      805 DUPTABLE                         R17 K145 [{["Title"], ["ToolTip"], ["FeatureId"] = "GridMaterial", ["ActionId"] = "Toggle", ["Actions"]}]
      806 LOADK                            R20 K32 ["StudioModes"]
      807 LOADK                            R21 K136 ["GridMaterial"]
      808 NAMECALL                         R18 R5 K22 ["getText"]
      810 CALL                             R18 3 1
      811 SETTABLEKS                       R18 R17 K19 ["Title"]
      813 LOADK                            R20 K32 ["StudioModes"]
      814 LOADK                            R21 K146 ["GridMaterialToolTip"]
      815 NAMECALL                         R18 R5 K22 ["getText"]
      817 CALL                             R18 3 1
      818 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      820 GETTABLEKS                       R18 R0 K30 ["Actions"]
      822 SETTABLEKS                       R18 R17 K30 ["Actions"]
      824 CALL                             R15 2 1
      825 SETTABLEKS                       R15 R14 K136 ["GridMaterial"]
      827 MOVE                             R15 R3
      828 JUMPIFNOT                        R15 ; [+24]
      829 GETUPVAL                         R15 5
      830 GETTABLEKS                       R15 R15 K7 ["createElement"]
      832 GETUPVAL                         R16 6
      833 DUPTABLE                         R17 K149 [{["Title"], ["ToolTip"], ["FeatureId"] = "SLIM", ["ActionId"] = "ToggleDebug", ["Actions"]}]
      834 LOADK                            R20 K32 ["StudioModes"]
      835 LOADK                            R21 K147 ["SLIM"]
      836 NAMECALL                         R18 R5 K22 ["getText"]
      838 CALL                             R18 3 1
      839 SETTABLEKS                       R18 R17 K19 ["Title"]
      841 LOADK                            R20 K32 ["StudioModes"]
      842 LOADK                            R21 K150 ["SLIMToolTip"]
      843 NAMECALL                         R18 R5 K22 ["getText"]
      845 CALL                             R18 3 1
      846 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      848 GETTABLEKS                       R18 R0 K30 ["Actions"]
      850 SETTABLEKS                       R18 R17 K30 ["Actions"]
      852 CALL                             R15 2 1
      853 SETTABLEKS                       R15 R14 K137 ["Slim"]
      855 MOVE                             R15 R1
      856 JUMPIFNOT                        R15 ; [+23]
      857 GETUPVAL                         R15 5
      858 GETTABLEKS                       R15 R15 K7 ["createElement"]
      860 GETUPVAL                         R16 10
      861 DUPTABLE                         R17 K152 [{"Title", "ToolTip", "UseState"}]
      862 LOADK                            R20 K32 ["StudioModes"]
      863 LOADK                            R21 K138 ["CollaboratorHighlights"]
      864 NAMECALL                         R18 R5 K22 ["getText"]
      866 CALL                             R18 3 1
      867 SETTABLEKS                       R18 R17 K19 ["Title"]
      869 LOADK                            R20 K32 ["StudioModes"]
      870 LOADK                            R21 K153 ["CollaboratorHighlightsToolTip"]
      871 NAMECALL                         R18 R5 K22 ["getText"]
      873 CALL                             R18 3 1
      874 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      876 GETUPVAL                         R18 11
      877 SETTABLEKS                       R18 R17 K151 ["UseState"]
      879 CALL                             R15 2 1
      880 SETTABLEKS                       R15 R14 K138 ["CollaboratorHighlights"]
      882 CALL                             R11 3 1
      883 SETTABLEKS                       R11 R10 K16 ["View"]
      885 CALL                             R7 3 -1
      886 RETURN                           R7 -1

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
       61 GETTABLEKS                       R8 R8 K10 ["Modes"]
       63 GETTABLEKS                       R8 R8 K16 ["VisualizationMode"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R9 R0 K9 ["Src"]
       70 GETTABLEKS                       R9 R9 K17 ["Flags"]
       72 GETTABLEKS                       R9 R9 K18 ["getFFlagStudioVisualizationModesServiceFix"]
       74 CALL                             R8 1 1
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R10 R0 K9 ["Src"]
       79 GETTABLEKS                       R10 R10 K17 ["Flags"]
       81 GETTABLEKS                       R10 R10 K19 ["getFFlagStudioVisualizationModesTestSupport"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R11 R0 K9 ["Src"]
       88 GETTABLEKS                       R11 R11 K17 ["Flags"]
       90 GETTABLEKS                       R11 R11 K20 ["getFFlagStudioVisualizationModesShowSLIM"]
       92 CALL                             R10 1 1
       93 GETIMPORT                        R11 K5 [require]
       95 GETTABLEKS                       R12 R0 K9 ["Src"]
       97 GETTABLEKS                       R12 R12 K17 ["Flags"]
       99 GETTABLEKS                       R12 R12 K21 ["getFFlagUseAdornBasedCDDebugVis"]
      101 CALL                             R11 1 1
      102 GETIMPORT                        R12 K5 [require]
      104 GETTABLEKS                       R13 R0 K9 ["Src"]
      106 GETTABLEKS                       R13 R13 K17 ["Flags"]
      108 GETTABLEKS                       R13 R13 K22 ["getRenameEmulatorToSimulatorEngineFeature"]
      110 CALL                             R12 1 1
      111 GETTABLEKS                       R13 R1 K23 ["ContextServices"]
      113 DUPCLOSURE                       R14 K24 [PROTO_0]
      114 CAPTURE                          VAL R8
      115 CAPTURE                          VAL R9
      116 CAPTURE                          VAL R10
      117 CAPTURE                          VAL R13
      118 CAPTURE                          VAL R6
      119 CAPTURE                          VAL R2
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R12
      122 CAPTURE                          VAL R3
      123 CAPTURE                          VAL R11
      124 CAPTURE                          VAL R7
      125 CAPTURE                          VAL R5
      126 RETURN                           R14 1
