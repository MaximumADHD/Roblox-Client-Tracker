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
       55 LOADK                            R20 K32 ["StudioModes"]
       56 LOADK                            R21 K23 ["DeviceEmulation"]
       57 NAMECALL                         R18 R5 K22 ["getText"]
       59 CALL                             R18 3 1
       60 SETTABLEKS                       R18 R17 K19 ["Title"]
       62 LOADK                            R20 K32 ["StudioModes"]
       63 LOADK                            R21 K33 ["DeviceEmulationToolTip"]
       64 NAMECALL                         R18 R5 K22 ["getText"]
       66 CALL                             R18 3 1
       67 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
       69 GETTABLEKS                       R18 R0 K30 ["Actions"]
       71 SETTABLEKS                       R18 R17 K30 ["Actions"]
       73 CALL                             R15 2 1
       74 SETTABLEKS                       R15 R14 K23 ["DeviceEmulation"]
       76 GETUPVAL                         R15 5
       77 GETTABLEKS                       R15 R15 K7 ["createElement"]
       79 GETUPVAL                         R16 7
       80 DUPTABLE                         R17 K37 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDevelopmentGui"}]
       81 LOADK                            R20 K32 ["StudioModes"]
       82 LOADK                            R21 K24 ["GUIOverlay"]
       83 NAMECALL                         R18 R5 K22 ["getText"]
       85 CALL                             R18 3 1
       86 SETTABLEKS                       R18 R17 K19 ["Title"]
       88 LOADK                            R20 K32 ["StudioModes"]
       89 LOADK                            R21 K38 ["GUIOverlayToolTip"]
       90 NAMECALL                         R18 R5 K22 ["getText"]
       92 CALL                             R18 3 1
       93 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
       95 JUMPIFNOT                        R1 ; [+7]
       96 GETIMPORT                        R18 K40 [game]
       98 LOADK                            R20 K41 ["StarterGui"]
       99 NAMECALL                         R18 R18 K42 ["GetService"]
      101 CALL                             R18 2 1
      102 JUMP                             ; [+4]
      103 GETIMPORT                        R18 K40 [game]
      105 GETTABLEKS                       R18 R18 K41 ["StarterGui"]
      107 SETTABLEKS                       R18 R17 K34 ["Setting"]
      109 CALL                             R15 2 1
      110 SETTABLEKS                       R15 R14 K24 ["GUIOverlay"]
      112 CALL                             R11 3 1
      113 SETTABLEKS                       R11 R10 K9 ["GUI"]
      115 GETUPVAL                         R11 5
      116 GETTABLEKS                       R11 R11 K7 ["createElement"]
      118 LOADK                            R12 K18 ["VisualizationModeCategory"]
      119 DUPTABLE                         R13 K20 [{"Title"}]
      120 LOADK                            R16 K21 ["VisualizationModeCategories"]
      121 LOADK                            R17 K10 ["Lighting"]
      122 NAMECALL                         R14 R5 K22 ["getText"]
      124 CALL                             R14 3 1
      125 SETTABLEKS                       R14 R13 K19 ["Title"]
      127 DUPTABLE                         R14 K44 [{"Lights"}]
      128 GETUPVAL                         R15 5
      129 GETTABLEKS                       R15 R15 K7 ["createElement"]
      131 GETUPVAL                         R16 7
      132 DUPTABLE                         R17 K46 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Light Guides"}]
      133 LOADK                            R20 K32 ["StudioModes"]
      134 LOADK                            R21 K43 ["Lights"]
      135 NAMECALL                         R18 R5 K22 ["getText"]
      137 CALL                             R18 3 1
      138 SETTABLEKS                       R18 R17 K19 ["Title"]
      140 LOADK                            R20 K32 ["StudioModes"]
      141 LOADK                            R21 K47 ["LightsToolTip"]
      142 NAMECALL                         R18 R5 K22 ["getText"]
      144 CALL                             R18 3 1
      145 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      147 GETTABLEKS                       R18 R4 K5 ["Studio"]
      149 SETTABLEKS                       R18 R17 K34 ["Setting"]
      151 CALL                             R15 2 1
      152 SETTABLEKS                       R15 R14 K43 ["Lights"]
      154 CALL                             R11 3 1
      155 SETTABLEKS                       R11 R10 K10 ["Lighting"]
      157 GETUPVAL                         R11 5
      158 GETTABLEKS                       R11 R11 K7 ["createElement"]
      160 LOADK                            R12 K18 ["VisualizationModeCategory"]
      161 DUPTABLE                         R13 K20 [{"Title"}]
      162 LOADK                            R16 K21 ["VisualizationModeCategories"]
      163 LOADK                            R17 K11 ["Animation"]
      164 NAMECALL                         R14 R5 K22 ["getText"]
      166 CALL                             R14 3 1
      167 SETTABLEKS                       R14 R13 K19 ["Title"]
      169 DUPTABLE                         R14 K53 [{"ShowAnimationSkeleton", "ShowAnimationSkeletonAxes", "ShowAnimationSkeletonAttachments", "ShowAnimationSkeletonText", "ShowAnimationSkeletonRotations"}]
      170 GETUPVAL                         R15 5
      171 GETTABLEKS                       R15 R15 K7 ["createElement"]
      173 GETUPVAL                         R16 7
      174 DUPTABLE                         R17 K56 [{["Title"], ["ToolTip"], ["SortOrder"] = 1, ["Setting"], ["Property"] = "Show Animation Skeleton"}]
      175 LOADK                            R20 K32 ["StudioModes"]
      176 LOADK                            R21 K48 ["ShowAnimationSkeleton"]
      177 NAMECALL                         R18 R5 K22 ["getText"]
      179 CALL                             R18 3 1
      180 SETTABLEKS                       R18 R17 K19 ["Title"]
      182 LOADK                            R20 K32 ["StudioModes"]
      183 LOADK                            R21 K57 ["ShowAnimationSkeletonToolTip"]
      184 NAMECALL                         R18 R5 K22 ["getText"]
      186 CALL                             R18 3 1
      187 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      189 GETTABLEKS                       R18 R4 K5 ["Studio"]
      191 SETTABLEKS                       R18 R17 K34 ["Setting"]
      193 CALL                             R15 2 1
      194 SETTABLEKS                       R15 R14 K48 ["ShowAnimationSkeleton"]
      196 MOVE                             R15 R6
      197 JUMPIFNOT                        R15 ; [+24]
      198 GETUPVAL                         R15 5
      199 GETTABLEKS                       R15 R15 K7 ["createElement"]
      201 GETUPVAL                         R16 7
      202 DUPTABLE                         R17 K60 [{["Title"], ["ToolTip"], ["SortOrder"] = 2, ["Setting"], ["Property"] = "Show Animation Skeleton Axes"}]
      203 LOADK                            R20 K32 ["StudioModes"]
      204 LOADK                            R21 K49 ["ShowAnimationSkeletonAxes"]
      205 NAMECALL                         R18 R5 K22 ["getText"]
      207 CALL                             R18 3 1
      208 SETTABLEKS                       R18 R17 K19 ["Title"]
      210 LOADK                            R20 K32 ["StudioModes"]
      211 LOADK                            R21 K61 ["ShowAnimationSkeletonAxesToolTip"]
      212 NAMECALL                         R18 R5 K22 ["getText"]
      214 CALL                             R18 3 1
      215 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      217 GETTABLEKS                       R18 R4 K5 ["Studio"]
      219 SETTABLEKS                       R18 R17 K34 ["Setting"]
      221 CALL                             R15 2 1
      222 SETTABLEKS                       R15 R14 K49 ["ShowAnimationSkeletonAxes"]
      224 MOVE                             R15 R6
      225 JUMPIFNOT                        R15 ; [+24]
      226 GETUPVAL                         R15 5
      227 GETTABLEKS                       R15 R15 K7 ["createElement"]
      229 GETUPVAL                         R16 7
      230 DUPTABLE                         R17 K64 [{["Title"], ["ToolTip"], ["SortOrder"] = 3, ["Setting"], ["Property"] = "Show Animation Skeleton Attachments"}]
      231 LOADK                            R20 K32 ["StudioModes"]
      232 LOADK                            R21 K50 ["ShowAnimationSkeletonAttachments"]
      233 NAMECALL                         R18 R5 K22 ["getText"]
      235 CALL                             R18 3 1
      236 SETTABLEKS                       R18 R17 K19 ["Title"]
      238 LOADK                            R20 K32 ["StudioModes"]
      239 LOADK                            R21 K65 ["ShowAnimationSkeletonAttachmentsToolTip"]
      240 NAMECALL                         R18 R5 K22 ["getText"]
      242 CALL                             R18 3 1
      243 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      245 GETTABLEKS                       R18 R4 K5 ["Studio"]
      247 SETTABLEKS                       R18 R17 K34 ["Setting"]
      249 CALL                             R15 2 1
      250 SETTABLEKS                       R15 R14 K50 ["ShowAnimationSkeletonAttachments"]
      252 MOVE                             R15 R6
      253 JUMPIFNOT                        R15 ; [+24]
      254 GETUPVAL                         R15 5
      255 GETTABLEKS                       R15 R15 K7 ["createElement"]
      257 GETUPVAL                         R16 7
      258 DUPTABLE                         R17 K68 [{["Title"], ["ToolTip"], ["SortOrder"] = 4, ["Setting"], ["Property"] = "Show Animation Skeleton Text"}]
      259 LOADK                            R20 K32 ["StudioModes"]
      260 LOADK                            R21 K51 ["ShowAnimationSkeletonText"]
      261 NAMECALL                         R18 R5 K22 ["getText"]
      263 CALL                             R18 3 1
      264 SETTABLEKS                       R18 R17 K19 ["Title"]
      266 LOADK                            R20 K32 ["StudioModes"]
      267 LOADK                            R21 K69 ["ShowAnimationSkeletonTextToolTip"]
      268 NAMECALL                         R18 R5 K22 ["getText"]
      270 CALL                             R18 3 1
      271 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      273 GETTABLEKS                       R18 R4 K5 ["Studio"]
      275 SETTABLEKS                       R18 R17 K34 ["Setting"]
      277 CALL                             R15 2 1
      278 SETTABLEKS                       R15 R14 K51 ["ShowAnimationSkeletonText"]
      280 MOVE                             R15 R6
      281 JUMPIFNOT                        R15 ; [+24]
      282 GETUPVAL                         R15 5
      283 GETTABLEKS                       R15 R15 K7 ["createElement"]
      285 GETUPVAL                         R16 7
      286 DUPTABLE                         R17 K72 [{["Title"], ["ToolTip"], ["SortOrder"] = 5, ["Setting"], ["Property"] = "Show Animation Skeleton Rotations"}]
      287 LOADK                            R20 K32 ["StudioModes"]
      288 LOADK                            R21 K52 ["ShowAnimationSkeletonRotations"]
      289 NAMECALL                         R18 R5 K22 ["getText"]
      291 CALL                             R18 3 1
      292 SETTABLEKS                       R18 R17 K19 ["Title"]
      294 LOADK                            R20 K32 ["StudioModes"]
      295 LOADK                            R21 K73 ["ShowAnimationSkeletonRotationsToolTip"]
      296 NAMECALL                         R18 R5 K22 ["getText"]
      298 CALL                             R18 3 1
      299 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      301 GETTABLEKS                       R18 R4 K5 ["Studio"]
      303 SETTABLEKS                       R18 R17 K34 ["Setting"]
      305 CALL                             R15 2 1
      306 SETTABLEKS                       R15 R14 K52 ["ShowAnimationSkeletonRotations"]
      308 CALL                             R11 3 1
      309 SETTABLEKS                       R11 R10 K11 ["Animation"]
      311 GETUPVAL                         R11 5
      312 GETTABLEKS                       R11 R11 K7 ["createElement"]
      314 LOADK                            R12 K18 ["VisualizationModeCategory"]
      315 DUPTABLE                         R13 K20 [{"Title"}]
      316 LOADK                            R16 K21 ["VisualizationModeCategories"]
      317 LOADK                            R17 K12 ["Pathfinding"]
      318 NAMECALL                         R14 R5 K22 ["getText"]
      320 CALL                             R14 3 1
      321 SETTABLEKS                       R14 R13 K19 ["Title"]
      323 DUPTABLE                         R14 K77 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
      324 GETUPVAL                         R15 5
      325 GETTABLEKS                       R15 R15 K7 ["createElement"]
      327 GETUPVAL                         R16 7
      328 DUPTABLE                         R17 K79 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Mesh"}]
      329 LOADK                            R20 K32 ["StudioModes"]
      330 LOADK                            R21 K74 ["PathfindingMesh"]
      331 NAMECALL                         R18 R5 K22 ["getText"]
      333 CALL                             R18 3 1
      334 SETTABLEKS                       R18 R17 K19 ["Title"]
      336 LOADK                            R20 K32 ["StudioModes"]
      337 LOADK                            R21 K80 ["PathfindingMeshToolTip"]
      338 NAMECALL                         R18 R5 K22 ["getText"]
      340 CALL                             R18 3 1
      341 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      343 GETTABLEKS                       R18 R4 K5 ["Studio"]
      345 SETTABLEKS                       R18 R17 K34 ["Setting"]
      347 CALL                             R15 2 1
      348 SETTABLEKS                       R15 R14 K74 ["PathfindingMesh"]
      350 GETUPVAL                         R15 5
      351 GETTABLEKS                       R15 R15 K7 ["createElement"]
      353 GETUPVAL                         R16 7
      354 DUPTABLE                         R17 K82 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Labels"}]
      355 LOADK                            R20 K32 ["StudioModes"]
      356 LOADK                            R21 K75 ["PathfindingModifiers"]
      357 NAMECALL                         R18 R5 K22 ["getText"]
      359 CALL                             R18 3 1
      360 SETTABLEKS                       R18 R17 K19 ["Title"]
      362 LOADK                            R20 K32 ["StudioModes"]
      363 LOADK                            R21 K83 ["PathfindingModifiersToolTip"]
      364 NAMECALL                         R18 R5 K22 ["getText"]
      366 CALL                             R18 3 1
      367 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      369 GETTABLEKS                       R18 R4 K5 ["Studio"]
      371 SETTABLEKS                       R18 R17 K34 ["Setting"]
      373 CALL                             R15 2 1
      374 SETTABLEKS                       R15 R14 K75 ["PathfindingModifiers"]
      376 GETUPVAL                         R15 5
      377 GETTABLEKS                       R15 R15 K7 ["createElement"]
      379 GETUPVAL                         R16 7
      380 DUPTABLE                         R17 K85 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Pathfinding Links"}]
      381 LOADK                            R20 K32 ["StudioModes"]
      382 LOADK                            R21 K76 ["PathfindingLinks"]
      383 NAMECALL                         R18 R5 K22 ["getText"]
      385 CALL                             R18 3 1
      386 SETTABLEKS                       R18 R17 K19 ["Title"]
      388 LOADK                            R20 K32 ["StudioModes"]
      389 LOADK                            R21 K86 ["PathfindingLinksToolTip"]
      390 NAMECALL                         R18 R5 K22 ["getText"]
      392 CALL                             R18 3 1
      393 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      395 GETTABLEKS                       R18 R4 K5 ["Studio"]
      397 SETTABLEKS                       R18 R17 K34 ["Setting"]
      399 CALL                             R15 2 1
      400 SETTABLEKS                       R15 R14 K76 ["PathfindingLinks"]
      402 CALL                             R11 3 1
      403 SETTABLEKS                       R11 R10 K12 ["Pathfinding"]
      405 GETUPVAL                         R11 5
      406 GETTABLEKS                       R11 R11 K7 ["createElement"]
      408 LOADK                            R12 K18 ["VisualizationModeCategory"]
      409 DUPTABLE                         R13 K20 [{"Title"}]
      410 LOADK                            R16 K21 ["VisualizationModeCategories"]
      411 LOADK                            R17 K13 ["PhysicsConstraints"]
      412 NAMECALL                         R14 R5 K22 ["getText"]
      414 CALL                             R14 3 1
      415 SETTABLEKS                       R14 R13 K19 ["Title"]
      417 DUPTABLE                         R14 K89 [{"Constraints", "Welds"}]
      418 GETUPVAL                         R15 5
      419 GETTABLEKS                       R15 R15 K7 ["createElement"]
      421 GETUPVAL                         R16 6
      422 DUPTABLE                         R17 K91 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowDetails", ["Actions"]}]
      423 LOADK                            R20 K32 ["StudioModes"]
      424 LOADK                            R21 K87 ["Constraints"]
      425 NAMECALL                         R18 R5 K22 ["getText"]
      427 CALL                             R18 3 1
      428 SETTABLEKS                       R18 R17 K19 ["Title"]
      430 LOADK                            R20 K32 ["StudioModes"]
      431 LOADK                            R21 K92 ["ConstraintsToolTip"]
      432 NAMECALL                         R18 R5 K22 ["getText"]
      434 CALL                             R18 3 1
      435 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      437 GETTABLEKS                       R18 R0 K30 ["Actions"]
      439 SETTABLEKS                       R18 R17 K30 ["Actions"]
      441 CALL                             R15 2 1
      442 SETTABLEKS                       R15 R14 K87 ["Constraints"]
      444 GETUPVAL                         R15 5
      445 GETTABLEKS                       R15 R15 K7 ["createElement"]
      447 GETUPVAL                         R16 6
      448 DUPTABLE                         R17 K94 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowWelds", ["Actions"]}]
      449 LOADK                            R20 K32 ["StudioModes"]
      450 LOADK                            R21 K88 ["Welds"]
      451 NAMECALL                         R18 R5 K22 ["getText"]
      453 CALL                             R18 3 1
      454 SETTABLEKS                       R18 R17 K19 ["Title"]
      456 LOADK                            R20 K32 ["StudioModes"]
      457 LOADK                            R21 K95 ["WeldsToolTip"]
      458 NAMECALL                         R18 R5 K22 ["getText"]
      460 CALL                             R18 3 1
      461 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      463 GETTABLEKS                       R18 R0 K30 ["Actions"]
      465 SETTABLEKS                       R18 R17 K30 ["Actions"]
      467 CALL                             R15 2 1
      468 SETTABLEKS                       R15 R14 K88 ["Welds"]
      470 CALL                             R11 3 1
      471 SETTABLEKS                       R11 R10 K13 ["PhysicsConstraints"]
      473 GETUPVAL                         R11 5
      474 GETTABLEKS                       R11 R11 K7 ["createElement"]
      476 LOADK                            R12 K18 ["VisualizationModeCategory"]
      477 DUPTABLE                         R13 K20 [{"Title"}]
      478 LOADK                            R16 K21 ["VisualizationModeCategories"]
      479 LOADK                            R17 K14 ["PhysicsLabels"]
      480 NAMECALL                         R14 R5 K22 ["getText"]
      482 CALL                             R14 3 1
      483 SETTABLEKS                       R14 R13 K19 ["Title"]
      485 DUPTABLE                         R14 K101 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
      486 GETUPVAL                         R15 5
      487 GETTABLEKS                       R15 R15 K7 ["createElement"]
      489 GETUPVAL                         R16 7
      490 DUPTABLE                         R17 K103 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAnchorsShown"}]
      491 LOADK                            R20 K32 ["StudioModes"]
      492 LOADK                            R21 K96 ["AnchoredParts"]
      493 NAMECALL                         R18 R5 K22 ["getText"]
      495 CALL                             R18 3 1
      496 SETTABLEKS                       R18 R17 K19 ["Title"]
      498 LOADK                            R20 K32 ["StudioModes"]
      499 LOADK                            R21 K104 ["AnchoredPartsToolTip"]
      500 NAMECALL                         R18 R5 K22 ["getText"]
      502 CALL                             R18 3 1
      503 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      505 GETTABLEKS                       R18 R4 K105 ["Physics"]
      507 SETTABLEKS                       R18 R17 K34 ["Setting"]
      509 CALL                             R15 2 1
      510 SETTABLEKS                       R15 R14 K96 ["AnchoredParts"]
      512 GETUPVAL                         R15 5
      513 GETTABLEKS                       R15 R15 K7 ["createElement"]
      515 GETUPVAL                         R16 7
      516 DUPTABLE                         R17 K107 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAwakePartsHighlighted"}]
      517 LOADK                            R20 K32 ["StudioModes"]
      518 LOADK                            R21 K97 ["AwakeParts"]
      519 NAMECALL                         R18 R5 K22 ["getText"]
      521 CALL                             R18 3 1
      522 SETTABLEKS                       R18 R17 K19 ["Title"]
      524 LOADK                            R20 K32 ["StudioModes"]
      525 LOADK                            R21 K108 ["AwakePartsToolTip"]
      526 NAMECALL                         R18 R5 K22 ["getText"]
      528 CALL                             R18 3 1
      529 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      531 GETTABLEKS                       R18 R4 K105 ["Physics"]
      533 SETTABLEKS                       R18 R17 K34 ["Setting"]
      535 CALL                             R15 2 1
      536 SETTABLEKS                       R15 R14 K97 ["AwakeParts"]
      538 GETUPVAL                         R15 5
      539 GETTABLEKS                       R15 R15 K7 ["createElement"]
      541 GETUPVAL                         R16 7
      542 DUPTABLE                         R17 K110 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAssembliesShown"}]
      543 LOADK                            R20 K32 ["StudioModes"]
      544 LOADK                            R21 K111 ["ShowAssemblies"]
      545 NAMECALL                         R18 R5 K22 ["getText"]
      547 CALL                             R18 3 1
      548 SETTABLEKS                       R18 R17 K19 ["Title"]
      550 LOADK                            R20 K32 ["StudioModes"]
      551 LOADK                            R21 K112 ["ShowAssembliesToolTip"]
      552 NAMECALL                         R18 R5 K22 ["getText"]
      554 CALL                             R18 3 1
      555 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      557 GETTABLEKS                       R18 R4 K105 ["Physics"]
      559 SETTABLEKS                       R18 R17 K34 ["Setting"]
      561 CALL                             R15 2 1
      562 SETTABLEKS                       R15 R14 K98 ["Assemblies"]
      564 GETUPVAL                         R15 5
      565 GETTABLEKS                       R15 R15 K7 ["createElement"]
      567 GETUPVAL                         R16 7
      568 DUPTABLE                         R17 K114 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreMechanismsShown"}]
      569 LOADK                            R20 K32 ["StudioModes"]
      570 LOADK                            R21 K99 ["Mechanisms"]
      571 NAMECALL                         R18 R5 K22 ["getText"]
      573 CALL                             R18 3 1
      574 SETTABLEKS                       R18 R17 K19 ["Title"]
      576 LOADK                            R20 K32 ["StudioModes"]
      577 LOADK                            R21 K115 ["MechanismsToolTip"]
      578 NAMECALL                         R18 R5 K22 ["getText"]
      580 CALL                             R18 3 1
      581 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      583 GETTABLEKS                       R18 R4 K105 ["Physics"]
      585 SETTABLEKS                       R18 R17 K34 ["Setting"]
      587 CALL                             R15 2 1
      588 SETTABLEKS                       R15 R14 K99 ["Mechanisms"]
      590 GETUPVAL                         R15 5
      591 GETTABLEKS                       R15 R15 K7 ["createElement"]
      593 GETUPVAL                         R16 7
      594 DUPTABLE                         R17 K117 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreOwnersShown"}]
      595 LOADK                            R20 K32 ["StudioModes"]
      596 LOADK                            R21 K100 ["NetworkOwner"]
      597 NAMECALL                         R18 R5 K22 ["getText"]
      599 CALL                             R18 3 1
      600 SETTABLEKS                       R18 R17 K19 ["Title"]
      602 LOADK                            R20 K32 ["StudioModes"]
      603 LOADK                            R21 K118 ["NetworkOwnerToolTip"]
      604 NAMECALL                         R18 R5 K22 ["getText"]
      606 CALL                             R18 3 1
      607 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      609 GETTABLEKS                       R18 R4 K105 ["Physics"]
      611 SETTABLEKS                       R18 R17 K34 ["Setting"]
      613 CALL                             R15 2 1
      614 SETTABLEKS                       R15 R14 K100 ["NetworkOwner"]
      616 CALL                             R11 3 1
      617 SETTABLEKS                       R11 R10 K14 ["PhysicsLabels"]
      619 GETUPVAL                         R11 5
      620 GETTABLEKS                       R11 R11 K7 ["createElement"]
      622 LOADK                            R12 K18 ["VisualizationModeCategory"]
      623 DUPTABLE                         R13 K20 [{"Title"}]
      624 LOADK                            R16 K21 ["VisualizationModeCategories"]
      625 LOADK                            R17 K15 ["PhysicsSimulation"]
      626 NAMECALL                         R14 R5 K22 ["getText"]
      628 CALL                             R14 3 1
      629 SETTABLEKS                       R14 R13 K19 ["Title"]
      631 DUPTABLE                         R14 K122 [{"CollisionFidelity", "ContactPoints", "WindDirection"}]
      632 GETUPVAL                         R16 8
      633 CALL                             R16 0 1
      634 JUMPIF                           R16 ; [+25]
      635 GETUPVAL                         R15 5
      636 GETTABLEKS                       R15 R15 K7 ["createElement"]
      638 GETUPVAL                         R16 7
      639 DUPTABLE                         R17 K124 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDecompositionGeometry"}]
      640 LOADK                            R20 K32 ["StudioModes"]
      641 LOADK                            R21 K119 ["CollisionFidelity"]
      642 NAMECALL                         R18 R5 K22 ["getText"]
      644 CALL                             R18 3 1
      645 SETTABLEKS                       R18 R17 K19 ["Title"]
      647 LOADK                            R20 K32 ["StudioModes"]
      648 LOADK                            R21 K125 ["CollisionFidelityToolTip"]
      649 NAMECALL                         R18 R5 K22 ["getText"]
      651 CALL                             R18 3 1
      652 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      654 GETTABLEKS                       R18 R4 K105 ["Physics"]
      656 SETTABLEKS                       R18 R17 K34 ["Setting"]
      658 CALL                             R15 2 1
      659 JUMP                             ; [+1]
      660 LOADNIL                          R15
      661 SETTABLEKS                       R15 R14 K119 ["CollisionFidelity"]
      663 GETUPVAL                         R15 5
      664 GETTABLEKS                       R15 R15 K7 ["createElement"]
      666 GETUPVAL                         R16 7
      667 DUPTABLE                         R17 K127 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreContactPointsShown"}]
      668 LOADK                            R20 K32 ["StudioModes"]
      669 LOADK                            R21 K120 ["ContactPoints"]
      670 NAMECALL                         R18 R5 K22 ["getText"]
      672 CALL                             R18 3 1
      673 SETTABLEKS                       R18 R17 K19 ["Title"]
      675 LOADK                            R20 K32 ["StudioModes"]
      676 LOADK                            R21 K128 ["ContactPointsToolTip"]
      677 NAMECALL                         R18 R5 K22 ["getText"]
      679 CALL                             R18 3 1
      680 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      682 GETTABLEKS                       R18 R4 K105 ["Physics"]
      684 SETTABLEKS                       R18 R17 K34 ["Setting"]
      686 CALL                             R15 2 1
      687 SETTABLEKS                       R15 R14 K120 ["ContactPoints"]
      689 GETUPVAL                         R15 5
      690 GETTABLEKS                       R15 R15 K7 ["createElement"]
      692 GETUPVAL                         R16 6
      693 DUPTABLE                         R17 K130 [{["Title"], ["ToolTip"], ["FeatureId"] = "WindControl", ["ActionId"] = "Toggle", ["Actions"]}]
      694 LOADK                            R20 K32 ["StudioModes"]
      695 LOADK                            R21 K121 ["WindDirection"]
      696 NAMECALL                         R18 R5 K22 ["getText"]
      698 CALL                             R18 3 1
      699 SETTABLEKS                       R18 R17 K19 ["Title"]
      701 LOADK                            R20 K32 ["StudioModes"]
      702 LOADK                            R21 K131 ["WindDirectionToolTip"]
      703 NAMECALL                         R18 R5 K22 ["getText"]
      705 CALL                             R18 3 1
      706 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      708 GETTABLEKS                       R18 R0 K30 ["Actions"]
      710 SETTABLEKS                       R18 R17 K30 ["Actions"]
      712 CALL                             R15 2 1
      713 SETTABLEKS                       R15 R14 K121 ["WindDirection"]
      715 CALL                             R11 3 1
      716 SETTABLEKS                       R11 R10 K15 ["PhysicsSimulation"]
      718 GETUPVAL                         R11 5
      719 GETTABLEKS                       R11 R11 K7 ["createElement"]
      721 LOADK                            R12 K18 ["VisualizationModeCategory"]
      722 DUPTABLE                         R13 K20 [{"Title"}]
      723 LOADK                            R16 K21 ["VisualizationModeCategories"]
      724 LOADK                            R17 K16 ["View"]
      725 NAMECALL                         R14 R5 K22 ["getText"]
      727 CALL                             R14 3 1
      728 SETTABLEKS                       R14 R13 K19 ["Title"]
      730 DUPTABLE                         R14 K137 [{"ViewSelector", "Grid", "GridMaterial", "Slim", "CollaboratorHighlights"}]
      731 GETUPVAL                         R15 5
      732 GETTABLEKS                       R15 R15 K7 ["createElement"]
      734 GETUPVAL                         R16 6
      735 DUPTABLE                         R17 K138 [{["Title"], ["ToolTip"], ["FeatureId"] = "ViewSelector", ["ActionId"] = "Toggle", ["Actions"]}]
      736 LOADK                            R20 K32 ["StudioModes"]
      737 LOADK                            R21 K132 ["ViewSelector"]
      738 NAMECALL                         R18 R5 K22 ["getText"]
      740 CALL                             R18 3 1
      741 SETTABLEKS                       R18 R17 K19 ["Title"]
      743 LOADK                            R20 K32 ["StudioModes"]
      744 LOADK                            R21 K139 ["ViewSelectorToolTip"]
      745 NAMECALL                         R18 R5 K22 ["getText"]
      747 CALL                             R18 3 1
      748 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      750 GETTABLEKS                       R18 R0 K30 ["Actions"]
      752 SETTABLEKS                       R18 R17 K30 ["Actions"]
      754 CALL                             R15 2 1
      755 SETTABLEKS                       R15 R14 K132 ["ViewSelector"]
      757 GETUPVAL                         R15 5
      758 GETTABLEKS                       R15 R15 K7 ["createElement"]
      760 GETUPVAL                         R16 6
      761 DUPTABLE                         R17 K141 [{["Title"], ["ToolTip"], ["FeatureId"] = "3DGrid", ["ActionId"] = "Toggle", ["Actions"]}]
      762 LOADK                            R20 K32 ["StudioModes"]
      763 LOADK                            R21 K133 ["Grid"]
      764 NAMECALL                         R18 R5 K22 ["getText"]
      766 CALL                             R18 3 1
      767 SETTABLEKS                       R18 R17 K19 ["Title"]
      769 LOADK                            R20 K32 ["StudioModes"]
      770 LOADK                            R21 K142 ["GridToolTip"]
      771 NAMECALL                         R18 R5 K22 ["getText"]
      773 CALL                             R18 3 1
      774 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      776 GETTABLEKS                       R18 R0 K30 ["Actions"]
      778 SETTABLEKS                       R18 R17 K30 ["Actions"]
      780 CALL                             R15 2 1
      781 SETTABLEKS                       R15 R14 K133 ["Grid"]
      783 GETUPVAL                         R15 5
      784 GETTABLEKS                       R15 R15 K7 ["createElement"]
      786 GETUPVAL                         R16 6
      787 DUPTABLE                         R17 K143 [{["Title"], ["ToolTip"], ["FeatureId"] = "GridMaterial", ["ActionId"] = "Toggle", ["Actions"]}]
      788 LOADK                            R20 K32 ["StudioModes"]
      789 LOADK                            R21 K134 ["GridMaterial"]
      790 NAMECALL                         R18 R5 K22 ["getText"]
      792 CALL                             R18 3 1
      793 SETTABLEKS                       R18 R17 K19 ["Title"]
      795 LOADK                            R20 K32 ["StudioModes"]
      796 LOADK                            R21 K144 ["GridMaterialToolTip"]
      797 NAMECALL                         R18 R5 K22 ["getText"]
      799 CALL                             R18 3 1
      800 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      802 GETTABLEKS                       R18 R0 K30 ["Actions"]
      804 SETTABLEKS                       R18 R17 K30 ["Actions"]
      806 CALL                             R15 2 1
      807 SETTABLEKS                       R15 R14 K134 ["GridMaterial"]
      809 MOVE                             R15 R3
      810 JUMPIFNOT                        R15 ; [+24]
      811 GETUPVAL                         R15 5
      812 GETTABLEKS                       R15 R15 K7 ["createElement"]
      814 GETUPVAL                         R16 6
      815 DUPTABLE                         R17 K147 [{["Title"], ["ToolTip"], ["FeatureId"] = "SLIM", ["ActionId"] = "ToggleDebug", ["Actions"]}]
      816 LOADK                            R20 K32 ["StudioModes"]
      817 LOADK                            R21 K145 ["SLIM"]
      818 NAMECALL                         R18 R5 K22 ["getText"]
      820 CALL                             R18 3 1
      821 SETTABLEKS                       R18 R17 K19 ["Title"]
      823 LOADK                            R20 K32 ["StudioModes"]
      824 LOADK                            R21 K148 ["SLIMToolTip"]
      825 NAMECALL                         R18 R5 K22 ["getText"]
      827 CALL                             R18 3 1
      828 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      830 GETTABLEKS                       R18 R0 K30 ["Actions"]
      832 SETTABLEKS                       R18 R17 K30 ["Actions"]
      834 CALL                             R15 2 1
      835 SETTABLEKS                       R15 R14 K135 ["Slim"]
      837 MOVE                             R15 R1
      838 JUMPIFNOT                        R15 ; [+23]
      839 GETUPVAL                         R15 5
      840 GETTABLEKS                       R15 R15 K7 ["createElement"]
      842 GETUPVAL                         R16 9
      843 DUPTABLE                         R17 K150 [{"Title", "ToolTip", "UseState"}]
      844 LOADK                            R20 K32 ["StudioModes"]
      845 LOADK                            R21 K136 ["CollaboratorHighlights"]
      846 NAMECALL                         R18 R5 K22 ["getText"]
      848 CALL                             R18 3 1
      849 SETTABLEKS                       R18 R17 K19 ["Title"]
      851 LOADK                            R20 K32 ["StudioModes"]
      852 LOADK                            R21 K151 ["CollaboratorHighlightsToolTip"]
      853 NAMECALL                         R18 R5 K22 ["getText"]
      855 CALL                             R18 3 1
      856 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      858 GETUPVAL                         R18 10
      859 SETTABLEKS                       R18 R17 K149 ["UseState"]
      861 CALL                             R15 2 1
      862 SETTABLEKS                       R15 R14 K136 ["CollaboratorHighlights"]
      864 CALL                             R11 3 1
      865 SETTABLEKS                       R11 R10 K16 ["View"]
      867 CALL                             R7 3 -1
      868 RETURN                           R7 -1

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
      102 GETTABLEKS                       R12 R1 K22 ["ContextServices"]
      104 DUPCLOSURE                       R13 K23 [PROTO_0]
      105 CAPTURE                          VAL R8
      106 CAPTURE                          VAL R9
      107 CAPTURE                          VAL R10
      108 CAPTURE                          VAL R12
      109 CAPTURE                          VAL R6
      110 CAPTURE                          VAL R2
      111 CAPTURE                          VAL R4
      112 CAPTURE                          VAL R3
      113 CAPTURE                          VAL R11
      114 CAPTURE                          VAL R7
      115 CAPTURE                          VAL R5
      116 RETURN                           R13 1
