PROTO_0:
        0 GETUPVAL                         R1 0
        1 CALL                             R1 0 1
        2 GETUPVAL                         R2 1
        3 CALL                             R2 0 1
        4 GETUPVAL                         R3 2
        5 CALL                             R3 0 1
        6 GETUPVAL                         R4 3
        7 CALL                             R4 0 1
        8 JUMPIFNOT                        R2 ; [+6]
        9 GETTABLEKS                       R6 R0 K0 ["SettingsInstance"]
       11 JUMPIFNOT                        R6 ; [+3]
       12 GETTABLEKS                       R5 R0 K0 ["SettingsInstance"]
       14 JUMP                             ; [+3]
       15 GETIMPORT                        R5 K2 [settings]
       17 CALL                             R5 0 1
       18 GETUPVAL                         R7 4
       19 GETTABLEKS                       R6 R7 K3 ["Localization"]
       21 NAMECALL                         R6 R6 K4 ["use"]
       23 CALL                             R6 1 1
       24 GETUPVAL                         R8 5
       25 GETTABLEKS                       R7 R8 K5 ["createElement"]
       27 GETUPVAL                         R9 5
       28 GETTABLEKS                       R8 R9 K6 ["Fragment"]
       30 NEWTABLE                         R9 0 0
       32 DUPTABLE                         R10 K14 [{"GUI", "Lighting", "Pathfinding", "PhysicsConstraints", "PhysicsLabels", "PhysicsSimulation", "View"}]
       33 GETUPVAL                         R12 5
       34 GETTABLEKS                       R11 R12 K5 ["createElement"]
       36 LOADK                            R12 K15 ["VisualizationModeCategory"]
       37 DUPTABLE                         R13 K17 [{"Title"}]
       38 LOADK                            R16 K18 ["VisualizationModeCategories"]
       39 LOADK                            R17 K7 ["GUI"]
       40 NAMECALL                         R14 R6 K19 ["getText"]
       42 CALL                             R14 3 1
       43 SETTABLEKS                       R14 R13 K16 ["Title"]
       45 DUPTABLE                         R14 K22 [{"DeviceEmulation", "GUIOverlay"}]
       46 GETUPVAL                         R16 5
       47 GETTABLEKS                       R15 R16 K5 ["createElement"]
       49 GETUPVAL                         R16 6
       50 DUPTABLE                         R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
       51 LOADK                            R20 K28 ["StudioModes"]
       52 LOADK                            R21 K20 ["DeviceEmulation"]
       53 NAMECALL                         R18 R6 K19 ["getText"]
       55 CALL                             R18 3 1
       56 SETTABLEKS                       R18 R17 K16 ["Title"]
       58 LOADK                            R20 K28 ["StudioModes"]
       59 LOADK                            R21 K29 ["DeviceEmulationToolTip"]
       60 NAMECALL                         R18 R6 K19 ["getText"]
       62 CALL                             R18 3 1
       63 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
       65 LOADK                            R18 K20 ["DeviceEmulation"]
       66 SETTABLEKS                       R18 R17 K24 ["FeatureId"]
       68 LOADK                            R18 K30 ["Toggle"]
       69 SETTABLEKS                       R18 R17 K25 ["ActionId"]
       71 GETTABLEKS                       R18 R0 K26 ["Actions"]
       73 SETTABLEKS                       R18 R17 K26 ["Actions"]
       75 CALL                             R15 2 1
       76 SETTABLEKS                       R15 R14 K20 ["DeviceEmulation"]
       78 GETUPVAL                         R16 5
       79 GETTABLEKS                       R15 R16 K5 ["createElement"]
       81 GETUPVAL                         R16 7
       82 DUPTABLE                         R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
       83 LOADK                            R20 K28 ["StudioModes"]
       84 LOADK                            R21 K21 ["GUIOverlay"]
       85 NAMECALL                         R18 R6 K19 ["getText"]
       87 CALL                             R18 3 1
       88 SETTABLEKS                       R18 R17 K16 ["Title"]
       90 LOADK                            R20 K28 ["StudioModes"]
       91 LOADK                            R21 K34 ["GUIOverlayToolTip"]
       92 NAMECALL                         R18 R6 K19 ["getText"]
       94 CALL                             R18 3 1
       95 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
       97 JUMPIFNOT                        R1 ; [+7]
       98 GETIMPORT                        R18 K36 [game]
      100 LOADK                            R20 K37 ["StarterGui"]
      101 NAMECALL                         R18 R18 K38 ["GetService"]
      103 CALL                             R18 2 1
      104 JUMP                             ; [+4]
      105 GETIMPORT                        R19 K36 [game]
      107 GETTABLEKS                       R18 R19 K37 ["StarterGui"]
      109 SETTABLEKS                       R18 R17 K31 ["Setting"]
      111 LOADK                            R18 K39 ["ShowDevelopmentGui"]
      112 SETTABLEKS                       R18 R17 K32 ["Property"]
      114 CALL                             R15 2 1
      115 SETTABLEKS                       R15 R14 K21 ["GUIOverlay"]
      117 CALL                             R11 3 1
      118 SETTABLEKS                       R11 R10 K7 ["GUI"]
      120 GETUPVAL                         R12 5
      121 GETTABLEKS                       R11 R12 K5 ["createElement"]
      123 LOADK                            R12 K15 ["VisualizationModeCategory"]
      124 DUPTABLE                         R13 K17 [{"Title"}]
      125 LOADK                            R16 K18 ["VisualizationModeCategories"]
      126 LOADK                            R17 K8 ["Lighting"]
      127 NAMECALL                         R14 R6 K19 ["getText"]
      129 CALL                             R14 3 1
      130 SETTABLEKS                       R14 R13 K16 ["Title"]
      132 DUPTABLE                         R14 K41 [{"Lights"}]
      133 GETUPVAL                         R16 5
      134 GETTABLEKS                       R15 R16 K5 ["createElement"]
      136 GETUPVAL                         R16 7
      137 DUPTABLE                         R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      138 LOADK                            R20 K28 ["StudioModes"]
      139 LOADK                            R21 K40 ["Lights"]
      140 NAMECALL                         R18 R6 K19 ["getText"]
      142 CALL                             R18 3 1
      143 SETTABLEKS                       R18 R17 K16 ["Title"]
      145 LOADK                            R20 K28 ["StudioModes"]
      146 LOADK                            R21 K42 ["LightsToolTip"]
      147 NAMECALL                         R18 R6 K19 ["getText"]
      149 CALL                             R18 3 1
      150 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      152 GETTABLEKS                       R18 R5 K43 ["Studio"]
      154 SETTABLEKS                       R18 R17 K31 ["Setting"]
      156 LOADK                            R18 K44 ["Show Light Guides"]
      157 SETTABLEKS                       R18 R17 K32 ["Property"]
      159 CALL                             R15 2 1
      160 SETTABLEKS                       R15 R14 K40 ["Lights"]
      162 CALL                             R11 3 1
      163 SETTABLEKS                       R11 R10 K8 ["Lighting"]
      165 GETUPVAL                         R12 5
      166 GETTABLEKS                       R11 R12 K5 ["createElement"]
      168 LOADK                            R12 K15 ["VisualizationModeCategory"]
      169 DUPTABLE                         R13 K17 [{"Title"}]
      170 LOADK                            R16 K18 ["VisualizationModeCategories"]
      171 LOADK                            R17 K9 ["Pathfinding"]
      172 NAMECALL                         R14 R6 K19 ["getText"]
      174 CALL                             R14 3 1
      175 SETTABLEKS                       R14 R13 K16 ["Title"]
      177 DUPTABLE                         R14 K48 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
      178 GETUPVAL                         R16 5
      179 GETTABLEKS                       R15 R16 K5 ["createElement"]
      181 GETUPVAL                         R16 7
      182 DUPTABLE                         R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      183 LOADK                            R20 K28 ["StudioModes"]
      184 LOADK                            R21 K45 ["PathfindingMesh"]
      185 NAMECALL                         R18 R6 K19 ["getText"]
      187 CALL                             R18 3 1
      188 SETTABLEKS                       R18 R17 K16 ["Title"]
      190 LOADK                            R20 K28 ["StudioModes"]
      191 LOADK                            R21 K49 ["PathfindingMeshToolTip"]
      192 NAMECALL                         R18 R6 K19 ["getText"]
      194 CALL                             R18 3 1
      195 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      197 GETTABLEKS                       R18 R5 K43 ["Studio"]
      199 SETTABLEKS                       R18 R17 K31 ["Setting"]
      201 LOADK                            R18 K50 ["Show Navigation Mesh"]
      202 SETTABLEKS                       R18 R17 K32 ["Property"]
      204 CALL                             R15 2 1
      205 SETTABLEKS                       R15 R14 K45 ["PathfindingMesh"]
      207 GETUPVAL                         R16 5
      208 GETTABLEKS                       R15 R16 K5 ["createElement"]
      210 GETUPVAL                         R16 7
      211 DUPTABLE                         R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      212 LOADK                            R20 K28 ["StudioModes"]
      213 LOADK                            R21 K46 ["PathfindingModifiers"]
      214 NAMECALL                         R18 R6 K19 ["getText"]
      216 CALL                             R18 3 1
      217 SETTABLEKS                       R18 R17 K16 ["Title"]
      219 LOADK                            R20 K28 ["StudioModes"]
      220 LOADK                            R21 K51 ["PathfindingModifiersToolTip"]
      221 NAMECALL                         R18 R6 K19 ["getText"]
      223 CALL                             R18 3 1
      224 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      226 GETTABLEKS                       R18 R5 K43 ["Studio"]
      228 SETTABLEKS                       R18 R17 K31 ["Setting"]
      230 LOADK                            R18 K52 ["Show Navigation Labels"]
      231 SETTABLEKS                       R18 R17 K32 ["Property"]
      233 CALL                             R15 2 1
      234 SETTABLEKS                       R15 R14 K46 ["PathfindingModifiers"]
      236 GETUPVAL                         R16 5
      237 GETTABLEKS                       R15 R16 K5 ["createElement"]
      239 GETUPVAL                         R16 7
      240 DUPTABLE                         R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      241 LOADK                            R20 K28 ["StudioModes"]
      242 LOADK                            R21 K47 ["PathfindingLinks"]
      243 NAMECALL                         R18 R6 K19 ["getText"]
      245 CALL                             R18 3 1
      246 SETTABLEKS                       R18 R17 K16 ["Title"]
      248 LOADK                            R20 K28 ["StudioModes"]
      249 LOADK                            R21 K53 ["PathfindingLinksToolTip"]
      250 NAMECALL                         R18 R6 K19 ["getText"]
      252 CALL                             R18 3 1
      253 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      255 GETTABLEKS                       R18 R5 K43 ["Studio"]
      257 SETTABLEKS                       R18 R17 K31 ["Setting"]
      259 LOADK                            R18 K54 ["Show Pathfinding Links"]
      260 SETTABLEKS                       R18 R17 K32 ["Property"]
      262 CALL                             R15 2 1
      263 SETTABLEKS                       R15 R14 K47 ["PathfindingLinks"]
      265 CALL                             R11 3 1
      266 SETTABLEKS                       R11 R10 K9 ["Pathfinding"]
      268 GETUPVAL                         R12 5
      269 GETTABLEKS                       R11 R12 K5 ["createElement"]
      271 LOADK                            R12 K15 ["VisualizationModeCategory"]
      272 DUPTABLE                         R13 K17 [{"Title"}]
      273 LOADK                            R16 K18 ["VisualizationModeCategories"]
      274 LOADK                            R17 K10 ["PhysicsConstraints"]
      275 NAMECALL                         R14 R6 K19 ["getText"]
      277 CALL                             R14 3 1
      278 SETTABLEKS                       R14 R13 K16 ["Title"]
      280 DUPTABLE                         R14 K57 [{"Constraints", "Welds"}]
      281 GETUPVAL                         R16 5
      282 GETTABLEKS                       R15 R16 K5 ["createElement"]
      284 GETUPVAL                         R16 6
      285 DUPTABLE                         R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      286 LOADK                            R20 K28 ["StudioModes"]
      287 LOADK                            R21 K55 ["Constraints"]
      288 NAMECALL                         R18 R6 K19 ["getText"]
      290 CALL                             R18 3 1
      291 SETTABLEKS                       R18 R17 K16 ["Title"]
      293 LOADK                            R20 K28 ["StudioModes"]
      294 LOADK                            R21 K58 ["ConstraintsToolTip"]
      295 NAMECALL                         R18 R6 K19 ["getText"]
      297 CALL                             R18 3 1
      298 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      300 LOADK                            R18 K55 ["Constraints"]
      301 SETTABLEKS                       R18 R17 K24 ["FeatureId"]
      303 LOADK                            R18 K59 ["ShowDetails"]
      304 SETTABLEKS                       R18 R17 K25 ["ActionId"]
      306 GETTABLEKS                       R18 R0 K26 ["Actions"]
      308 SETTABLEKS                       R18 R17 K26 ["Actions"]
      310 CALL                             R15 2 1
      311 SETTABLEKS                       R15 R14 K55 ["Constraints"]
      313 GETUPVAL                         R16 5
      314 GETTABLEKS                       R15 R16 K5 ["createElement"]
      316 GETUPVAL                         R16 6
      317 DUPTABLE                         R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      318 LOADK                            R20 K28 ["StudioModes"]
      319 LOADK                            R21 K56 ["Welds"]
      320 NAMECALL                         R18 R6 K19 ["getText"]
      322 CALL                             R18 3 1
      323 SETTABLEKS                       R18 R17 K16 ["Title"]
      325 LOADK                            R20 K28 ["StudioModes"]
      326 LOADK                            R21 K60 ["WeldsToolTip"]
      327 NAMECALL                         R18 R6 K19 ["getText"]
      329 CALL                             R18 3 1
      330 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      332 LOADK                            R18 K55 ["Constraints"]
      333 SETTABLEKS                       R18 R17 K24 ["FeatureId"]
      335 LOADK                            R18 K61 ["ShowWelds"]
      336 SETTABLEKS                       R18 R17 K25 ["ActionId"]
      338 GETTABLEKS                       R18 R0 K26 ["Actions"]
      340 SETTABLEKS                       R18 R17 K26 ["Actions"]
      342 CALL                             R15 2 1
      343 SETTABLEKS                       R15 R14 K56 ["Welds"]
      345 CALL                             R11 3 1
      346 SETTABLEKS                       R11 R10 K10 ["PhysicsConstraints"]
      348 GETUPVAL                         R12 5
      349 GETTABLEKS                       R11 R12 K5 ["createElement"]
      351 LOADK                            R12 K15 ["VisualizationModeCategory"]
      352 DUPTABLE                         R13 K17 [{"Title"}]
      353 LOADK                            R16 K18 ["VisualizationModeCategories"]
      354 LOADK                            R17 K11 ["PhysicsLabels"]
      355 NAMECALL                         R14 R6 K19 ["getText"]
      357 CALL                             R14 3 1
      358 SETTABLEKS                       R14 R13 K16 ["Title"]
      360 DUPTABLE                         R14 K67 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
      361 GETUPVAL                         R16 5
      362 GETTABLEKS                       R15 R16 K5 ["createElement"]
      364 GETUPVAL                         R16 7
      365 DUPTABLE                         R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      366 LOADK                            R20 K28 ["StudioModes"]
      367 LOADK                            R21 K62 ["AnchoredParts"]
      368 NAMECALL                         R18 R6 K19 ["getText"]
      370 CALL                             R18 3 1
      371 SETTABLEKS                       R18 R17 K16 ["Title"]
      373 LOADK                            R20 K28 ["StudioModes"]
      374 LOADK                            R21 K68 ["AnchoredPartsToolTip"]
      375 NAMECALL                         R18 R6 K19 ["getText"]
      377 CALL                             R18 3 1
      378 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      380 GETTABLEKS                       R18 R5 K69 ["Physics"]
      382 SETTABLEKS                       R18 R17 K31 ["Setting"]
      384 LOADK                            R18 K70 ["AreAnchorsShown"]
      385 SETTABLEKS                       R18 R17 K32 ["Property"]
      387 CALL                             R15 2 1
      388 SETTABLEKS                       R15 R14 K62 ["AnchoredParts"]
      390 GETUPVAL                         R16 5
      391 GETTABLEKS                       R15 R16 K5 ["createElement"]
      393 GETUPVAL                         R16 7
      394 DUPTABLE                         R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      395 LOADK                            R20 K28 ["StudioModes"]
      396 LOADK                            R21 K63 ["AwakeParts"]
      397 NAMECALL                         R18 R6 K19 ["getText"]
      399 CALL                             R18 3 1
      400 SETTABLEKS                       R18 R17 K16 ["Title"]
      402 LOADK                            R20 K28 ["StudioModes"]
      403 LOADK                            R21 K71 ["AwakePartsToolTip"]
      404 NAMECALL                         R18 R6 K19 ["getText"]
      406 CALL                             R18 3 1
      407 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      409 GETTABLEKS                       R18 R5 K69 ["Physics"]
      411 SETTABLEKS                       R18 R17 K31 ["Setting"]
      413 LOADK                            R18 K72 ["AreAwakePartsHighlighted"]
      414 SETTABLEKS                       R18 R17 K32 ["Property"]
      416 CALL                             R15 2 1
      417 SETTABLEKS                       R15 R14 K63 ["AwakeParts"]
      419 GETUPVAL                         R16 5
      420 GETTABLEKS                       R15 R16 K5 ["createElement"]
      422 GETUPVAL                         R16 7
      423 DUPTABLE                         R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      424 LOADK                            R20 K28 ["StudioModes"]
      425 LOADK                            R21 K73 ["ShowAssemblies"]
      426 NAMECALL                         R18 R6 K19 ["getText"]
      428 CALL                             R18 3 1
      429 SETTABLEKS                       R18 R17 K16 ["Title"]
      431 LOADK                            R20 K28 ["StudioModes"]
      432 LOADK                            R21 K74 ["ShowAssembliesToolTip"]
      433 NAMECALL                         R18 R6 K19 ["getText"]
      435 CALL                             R18 3 1
      436 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      438 GETTABLEKS                       R18 R5 K69 ["Physics"]
      440 SETTABLEKS                       R18 R17 K31 ["Setting"]
      442 LOADK                            R18 K75 ["AreAssembliesShown"]
      443 SETTABLEKS                       R18 R17 K32 ["Property"]
      445 CALL                             R15 2 1
      446 SETTABLEKS                       R15 R14 K64 ["Assemblies"]
      448 GETUPVAL                         R16 5
      449 GETTABLEKS                       R15 R16 K5 ["createElement"]
      451 GETUPVAL                         R16 7
      452 DUPTABLE                         R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      453 LOADK                            R20 K28 ["StudioModes"]
      454 LOADK                            R21 K65 ["Mechanisms"]
      455 NAMECALL                         R18 R6 K19 ["getText"]
      457 CALL                             R18 3 1
      458 SETTABLEKS                       R18 R17 K16 ["Title"]
      460 LOADK                            R20 K28 ["StudioModes"]
      461 LOADK                            R21 K76 ["MechanismsToolTip"]
      462 NAMECALL                         R18 R6 K19 ["getText"]
      464 CALL                             R18 3 1
      465 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      467 GETTABLEKS                       R18 R5 K69 ["Physics"]
      469 SETTABLEKS                       R18 R17 K31 ["Setting"]
      471 LOADK                            R18 K77 ["AreMechanismsShown"]
      472 SETTABLEKS                       R18 R17 K32 ["Property"]
      474 CALL                             R15 2 1
      475 SETTABLEKS                       R15 R14 K65 ["Mechanisms"]
      477 GETUPVAL                         R16 5
      478 GETTABLEKS                       R15 R16 K5 ["createElement"]
      480 GETUPVAL                         R16 7
      481 DUPTABLE                         R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      482 LOADK                            R20 K28 ["StudioModes"]
      483 LOADK                            R21 K66 ["NetworkOwner"]
      484 NAMECALL                         R18 R6 K19 ["getText"]
      486 CALL                             R18 3 1
      487 SETTABLEKS                       R18 R17 K16 ["Title"]
      489 LOADK                            R20 K28 ["StudioModes"]
      490 LOADK                            R21 K78 ["NetworkOwnerToolTip"]
      491 NAMECALL                         R18 R6 K19 ["getText"]
      493 CALL                             R18 3 1
      494 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      496 GETTABLEKS                       R18 R5 K69 ["Physics"]
      498 SETTABLEKS                       R18 R17 K31 ["Setting"]
      500 LOADK                            R18 K79 ["AreOwnersShown"]
      501 SETTABLEKS                       R18 R17 K32 ["Property"]
      503 CALL                             R15 2 1
      504 SETTABLEKS                       R15 R14 K66 ["NetworkOwner"]
      506 CALL                             R11 3 1
      507 SETTABLEKS                       R11 R10 K11 ["PhysicsLabels"]
      509 GETUPVAL                         R12 5
      510 GETTABLEKS                       R11 R12 K5 ["createElement"]
      512 LOADK                            R12 K15 ["VisualizationModeCategory"]
      513 DUPTABLE                         R13 K17 [{"Title"}]
      514 LOADK                            R16 K18 ["VisualizationModeCategories"]
      515 LOADK                            R17 K12 ["PhysicsSimulation"]
      516 NAMECALL                         R14 R6 K19 ["getText"]
      518 CALL                             R14 3 1
      519 SETTABLEKS                       R14 R13 K16 ["Title"]
      521 DUPTABLE                         R14 K83 [{"CollisionFidelity", "ContactPoints", "WindDirection"}]
      522 GETUPVAL                         R16 5
      523 GETTABLEKS                       R15 R16 K5 ["createElement"]
      525 GETUPVAL                         R16 7
      526 DUPTABLE                         R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      527 LOADK                            R20 K28 ["StudioModes"]
      528 LOADK                            R21 K80 ["CollisionFidelity"]
      529 NAMECALL                         R18 R6 K19 ["getText"]
      531 CALL                             R18 3 1
      532 SETTABLEKS                       R18 R17 K16 ["Title"]
      534 LOADK                            R20 K28 ["StudioModes"]
      535 LOADK                            R21 K84 ["CollisionFidelityToolTip"]
      536 NAMECALL                         R18 R6 K19 ["getText"]
      538 CALL                             R18 3 1
      539 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      541 GETTABLEKS                       R18 R5 K69 ["Physics"]
      543 SETTABLEKS                       R18 R17 K31 ["Setting"]
      545 LOADK                            R18 K85 ["ShowDecompositionGeometry"]
      546 SETTABLEKS                       R18 R17 K32 ["Property"]
      548 CALL                             R15 2 1
      549 SETTABLEKS                       R15 R14 K80 ["CollisionFidelity"]
      551 GETUPVAL                         R16 5
      552 GETTABLEKS                       R15 R16 K5 ["createElement"]
      554 GETUPVAL                         R16 7
      555 DUPTABLE                         R17 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      556 LOADK                            R20 K28 ["StudioModes"]
      557 LOADK                            R21 K81 ["ContactPoints"]
      558 NAMECALL                         R18 R6 K19 ["getText"]
      560 CALL                             R18 3 1
      561 SETTABLEKS                       R18 R17 K16 ["Title"]
      563 LOADK                            R20 K28 ["StudioModes"]
      564 LOADK                            R21 K86 ["ContactPointsToolTip"]
      565 NAMECALL                         R18 R6 K19 ["getText"]
      567 CALL                             R18 3 1
      568 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      570 GETTABLEKS                       R18 R5 K69 ["Physics"]
      572 SETTABLEKS                       R18 R17 K31 ["Setting"]
      574 LOADK                            R18 K87 ["AreContactPointsShown"]
      575 SETTABLEKS                       R18 R17 K32 ["Property"]
      577 CALL                             R15 2 1
      578 SETTABLEKS                       R15 R14 K81 ["ContactPoints"]
      580 GETUPVAL                         R16 5
      581 GETTABLEKS                       R15 R16 K5 ["createElement"]
      583 GETUPVAL                         R16 6
      584 DUPTABLE                         R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      585 LOADK                            R20 K28 ["StudioModes"]
      586 LOADK                            R21 K82 ["WindDirection"]
      587 NAMECALL                         R18 R6 K19 ["getText"]
      589 CALL                             R18 3 1
      590 SETTABLEKS                       R18 R17 K16 ["Title"]
      592 LOADK                            R20 K28 ["StudioModes"]
      593 LOADK                            R21 K88 ["WindDirectionToolTip"]
      594 NAMECALL                         R18 R6 K19 ["getText"]
      596 CALL                             R18 3 1
      597 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      599 LOADK                            R18 K89 ["WindControl"]
      600 SETTABLEKS                       R18 R17 K24 ["FeatureId"]
      602 LOADK                            R18 K30 ["Toggle"]
      603 SETTABLEKS                       R18 R17 K25 ["ActionId"]
      605 GETTABLEKS                       R18 R0 K26 ["Actions"]
      607 SETTABLEKS                       R18 R17 K26 ["Actions"]
      609 CALL                             R15 2 1
      610 SETTABLEKS                       R15 R14 K82 ["WindDirection"]
      612 CALL                             R11 3 1
      613 SETTABLEKS                       R11 R10 K12 ["PhysicsSimulation"]
      615 GETUPVAL                         R12 5
      616 GETTABLEKS                       R11 R12 K5 ["createElement"]
      618 LOADK                            R12 K15 ["VisualizationModeCategory"]
      619 DUPTABLE                         R13 K17 [{"Title"}]
      620 LOADK                            R16 K18 ["VisualizationModeCategories"]
      621 LOADK                            R17 K13 ["View"]
      622 NAMECALL                         R14 R6 K19 ["getText"]
      624 CALL                             R14 3 1
      625 SETTABLEKS                       R14 R13 K16 ["Title"]
      627 DUPTABLE                         R14 K95 [{"ViewSelector", "Grid", "GridMaterial", "Slim", "CollaboratorHighlights"}]
      628 GETUPVAL                         R16 5
      629 GETTABLEKS                       R15 R16 K5 ["createElement"]
      631 GETUPVAL                         R16 6
      632 DUPTABLE                         R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      633 LOADK                            R20 K28 ["StudioModes"]
      634 LOADK                            R21 K90 ["ViewSelector"]
      635 NAMECALL                         R18 R6 K19 ["getText"]
      637 CALL                             R18 3 1
      638 SETTABLEKS                       R18 R17 K16 ["Title"]
      640 LOADK                            R20 K28 ["StudioModes"]
      641 LOADK                            R21 K96 ["ViewSelectorToolTip"]
      642 NAMECALL                         R18 R6 K19 ["getText"]
      644 CALL                             R18 3 1
      645 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      647 LOADK                            R18 K90 ["ViewSelector"]
      648 SETTABLEKS                       R18 R17 K24 ["FeatureId"]
      650 LOADK                            R18 K30 ["Toggle"]
      651 SETTABLEKS                       R18 R17 K25 ["ActionId"]
      653 GETTABLEKS                       R18 R0 K26 ["Actions"]
      655 SETTABLEKS                       R18 R17 K26 ["Actions"]
      657 CALL                             R15 2 1
      658 SETTABLEKS                       R15 R14 K90 ["ViewSelector"]
      660 GETUPVAL                         R16 5
      661 GETTABLEKS                       R15 R16 K5 ["createElement"]
      663 GETUPVAL                         R16 6
      664 DUPTABLE                         R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      665 LOADK                            R20 K28 ["StudioModes"]
      666 LOADK                            R21 K91 ["Grid"]
      667 NAMECALL                         R18 R6 K19 ["getText"]
      669 CALL                             R18 3 1
      670 SETTABLEKS                       R18 R17 K16 ["Title"]
      672 LOADK                            R20 K28 ["StudioModes"]
      673 LOADK                            R21 K97 ["GridToolTip"]
      674 NAMECALL                         R18 R6 K19 ["getText"]
      676 CALL                             R18 3 1
      677 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      679 LOADK                            R18 K98 ["3DGrid"]
      680 SETTABLEKS                       R18 R17 K24 ["FeatureId"]
      682 LOADK                            R18 K30 ["Toggle"]
      683 SETTABLEKS                       R18 R17 K25 ["ActionId"]
      685 GETTABLEKS                       R18 R0 K26 ["Actions"]
      687 SETTABLEKS                       R18 R17 K26 ["Actions"]
      689 CALL                             R15 2 1
      690 SETTABLEKS                       R15 R14 K91 ["Grid"]
      692 GETUPVAL                         R16 5
      693 GETTABLEKS                       R15 R16 K5 ["createElement"]
      695 GETUPVAL                         R16 6
      696 DUPTABLE                         R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      697 LOADK                            R20 K28 ["StudioModes"]
      698 LOADK                            R21 K92 ["GridMaterial"]
      699 NAMECALL                         R18 R6 K19 ["getText"]
      701 CALL                             R18 3 1
      702 SETTABLEKS                       R18 R17 K16 ["Title"]
      704 LOADK                            R20 K28 ["StudioModes"]
      705 LOADK                            R21 K99 ["GridMaterialToolTip"]
      706 NAMECALL                         R18 R6 K19 ["getText"]
      708 CALL                             R18 3 1
      709 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      711 LOADK                            R18 K92 ["GridMaterial"]
      712 SETTABLEKS                       R18 R17 K24 ["FeatureId"]
      714 LOADK                            R18 K30 ["Toggle"]
      715 SETTABLEKS                       R18 R17 K25 ["ActionId"]
      717 GETTABLEKS                       R18 R0 K26 ["Actions"]
      719 SETTABLEKS                       R18 R17 K26 ["Actions"]
      721 CALL                             R15 2 1
      722 SETTABLEKS                       R15 R14 K92 ["GridMaterial"]
      724 MOVE                             R15 R4
      725 JUMPIFNOT                        R15 ; [+32]
      726 MOVE                             R15 R3
      727 JUMPIFNOT                        R15 ; [+30]
      728 GETUPVAL                         R16 5
      729 GETTABLEKS                       R15 R16 K5 ["createElement"]
      731 GETUPVAL                         R16 6
      732 DUPTABLE                         R17 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      733 LOADK                            R20 K28 ["StudioModes"]
      734 LOADK                            R21 K100 ["SLIM"]
      735 NAMECALL                         R18 R6 K19 ["getText"]
      737 CALL                             R18 3 1
      738 SETTABLEKS                       R18 R17 K16 ["Title"]
      740 LOADK                            R20 K28 ["StudioModes"]
      741 LOADK                            R21 K101 ["SLIMToolTip"]
      742 NAMECALL                         R18 R6 K19 ["getText"]
      744 CALL                             R18 3 1
      745 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      747 LOADK                            R18 K100 ["SLIM"]
      748 SETTABLEKS                       R18 R17 K24 ["FeatureId"]
      750 LOADK                            R18 K102 ["ToggleDebug"]
      751 SETTABLEKS                       R18 R17 K25 ["ActionId"]
      753 GETTABLEKS                       R18 R0 K26 ["Actions"]
      755 SETTABLEKS                       R18 R17 K26 ["Actions"]
      757 CALL                             R15 2 1
      758 SETTABLEKS                       R15 R14 K93 ["Slim"]
      760 MOVE                             R15 R1
      761 JUMPIFNOT                        R15 ; [+23]
      762 GETUPVAL                         R16 5
      763 GETTABLEKS                       R15 R16 K5 ["createElement"]
      765 GETUPVAL                         R16 8
      766 DUPTABLE                         R17 K104 [{"Title", "ToolTip", "UseState"}]
      767 LOADK                            R20 K28 ["StudioModes"]
      768 LOADK                            R21 K94 ["CollaboratorHighlights"]
      769 NAMECALL                         R18 R6 K19 ["getText"]
      771 CALL                             R18 3 1
      772 SETTABLEKS                       R18 R17 K16 ["Title"]
      774 LOADK                            R20 K28 ["StudioModes"]
      775 LOADK                            R21 K105 ["CollaboratorHighlightsToolTip"]
      776 NAMECALL                         R18 R6 K19 ["getText"]
      778 CALL                             R18 3 1
      779 SETTABLEKS                       R18 R17 K23 ["ToolTip"]
      781 GETUPVAL                         R18 9
      782 SETTABLEKS                       R18 R17 K103 ["UseState"]
      784 CALL                             R15 2 1
      785 SETTABLEKS                       R15 R14 K94 ["CollaboratorHighlights"]
      787 CALL                             R11 3 1
      788 SETTABLEKS                       R11 R10 K13 ["View"]
      790 CALL                             R7 3 -1
      791 RETURN                           R7 -1

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
       75 GETIMPORT                        R9 K5 [require]
       77 GETTABLEKS                       R12 R0 K9 ["Src"]
       79 GETTABLEKS                       R11 R12 K16 ["Flags"]
       81 GETTABLEKS                       R10 R11 K19 ["getFFlagStudioVisualizationModesShowSLIM"]
       83 CALL                             R9 1 1
       84 GETIMPORT                        R10 K5 [require]
       86 GETTABLEKS                       R13 R0 K9 ["Src"]
       88 GETTABLEKS                       R12 R13 K16 ["Flags"]
       90 GETTABLEKS                       R11 R12 K20 ["getFFlagStudioVisualizationModesCheckForActions"]
       92 CALL                             R10 1 1
       93 GETTABLEKS                       R11 R1 K21 ["ContextServices"]
       95 DUPCLOSURE                       R12 K22 [PROTO_0]
       96 CAPTURE                          VAL R7
       97 CAPTURE                          VAL R8
       98 CAPTURE                          VAL R9
       99 CAPTURE                          VAL R10
      100 CAPTURE                          VAL R11
      101 CAPTURE                          VAL R2
      102 CAPTURE                          VAL R4
      103 CAPTURE                          VAL R3
      104 CAPTURE                          VAL R6
      105 CAPTURE                          VAL R5
      106 RETURN                           R12 1
