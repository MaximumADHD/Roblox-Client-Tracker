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
       54 DUPTABLE                         R17 K30 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
       55 LOADK                            R20 K31 ["StudioModes"]
       56 LOADK                            R21 K23 ["DeviceEmulation"]
       57 NAMECALL                         R18 R5 K22 ["getText"]
       59 CALL                             R18 3 1
       60 SETTABLEKS                       R18 R17 K19 ["Title"]
       62 LOADK                            R20 K31 ["StudioModes"]
       63 LOADK                            R21 K32 ["DeviceEmulationToolTip"]
       64 NAMECALL                         R18 R5 K22 ["getText"]
       66 CALL                             R18 3 1
       67 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
       69 LOADK                            R18 K23 ["DeviceEmulation"]
       70 SETTABLEKS                       R18 R17 K27 ["FeatureId"]
       72 LOADK                            R18 K33 ["Toggle"]
       73 SETTABLEKS                       R18 R17 K28 ["ActionId"]
       75 GETTABLEKS                       R18 R0 K29 ["Actions"]
       77 SETTABLEKS                       R18 R17 K29 ["Actions"]
       79 CALL                             R15 2 1
       80 SETTABLEKS                       R15 R14 K23 ["DeviceEmulation"]
       82 GETUPVAL                         R15 5
       83 GETTABLEKS                       R15 R15 K7 ["createElement"]
       85 GETUPVAL                         R16 7
       86 DUPTABLE                         R17 K36 [{"Title", "ToolTip", "Setting", "Property"}]
       87 LOADK                            R20 K31 ["StudioModes"]
       88 LOADK                            R21 K24 ["GUIOverlay"]
       89 NAMECALL                         R18 R5 K22 ["getText"]
       91 CALL                             R18 3 1
       92 SETTABLEKS                       R18 R17 K19 ["Title"]
       94 LOADK                            R20 K31 ["StudioModes"]
       95 LOADK                            R21 K37 ["GUIOverlayToolTip"]
       96 NAMECALL                         R18 R5 K22 ["getText"]
       98 CALL                             R18 3 1
       99 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      101 JUMPIFNOT                        R1 ; [+7]
      102 GETIMPORT                        R18 K39 [game]
      104 LOADK                            R20 K40 ["StarterGui"]
      105 NAMECALL                         R18 R18 K41 ["GetService"]
      107 CALL                             R18 2 1
      108 JUMP                             ; [+4]
      109 GETIMPORT                        R18 K39 [game]
      111 GETTABLEKS                       R18 R18 K40 ["StarterGui"]
      113 SETTABLEKS                       R18 R17 K34 ["Setting"]
      115 LOADK                            R18 K42 ["ShowDevelopmentGui"]
      116 SETTABLEKS                       R18 R17 K35 ["Property"]
      118 CALL                             R15 2 1
      119 SETTABLEKS                       R15 R14 K24 ["GUIOverlay"]
      121 CALL                             R11 3 1
      122 SETTABLEKS                       R11 R10 K9 ["GUI"]
      124 GETUPVAL                         R11 5
      125 GETTABLEKS                       R11 R11 K7 ["createElement"]
      127 LOADK                            R12 K18 ["VisualizationModeCategory"]
      128 DUPTABLE                         R13 K20 [{"Title"}]
      129 LOADK                            R16 K21 ["VisualizationModeCategories"]
      130 LOADK                            R17 K10 ["Lighting"]
      131 NAMECALL                         R14 R5 K22 ["getText"]
      133 CALL                             R14 3 1
      134 SETTABLEKS                       R14 R13 K19 ["Title"]
      136 DUPTABLE                         R14 K44 [{"Lights"}]
      137 GETUPVAL                         R15 5
      138 GETTABLEKS                       R15 R15 K7 ["createElement"]
      140 GETUPVAL                         R16 7
      141 DUPTABLE                         R17 K36 [{"Title", "ToolTip", "Setting", "Property"}]
      142 LOADK                            R20 K31 ["StudioModes"]
      143 LOADK                            R21 K43 ["Lights"]
      144 NAMECALL                         R18 R5 K22 ["getText"]
      146 CALL                             R18 3 1
      147 SETTABLEKS                       R18 R17 K19 ["Title"]
      149 LOADK                            R20 K31 ["StudioModes"]
      150 LOADK                            R21 K45 ["LightsToolTip"]
      151 NAMECALL                         R18 R5 K22 ["getText"]
      153 CALL                             R18 3 1
      154 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      156 GETTABLEKS                       R18 R4 K5 ["Studio"]
      158 SETTABLEKS                       R18 R17 K34 ["Setting"]
      160 LOADK                            R18 K46 ["Show Light Guides"]
      161 SETTABLEKS                       R18 R17 K35 ["Property"]
      163 CALL                             R15 2 1
      164 SETTABLEKS                       R15 R14 K43 ["Lights"]
      166 CALL                             R11 3 1
      167 SETTABLEKS                       R11 R10 K10 ["Lighting"]
      169 GETUPVAL                         R11 5
      170 GETTABLEKS                       R11 R11 K7 ["createElement"]
      172 LOADK                            R12 K18 ["VisualizationModeCategory"]
      173 DUPTABLE                         R13 K20 [{"Title"}]
      174 LOADK                            R16 K21 ["VisualizationModeCategories"]
      175 LOADK                            R17 K11 ["Animation"]
      176 NAMECALL                         R14 R5 K22 ["getText"]
      178 CALL                             R14 3 1
      179 SETTABLEKS                       R14 R13 K19 ["Title"]
      181 DUPTABLE                         R14 K52 [{"ShowAnimationSkeleton", "ShowAnimationSkeletonAxes", "ShowAnimationSkeletonAttachments", "ShowAnimationSkeletonText", "ShowAnimationSkeletonRotations"}]
      182 GETUPVAL                         R15 5
      183 GETTABLEKS                       R15 R15 K7 ["createElement"]
      185 GETUPVAL                         R16 7
      186 DUPTABLE                         R17 K54 [{"Title", "ToolTip", "SortOrder", "Setting", "Property"}]
      187 LOADK                            R20 K31 ["StudioModes"]
      188 LOADK                            R21 K47 ["ShowAnimationSkeleton"]
      189 NAMECALL                         R18 R5 K22 ["getText"]
      191 CALL                             R18 3 1
      192 SETTABLEKS                       R18 R17 K19 ["Title"]
      194 LOADK                            R20 K31 ["StudioModes"]
      195 LOADK                            R21 K55 ["ShowAnimationSkeletonToolTip"]
      196 NAMECALL                         R18 R5 K22 ["getText"]
      198 CALL                             R18 3 1
      199 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      201 LOADN                            R18 1
      202 SETTABLEKS                       R18 R17 K53 ["SortOrder"]
      204 GETTABLEKS                       R18 R4 K5 ["Studio"]
      206 SETTABLEKS                       R18 R17 K34 ["Setting"]
      208 LOADK                            R18 K6 ["Show Animation Skeleton"]
      209 SETTABLEKS                       R18 R17 K35 ["Property"]
      211 CALL                             R15 2 1
      212 SETTABLEKS                       R15 R14 K47 ["ShowAnimationSkeleton"]
      214 MOVE                             R15 R6
      215 JUMPIFNOT                        R15 ; [+30]
      216 GETUPVAL                         R15 5
      217 GETTABLEKS                       R15 R15 K7 ["createElement"]
      219 GETUPVAL                         R16 7
      220 DUPTABLE                         R17 K54 [{"Title", "ToolTip", "SortOrder", "Setting", "Property"}]
      221 LOADK                            R20 K31 ["StudioModes"]
      222 LOADK                            R21 K48 ["ShowAnimationSkeletonAxes"]
      223 NAMECALL                         R18 R5 K22 ["getText"]
      225 CALL                             R18 3 1
      226 SETTABLEKS                       R18 R17 K19 ["Title"]
      228 LOADK                            R20 K31 ["StudioModes"]
      229 LOADK                            R21 K56 ["ShowAnimationSkeletonAxesToolTip"]
      230 NAMECALL                         R18 R5 K22 ["getText"]
      232 CALL                             R18 3 1
      233 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      235 LOADN                            R18 2
      236 SETTABLEKS                       R18 R17 K53 ["SortOrder"]
      238 GETTABLEKS                       R18 R4 K5 ["Studio"]
      240 SETTABLEKS                       R18 R17 K34 ["Setting"]
      242 LOADK                            R18 K57 ["Show Animation Skeleton Axes"]
      243 SETTABLEKS                       R18 R17 K35 ["Property"]
      245 CALL                             R15 2 1
      246 SETTABLEKS                       R15 R14 K48 ["ShowAnimationSkeletonAxes"]
      248 MOVE                             R15 R6
      249 JUMPIFNOT                        R15 ; [+30]
      250 GETUPVAL                         R15 5
      251 GETTABLEKS                       R15 R15 K7 ["createElement"]
      253 GETUPVAL                         R16 7
      254 DUPTABLE                         R17 K54 [{"Title", "ToolTip", "SortOrder", "Setting", "Property"}]
      255 LOADK                            R20 K31 ["StudioModes"]
      256 LOADK                            R21 K49 ["ShowAnimationSkeletonAttachments"]
      257 NAMECALL                         R18 R5 K22 ["getText"]
      259 CALL                             R18 3 1
      260 SETTABLEKS                       R18 R17 K19 ["Title"]
      262 LOADK                            R20 K31 ["StudioModes"]
      263 LOADK                            R21 K58 ["ShowAnimationSkeletonAttachmentsToolTip"]
      264 NAMECALL                         R18 R5 K22 ["getText"]
      266 CALL                             R18 3 1
      267 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      269 LOADN                            R18 3
      270 SETTABLEKS                       R18 R17 K53 ["SortOrder"]
      272 GETTABLEKS                       R18 R4 K5 ["Studio"]
      274 SETTABLEKS                       R18 R17 K34 ["Setting"]
      276 LOADK                            R18 K59 ["Show Animation Skeleton Attachments"]
      277 SETTABLEKS                       R18 R17 K35 ["Property"]
      279 CALL                             R15 2 1
      280 SETTABLEKS                       R15 R14 K49 ["ShowAnimationSkeletonAttachments"]
      282 MOVE                             R15 R6
      283 JUMPIFNOT                        R15 ; [+30]
      284 GETUPVAL                         R15 5
      285 GETTABLEKS                       R15 R15 K7 ["createElement"]
      287 GETUPVAL                         R16 7
      288 DUPTABLE                         R17 K54 [{"Title", "ToolTip", "SortOrder", "Setting", "Property"}]
      289 LOADK                            R20 K31 ["StudioModes"]
      290 LOADK                            R21 K50 ["ShowAnimationSkeletonText"]
      291 NAMECALL                         R18 R5 K22 ["getText"]
      293 CALL                             R18 3 1
      294 SETTABLEKS                       R18 R17 K19 ["Title"]
      296 LOADK                            R20 K31 ["StudioModes"]
      297 LOADK                            R21 K60 ["ShowAnimationSkeletonTextToolTip"]
      298 NAMECALL                         R18 R5 K22 ["getText"]
      300 CALL                             R18 3 1
      301 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      303 LOADN                            R18 4
      304 SETTABLEKS                       R18 R17 K53 ["SortOrder"]
      306 GETTABLEKS                       R18 R4 K5 ["Studio"]
      308 SETTABLEKS                       R18 R17 K34 ["Setting"]
      310 LOADK                            R18 K61 ["Show Animation Skeleton Text"]
      311 SETTABLEKS                       R18 R17 K35 ["Property"]
      313 CALL                             R15 2 1
      314 SETTABLEKS                       R15 R14 K50 ["ShowAnimationSkeletonText"]
      316 MOVE                             R15 R6
      317 JUMPIFNOT                        R15 ; [+30]
      318 GETUPVAL                         R15 5
      319 GETTABLEKS                       R15 R15 K7 ["createElement"]
      321 GETUPVAL                         R16 7
      322 DUPTABLE                         R17 K54 [{"Title", "ToolTip", "SortOrder", "Setting", "Property"}]
      323 LOADK                            R20 K31 ["StudioModes"]
      324 LOADK                            R21 K51 ["ShowAnimationSkeletonRotations"]
      325 NAMECALL                         R18 R5 K22 ["getText"]
      327 CALL                             R18 3 1
      328 SETTABLEKS                       R18 R17 K19 ["Title"]
      330 LOADK                            R20 K31 ["StudioModes"]
      331 LOADK                            R21 K62 ["ShowAnimationSkeletonRotationsToolTip"]
      332 NAMECALL                         R18 R5 K22 ["getText"]
      334 CALL                             R18 3 1
      335 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      337 LOADN                            R18 5
      338 SETTABLEKS                       R18 R17 K53 ["SortOrder"]
      340 GETTABLEKS                       R18 R4 K5 ["Studio"]
      342 SETTABLEKS                       R18 R17 K34 ["Setting"]
      344 LOADK                            R18 K63 ["Show Animation Skeleton Rotations"]
      345 SETTABLEKS                       R18 R17 K35 ["Property"]
      347 CALL                             R15 2 1
      348 SETTABLEKS                       R15 R14 K51 ["ShowAnimationSkeletonRotations"]
      350 CALL                             R11 3 1
      351 SETTABLEKS                       R11 R10 K11 ["Animation"]
      353 GETUPVAL                         R11 5
      354 GETTABLEKS                       R11 R11 K7 ["createElement"]
      356 LOADK                            R12 K18 ["VisualizationModeCategory"]
      357 DUPTABLE                         R13 K20 [{"Title"}]
      358 LOADK                            R16 K21 ["VisualizationModeCategories"]
      359 LOADK                            R17 K12 ["Pathfinding"]
      360 NAMECALL                         R14 R5 K22 ["getText"]
      362 CALL                             R14 3 1
      363 SETTABLEKS                       R14 R13 K19 ["Title"]
      365 DUPTABLE                         R14 K67 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
      366 GETUPVAL                         R15 5
      367 GETTABLEKS                       R15 R15 K7 ["createElement"]
      369 GETUPVAL                         R16 7
      370 DUPTABLE                         R17 K36 [{"Title", "ToolTip", "Setting", "Property"}]
      371 LOADK                            R20 K31 ["StudioModes"]
      372 LOADK                            R21 K64 ["PathfindingMesh"]
      373 NAMECALL                         R18 R5 K22 ["getText"]
      375 CALL                             R18 3 1
      376 SETTABLEKS                       R18 R17 K19 ["Title"]
      378 LOADK                            R20 K31 ["StudioModes"]
      379 LOADK                            R21 K68 ["PathfindingMeshToolTip"]
      380 NAMECALL                         R18 R5 K22 ["getText"]
      382 CALL                             R18 3 1
      383 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      385 GETTABLEKS                       R18 R4 K5 ["Studio"]
      387 SETTABLEKS                       R18 R17 K34 ["Setting"]
      389 LOADK                            R18 K69 ["Show Navigation Mesh"]
      390 SETTABLEKS                       R18 R17 K35 ["Property"]
      392 CALL                             R15 2 1
      393 SETTABLEKS                       R15 R14 K64 ["PathfindingMesh"]
      395 GETUPVAL                         R15 5
      396 GETTABLEKS                       R15 R15 K7 ["createElement"]
      398 GETUPVAL                         R16 7
      399 DUPTABLE                         R17 K36 [{"Title", "ToolTip", "Setting", "Property"}]
      400 LOADK                            R20 K31 ["StudioModes"]
      401 LOADK                            R21 K65 ["PathfindingModifiers"]
      402 NAMECALL                         R18 R5 K22 ["getText"]
      404 CALL                             R18 3 1
      405 SETTABLEKS                       R18 R17 K19 ["Title"]
      407 LOADK                            R20 K31 ["StudioModes"]
      408 LOADK                            R21 K70 ["PathfindingModifiersToolTip"]
      409 NAMECALL                         R18 R5 K22 ["getText"]
      411 CALL                             R18 3 1
      412 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      414 GETTABLEKS                       R18 R4 K5 ["Studio"]
      416 SETTABLEKS                       R18 R17 K34 ["Setting"]
      418 LOADK                            R18 K71 ["Show Navigation Labels"]
      419 SETTABLEKS                       R18 R17 K35 ["Property"]
      421 CALL                             R15 2 1
      422 SETTABLEKS                       R15 R14 K65 ["PathfindingModifiers"]
      424 GETUPVAL                         R15 5
      425 GETTABLEKS                       R15 R15 K7 ["createElement"]
      427 GETUPVAL                         R16 7
      428 DUPTABLE                         R17 K36 [{"Title", "ToolTip", "Setting", "Property"}]
      429 LOADK                            R20 K31 ["StudioModes"]
      430 LOADK                            R21 K66 ["PathfindingLinks"]
      431 NAMECALL                         R18 R5 K22 ["getText"]
      433 CALL                             R18 3 1
      434 SETTABLEKS                       R18 R17 K19 ["Title"]
      436 LOADK                            R20 K31 ["StudioModes"]
      437 LOADK                            R21 K72 ["PathfindingLinksToolTip"]
      438 NAMECALL                         R18 R5 K22 ["getText"]
      440 CALL                             R18 3 1
      441 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      443 GETTABLEKS                       R18 R4 K5 ["Studio"]
      445 SETTABLEKS                       R18 R17 K34 ["Setting"]
      447 LOADK                            R18 K73 ["Show Pathfinding Links"]
      448 SETTABLEKS                       R18 R17 K35 ["Property"]
      450 CALL                             R15 2 1
      451 SETTABLEKS                       R15 R14 K66 ["PathfindingLinks"]
      453 CALL                             R11 3 1
      454 SETTABLEKS                       R11 R10 K12 ["Pathfinding"]
      456 GETUPVAL                         R11 5
      457 GETTABLEKS                       R11 R11 K7 ["createElement"]
      459 LOADK                            R12 K18 ["VisualizationModeCategory"]
      460 DUPTABLE                         R13 K20 [{"Title"}]
      461 LOADK                            R16 K21 ["VisualizationModeCategories"]
      462 LOADK                            R17 K13 ["PhysicsConstraints"]
      463 NAMECALL                         R14 R5 K22 ["getText"]
      465 CALL                             R14 3 1
      466 SETTABLEKS                       R14 R13 K19 ["Title"]
      468 DUPTABLE                         R14 K76 [{"Constraints", "Welds"}]
      469 GETUPVAL                         R15 5
      470 GETTABLEKS                       R15 R15 K7 ["createElement"]
      472 GETUPVAL                         R16 6
      473 DUPTABLE                         R17 K30 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      474 LOADK                            R20 K31 ["StudioModes"]
      475 LOADK                            R21 K74 ["Constraints"]
      476 NAMECALL                         R18 R5 K22 ["getText"]
      478 CALL                             R18 3 1
      479 SETTABLEKS                       R18 R17 K19 ["Title"]
      481 LOADK                            R20 K31 ["StudioModes"]
      482 LOADK                            R21 K77 ["ConstraintsToolTip"]
      483 NAMECALL                         R18 R5 K22 ["getText"]
      485 CALL                             R18 3 1
      486 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      488 LOADK                            R18 K74 ["Constraints"]
      489 SETTABLEKS                       R18 R17 K27 ["FeatureId"]
      491 LOADK                            R18 K78 ["ShowDetails"]
      492 SETTABLEKS                       R18 R17 K28 ["ActionId"]
      494 GETTABLEKS                       R18 R0 K29 ["Actions"]
      496 SETTABLEKS                       R18 R17 K29 ["Actions"]
      498 CALL                             R15 2 1
      499 SETTABLEKS                       R15 R14 K74 ["Constraints"]
      501 GETUPVAL                         R15 5
      502 GETTABLEKS                       R15 R15 K7 ["createElement"]
      504 GETUPVAL                         R16 6
      505 DUPTABLE                         R17 K30 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      506 LOADK                            R20 K31 ["StudioModes"]
      507 LOADK                            R21 K75 ["Welds"]
      508 NAMECALL                         R18 R5 K22 ["getText"]
      510 CALL                             R18 3 1
      511 SETTABLEKS                       R18 R17 K19 ["Title"]
      513 LOADK                            R20 K31 ["StudioModes"]
      514 LOADK                            R21 K79 ["WeldsToolTip"]
      515 NAMECALL                         R18 R5 K22 ["getText"]
      517 CALL                             R18 3 1
      518 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      520 LOADK                            R18 K74 ["Constraints"]
      521 SETTABLEKS                       R18 R17 K27 ["FeatureId"]
      523 LOADK                            R18 K80 ["ShowWelds"]
      524 SETTABLEKS                       R18 R17 K28 ["ActionId"]
      526 GETTABLEKS                       R18 R0 K29 ["Actions"]
      528 SETTABLEKS                       R18 R17 K29 ["Actions"]
      530 CALL                             R15 2 1
      531 SETTABLEKS                       R15 R14 K75 ["Welds"]
      533 CALL                             R11 3 1
      534 SETTABLEKS                       R11 R10 K13 ["PhysicsConstraints"]
      536 GETUPVAL                         R11 5
      537 GETTABLEKS                       R11 R11 K7 ["createElement"]
      539 LOADK                            R12 K18 ["VisualizationModeCategory"]
      540 DUPTABLE                         R13 K20 [{"Title"}]
      541 LOADK                            R16 K21 ["VisualizationModeCategories"]
      542 LOADK                            R17 K14 ["PhysicsLabels"]
      543 NAMECALL                         R14 R5 K22 ["getText"]
      545 CALL                             R14 3 1
      546 SETTABLEKS                       R14 R13 K19 ["Title"]
      548 DUPTABLE                         R14 K86 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
      549 GETUPVAL                         R15 5
      550 GETTABLEKS                       R15 R15 K7 ["createElement"]
      552 GETUPVAL                         R16 7
      553 DUPTABLE                         R17 K36 [{"Title", "ToolTip", "Setting", "Property"}]
      554 LOADK                            R20 K31 ["StudioModes"]
      555 LOADK                            R21 K81 ["AnchoredParts"]
      556 NAMECALL                         R18 R5 K22 ["getText"]
      558 CALL                             R18 3 1
      559 SETTABLEKS                       R18 R17 K19 ["Title"]
      561 LOADK                            R20 K31 ["StudioModes"]
      562 LOADK                            R21 K87 ["AnchoredPartsToolTip"]
      563 NAMECALL                         R18 R5 K22 ["getText"]
      565 CALL                             R18 3 1
      566 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      568 GETTABLEKS                       R18 R4 K88 ["Physics"]
      570 SETTABLEKS                       R18 R17 K34 ["Setting"]
      572 LOADK                            R18 K89 ["AreAnchorsShown"]
      573 SETTABLEKS                       R18 R17 K35 ["Property"]
      575 CALL                             R15 2 1
      576 SETTABLEKS                       R15 R14 K81 ["AnchoredParts"]
      578 GETUPVAL                         R15 5
      579 GETTABLEKS                       R15 R15 K7 ["createElement"]
      581 GETUPVAL                         R16 7
      582 DUPTABLE                         R17 K36 [{"Title", "ToolTip", "Setting", "Property"}]
      583 LOADK                            R20 K31 ["StudioModes"]
      584 LOADK                            R21 K82 ["AwakeParts"]
      585 NAMECALL                         R18 R5 K22 ["getText"]
      587 CALL                             R18 3 1
      588 SETTABLEKS                       R18 R17 K19 ["Title"]
      590 LOADK                            R20 K31 ["StudioModes"]
      591 LOADK                            R21 K90 ["AwakePartsToolTip"]
      592 NAMECALL                         R18 R5 K22 ["getText"]
      594 CALL                             R18 3 1
      595 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      597 GETTABLEKS                       R18 R4 K88 ["Physics"]
      599 SETTABLEKS                       R18 R17 K34 ["Setting"]
      601 LOADK                            R18 K91 ["AreAwakePartsHighlighted"]
      602 SETTABLEKS                       R18 R17 K35 ["Property"]
      604 CALL                             R15 2 1
      605 SETTABLEKS                       R15 R14 K82 ["AwakeParts"]
      607 GETUPVAL                         R15 5
      608 GETTABLEKS                       R15 R15 K7 ["createElement"]
      610 GETUPVAL                         R16 7
      611 DUPTABLE                         R17 K36 [{"Title", "ToolTip", "Setting", "Property"}]
      612 LOADK                            R20 K31 ["StudioModes"]
      613 LOADK                            R21 K92 ["ShowAssemblies"]
      614 NAMECALL                         R18 R5 K22 ["getText"]
      616 CALL                             R18 3 1
      617 SETTABLEKS                       R18 R17 K19 ["Title"]
      619 LOADK                            R20 K31 ["StudioModes"]
      620 LOADK                            R21 K93 ["ShowAssembliesToolTip"]
      621 NAMECALL                         R18 R5 K22 ["getText"]
      623 CALL                             R18 3 1
      624 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      626 GETTABLEKS                       R18 R4 K88 ["Physics"]
      628 SETTABLEKS                       R18 R17 K34 ["Setting"]
      630 LOADK                            R18 K94 ["AreAssembliesShown"]
      631 SETTABLEKS                       R18 R17 K35 ["Property"]
      633 CALL                             R15 2 1
      634 SETTABLEKS                       R15 R14 K83 ["Assemblies"]
      636 GETUPVAL                         R15 5
      637 GETTABLEKS                       R15 R15 K7 ["createElement"]
      639 GETUPVAL                         R16 7
      640 DUPTABLE                         R17 K36 [{"Title", "ToolTip", "Setting", "Property"}]
      641 LOADK                            R20 K31 ["StudioModes"]
      642 LOADK                            R21 K84 ["Mechanisms"]
      643 NAMECALL                         R18 R5 K22 ["getText"]
      645 CALL                             R18 3 1
      646 SETTABLEKS                       R18 R17 K19 ["Title"]
      648 LOADK                            R20 K31 ["StudioModes"]
      649 LOADK                            R21 K95 ["MechanismsToolTip"]
      650 NAMECALL                         R18 R5 K22 ["getText"]
      652 CALL                             R18 3 1
      653 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      655 GETTABLEKS                       R18 R4 K88 ["Physics"]
      657 SETTABLEKS                       R18 R17 K34 ["Setting"]
      659 LOADK                            R18 K96 ["AreMechanismsShown"]
      660 SETTABLEKS                       R18 R17 K35 ["Property"]
      662 CALL                             R15 2 1
      663 SETTABLEKS                       R15 R14 K84 ["Mechanisms"]
      665 GETUPVAL                         R15 5
      666 GETTABLEKS                       R15 R15 K7 ["createElement"]
      668 GETUPVAL                         R16 7
      669 DUPTABLE                         R17 K36 [{"Title", "ToolTip", "Setting", "Property"}]
      670 LOADK                            R20 K31 ["StudioModes"]
      671 LOADK                            R21 K85 ["NetworkOwner"]
      672 NAMECALL                         R18 R5 K22 ["getText"]
      674 CALL                             R18 3 1
      675 SETTABLEKS                       R18 R17 K19 ["Title"]
      677 LOADK                            R20 K31 ["StudioModes"]
      678 LOADK                            R21 K97 ["NetworkOwnerToolTip"]
      679 NAMECALL                         R18 R5 K22 ["getText"]
      681 CALL                             R18 3 1
      682 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      684 GETTABLEKS                       R18 R4 K88 ["Physics"]
      686 SETTABLEKS                       R18 R17 K34 ["Setting"]
      688 LOADK                            R18 K98 ["AreOwnersShown"]
      689 SETTABLEKS                       R18 R17 K35 ["Property"]
      691 CALL                             R15 2 1
      692 SETTABLEKS                       R15 R14 K85 ["NetworkOwner"]
      694 CALL                             R11 3 1
      695 SETTABLEKS                       R11 R10 K14 ["PhysicsLabels"]
      697 GETUPVAL                         R11 5
      698 GETTABLEKS                       R11 R11 K7 ["createElement"]
      700 LOADK                            R12 K18 ["VisualizationModeCategory"]
      701 DUPTABLE                         R13 K20 [{"Title"}]
      702 LOADK                            R16 K21 ["VisualizationModeCategories"]
      703 LOADK                            R17 K15 ["PhysicsSimulation"]
      704 NAMECALL                         R14 R5 K22 ["getText"]
      706 CALL                             R14 3 1
      707 SETTABLEKS                       R14 R13 K19 ["Title"]
      709 DUPTABLE                         R14 K102 [{"CollisionFidelity", "ContactPoints", "WindDirection"}]
      710 GETUPVAL                         R15 5
      711 GETTABLEKS                       R15 R15 K7 ["createElement"]
      713 GETUPVAL                         R16 7
      714 DUPTABLE                         R17 K36 [{"Title", "ToolTip", "Setting", "Property"}]
      715 LOADK                            R20 K31 ["StudioModes"]
      716 LOADK                            R21 K99 ["CollisionFidelity"]
      717 NAMECALL                         R18 R5 K22 ["getText"]
      719 CALL                             R18 3 1
      720 SETTABLEKS                       R18 R17 K19 ["Title"]
      722 LOADK                            R20 K31 ["StudioModes"]
      723 LOADK                            R21 K103 ["CollisionFidelityToolTip"]
      724 NAMECALL                         R18 R5 K22 ["getText"]
      726 CALL                             R18 3 1
      727 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      729 GETTABLEKS                       R18 R4 K88 ["Physics"]
      731 SETTABLEKS                       R18 R17 K34 ["Setting"]
      733 LOADK                            R18 K104 ["ShowDecompositionGeometry"]
      734 SETTABLEKS                       R18 R17 K35 ["Property"]
      736 CALL                             R15 2 1
      737 SETTABLEKS                       R15 R14 K99 ["CollisionFidelity"]
      739 GETUPVAL                         R15 5
      740 GETTABLEKS                       R15 R15 K7 ["createElement"]
      742 GETUPVAL                         R16 7
      743 DUPTABLE                         R17 K36 [{"Title", "ToolTip", "Setting", "Property"}]
      744 LOADK                            R20 K31 ["StudioModes"]
      745 LOADK                            R21 K100 ["ContactPoints"]
      746 NAMECALL                         R18 R5 K22 ["getText"]
      748 CALL                             R18 3 1
      749 SETTABLEKS                       R18 R17 K19 ["Title"]
      751 LOADK                            R20 K31 ["StudioModes"]
      752 LOADK                            R21 K105 ["ContactPointsToolTip"]
      753 NAMECALL                         R18 R5 K22 ["getText"]
      755 CALL                             R18 3 1
      756 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      758 GETTABLEKS                       R18 R4 K88 ["Physics"]
      760 SETTABLEKS                       R18 R17 K34 ["Setting"]
      762 LOADK                            R18 K106 ["AreContactPointsShown"]
      763 SETTABLEKS                       R18 R17 K35 ["Property"]
      765 CALL                             R15 2 1
      766 SETTABLEKS                       R15 R14 K100 ["ContactPoints"]
      768 GETUPVAL                         R15 5
      769 GETTABLEKS                       R15 R15 K7 ["createElement"]
      771 GETUPVAL                         R16 6
      772 DUPTABLE                         R17 K30 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      773 LOADK                            R20 K31 ["StudioModes"]
      774 LOADK                            R21 K101 ["WindDirection"]
      775 NAMECALL                         R18 R5 K22 ["getText"]
      777 CALL                             R18 3 1
      778 SETTABLEKS                       R18 R17 K19 ["Title"]
      780 LOADK                            R20 K31 ["StudioModes"]
      781 LOADK                            R21 K107 ["WindDirectionToolTip"]
      782 NAMECALL                         R18 R5 K22 ["getText"]
      784 CALL                             R18 3 1
      785 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      787 LOADK                            R18 K108 ["WindControl"]
      788 SETTABLEKS                       R18 R17 K27 ["FeatureId"]
      790 LOADK                            R18 K33 ["Toggle"]
      791 SETTABLEKS                       R18 R17 K28 ["ActionId"]
      793 GETTABLEKS                       R18 R0 K29 ["Actions"]
      795 SETTABLEKS                       R18 R17 K29 ["Actions"]
      797 CALL                             R15 2 1
      798 SETTABLEKS                       R15 R14 K101 ["WindDirection"]
      800 CALL                             R11 3 1
      801 SETTABLEKS                       R11 R10 K15 ["PhysicsSimulation"]
      803 GETUPVAL                         R11 5
      804 GETTABLEKS                       R11 R11 K7 ["createElement"]
      806 LOADK                            R12 K18 ["VisualizationModeCategory"]
      807 DUPTABLE                         R13 K20 [{"Title"}]
      808 LOADK                            R16 K21 ["VisualizationModeCategories"]
      809 LOADK                            R17 K16 ["View"]
      810 NAMECALL                         R14 R5 K22 ["getText"]
      812 CALL                             R14 3 1
      813 SETTABLEKS                       R14 R13 K19 ["Title"]
      815 DUPTABLE                         R14 K114 [{"ViewSelector", "Grid", "GridMaterial", "Slim", "CollaboratorHighlights"}]
      816 GETUPVAL                         R15 5
      817 GETTABLEKS                       R15 R15 K7 ["createElement"]
      819 GETUPVAL                         R16 6
      820 DUPTABLE                         R17 K30 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      821 LOADK                            R20 K31 ["StudioModes"]
      822 LOADK                            R21 K109 ["ViewSelector"]
      823 NAMECALL                         R18 R5 K22 ["getText"]
      825 CALL                             R18 3 1
      826 SETTABLEKS                       R18 R17 K19 ["Title"]
      828 LOADK                            R20 K31 ["StudioModes"]
      829 LOADK                            R21 K115 ["ViewSelectorToolTip"]
      830 NAMECALL                         R18 R5 K22 ["getText"]
      832 CALL                             R18 3 1
      833 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      835 LOADK                            R18 K109 ["ViewSelector"]
      836 SETTABLEKS                       R18 R17 K27 ["FeatureId"]
      838 LOADK                            R18 K33 ["Toggle"]
      839 SETTABLEKS                       R18 R17 K28 ["ActionId"]
      841 GETTABLEKS                       R18 R0 K29 ["Actions"]
      843 SETTABLEKS                       R18 R17 K29 ["Actions"]
      845 CALL                             R15 2 1
      846 SETTABLEKS                       R15 R14 K109 ["ViewSelector"]
      848 GETUPVAL                         R15 5
      849 GETTABLEKS                       R15 R15 K7 ["createElement"]
      851 GETUPVAL                         R16 6
      852 DUPTABLE                         R17 K30 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      853 LOADK                            R20 K31 ["StudioModes"]
      854 LOADK                            R21 K110 ["Grid"]
      855 NAMECALL                         R18 R5 K22 ["getText"]
      857 CALL                             R18 3 1
      858 SETTABLEKS                       R18 R17 K19 ["Title"]
      860 LOADK                            R20 K31 ["StudioModes"]
      861 LOADK                            R21 K116 ["GridToolTip"]
      862 NAMECALL                         R18 R5 K22 ["getText"]
      864 CALL                             R18 3 1
      865 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      867 LOADK                            R18 K117 ["3DGrid"]
      868 SETTABLEKS                       R18 R17 K27 ["FeatureId"]
      870 LOADK                            R18 K33 ["Toggle"]
      871 SETTABLEKS                       R18 R17 K28 ["ActionId"]
      873 GETTABLEKS                       R18 R0 K29 ["Actions"]
      875 SETTABLEKS                       R18 R17 K29 ["Actions"]
      877 CALL                             R15 2 1
      878 SETTABLEKS                       R15 R14 K110 ["Grid"]
      880 GETUPVAL                         R15 5
      881 GETTABLEKS                       R15 R15 K7 ["createElement"]
      883 GETUPVAL                         R16 6
      884 DUPTABLE                         R17 K30 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      885 LOADK                            R20 K31 ["StudioModes"]
      886 LOADK                            R21 K111 ["GridMaterial"]
      887 NAMECALL                         R18 R5 K22 ["getText"]
      889 CALL                             R18 3 1
      890 SETTABLEKS                       R18 R17 K19 ["Title"]
      892 LOADK                            R20 K31 ["StudioModes"]
      893 LOADK                            R21 K118 ["GridMaterialToolTip"]
      894 NAMECALL                         R18 R5 K22 ["getText"]
      896 CALL                             R18 3 1
      897 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      899 LOADK                            R18 K111 ["GridMaterial"]
      900 SETTABLEKS                       R18 R17 K27 ["FeatureId"]
      902 LOADK                            R18 K33 ["Toggle"]
      903 SETTABLEKS                       R18 R17 K28 ["ActionId"]
      905 GETTABLEKS                       R18 R0 K29 ["Actions"]
      907 SETTABLEKS                       R18 R17 K29 ["Actions"]
      909 CALL                             R15 2 1
      910 SETTABLEKS                       R15 R14 K111 ["GridMaterial"]
      912 MOVE                             R15 R3
      913 JUMPIFNOT                        R15 ; [+30]
      914 GETUPVAL                         R15 5
      915 GETTABLEKS                       R15 R15 K7 ["createElement"]
      917 GETUPVAL                         R16 6
      918 DUPTABLE                         R17 K30 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      919 LOADK                            R20 K31 ["StudioModes"]
      920 LOADK                            R21 K119 ["SLIM"]
      921 NAMECALL                         R18 R5 K22 ["getText"]
      923 CALL                             R18 3 1
      924 SETTABLEKS                       R18 R17 K19 ["Title"]
      926 LOADK                            R20 K31 ["StudioModes"]
      927 LOADK                            R21 K120 ["SLIMToolTip"]
      928 NAMECALL                         R18 R5 K22 ["getText"]
      930 CALL                             R18 3 1
      931 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      933 LOADK                            R18 K119 ["SLIM"]
      934 SETTABLEKS                       R18 R17 K27 ["FeatureId"]
      936 LOADK                            R18 K121 ["ToggleDebug"]
      937 SETTABLEKS                       R18 R17 K28 ["ActionId"]
      939 GETTABLEKS                       R18 R0 K29 ["Actions"]
      941 SETTABLEKS                       R18 R17 K29 ["Actions"]
      943 CALL                             R15 2 1
      944 SETTABLEKS                       R15 R14 K112 ["Slim"]
      946 MOVE                             R15 R1
      947 JUMPIFNOT                        R15 ; [+23]
      948 GETUPVAL                         R15 5
      949 GETTABLEKS                       R15 R15 K7 ["createElement"]
      951 GETUPVAL                         R16 8
      952 DUPTABLE                         R17 K123 [{"Title", "ToolTip", "UseState"}]
      953 LOADK                            R20 K31 ["StudioModes"]
      954 LOADK                            R21 K113 ["CollaboratorHighlights"]
      955 NAMECALL                         R18 R5 K22 ["getText"]
      957 CALL                             R18 3 1
      958 SETTABLEKS                       R18 R17 K19 ["Title"]
      960 LOADK                            R20 K31 ["StudioModes"]
      961 LOADK                            R21 K124 ["CollaboratorHighlightsToolTip"]
      962 NAMECALL                         R18 R5 K22 ["getText"]
      964 CALL                             R18 3 1
      965 SETTABLEKS                       R18 R17 K26 ["ToolTip"]
      967 GETUPVAL                         R18 9
      968 SETTABLEKS                       R18 R17 K122 ["UseState"]
      970 CALL                             R15 2 1
      971 SETTABLEKS                       R15 R14 K113 ["CollaboratorHighlights"]
      973 CALL                             R11 3 1
      974 SETTABLEKS                       R11 R10 K16 ["View"]
      976 CALL                             R7 3 -1
      977 RETURN                           R7 -1

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
       93 GETTABLEKS                       R11 R1 K21 ["ContextServices"]
       95 DUPCLOSURE                       R12 K22 [PROTO_0]
       96 CAPTURE                          VAL R8
       97 CAPTURE                          VAL R9
       98 CAPTURE                          VAL R10
       99 CAPTURE                          VAL R11
      100 CAPTURE                          VAL R6
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R7
      105 CAPTURE                          VAL R5
      106 RETURN                           R12 1
