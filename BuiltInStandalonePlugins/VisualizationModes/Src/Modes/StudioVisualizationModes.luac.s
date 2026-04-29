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
       16 GETUPVAL                         R6 3
       17 GETTABLEKS                       R5 R6 K3 ["Localization"]
       19 NAMECALL                         R5 R5 K4 ["use"]
       21 CALL                             R5 1 1
       22 GETUPVAL                         R7 4
       23 GETTABLEKS                       R6 R7 K5 ["createElement"]
       25 GETUPVAL                         R8 4
       26 GETTABLEKS                       R7 R8 K6 ["Fragment"]
       28 NEWTABLE                         R8 0 0
       30 DUPTABLE                         R9 K14 [{"GUI", "Lighting", "Pathfinding", "PhysicsConstraints", "PhysicsLabels", "PhysicsSimulation", "View"}]
       31 GETUPVAL                         R11 4
       32 GETTABLEKS                       R10 R11 K5 ["createElement"]
       34 LOADK                            R11 K15 ["VisualizationModeCategory"]
       35 DUPTABLE                         R12 K17 [{"Title"}]
       36 LOADK                            R15 K18 ["VisualizationModeCategories"]
       37 LOADK                            R16 K7 ["GUI"]
       38 NAMECALL                         R13 R5 K19 ["getText"]
       40 CALL                             R13 3 1
       41 SETTABLEKS                       R13 R12 K16 ["Title"]
       43 DUPTABLE                         R13 K22 [{"DeviceEmulation", "GUIOverlay"}]
       44 GETUPVAL                         R15 4
       45 GETTABLEKS                       R14 R15 K5 ["createElement"]
       47 GETUPVAL                         R15 5
       48 DUPTABLE                         R16 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
       49 LOADK                            R19 K28 ["StudioModes"]
       50 LOADK                            R20 K20 ["DeviceEmulation"]
       51 NAMECALL                         R17 R5 K19 ["getText"]
       53 CALL                             R17 3 1
       54 SETTABLEKS                       R17 R16 K16 ["Title"]
       56 LOADK                            R19 K28 ["StudioModes"]
       57 LOADK                            R20 K29 ["DeviceEmulationToolTip"]
       58 NAMECALL                         R17 R5 K19 ["getText"]
       60 CALL                             R17 3 1
       61 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
       63 LOADK                            R17 K20 ["DeviceEmulation"]
       64 SETTABLEKS                       R17 R16 K24 ["FeatureId"]
       66 LOADK                            R17 K30 ["Toggle"]
       67 SETTABLEKS                       R17 R16 K25 ["ActionId"]
       69 GETTABLEKS                       R17 R0 K26 ["Actions"]
       71 SETTABLEKS                       R17 R16 K26 ["Actions"]
       73 CALL                             R14 2 1
       74 SETTABLEKS                       R14 R13 K20 ["DeviceEmulation"]
       76 GETUPVAL                         R15 4
       77 GETTABLEKS                       R14 R15 K5 ["createElement"]
       79 GETUPVAL                         R15 6
       80 DUPTABLE                         R16 K33 [{"Title", "ToolTip", "Setting", "Property"}]
       81 LOADK                            R19 K28 ["StudioModes"]
       82 LOADK                            R20 K21 ["GUIOverlay"]
       83 NAMECALL                         R17 R5 K19 ["getText"]
       85 CALL                             R17 3 1
       86 SETTABLEKS                       R17 R16 K16 ["Title"]
       88 LOADK                            R19 K28 ["StudioModes"]
       89 LOADK                            R20 K34 ["GUIOverlayToolTip"]
       90 NAMECALL                         R17 R5 K19 ["getText"]
       92 CALL                             R17 3 1
       93 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
       95 JUMPIFNOT                        R1 ; [+7]
       96 GETIMPORT                        R17 K36 [game]
       98 LOADK                            R19 K37 ["StarterGui"]
       99 NAMECALL                         R17 R17 K38 ["GetService"]
      101 CALL                             R17 2 1
      102 JUMP                             ; [+4]
      103 GETIMPORT                        R18 K36 [game]
      105 GETTABLEKS                       R17 R18 K37 ["StarterGui"]
      107 SETTABLEKS                       R17 R16 K31 ["Setting"]
      109 LOADK                            R17 K39 ["ShowDevelopmentGui"]
      110 SETTABLEKS                       R17 R16 K32 ["Property"]
      112 CALL                             R14 2 1
      113 SETTABLEKS                       R14 R13 K21 ["GUIOverlay"]
      115 CALL                             R10 3 1
      116 SETTABLEKS                       R10 R9 K7 ["GUI"]
      118 GETUPVAL                         R11 4
      119 GETTABLEKS                       R10 R11 K5 ["createElement"]
      121 LOADK                            R11 K15 ["VisualizationModeCategory"]
      122 DUPTABLE                         R12 K17 [{"Title"}]
      123 LOADK                            R15 K18 ["VisualizationModeCategories"]
      124 LOADK                            R16 K8 ["Lighting"]
      125 NAMECALL                         R13 R5 K19 ["getText"]
      127 CALL                             R13 3 1
      128 SETTABLEKS                       R13 R12 K16 ["Title"]
      130 DUPTABLE                         R13 K41 [{"Lights"}]
      131 GETUPVAL                         R15 4
      132 GETTABLEKS                       R14 R15 K5 ["createElement"]
      134 GETUPVAL                         R15 6
      135 DUPTABLE                         R16 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      136 LOADK                            R19 K28 ["StudioModes"]
      137 LOADK                            R20 K40 ["Lights"]
      138 NAMECALL                         R17 R5 K19 ["getText"]
      140 CALL                             R17 3 1
      141 SETTABLEKS                       R17 R16 K16 ["Title"]
      143 LOADK                            R19 K28 ["StudioModes"]
      144 LOADK                            R20 K42 ["LightsToolTip"]
      145 NAMECALL                         R17 R5 K19 ["getText"]
      147 CALL                             R17 3 1
      148 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      150 GETTABLEKS                       R17 R4 K43 ["Studio"]
      152 SETTABLEKS                       R17 R16 K31 ["Setting"]
      154 LOADK                            R17 K44 ["Show Light Guides"]
      155 SETTABLEKS                       R17 R16 K32 ["Property"]
      157 CALL                             R14 2 1
      158 SETTABLEKS                       R14 R13 K40 ["Lights"]
      160 CALL                             R10 3 1
      161 SETTABLEKS                       R10 R9 K8 ["Lighting"]
      163 GETUPVAL                         R11 4
      164 GETTABLEKS                       R10 R11 K5 ["createElement"]
      166 LOADK                            R11 K15 ["VisualizationModeCategory"]
      167 DUPTABLE                         R12 K17 [{"Title"}]
      168 LOADK                            R15 K18 ["VisualizationModeCategories"]
      169 LOADK                            R16 K9 ["Pathfinding"]
      170 NAMECALL                         R13 R5 K19 ["getText"]
      172 CALL                             R13 3 1
      173 SETTABLEKS                       R13 R12 K16 ["Title"]
      175 DUPTABLE                         R13 K48 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
      176 GETUPVAL                         R15 4
      177 GETTABLEKS                       R14 R15 K5 ["createElement"]
      179 GETUPVAL                         R15 6
      180 DUPTABLE                         R16 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      181 LOADK                            R19 K28 ["StudioModes"]
      182 LOADK                            R20 K45 ["PathfindingMesh"]
      183 NAMECALL                         R17 R5 K19 ["getText"]
      185 CALL                             R17 3 1
      186 SETTABLEKS                       R17 R16 K16 ["Title"]
      188 LOADK                            R19 K28 ["StudioModes"]
      189 LOADK                            R20 K49 ["PathfindingMeshToolTip"]
      190 NAMECALL                         R17 R5 K19 ["getText"]
      192 CALL                             R17 3 1
      193 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      195 GETTABLEKS                       R17 R4 K43 ["Studio"]
      197 SETTABLEKS                       R17 R16 K31 ["Setting"]
      199 LOADK                            R17 K50 ["Show Navigation Mesh"]
      200 SETTABLEKS                       R17 R16 K32 ["Property"]
      202 CALL                             R14 2 1
      203 SETTABLEKS                       R14 R13 K45 ["PathfindingMesh"]
      205 GETUPVAL                         R15 4
      206 GETTABLEKS                       R14 R15 K5 ["createElement"]
      208 GETUPVAL                         R15 6
      209 DUPTABLE                         R16 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      210 LOADK                            R19 K28 ["StudioModes"]
      211 LOADK                            R20 K46 ["PathfindingModifiers"]
      212 NAMECALL                         R17 R5 K19 ["getText"]
      214 CALL                             R17 3 1
      215 SETTABLEKS                       R17 R16 K16 ["Title"]
      217 LOADK                            R19 K28 ["StudioModes"]
      218 LOADK                            R20 K51 ["PathfindingModifiersToolTip"]
      219 NAMECALL                         R17 R5 K19 ["getText"]
      221 CALL                             R17 3 1
      222 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      224 GETTABLEKS                       R17 R4 K43 ["Studio"]
      226 SETTABLEKS                       R17 R16 K31 ["Setting"]
      228 LOADK                            R17 K52 ["Show Navigation Labels"]
      229 SETTABLEKS                       R17 R16 K32 ["Property"]
      231 CALL                             R14 2 1
      232 SETTABLEKS                       R14 R13 K46 ["PathfindingModifiers"]
      234 GETUPVAL                         R15 4
      235 GETTABLEKS                       R14 R15 K5 ["createElement"]
      237 GETUPVAL                         R15 6
      238 DUPTABLE                         R16 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      239 LOADK                            R19 K28 ["StudioModes"]
      240 LOADK                            R20 K47 ["PathfindingLinks"]
      241 NAMECALL                         R17 R5 K19 ["getText"]
      243 CALL                             R17 3 1
      244 SETTABLEKS                       R17 R16 K16 ["Title"]
      246 LOADK                            R19 K28 ["StudioModes"]
      247 LOADK                            R20 K53 ["PathfindingLinksToolTip"]
      248 NAMECALL                         R17 R5 K19 ["getText"]
      250 CALL                             R17 3 1
      251 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      253 GETTABLEKS                       R17 R4 K43 ["Studio"]
      255 SETTABLEKS                       R17 R16 K31 ["Setting"]
      257 LOADK                            R17 K54 ["Show Pathfinding Links"]
      258 SETTABLEKS                       R17 R16 K32 ["Property"]
      260 CALL                             R14 2 1
      261 SETTABLEKS                       R14 R13 K47 ["PathfindingLinks"]
      263 CALL                             R10 3 1
      264 SETTABLEKS                       R10 R9 K9 ["Pathfinding"]
      266 GETUPVAL                         R11 4
      267 GETTABLEKS                       R10 R11 K5 ["createElement"]
      269 LOADK                            R11 K15 ["VisualizationModeCategory"]
      270 DUPTABLE                         R12 K17 [{"Title"}]
      271 LOADK                            R15 K18 ["VisualizationModeCategories"]
      272 LOADK                            R16 K10 ["PhysicsConstraints"]
      273 NAMECALL                         R13 R5 K19 ["getText"]
      275 CALL                             R13 3 1
      276 SETTABLEKS                       R13 R12 K16 ["Title"]
      278 DUPTABLE                         R13 K57 [{"Constraints", "Welds"}]
      279 GETUPVAL                         R15 4
      280 GETTABLEKS                       R14 R15 K5 ["createElement"]
      282 GETUPVAL                         R15 5
      283 DUPTABLE                         R16 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      284 LOADK                            R19 K28 ["StudioModes"]
      285 LOADK                            R20 K55 ["Constraints"]
      286 NAMECALL                         R17 R5 K19 ["getText"]
      288 CALL                             R17 3 1
      289 SETTABLEKS                       R17 R16 K16 ["Title"]
      291 LOADK                            R19 K28 ["StudioModes"]
      292 LOADK                            R20 K58 ["ConstraintsToolTip"]
      293 NAMECALL                         R17 R5 K19 ["getText"]
      295 CALL                             R17 3 1
      296 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      298 LOADK                            R17 K55 ["Constraints"]
      299 SETTABLEKS                       R17 R16 K24 ["FeatureId"]
      301 LOADK                            R17 K59 ["ShowDetails"]
      302 SETTABLEKS                       R17 R16 K25 ["ActionId"]
      304 GETTABLEKS                       R17 R0 K26 ["Actions"]
      306 SETTABLEKS                       R17 R16 K26 ["Actions"]
      308 CALL                             R14 2 1
      309 SETTABLEKS                       R14 R13 K55 ["Constraints"]
      311 GETUPVAL                         R15 4
      312 GETTABLEKS                       R14 R15 K5 ["createElement"]
      314 GETUPVAL                         R15 5
      315 DUPTABLE                         R16 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      316 LOADK                            R19 K28 ["StudioModes"]
      317 LOADK                            R20 K56 ["Welds"]
      318 NAMECALL                         R17 R5 K19 ["getText"]
      320 CALL                             R17 3 1
      321 SETTABLEKS                       R17 R16 K16 ["Title"]
      323 LOADK                            R19 K28 ["StudioModes"]
      324 LOADK                            R20 K60 ["WeldsToolTip"]
      325 NAMECALL                         R17 R5 K19 ["getText"]
      327 CALL                             R17 3 1
      328 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      330 LOADK                            R17 K55 ["Constraints"]
      331 SETTABLEKS                       R17 R16 K24 ["FeatureId"]
      333 LOADK                            R17 K61 ["ShowWelds"]
      334 SETTABLEKS                       R17 R16 K25 ["ActionId"]
      336 GETTABLEKS                       R17 R0 K26 ["Actions"]
      338 SETTABLEKS                       R17 R16 K26 ["Actions"]
      340 CALL                             R14 2 1
      341 SETTABLEKS                       R14 R13 K56 ["Welds"]
      343 CALL                             R10 3 1
      344 SETTABLEKS                       R10 R9 K10 ["PhysicsConstraints"]
      346 GETUPVAL                         R11 4
      347 GETTABLEKS                       R10 R11 K5 ["createElement"]
      349 LOADK                            R11 K15 ["VisualizationModeCategory"]
      350 DUPTABLE                         R12 K17 [{"Title"}]
      351 LOADK                            R15 K18 ["VisualizationModeCategories"]
      352 LOADK                            R16 K11 ["PhysicsLabels"]
      353 NAMECALL                         R13 R5 K19 ["getText"]
      355 CALL                             R13 3 1
      356 SETTABLEKS                       R13 R12 K16 ["Title"]
      358 DUPTABLE                         R13 K67 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
      359 GETUPVAL                         R15 4
      360 GETTABLEKS                       R14 R15 K5 ["createElement"]
      362 GETUPVAL                         R15 6
      363 DUPTABLE                         R16 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      364 LOADK                            R19 K28 ["StudioModes"]
      365 LOADK                            R20 K62 ["AnchoredParts"]
      366 NAMECALL                         R17 R5 K19 ["getText"]
      368 CALL                             R17 3 1
      369 SETTABLEKS                       R17 R16 K16 ["Title"]
      371 LOADK                            R19 K28 ["StudioModes"]
      372 LOADK                            R20 K68 ["AnchoredPartsToolTip"]
      373 NAMECALL                         R17 R5 K19 ["getText"]
      375 CALL                             R17 3 1
      376 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      378 GETTABLEKS                       R17 R4 K69 ["Physics"]
      380 SETTABLEKS                       R17 R16 K31 ["Setting"]
      382 LOADK                            R17 K70 ["AreAnchorsShown"]
      383 SETTABLEKS                       R17 R16 K32 ["Property"]
      385 CALL                             R14 2 1
      386 SETTABLEKS                       R14 R13 K62 ["AnchoredParts"]
      388 GETUPVAL                         R15 4
      389 GETTABLEKS                       R14 R15 K5 ["createElement"]
      391 GETUPVAL                         R15 6
      392 DUPTABLE                         R16 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      393 LOADK                            R19 K28 ["StudioModes"]
      394 LOADK                            R20 K63 ["AwakeParts"]
      395 NAMECALL                         R17 R5 K19 ["getText"]
      397 CALL                             R17 3 1
      398 SETTABLEKS                       R17 R16 K16 ["Title"]
      400 LOADK                            R19 K28 ["StudioModes"]
      401 LOADK                            R20 K71 ["AwakePartsToolTip"]
      402 NAMECALL                         R17 R5 K19 ["getText"]
      404 CALL                             R17 3 1
      405 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      407 GETTABLEKS                       R17 R4 K69 ["Physics"]
      409 SETTABLEKS                       R17 R16 K31 ["Setting"]
      411 LOADK                            R17 K72 ["AreAwakePartsHighlighted"]
      412 SETTABLEKS                       R17 R16 K32 ["Property"]
      414 CALL                             R14 2 1
      415 SETTABLEKS                       R14 R13 K63 ["AwakeParts"]
      417 GETUPVAL                         R15 4
      418 GETTABLEKS                       R14 R15 K5 ["createElement"]
      420 GETUPVAL                         R15 6
      421 DUPTABLE                         R16 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      422 LOADK                            R19 K28 ["StudioModes"]
      423 LOADK                            R20 K73 ["ShowAssemblies"]
      424 NAMECALL                         R17 R5 K19 ["getText"]
      426 CALL                             R17 3 1
      427 SETTABLEKS                       R17 R16 K16 ["Title"]
      429 LOADK                            R19 K28 ["StudioModes"]
      430 LOADK                            R20 K74 ["ShowAssembliesToolTip"]
      431 NAMECALL                         R17 R5 K19 ["getText"]
      433 CALL                             R17 3 1
      434 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      436 GETTABLEKS                       R17 R4 K69 ["Physics"]
      438 SETTABLEKS                       R17 R16 K31 ["Setting"]
      440 LOADK                            R17 K75 ["AreAssembliesShown"]
      441 SETTABLEKS                       R17 R16 K32 ["Property"]
      443 CALL                             R14 2 1
      444 SETTABLEKS                       R14 R13 K64 ["Assemblies"]
      446 GETUPVAL                         R15 4
      447 GETTABLEKS                       R14 R15 K5 ["createElement"]
      449 GETUPVAL                         R15 6
      450 DUPTABLE                         R16 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      451 LOADK                            R19 K28 ["StudioModes"]
      452 LOADK                            R20 K65 ["Mechanisms"]
      453 NAMECALL                         R17 R5 K19 ["getText"]
      455 CALL                             R17 3 1
      456 SETTABLEKS                       R17 R16 K16 ["Title"]
      458 LOADK                            R19 K28 ["StudioModes"]
      459 LOADK                            R20 K76 ["MechanismsToolTip"]
      460 NAMECALL                         R17 R5 K19 ["getText"]
      462 CALL                             R17 3 1
      463 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      465 GETTABLEKS                       R17 R4 K69 ["Physics"]
      467 SETTABLEKS                       R17 R16 K31 ["Setting"]
      469 LOADK                            R17 K77 ["AreMechanismsShown"]
      470 SETTABLEKS                       R17 R16 K32 ["Property"]
      472 CALL                             R14 2 1
      473 SETTABLEKS                       R14 R13 K65 ["Mechanisms"]
      475 GETUPVAL                         R15 4
      476 GETTABLEKS                       R14 R15 K5 ["createElement"]
      478 GETUPVAL                         R15 6
      479 DUPTABLE                         R16 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      480 LOADK                            R19 K28 ["StudioModes"]
      481 LOADK                            R20 K66 ["NetworkOwner"]
      482 NAMECALL                         R17 R5 K19 ["getText"]
      484 CALL                             R17 3 1
      485 SETTABLEKS                       R17 R16 K16 ["Title"]
      487 LOADK                            R19 K28 ["StudioModes"]
      488 LOADK                            R20 K78 ["NetworkOwnerToolTip"]
      489 NAMECALL                         R17 R5 K19 ["getText"]
      491 CALL                             R17 3 1
      492 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      494 GETTABLEKS                       R17 R4 K69 ["Physics"]
      496 SETTABLEKS                       R17 R16 K31 ["Setting"]
      498 LOADK                            R17 K79 ["AreOwnersShown"]
      499 SETTABLEKS                       R17 R16 K32 ["Property"]
      501 CALL                             R14 2 1
      502 SETTABLEKS                       R14 R13 K66 ["NetworkOwner"]
      504 CALL                             R10 3 1
      505 SETTABLEKS                       R10 R9 K11 ["PhysicsLabels"]
      507 GETUPVAL                         R11 4
      508 GETTABLEKS                       R10 R11 K5 ["createElement"]
      510 LOADK                            R11 K15 ["VisualizationModeCategory"]
      511 DUPTABLE                         R12 K17 [{"Title"}]
      512 LOADK                            R15 K18 ["VisualizationModeCategories"]
      513 LOADK                            R16 K12 ["PhysicsSimulation"]
      514 NAMECALL                         R13 R5 K19 ["getText"]
      516 CALL                             R13 3 1
      517 SETTABLEKS                       R13 R12 K16 ["Title"]
      519 DUPTABLE                         R13 K83 [{"CollisionFidelity", "ContactPoints", "WindDirection"}]
      520 GETUPVAL                         R15 4
      521 GETTABLEKS                       R14 R15 K5 ["createElement"]
      523 GETUPVAL                         R15 6
      524 DUPTABLE                         R16 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      525 LOADK                            R19 K28 ["StudioModes"]
      526 LOADK                            R20 K80 ["CollisionFidelity"]
      527 NAMECALL                         R17 R5 K19 ["getText"]
      529 CALL                             R17 3 1
      530 SETTABLEKS                       R17 R16 K16 ["Title"]
      532 LOADK                            R19 K28 ["StudioModes"]
      533 LOADK                            R20 K84 ["CollisionFidelityToolTip"]
      534 NAMECALL                         R17 R5 K19 ["getText"]
      536 CALL                             R17 3 1
      537 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      539 GETTABLEKS                       R17 R4 K69 ["Physics"]
      541 SETTABLEKS                       R17 R16 K31 ["Setting"]
      543 LOADK                            R17 K85 ["ShowDecompositionGeometry"]
      544 SETTABLEKS                       R17 R16 K32 ["Property"]
      546 CALL                             R14 2 1
      547 SETTABLEKS                       R14 R13 K80 ["CollisionFidelity"]
      549 GETUPVAL                         R15 4
      550 GETTABLEKS                       R14 R15 K5 ["createElement"]
      552 GETUPVAL                         R15 6
      553 DUPTABLE                         R16 K33 [{"Title", "ToolTip", "Setting", "Property"}]
      554 LOADK                            R19 K28 ["StudioModes"]
      555 LOADK                            R20 K81 ["ContactPoints"]
      556 NAMECALL                         R17 R5 K19 ["getText"]
      558 CALL                             R17 3 1
      559 SETTABLEKS                       R17 R16 K16 ["Title"]
      561 LOADK                            R19 K28 ["StudioModes"]
      562 LOADK                            R20 K86 ["ContactPointsToolTip"]
      563 NAMECALL                         R17 R5 K19 ["getText"]
      565 CALL                             R17 3 1
      566 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      568 GETTABLEKS                       R17 R4 K69 ["Physics"]
      570 SETTABLEKS                       R17 R16 K31 ["Setting"]
      572 LOADK                            R17 K87 ["AreContactPointsShown"]
      573 SETTABLEKS                       R17 R16 K32 ["Property"]
      575 CALL                             R14 2 1
      576 SETTABLEKS                       R14 R13 K81 ["ContactPoints"]
      578 GETUPVAL                         R15 4
      579 GETTABLEKS                       R14 R15 K5 ["createElement"]
      581 GETUPVAL                         R15 5
      582 DUPTABLE                         R16 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      583 LOADK                            R19 K28 ["StudioModes"]
      584 LOADK                            R20 K82 ["WindDirection"]
      585 NAMECALL                         R17 R5 K19 ["getText"]
      587 CALL                             R17 3 1
      588 SETTABLEKS                       R17 R16 K16 ["Title"]
      590 LOADK                            R19 K28 ["StudioModes"]
      591 LOADK                            R20 K88 ["WindDirectionToolTip"]
      592 NAMECALL                         R17 R5 K19 ["getText"]
      594 CALL                             R17 3 1
      595 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      597 LOADK                            R17 K89 ["WindControl"]
      598 SETTABLEKS                       R17 R16 K24 ["FeatureId"]
      600 LOADK                            R17 K30 ["Toggle"]
      601 SETTABLEKS                       R17 R16 K25 ["ActionId"]
      603 GETTABLEKS                       R17 R0 K26 ["Actions"]
      605 SETTABLEKS                       R17 R16 K26 ["Actions"]
      607 CALL                             R14 2 1
      608 SETTABLEKS                       R14 R13 K82 ["WindDirection"]
      610 CALL                             R10 3 1
      611 SETTABLEKS                       R10 R9 K12 ["PhysicsSimulation"]
      613 GETUPVAL                         R11 4
      614 GETTABLEKS                       R10 R11 K5 ["createElement"]
      616 LOADK                            R11 K15 ["VisualizationModeCategory"]
      617 DUPTABLE                         R12 K17 [{"Title"}]
      618 LOADK                            R15 K18 ["VisualizationModeCategories"]
      619 LOADK                            R16 K13 ["View"]
      620 NAMECALL                         R13 R5 K19 ["getText"]
      622 CALL                             R13 3 1
      623 SETTABLEKS                       R13 R12 K16 ["Title"]
      625 DUPTABLE                         R13 K95 [{"ViewSelector", "Grid", "GridMaterial", "Slim", "CollaboratorHighlights"}]
      626 GETUPVAL                         R15 4
      627 GETTABLEKS                       R14 R15 K5 ["createElement"]
      629 GETUPVAL                         R15 5
      630 DUPTABLE                         R16 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      631 LOADK                            R19 K28 ["StudioModes"]
      632 LOADK                            R20 K90 ["ViewSelector"]
      633 NAMECALL                         R17 R5 K19 ["getText"]
      635 CALL                             R17 3 1
      636 SETTABLEKS                       R17 R16 K16 ["Title"]
      638 LOADK                            R19 K28 ["StudioModes"]
      639 LOADK                            R20 K96 ["ViewSelectorToolTip"]
      640 NAMECALL                         R17 R5 K19 ["getText"]
      642 CALL                             R17 3 1
      643 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      645 LOADK                            R17 K90 ["ViewSelector"]
      646 SETTABLEKS                       R17 R16 K24 ["FeatureId"]
      648 LOADK                            R17 K30 ["Toggle"]
      649 SETTABLEKS                       R17 R16 K25 ["ActionId"]
      651 GETTABLEKS                       R17 R0 K26 ["Actions"]
      653 SETTABLEKS                       R17 R16 K26 ["Actions"]
      655 CALL                             R14 2 1
      656 SETTABLEKS                       R14 R13 K90 ["ViewSelector"]
      658 GETUPVAL                         R15 4
      659 GETTABLEKS                       R14 R15 K5 ["createElement"]
      661 GETUPVAL                         R15 5
      662 DUPTABLE                         R16 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      663 LOADK                            R19 K28 ["StudioModes"]
      664 LOADK                            R20 K91 ["Grid"]
      665 NAMECALL                         R17 R5 K19 ["getText"]
      667 CALL                             R17 3 1
      668 SETTABLEKS                       R17 R16 K16 ["Title"]
      670 LOADK                            R19 K28 ["StudioModes"]
      671 LOADK                            R20 K97 ["GridToolTip"]
      672 NAMECALL                         R17 R5 K19 ["getText"]
      674 CALL                             R17 3 1
      675 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      677 LOADK                            R17 K98 ["3DGrid"]
      678 SETTABLEKS                       R17 R16 K24 ["FeatureId"]
      680 LOADK                            R17 K30 ["Toggle"]
      681 SETTABLEKS                       R17 R16 K25 ["ActionId"]
      683 GETTABLEKS                       R17 R0 K26 ["Actions"]
      685 SETTABLEKS                       R17 R16 K26 ["Actions"]
      687 CALL                             R14 2 1
      688 SETTABLEKS                       R14 R13 K91 ["Grid"]
      690 GETUPVAL                         R15 4
      691 GETTABLEKS                       R14 R15 K5 ["createElement"]
      693 GETUPVAL                         R15 5
      694 DUPTABLE                         R16 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      695 LOADK                            R19 K28 ["StudioModes"]
      696 LOADK                            R20 K92 ["GridMaterial"]
      697 NAMECALL                         R17 R5 K19 ["getText"]
      699 CALL                             R17 3 1
      700 SETTABLEKS                       R17 R16 K16 ["Title"]
      702 LOADK                            R19 K28 ["StudioModes"]
      703 LOADK                            R20 K99 ["GridMaterialToolTip"]
      704 NAMECALL                         R17 R5 K19 ["getText"]
      706 CALL                             R17 3 1
      707 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      709 LOADK                            R17 K92 ["GridMaterial"]
      710 SETTABLEKS                       R17 R16 K24 ["FeatureId"]
      712 LOADK                            R17 K30 ["Toggle"]
      713 SETTABLEKS                       R17 R16 K25 ["ActionId"]
      715 GETTABLEKS                       R17 R0 K26 ["Actions"]
      717 SETTABLEKS                       R17 R16 K26 ["Actions"]
      719 CALL                             R14 2 1
      720 SETTABLEKS                       R14 R13 K92 ["GridMaterial"]
      722 MOVE                             R14 R3
      723 JUMPIFNOT                        R14 ; [+30]
      724 GETUPVAL                         R15 4
      725 GETTABLEKS                       R14 R15 K5 ["createElement"]
      727 GETUPVAL                         R15 5
      728 DUPTABLE                         R16 K27 [{"Title", "ToolTip", "FeatureId", "ActionId", "Actions"}]
      729 LOADK                            R19 K28 ["StudioModes"]
      730 LOADK                            R20 K100 ["SLIM"]
      731 NAMECALL                         R17 R5 K19 ["getText"]
      733 CALL                             R17 3 1
      734 SETTABLEKS                       R17 R16 K16 ["Title"]
      736 LOADK                            R19 K28 ["StudioModes"]
      737 LOADK                            R20 K101 ["SLIMToolTip"]
      738 NAMECALL                         R17 R5 K19 ["getText"]
      740 CALL                             R17 3 1
      741 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      743 LOADK                            R17 K100 ["SLIM"]
      744 SETTABLEKS                       R17 R16 K24 ["FeatureId"]
      746 LOADK                            R17 K102 ["ToggleDebug"]
      747 SETTABLEKS                       R17 R16 K25 ["ActionId"]
      749 GETTABLEKS                       R17 R0 K26 ["Actions"]
      751 SETTABLEKS                       R17 R16 K26 ["Actions"]
      753 CALL                             R14 2 1
      754 SETTABLEKS                       R14 R13 K93 ["Slim"]
      756 MOVE                             R14 R1
      757 JUMPIFNOT                        R14 ; [+23]
      758 GETUPVAL                         R15 4
      759 GETTABLEKS                       R14 R15 K5 ["createElement"]
      761 GETUPVAL                         R15 7
      762 DUPTABLE                         R16 K104 [{"Title", "ToolTip", "UseState"}]
      763 LOADK                            R19 K28 ["StudioModes"]
      764 LOADK                            R20 K94 ["CollaboratorHighlights"]
      765 NAMECALL                         R17 R5 K19 ["getText"]
      767 CALL                             R17 3 1
      768 SETTABLEKS                       R17 R16 K16 ["Title"]
      770 LOADK                            R19 K28 ["StudioModes"]
      771 LOADK                            R20 K105 ["CollaboratorHighlightsToolTip"]
      772 NAMECALL                         R17 R5 K19 ["getText"]
      774 CALL                             R17 3 1
      775 SETTABLEKS                       R17 R16 K23 ["ToolTip"]
      777 GETUPVAL                         R17 8
      778 SETTABLEKS                       R17 R16 K103 ["UseState"]
      780 CALL                             R14 2 1
      781 SETTABLEKS                       R14 R13 K94 ["CollaboratorHighlights"]
      783 CALL                             R10 3 1
      784 SETTABLEKS                       R10 R9 K13 ["View"]
      786 CALL                             R6 3 -1
      787 RETURN                           R6 -1

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
       84 GETTABLEKS                       R10 R1 K20 ["ContextServices"]
       86 DUPCLOSURE                       R11 K21 [PROTO_0]
       87 CAPTURE                          VAL R7
       88 CAPTURE                          VAL R8
       89 CAPTURE                          VAL R9
       90 CAPTURE                          VAL R10
       91 CAPTURE                          VAL R2
       92 CAPTURE                          VAL R4
       93 CAPTURE                          VAL R3
       94 CAPTURE                          VAL R6
       95 CAPTURE                          VAL R5
       96 RETURN                           R11 1
