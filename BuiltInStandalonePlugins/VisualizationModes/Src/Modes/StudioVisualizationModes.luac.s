PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 JUMPIFNOT                        R2 ; [+6]
        5 GETTABLEKS                       R4 R0 K0 ["SettingsInstance"]
        7 JUMPIFNOT                        R4 ; [+3]
        8 GETTABLEKS                       R3 R0 K0 ["SettingsInstance"]
       10 JUMP                             ; [+3]
       11 GETIMPORT                        R3 K2 [settings]
       13 CALL                             R3 0 1
       14 GETUPVAL                         R5 2
       15 GETTABLEKS                       R4 R5 K3 ["Localization"]
       17 NAMECALL                         R4 R4 K4 ["use"]
       19 CALL                             R4 1 1
       20 GETUPVAL                         R6 3
       21 GETTABLEKS                       R5 R6 K5 ["createElement"]
       23 GETUPVAL                         R7 3
       24 GETTABLEKS                       R6 R7 K6 ["Fragment"]
       26 NEWTABLE                         R7 0 0
       28 DUPTABLE                         R8 K14 [{"GUI", "Lighting", "Pathfinding", "PhysicsConstraints", "PhysicsLabels", "PhysicsSimulation", "View"}]
       29 GETUPVAL                         R10 3
       30 GETTABLEKS                       R9 R10 K5 ["createElement"]
       32 LOADK                            R10 K15 ["VisualizationModeCategory"]
       33 DUPTABLE                         R11 K17 [{"Title"}]
       34 LOADK                            R14 K18 ["VisualizationModeCategories"]
       35 LOADK                            R15 K7 ["GUI"]
       36 NAMECALL                         R12 R4 K19 ["getText"]
       38 CALL                             R12 3 1
       39 SETTABLEKS                       R12 R11 K16 ["Title"]
       41 DUPTABLE                         R12 K22 [{"DeviceEmulation", "GUIOverlay"}]
       42 GETUPVAL                         R14 3
       43 GETTABLEKS                       R13 R14 K5 ["createElement"]
       45 GETUPVAL                         R14 4
       46 DUPTABLE                         R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
       47 LOADK                            R18 K28 ["StudioModes"]
       48 LOADK                            R19 K20 ["DeviceEmulation"]
       49 NAMECALL                         R16 R4 K19 ["getText"]
       51 CALL                             R16 3 1
       52 SETTABLEKS                       R16 R15 K16 ["Title"]
       54 LOADK                            R18 K28 ["StudioModes"]
       55 LOADK                            R19 K29 ["DeviceEmulationToolTip"]
       56 NAMECALL                         R16 R4 K19 ["getText"]
       58 CALL                             R16 3 1
       59 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
       61 LOADK                            R16 K20 ["DeviceEmulation"]
       62 SETTABLEKS                       R16 R15 K24 ["FeatureId"]
       64 LOADK                            R16 K30 ["Toggle"]
       65 SETTABLEKS                       R16 R15 K25 ["ActionId"]
       67 GETTABLEKS                       R16 R0 K26 ["Actions"]
       69 SETTABLEKS                       R16 R15 K26 ["Actions"]
       71 CALL                             R13 2 1
       72 SETTABLEKS                       R13 R12 K20 ["DeviceEmulation"]
       74 GETUPVAL                         R14 3
       75 GETTABLEKS                       R13 R14 K5 ["createElement"]
       77 GETUPVAL                         R14 5
       78 DUPTABLE                         R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
       79 LOADK                            R18 K28 ["StudioModes"]
       80 LOADK                            R19 K21 ["GUIOverlay"]
       81 NAMECALL                         R16 R4 K19 ["getText"]
       83 CALL                             R16 3 1
       84 SETTABLEKS                       R16 R15 K16 ["Title"]
       86 LOADK                            R18 K28 ["StudioModes"]
       87 LOADK                            R19 K34 ["GUIOverlayToolTip"]
       88 NAMECALL                         R16 R4 K19 ["getText"]
       90 CALL                             R16 3 1
       91 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
       93 JUMPIFNOT                        R1 ; [+7]
       94 GETIMPORT                        R16 K36 [game]
       96 LOADK                            R18 K37 ["StarterGui"]
       97 NAMECALL                         R16 R16 K38 ["GetService"]
       99 CALL                             R16 2 1
      100 JUMP                             ; [+4]
      101 GETIMPORT                        R17 K36 [game]
      103 GETTABLEKS                       R16 R17 K37 ["StarterGui"]
      105 SETTABLEKS                       R16 R15 K31 ["Setting"]
      107 LOADK                            R16 K39 ["ShowDevelopmentGui"]
      108 SETTABLEKS                       R16 R15 K32 ["Property"]
      110 CALL                             R13 2 1
      111 SETTABLEKS                       R13 R12 K21 ["GUIOverlay"]
      113 CALL                             R9 3 1
      114 SETTABLEKS                       R9 R8 K7 ["GUI"]
      116 GETUPVAL                         R10 3
      117 GETTABLEKS                       R9 R10 K5 ["createElement"]
      119 LOADK                            R10 K15 ["VisualizationModeCategory"]
      120 DUPTABLE                         R11 K17 [{"Title"}]
      121 LOADK                            R14 K18 ["VisualizationModeCategories"]
      122 LOADK                            R15 K8 ["Lighting"]
      123 NAMECALL                         R12 R4 K19 ["getText"]
      125 CALL                             R12 3 1
      126 SETTABLEKS                       R12 R11 K16 ["Title"]
      128 DUPTABLE                         R12 K41 [{"Lights"}]
      129 GETUPVAL                         R14 3
      130 GETTABLEKS                       R13 R14 K5 ["createElement"]
      132 GETUPVAL                         R14 5
      133 DUPTABLE                         R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      134 LOADK                            R18 K28 ["StudioModes"]
      135 LOADK                            R19 K40 ["Lights"]
      136 NAMECALL                         R16 R4 K19 ["getText"]
      138 CALL                             R16 3 1
      139 SETTABLEKS                       R16 R15 K16 ["Title"]
      141 LOADK                            R18 K28 ["StudioModes"]
      142 LOADK                            R19 K42 ["LightsToolTip"]
      143 NAMECALL                         R16 R4 K19 ["getText"]
      145 CALL                             R16 3 1
      146 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      148 GETTABLEKS                       R16 R3 K43 ["Studio"]
      150 SETTABLEKS                       R16 R15 K31 ["Setting"]
      152 LOADK                            R16 K44 ["Show Light Guides"]
      153 SETTABLEKS                       R16 R15 K32 ["Property"]
      155 CALL                             R13 2 1
      156 SETTABLEKS                       R13 R12 K40 ["Lights"]
      158 CALL                             R9 3 1
      159 SETTABLEKS                       R9 R8 K8 ["Lighting"]
      161 GETUPVAL                         R10 3
      162 GETTABLEKS                       R9 R10 K5 ["createElement"]
      164 LOADK                            R10 K15 ["VisualizationModeCategory"]
      165 DUPTABLE                         R11 K17 [{"Title"}]
      166 LOADK                            R14 K18 ["VisualizationModeCategories"]
      167 LOADK                            R15 K9 ["Pathfinding"]
      168 NAMECALL                         R12 R4 K19 ["getText"]
      170 CALL                             R12 3 1
      171 SETTABLEKS                       R12 R11 K16 ["Title"]
      173 DUPTABLE                         R12 K48 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
      174 GETUPVAL                         R14 3
      175 GETTABLEKS                       R13 R14 K5 ["createElement"]
      177 GETUPVAL                         R14 5
      178 DUPTABLE                         R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      179 LOADK                            R18 K28 ["StudioModes"]
      180 LOADK                            R19 K45 ["PathfindingMesh"]
      181 NAMECALL                         R16 R4 K19 ["getText"]
      183 CALL                             R16 3 1
      184 SETTABLEKS                       R16 R15 K16 ["Title"]
      186 LOADK                            R18 K28 ["StudioModes"]
      187 LOADK                            R19 K49 ["PathfindingMeshToolTip"]
      188 NAMECALL                         R16 R4 K19 ["getText"]
      190 CALL                             R16 3 1
      191 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      193 GETTABLEKS                       R16 R3 K43 ["Studio"]
      195 SETTABLEKS                       R16 R15 K31 ["Setting"]
      197 LOADK                            R16 K50 ["Show Navigation Mesh"]
      198 SETTABLEKS                       R16 R15 K32 ["Property"]
      200 CALL                             R13 2 1
      201 SETTABLEKS                       R13 R12 K45 ["PathfindingMesh"]
      203 GETUPVAL                         R14 3
      204 GETTABLEKS                       R13 R14 K5 ["createElement"]
      206 GETUPVAL                         R14 5
      207 DUPTABLE                         R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      208 LOADK                            R18 K28 ["StudioModes"]
      209 LOADK                            R19 K46 ["PathfindingModifiers"]
      210 NAMECALL                         R16 R4 K19 ["getText"]
      212 CALL                             R16 3 1
      213 SETTABLEKS                       R16 R15 K16 ["Title"]
      215 LOADK                            R18 K28 ["StudioModes"]
      216 LOADK                            R19 K51 ["PathfindingModifiersToolTip"]
      217 NAMECALL                         R16 R4 K19 ["getText"]
      219 CALL                             R16 3 1
      220 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      222 GETTABLEKS                       R16 R3 K43 ["Studio"]
      224 SETTABLEKS                       R16 R15 K31 ["Setting"]
      226 LOADK                            R16 K52 ["Show Navigation Labels"]
      227 SETTABLEKS                       R16 R15 K32 ["Property"]
      229 CALL                             R13 2 1
      230 SETTABLEKS                       R13 R12 K46 ["PathfindingModifiers"]
      232 GETUPVAL                         R14 3
      233 GETTABLEKS                       R13 R14 K5 ["createElement"]
      235 GETUPVAL                         R14 5
      236 DUPTABLE                         R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      237 LOADK                            R18 K28 ["StudioModes"]
      238 LOADK                            R19 K47 ["PathfindingLinks"]
      239 NAMECALL                         R16 R4 K19 ["getText"]
      241 CALL                             R16 3 1
      242 SETTABLEKS                       R16 R15 K16 ["Title"]
      244 LOADK                            R18 K28 ["StudioModes"]
      245 LOADK                            R19 K53 ["PathfindingLinksToolTip"]
      246 NAMECALL                         R16 R4 K19 ["getText"]
      248 CALL                             R16 3 1
      249 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      251 GETTABLEKS                       R16 R3 K43 ["Studio"]
      253 SETTABLEKS                       R16 R15 K31 ["Setting"]
      255 LOADK                            R16 K54 ["Show Pathfinding Links"]
      256 SETTABLEKS                       R16 R15 K32 ["Property"]
      258 CALL                             R13 2 1
      259 SETTABLEKS                       R13 R12 K47 ["PathfindingLinks"]
      261 CALL                             R9 3 1
      262 SETTABLEKS                       R9 R8 K9 ["Pathfinding"]
      264 GETUPVAL                         R10 3
      265 GETTABLEKS                       R9 R10 K5 ["createElement"]
      267 LOADK                            R10 K15 ["VisualizationModeCategory"]
      268 DUPTABLE                         R11 K17 [{"Title"}]
      269 LOADK                            R14 K18 ["VisualizationModeCategories"]
      270 LOADK                            R15 K10 ["PhysicsConstraints"]
      271 NAMECALL                         R12 R4 K19 ["getText"]
      273 CALL                             R12 3 1
      274 SETTABLEKS                       R12 R11 K16 ["Title"]
      276 DUPTABLE                         R12 K57 [{"Constraints", "Welds"}]
      277 GETUPVAL                         R14 3
      278 GETTABLEKS                       R13 R14 K5 ["createElement"]
      280 GETUPVAL                         R14 4
      281 DUPTABLE                         R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      282 LOADK                            R18 K28 ["StudioModes"]
      283 LOADK                            R19 K55 ["Constraints"]
      284 NAMECALL                         R16 R4 K19 ["getText"]
      286 CALL                             R16 3 1
      287 SETTABLEKS                       R16 R15 K16 ["Title"]
      289 LOADK                            R18 K28 ["StudioModes"]
      290 LOADK                            R19 K58 ["ConstraintsToolTip"]
      291 NAMECALL                         R16 R4 K19 ["getText"]
      293 CALL                             R16 3 1
      294 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      296 LOADK                            R16 K55 ["Constraints"]
      297 SETTABLEKS                       R16 R15 K24 ["FeatureId"]
      299 LOADK                            R16 K59 ["ShowDetails"]
      300 SETTABLEKS                       R16 R15 K25 ["ActionId"]
      302 GETTABLEKS                       R16 R0 K26 ["Actions"]
      304 SETTABLEKS                       R16 R15 K26 ["Actions"]
      306 CALL                             R13 2 1
      307 SETTABLEKS                       R13 R12 K55 ["Constraints"]
      309 GETUPVAL                         R14 3
      310 GETTABLEKS                       R13 R14 K5 ["createElement"]
      312 GETUPVAL                         R14 4
      313 DUPTABLE                         R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      314 LOADK                            R18 K28 ["StudioModes"]
      315 LOADK                            R19 K56 ["Welds"]
      316 NAMECALL                         R16 R4 K19 ["getText"]
      318 CALL                             R16 3 1
      319 SETTABLEKS                       R16 R15 K16 ["Title"]
      321 LOADK                            R18 K28 ["StudioModes"]
      322 LOADK                            R19 K60 ["WeldsToolTip"]
      323 NAMECALL                         R16 R4 K19 ["getText"]
      325 CALL                             R16 3 1
      326 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      328 LOADK                            R16 K55 ["Constraints"]
      329 SETTABLEKS                       R16 R15 K24 ["FeatureId"]
      331 LOADK                            R16 K61 ["ShowWelds"]
      332 SETTABLEKS                       R16 R15 K25 ["ActionId"]
      334 GETTABLEKS                       R16 R0 K26 ["Actions"]
      336 SETTABLEKS                       R16 R15 K26 ["Actions"]
      338 CALL                             R13 2 1
      339 SETTABLEKS                       R13 R12 K56 ["Welds"]
      341 CALL                             R9 3 1
      342 SETTABLEKS                       R9 R8 K10 ["PhysicsConstraints"]
      344 GETUPVAL                         R10 3
      345 GETTABLEKS                       R9 R10 K5 ["createElement"]
      347 LOADK                            R10 K15 ["VisualizationModeCategory"]
      348 DUPTABLE                         R11 K17 [{"Title"}]
      349 LOADK                            R14 K18 ["VisualizationModeCategories"]
      350 LOADK                            R15 K11 ["PhysicsLabels"]
      351 NAMECALL                         R12 R4 K19 ["getText"]
      353 CALL                             R12 3 1
      354 SETTABLEKS                       R12 R11 K16 ["Title"]
      356 DUPTABLE                         R12 K67 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
      357 GETUPVAL                         R14 3
      358 GETTABLEKS                       R13 R14 K5 ["createElement"]
      360 GETUPVAL                         R14 5
      361 DUPTABLE                         R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      362 LOADK                            R18 K28 ["StudioModes"]
      363 LOADK                            R19 K62 ["AnchoredParts"]
      364 NAMECALL                         R16 R4 K19 ["getText"]
      366 CALL                             R16 3 1
      367 SETTABLEKS                       R16 R15 K16 ["Title"]
      369 LOADK                            R18 K28 ["StudioModes"]
      370 LOADK                            R19 K68 ["AnchoredPartsToolTip"]
      371 NAMECALL                         R16 R4 K19 ["getText"]
      373 CALL                             R16 3 1
      374 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      376 GETTABLEKS                       R16 R3 K69 ["Physics"]
      378 SETTABLEKS                       R16 R15 K31 ["Setting"]
      380 LOADK                            R16 K70 ["AreAnchorsShown"]
      381 SETTABLEKS                       R16 R15 K32 ["Property"]
      383 CALL                             R13 2 1
      384 SETTABLEKS                       R13 R12 K62 ["AnchoredParts"]
      386 GETUPVAL                         R14 3
      387 GETTABLEKS                       R13 R14 K5 ["createElement"]
      389 GETUPVAL                         R14 5
      390 DUPTABLE                         R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      391 LOADK                            R18 K28 ["StudioModes"]
      392 LOADK                            R19 K63 ["AwakeParts"]
      393 NAMECALL                         R16 R4 K19 ["getText"]
      395 CALL                             R16 3 1
      396 SETTABLEKS                       R16 R15 K16 ["Title"]
      398 LOADK                            R18 K28 ["StudioModes"]
      399 LOADK                            R19 K71 ["AwakePartsToolTip"]
      400 NAMECALL                         R16 R4 K19 ["getText"]
      402 CALL                             R16 3 1
      403 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      405 GETTABLEKS                       R16 R3 K69 ["Physics"]
      407 SETTABLEKS                       R16 R15 K31 ["Setting"]
      409 LOADK                            R16 K72 ["AreAwakePartsHighlighted"]
      410 SETTABLEKS                       R16 R15 K32 ["Property"]
      412 CALL                             R13 2 1
      413 SETTABLEKS                       R13 R12 K63 ["AwakeParts"]
      415 GETUPVAL                         R14 3
      416 GETTABLEKS                       R13 R14 K5 ["createElement"]
      418 GETUPVAL                         R14 5
      419 DUPTABLE                         R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      420 LOADK                            R18 K28 ["StudioModes"]
      421 LOADK                            R19 K73 ["ShowAssemblies"]
      422 NAMECALL                         R16 R4 K19 ["getText"]
      424 CALL                             R16 3 1
      425 SETTABLEKS                       R16 R15 K16 ["Title"]
      427 LOADK                            R18 K28 ["StudioModes"]
      428 LOADK                            R19 K74 ["ShowAssembliesToolTip"]
      429 NAMECALL                         R16 R4 K19 ["getText"]
      431 CALL                             R16 3 1
      432 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      434 GETTABLEKS                       R16 R3 K69 ["Physics"]
      436 SETTABLEKS                       R16 R15 K31 ["Setting"]
      438 LOADK                            R16 K75 ["AreAssembliesShown"]
      439 SETTABLEKS                       R16 R15 K32 ["Property"]
      441 CALL                             R13 2 1
      442 SETTABLEKS                       R13 R12 K64 ["Assemblies"]
      444 GETUPVAL                         R14 3
      445 GETTABLEKS                       R13 R14 K5 ["createElement"]
      447 GETUPVAL                         R14 5
      448 DUPTABLE                         R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      449 LOADK                            R18 K28 ["StudioModes"]
      450 LOADK                            R19 K65 ["Mechanisms"]
      451 NAMECALL                         R16 R4 K19 ["getText"]
      453 CALL                             R16 3 1
      454 SETTABLEKS                       R16 R15 K16 ["Title"]
      456 LOADK                            R18 K28 ["StudioModes"]
      457 LOADK                            R19 K76 ["MechanismsToolTip"]
      458 NAMECALL                         R16 R4 K19 ["getText"]
      460 CALL                             R16 3 1
      461 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      463 GETTABLEKS                       R16 R3 K69 ["Physics"]
      465 SETTABLEKS                       R16 R15 K31 ["Setting"]
      467 LOADK                            R16 K77 ["AreMechanismsShown"]
      468 SETTABLEKS                       R16 R15 K32 ["Property"]
      470 CALL                             R13 2 1
      471 SETTABLEKS                       R13 R12 K65 ["Mechanisms"]
      473 GETUPVAL                         R14 3
      474 GETTABLEKS                       R13 R14 K5 ["createElement"]
      476 GETUPVAL                         R14 5
      477 DUPTABLE                         R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      478 LOADK                            R18 K28 ["StudioModes"]
      479 LOADK                            R19 K66 ["NetworkOwner"]
      480 NAMECALL                         R16 R4 K19 ["getText"]
      482 CALL                             R16 3 1
      483 SETTABLEKS                       R16 R15 K16 ["Title"]
      485 LOADK                            R18 K28 ["StudioModes"]
      486 LOADK                            R19 K78 ["NetworkOwnerToolTip"]
      487 NAMECALL                         R16 R4 K19 ["getText"]
      489 CALL                             R16 3 1
      490 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      492 GETTABLEKS                       R16 R3 K69 ["Physics"]
      494 SETTABLEKS                       R16 R15 K31 ["Setting"]
      496 LOADK                            R16 K79 ["AreOwnersShown"]
      497 SETTABLEKS                       R16 R15 K32 ["Property"]
      499 CALL                             R13 2 1
      500 SETTABLEKS                       R13 R12 K66 ["NetworkOwner"]
      502 CALL                             R9 3 1
      503 SETTABLEKS                       R9 R8 K11 ["PhysicsLabels"]
      505 GETUPVAL                         R10 3
      506 GETTABLEKS                       R9 R10 K5 ["createElement"]
      508 LOADK                            R10 K15 ["VisualizationModeCategory"]
      509 DUPTABLE                         R11 K17 [{"Title"}]
      510 LOADK                            R14 K18 ["VisualizationModeCategories"]
      511 LOADK                            R15 K12 ["PhysicsSimulation"]
      512 NAMECALL                         R12 R4 K19 ["getText"]
      514 CALL                             R12 3 1
      515 SETTABLEKS                       R12 R11 K16 ["Title"]
      517 DUPTABLE                         R12 K83 [{"CollisionFidelity", "ContactPoints", "WindDirection"}]
      518 GETUPVAL                         R14 3
      519 GETTABLEKS                       R13 R14 K5 ["createElement"]
      521 GETUPVAL                         R14 5
      522 DUPTABLE                         R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      523 LOADK                            R18 K28 ["StudioModes"]
      524 LOADK                            R19 K80 ["CollisionFidelity"]
      525 NAMECALL                         R16 R4 K19 ["getText"]
      527 CALL                             R16 3 1
      528 SETTABLEKS                       R16 R15 K16 ["Title"]
      530 LOADK                            R18 K28 ["StudioModes"]
      531 LOADK                            R19 K84 ["CollisionFidelityToolTip"]
      532 NAMECALL                         R16 R4 K19 ["getText"]
      534 CALL                             R16 3 1
      535 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      537 GETTABLEKS                       R16 R3 K69 ["Physics"]
      539 SETTABLEKS                       R16 R15 K31 ["Setting"]
      541 LOADK                            R16 K85 ["ShowDecompositionGeometry"]
      542 SETTABLEKS                       R16 R15 K32 ["Property"]
      544 CALL                             R13 2 1
      545 SETTABLEKS                       R13 R12 K80 ["CollisionFidelity"]
      547 GETUPVAL                         R14 3
      548 GETTABLEKS                       R13 R14 K5 ["createElement"]
      550 GETUPVAL                         R14 5
      551 DUPTABLE                         R15 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      552 LOADK                            R18 K28 ["StudioModes"]
      553 LOADK                            R19 K81 ["ContactPoints"]
      554 NAMECALL                         R16 R4 K19 ["getText"]
      556 CALL                             R16 3 1
      557 SETTABLEKS                       R16 R15 K16 ["Title"]
      559 LOADK                            R18 K28 ["StudioModes"]
      560 LOADK                            R19 K86 ["ContactPointsToolTip"]
      561 NAMECALL                         R16 R4 K19 ["getText"]
      563 CALL                             R16 3 1
      564 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      566 GETTABLEKS                       R16 R3 K69 ["Physics"]
      568 SETTABLEKS                       R16 R15 K31 ["Setting"]
      570 LOADK                            R16 K87 ["AreContactPointsShown"]
      571 SETTABLEKS                       R16 R15 K32 ["Property"]
      573 CALL                             R13 2 1
      574 SETTABLEKS                       R13 R12 K81 ["ContactPoints"]
      576 GETUPVAL                         R14 3
      577 GETTABLEKS                       R13 R14 K5 ["createElement"]
      579 GETUPVAL                         R14 4
      580 DUPTABLE                         R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      581 LOADK                            R18 K28 ["StudioModes"]
      582 LOADK                            R19 K82 ["WindDirection"]
      583 NAMECALL                         R16 R4 K19 ["getText"]
      585 CALL                             R16 3 1
      586 SETTABLEKS                       R16 R15 K16 ["Title"]
      588 LOADK                            R18 K28 ["StudioModes"]
      589 LOADK                            R19 K88 ["WindDirectionToolTip"]
      590 NAMECALL                         R16 R4 K19 ["getText"]
      592 CALL                             R16 3 1
      593 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      595 LOADK                            R16 K89 ["WindControl"]
      596 SETTABLEKS                       R16 R15 K24 ["FeatureId"]
      598 LOADK                            R16 K30 ["Toggle"]
      599 SETTABLEKS                       R16 R15 K25 ["ActionId"]
      601 GETTABLEKS                       R16 R0 K26 ["Actions"]
      603 SETTABLEKS                       R16 R15 K26 ["Actions"]
      605 CALL                             R13 2 1
      606 SETTABLEKS                       R13 R12 K82 ["WindDirection"]
      608 CALL                             R9 3 1
      609 SETTABLEKS                       R9 R8 K12 ["PhysicsSimulation"]
      611 GETUPVAL                         R10 3
      612 GETTABLEKS                       R9 R10 K5 ["createElement"]
      614 LOADK                            R10 K15 ["VisualizationModeCategory"]
      615 DUPTABLE                         R11 K17 [{"Title"}]
      616 LOADK                            R14 K18 ["VisualizationModeCategories"]
      617 LOADK                            R15 K13 ["View"]
      618 NAMECALL                         R12 R4 K19 ["getText"]
      620 CALL                             R12 3 1
      621 SETTABLEKS                       R12 R11 K16 ["Title"]
      623 DUPTABLE                         R12 K94 [{"ViewSelector", "Grid", "GridMaterial", "CollaboratorHighlights"}]
      624 GETUPVAL                         R14 3
      625 GETTABLEKS                       R13 R14 K5 ["createElement"]
      627 GETUPVAL                         R14 4
      628 DUPTABLE                         R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      629 LOADK                            R18 K28 ["StudioModes"]
      630 LOADK                            R19 K90 ["ViewSelector"]
      631 NAMECALL                         R16 R4 K19 ["getText"]
      633 CALL                             R16 3 1
      634 SETTABLEKS                       R16 R15 K16 ["Title"]
      636 LOADK                            R18 K28 ["StudioModes"]
      637 LOADK                            R19 K95 ["ViewSelectorToolTip"]
      638 NAMECALL                         R16 R4 K19 ["getText"]
      640 CALL                             R16 3 1
      641 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      643 LOADK                            R16 K90 ["ViewSelector"]
      644 SETTABLEKS                       R16 R15 K24 ["FeatureId"]
      646 LOADK                            R16 K30 ["Toggle"]
      647 SETTABLEKS                       R16 R15 K25 ["ActionId"]
      649 GETTABLEKS                       R16 R0 K26 ["Actions"]
      651 SETTABLEKS                       R16 R15 K26 ["Actions"]
      653 CALL                             R13 2 1
      654 SETTABLEKS                       R13 R12 K90 ["ViewSelector"]
      656 GETUPVAL                         R14 3
      657 GETTABLEKS                       R13 R14 K5 ["createElement"]
      659 GETUPVAL                         R14 4
      660 DUPTABLE                         R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      661 LOADK                            R18 K28 ["StudioModes"]
      662 LOADK                            R19 K91 ["Grid"]
      663 NAMECALL                         R16 R4 K19 ["getText"]
      665 CALL                             R16 3 1
      666 SETTABLEKS                       R16 R15 K16 ["Title"]
      668 LOADK                            R18 K28 ["StudioModes"]
      669 LOADK                            R19 K96 ["GridToolTip"]
      670 NAMECALL                         R16 R4 K19 ["getText"]
      672 CALL                             R16 3 1
      673 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      675 LOADK                            R16 K97 ["3DGrid"]
      676 SETTABLEKS                       R16 R15 K24 ["FeatureId"]
      678 LOADK                            R16 K30 ["Toggle"]
      679 SETTABLEKS                       R16 R15 K25 ["ActionId"]
      681 GETTABLEKS                       R16 R0 K26 ["Actions"]
      683 SETTABLEKS                       R16 R15 K26 ["Actions"]
      685 CALL                             R13 2 1
      686 SETTABLEKS                       R13 R12 K91 ["Grid"]
      688 GETUPVAL                         R14 3
      689 GETTABLEKS                       R13 R14 K5 ["createElement"]
      691 GETUPVAL                         R14 4
      692 DUPTABLE                         R15 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      693 LOADK                            R18 K28 ["StudioModes"]
      694 LOADK                            R19 K92 ["GridMaterial"]
      695 NAMECALL                         R16 R4 K19 ["getText"]
      697 CALL                             R16 3 1
      698 SETTABLEKS                       R16 R15 K16 ["Title"]
      700 LOADK                            R18 K28 ["StudioModes"]
      701 LOADK                            R19 K98 ["GridMaterialToolTip"]
      702 NAMECALL                         R16 R4 K19 ["getText"]
      704 CALL                             R16 3 1
      705 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      707 LOADK                            R16 K92 ["GridMaterial"]
      708 SETTABLEKS                       R16 R15 K24 ["FeatureId"]
      710 LOADK                            R16 K30 ["Toggle"]
      711 SETTABLEKS                       R16 R15 K25 ["ActionId"]
      713 GETTABLEKS                       R16 R0 K26 ["Actions"]
      715 SETTABLEKS                       R16 R15 K26 ["Actions"]
      717 CALL                             R13 2 1
      718 SETTABLEKS                       R13 R12 K92 ["GridMaterial"]
      720 MOVE                             R13 R1
      721 JUMPIFNOT                        R13 ; [+23]
      722 GETUPVAL                         R14 3
      723 GETTABLEKS                       R13 R14 K5 ["createElement"]
      725 GETUPVAL                         R14 6
      726 DUPTABLE                         R15 K100 [{"Title", "ToolTip", "UseState"}]
      727 LOADK                            R18 K28 ["StudioModes"]
      728 LOADK                            R19 K93 ["CollaboratorHighlights"]
      729 NAMECALL                         R16 R4 K19 ["getText"]
      731 CALL                             R16 3 1
      732 SETTABLEKS                       R16 R15 K16 ["Title"]
      734 LOADK                            R18 K28 ["StudioModes"]
      735 LOADK                            R19 K101 ["CollaboratorHighlightsToolTip"]
      736 NAMECALL                         R16 R4 K19 ["getText"]
      738 CALL                             R16 3 1
      739 SETTABLEKS                       R16 R15 K23 ["ToolTip"]
      741 GETUPVAL                         R16 7
      742 SETTABLEKS                       R16 R15 K99 ["UseState"]
      744 CALL                             R13 2 1
      745 SETTABLEKS                       R13 R12 K93 ["CollaboratorHighlights"]
      747 CALL                             R9 3 1
      748 SETTABLEKS                       R9 R8 K13 ["View"]
      750 CALL                             R5 3 -1
      751 RETURN                           R5 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R3 R0 K6 ["Packages"]
       11 GETTABLEKS                       R2 R3 K7 ["Framework"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K5 [require]
       16 GETTABLEKS                       R4 R0 K6 ["Packages"]
       18 GETTABLEKS                       R3 R4 K8 ["React"]
       20 CALL                             R2 1 1
       21 GETIMPORT                        R3 K5 [require]
       23 GETTABLEKS                       R6 R0 K9 ["Src"]
       25 GETTABLEKS                       R5 R6 K10 ["Modes"]
       27 GETTABLEKS                       R4 R5 K11 ["SettingVisualizationMode"]
       29 CALL                             R3 1 1
       30 GETIMPORT                        R4 K5 [require]
       32 GETTABLEKS                       R7 R0 K9 ["Src"]
       34 GETTABLEKS                       R6 R7 K10 ["Modes"]
       36 GETTABLEKS                       R5 R6 K12 ["ToggleActionVisualizationMode"]
       38 CALL                             R4 1 1
       39 GETIMPORT                        R5 K5 [require]
       41 GETTABLEKS                       R8 R0 K9 ["Src"]
       43 GETTABLEKS                       R7 R8 K13 ["Hooks"]
       45 GETTABLEKS                       R6 R7 K14 ["useCollaborationHighlights"]
       47 CALL                             R5 1 1
       48 GETIMPORT                        R6 K5 [require]
       50 GETTABLEKS                       R9 R0 K9 ["Src"]
       52 GETTABLEKS                       R8 R9 K10 ["Modes"]
       54 GETTABLEKS                       R7 R8 K15 ["VisualizationMode"]
       56 CALL                             R6 1 1
       57 GETIMPORT                        R7 K5 [require]
       59 GETTABLEKS                       R10 R0 K9 ["Src"]
       61 GETTABLEKS                       R9 R10 K16 ["Flags"]
       63 GETTABLEKS                       R8 R9 K17 ["getFFlagStudioVisualizationModesServiceFix"]
       65 CALL                             R7 1 1
       66 GETIMPORT                        R8 K5 [require]
       68 GETTABLEKS                       R11 R0 K9 ["Src"]
       70 GETTABLEKS                       R10 R11 K16 ["Flags"]
       72 GETTABLEKS                       R9 R10 K18 ["getFFlagStudioVisualizationModesTestSupport"]
       74 CALL                             R8 1 1
       75 GETTABLEKS                       R9 R1 K19 ["ContextServices"]
       77 DUPCLOSURE                       R10 K20 [PROTO_0]
       78 CAPTURE                          VAL R7
       79 CAPTURE                          VAL R8
       80 CAPTURE                          VAL R9
       81 CAPTURE                          VAL R2
       82 CAPTURE                          VAL R4
       83 CAPTURE                          VAL R3
       84 CAPTURE                          VAL R6
       85 CAPTURE                          VAL R5
       86 RETURN                           R10 1
