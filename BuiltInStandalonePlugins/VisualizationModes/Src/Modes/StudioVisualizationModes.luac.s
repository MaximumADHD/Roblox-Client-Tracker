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
       34 CALL                             R7 0 1
       35 JUMPIFNOT                        R7 ; [+5]
       36 GETUPVAL                         R7 4
       37 LOADK                            R8 K9 ["DeviceEmulation"]
       38 LOADK                            R9 K8 ["Toggle"]
       39 LOADB                            R10 0
       40 CALL                             R7 3 1
       41 GETUPVAL                         R8 6
       42 GETTABLEKS                       R8 R8 K10 ["createNextOrder"]
       44 CALL                             R8 0 1
       45 GETUPVAL                         R9 7
       46 GETTABLEKS                       R9 R9 K11 ["createElement"]
       48 GETUPVAL                         R10 7
       49 GETTABLEKS                       R10 R10 K12 ["Fragment"]
       51 NEWTABLE                         R11 0 0
       53 DUPTABLE                         R12 K23 [{"DeviceSimulation", "GUI", "Lighting", "Animation", "Audio", "Pathfinding", "PhysicsConstraints", "PhysicsLabels", "PhysicsSimulation", "View"}]
       54 GETUPVAL                         R14 5
       55 CALL                             R14 0 1
       56 JUMPIFNOT                        R14 ; [+87]
       57 GETUPVAL                         R13 7
       58 GETTABLEKS                       R13 R13 K11 ["createElement"]
       60 LOADK                            R14 K24 ["VisualizationModeCategory"]
       61 DUPTABLE                         R15 K26 [{"Title"}]
       62 LOADK                            R18 K27 ["VisualizationModeCategories"]
       63 LOADK                            R19 K13 ["DeviceSimulation"]
       64 NAMECALL                         R16 R4 K28 ["getText"]
       66 CALL                             R16 3 1
       67 SETTABLEKS                       R16 R15 K25 ["Title"]
       69 DUPTABLE                         R16 K31 [{"EnableSimulation", "ShowSimulationBar"}]
       70 GETUPVAL                         R17 7
       71 GETTABLEKS                       R17 R17 K11 ["createElement"]
       73 GETUPVAL                         R18 8
       74 DUPTABLE                         R19 K37 [{["Title"], ["ToolTip"], ["SortOrder"], ["FeatureId"] = "DeviceEmulation", ["ActionId"] = "Toggle", ["Actions"]}]
       75 LOADK                            R22 K38 ["StudioModes"]
       76 LOADK                            R23 K29 ["EnableSimulation"]
       77 NAMECALL                         R20 R4 K28 ["getText"]
       79 CALL                             R20 3 1
       80 SETTABLEKS                       R20 R19 K25 ["Title"]
       82 GETUPVAL                         R21 9
       83 CALL                             R21 0 1
       84 JUMPIFNOT                        R21 ; [+6]
       85 LOADK                            R22 K38 ["StudioModes"]
       86 LOADK                            R23 K39 ["DeviceSimulationTooltip"]
       87 NAMECALL                         R20 R4 K28 ["getText"]
       89 CALL                             R20 3 1
       90 JUMP                             ; [+5]
       91 LOADK                            R22 K38 ["StudioModes"]
       92 LOADK                            R23 K40 ["DeviceEmulationToolTip"]
       93 NAMECALL                         R20 R4 K28 ["getText"]
       95 CALL                             R20 3 1
       96 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
       98 MOVE                             R20 R8
       99 CALL                             R20 0 1
      100 SETTABLEKS                       R20 R19 K33 ["SortOrder"]
      102 GETTABLEKS                       R20 R0 K36 ["Actions"]
      104 SETTABLEKS                       R20 R19 K36 ["Actions"]
      106 CALL                             R17 2 1
      107 SETTABLEKS                       R17 R16 K29 ["EnableSimulation"]
      109 JUMPIFNOT                        R7 ; [+29]
      110 GETUPVAL                         R17 7
      111 GETTABLEKS                       R17 R17 K11 ["createElement"]
      113 GETUPVAL                         R18 8
      114 DUPTABLE                         R19 K42 [{["Title"], ["ToolTip"], ["SortOrder"], ["FeatureId"] = "DeviceEmulation", ["ActionId"] = "ShowToolbar", ["Actions"]}]
      115 LOADK                            R22 K38 ["StudioModes"]
      116 LOADK                            R23 K30 ["ShowSimulationBar"]
      117 NAMECALL                         R20 R4 K28 ["getText"]
      119 CALL                             R20 3 1
      120 SETTABLEKS                       R20 R19 K25 ["Title"]
      122 LOADK                            R22 K38 ["StudioModes"]
      123 LOADK                            R23 K43 ["ShowSimulationBarTooltip"]
      124 NAMECALL                         R20 R4 K28 ["getText"]
      126 CALL                             R20 3 1
      127 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      129 MOVE                             R20 R8
      130 CALL                             R20 0 1
      131 SETTABLEKS                       R20 R19 K33 ["SortOrder"]
      133 GETTABLEKS                       R20 R0 K36 ["Actions"]
      135 SETTABLEKS                       R20 R19 K36 ["Actions"]
      137 CALL                             R17 2 1
      138 JUMP                             ; [+1]
      139 LOADNIL                          R17
      140 SETTABLEKS                       R17 R16 K30 ["ShowSimulationBar"]
      142 CALL                             R13 3 1
      143 JUMP                             ; [+1]
      144 LOADNIL                          R13
      145 SETTABLEKS                       R13 R12 K13 ["DeviceSimulation"]
      147 GETUPVAL                         R13 7
      148 GETTABLEKS                       R13 R13 K11 ["createElement"]
      150 LOADK                            R14 K24 ["VisualizationModeCategory"]
      151 DUPTABLE                         R15 K26 [{"Title"}]
      152 LOADK                            R18 K27 ["VisualizationModeCategories"]
      153 LOADK                            R19 K14 ["GUI"]
      154 NAMECALL                         R16 R4 K28 ["getText"]
      156 CALL                             R16 3 1
      157 SETTABLEKS                       R16 R15 K25 ["Title"]
      159 DUPTABLE                         R16 K45 [{"DeviceEmulation", "GUIOverlay"}]
      160 GETUPVAL                         R18 5
      161 CALL                             R18 0 1
      162 JUMPIFNOT                        R18 ; [+2]
      163 LOADNIL                          R17
      164 JUMP                             ; [+42]
      165 GETUPVAL                         R17 7
      166 GETTABLEKS                       R17 R17 K11 ["createElement"]
      168 GETUPVAL                         R18 8
      169 DUPTABLE                         R19 K46 [{["Title"], ["ToolTip"], ["FeatureId"] = "DeviceEmulation", ["ActionId"] = "Toggle", ["Actions"]}]
      170 GETUPVAL                         R21 9
      171 CALL                             R21 0 1
      172 JUMPIFNOT                        R21 ; [+6]
      173 LOADK                            R22 K38 ["StudioModes"]
      174 LOADK                            R23 K13 ["DeviceSimulation"]
      175 NAMECALL                         R20 R4 K28 ["getText"]
      177 CALL                             R20 3 1
      178 JUMP                             ; [+5]
      179 LOADK                            R22 K38 ["StudioModes"]
      180 LOADK                            R23 K9 ["DeviceEmulation"]
      181 NAMECALL                         R20 R4 K28 ["getText"]
      183 CALL                             R20 3 1
      184 SETTABLEKS                       R20 R19 K25 ["Title"]
      186 GETUPVAL                         R21 9
      187 CALL                             R21 0 1
      188 JUMPIFNOT                        R21 ; [+6]
      189 LOADK                            R22 K38 ["StudioModes"]
      190 LOADK                            R23 K39 ["DeviceSimulationTooltip"]
      191 NAMECALL                         R20 R4 K28 ["getText"]
      193 CALL                             R20 3 1
      194 JUMP                             ; [+5]
      195 LOADK                            R22 K38 ["StudioModes"]
      196 LOADK                            R23 K40 ["DeviceEmulationToolTip"]
      197 NAMECALL                         R20 R4 K28 ["getText"]
      199 CALL                             R20 3 1
      200 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      202 GETTABLEKS                       R20 R0 K36 ["Actions"]
      204 SETTABLEKS                       R20 R19 K36 ["Actions"]
      206 CALL                             R17 2 1
      207 SETTABLEKS                       R17 R16 K9 ["DeviceEmulation"]
      209 GETUPVAL                         R17 7
      210 GETTABLEKS                       R17 R17 K11 ["createElement"]
      212 GETUPVAL                         R18 10
      213 DUPTABLE                         R19 K50 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDevelopmentGui"}]
      214 LOADK                            R22 K38 ["StudioModes"]
      215 LOADK                            R23 K44 ["GUIOverlay"]
      216 NAMECALL                         R20 R4 K28 ["getText"]
      218 CALL                             R20 3 1
      219 SETTABLEKS                       R20 R19 K25 ["Title"]
      221 LOADK                            R22 K38 ["StudioModes"]
      222 LOADK                            R23 K51 ["GUIOverlayToolTip"]
      223 NAMECALL                         R20 R4 K28 ["getText"]
      225 CALL                             R20 3 1
      226 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      228 GETIMPORT                        R20 K53 [game]
      230 LOADK                            R22 K54 ["StarterGui"]
      231 NAMECALL                         R20 R20 K55 ["GetService"]
      233 CALL                             R20 2 1
      234 SETTABLEKS                       R20 R19 K47 ["Setting"]
      236 CALL                             R17 2 1
      237 SETTABLEKS                       R17 R16 K44 ["GUIOverlay"]
      239 CALL                             R13 3 1
      240 SETTABLEKS                       R13 R12 K14 ["GUI"]
      242 GETUPVAL                         R13 7
      243 GETTABLEKS                       R13 R13 K11 ["createElement"]
      245 LOADK                            R14 K24 ["VisualizationModeCategory"]
      246 DUPTABLE                         R15 K26 [{"Title"}]
      247 LOADK                            R18 K27 ["VisualizationModeCategories"]
      248 LOADK                            R19 K15 ["Lighting"]
      249 NAMECALL                         R16 R4 K28 ["getText"]
      251 CALL                             R16 3 1
      252 SETTABLEKS                       R16 R15 K25 ["Title"]
      254 DUPTABLE                         R16 K58 [{"Lights", "AmbientOcclusion"}]
      255 GETUPVAL                         R17 7
      256 GETTABLEKS                       R17 R17 K11 ["createElement"]
      258 GETUPVAL                         R18 10
      259 DUPTABLE                         R19 K60 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Light Guides"}]
      260 LOADK                            R22 K38 ["StudioModes"]
      261 LOADK                            R23 K56 ["Lights"]
      262 NAMECALL                         R20 R4 K28 ["getText"]
      264 CALL                             R20 3 1
      265 SETTABLEKS                       R20 R19 K25 ["Title"]
      267 LOADK                            R22 K38 ["StudioModes"]
      268 LOADK                            R23 K61 ["LightsToolTip"]
      269 NAMECALL                         R20 R4 K28 ["getText"]
      271 CALL                             R20 3 1
      272 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      274 GETTABLEKS                       R20 R3 K5 ["Studio"]
      276 SETTABLEKS                       R20 R19 K47 ["Setting"]
      278 CALL                             R17 2 1
      279 SETTABLEKS                       R17 R16 K56 ["Lights"]
      281 GETUPVAL                         R17 11
      282 CALL                             R17 0 1
      283 JUMPIFNOT                        R17 ; [+24]
      284 GETUPVAL                         R17 7
      285 GETTABLEKS                       R17 R17 K11 ["createElement"]
      287 GETUPVAL                         R18 8
      288 DUPTABLE                         R19 K63 [{["Title"], ["ToolTip"], ["FeatureId"] = "AmbientOcclusionVisualization", ["ActionId"] = "Toggle", ["Actions"]}]
      289 LOADK                            R22 K38 ["StudioModes"]
      290 LOADK                            R23 K57 ["AmbientOcclusion"]
      291 NAMECALL                         R20 R4 K28 ["getText"]
      293 CALL                             R20 3 1
      294 SETTABLEKS                       R20 R19 K25 ["Title"]
      296 LOADK                            R22 K38 ["StudioModes"]
      297 LOADK                            R23 K64 ["AmbientOcclusionToolTip"]
      298 NAMECALL                         R20 R4 K28 ["getText"]
      300 CALL                             R20 3 1
      301 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      303 GETTABLEKS                       R20 R0 K36 ["Actions"]
      305 SETTABLEKS                       R20 R19 K36 ["Actions"]
      307 CALL                             R17 2 1
      308 SETTABLEKS                       R17 R16 K57 ["AmbientOcclusion"]
      310 CALL                             R13 3 1
      311 SETTABLEKS                       R13 R12 K15 ["Lighting"]
      313 GETUPVAL                         R13 7
      314 GETTABLEKS                       R13 R13 K11 ["createElement"]
      316 LOADK                            R14 K24 ["VisualizationModeCategory"]
      317 DUPTABLE                         R15 K26 [{"Title"}]
      318 LOADK                            R18 K27 ["VisualizationModeCategories"]
      319 LOADK                            R19 K16 ["Animation"]
      320 NAMECALL                         R16 R4 K28 ["getText"]
      322 CALL                             R16 3 1
      323 SETTABLEKS                       R16 R15 K25 ["Title"]
      325 DUPTABLE                         R16 K70 [{"ShowAnimationSkeleton", "ShowAnimationSkeletonAxes", "ShowAnimationSkeletonAttachments", "ShowAnimationSkeletonText", "ShowAnimationSkeletonRotations"}]
      326 GETUPVAL                         R17 7
      327 GETTABLEKS                       R17 R17 K11 ["createElement"]
      329 GETUPVAL                         R18 10
      330 DUPTABLE                         R19 K72 [{["Title"], ["ToolTip"], ["SortOrder"] = 1, ["Setting"], ["Property"] = "Show Animation Skeleton"}]
      331 LOADK                            R22 K38 ["StudioModes"]
      332 LOADK                            R23 K65 ["ShowAnimationSkeleton"]
      333 NAMECALL                         R20 R4 K28 ["getText"]
      335 CALL                             R20 3 1
      336 SETTABLEKS                       R20 R19 K25 ["Title"]
      338 LOADK                            R22 K38 ["StudioModes"]
      339 LOADK                            R23 K73 ["ShowAnimationSkeletonToolTip"]
      340 NAMECALL                         R20 R4 K28 ["getText"]
      342 CALL                             R20 3 1
      343 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      345 GETTABLEKS                       R20 R3 K5 ["Studio"]
      347 SETTABLEKS                       R20 R19 K47 ["Setting"]
      349 CALL                             R17 2 1
      350 SETTABLEKS                       R17 R16 K65 ["ShowAnimationSkeleton"]
      352 MOVE                             R17 R5
      353 JUMPIFNOT                        R17 ; [+24]
      354 GETUPVAL                         R17 7
      355 GETTABLEKS                       R17 R17 K11 ["createElement"]
      357 GETUPVAL                         R18 10
      358 DUPTABLE                         R19 K76 [{["Title"], ["ToolTip"], ["SortOrder"] = 2, ["Setting"], ["Property"] = "Show Animation Skeleton Axes"}]
      359 LOADK                            R22 K38 ["StudioModes"]
      360 LOADK                            R23 K66 ["ShowAnimationSkeletonAxes"]
      361 NAMECALL                         R20 R4 K28 ["getText"]
      363 CALL                             R20 3 1
      364 SETTABLEKS                       R20 R19 K25 ["Title"]
      366 LOADK                            R22 K38 ["StudioModes"]
      367 LOADK                            R23 K77 ["ShowAnimationSkeletonAxesToolTip"]
      368 NAMECALL                         R20 R4 K28 ["getText"]
      370 CALL                             R20 3 1
      371 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      373 GETTABLEKS                       R20 R3 K5 ["Studio"]
      375 SETTABLEKS                       R20 R19 K47 ["Setting"]
      377 CALL                             R17 2 1
      378 SETTABLEKS                       R17 R16 K66 ["ShowAnimationSkeletonAxes"]
      380 MOVE                             R17 R5
      381 JUMPIFNOT                        R17 ; [+24]
      382 GETUPVAL                         R17 7
      383 GETTABLEKS                       R17 R17 K11 ["createElement"]
      385 GETUPVAL                         R18 10
      386 DUPTABLE                         R19 K80 [{["Title"], ["ToolTip"], ["SortOrder"] = 3, ["Setting"], ["Property"] = "Show Animation Skeleton Attachments"}]
      387 LOADK                            R22 K38 ["StudioModes"]
      388 LOADK                            R23 K67 ["ShowAnimationSkeletonAttachments"]
      389 NAMECALL                         R20 R4 K28 ["getText"]
      391 CALL                             R20 3 1
      392 SETTABLEKS                       R20 R19 K25 ["Title"]
      394 LOADK                            R22 K38 ["StudioModes"]
      395 LOADK                            R23 K81 ["ShowAnimationSkeletonAttachmentsToolTip"]
      396 NAMECALL                         R20 R4 K28 ["getText"]
      398 CALL                             R20 3 1
      399 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      401 GETTABLEKS                       R20 R3 K5 ["Studio"]
      403 SETTABLEKS                       R20 R19 K47 ["Setting"]
      405 CALL                             R17 2 1
      406 SETTABLEKS                       R17 R16 K67 ["ShowAnimationSkeletonAttachments"]
      408 MOVE                             R17 R5
      409 JUMPIFNOT                        R17 ; [+24]
      410 GETUPVAL                         R17 7
      411 GETTABLEKS                       R17 R17 K11 ["createElement"]
      413 GETUPVAL                         R18 10
      414 DUPTABLE                         R19 K84 [{["Title"], ["ToolTip"], ["SortOrder"] = 4, ["Setting"], ["Property"] = "Show Animation Skeleton Text"}]
      415 LOADK                            R22 K38 ["StudioModes"]
      416 LOADK                            R23 K68 ["ShowAnimationSkeletonText"]
      417 NAMECALL                         R20 R4 K28 ["getText"]
      419 CALL                             R20 3 1
      420 SETTABLEKS                       R20 R19 K25 ["Title"]
      422 LOADK                            R22 K38 ["StudioModes"]
      423 LOADK                            R23 K85 ["ShowAnimationSkeletonTextToolTip"]
      424 NAMECALL                         R20 R4 K28 ["getText"]
      426 CALL                             R20 3 1
      427 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      429 GETTABLEKS                       R20 R3 K5 ["Studio"]
      431 SETTABLEKS                       R20 R19 K47 ["Setting"]
      433 CALL                             R17 2 1
      434 SETTABLEKS                       R17 R16 K68 ["ShowAnimationSkeletonText"]
      436 MOVE                             R17 R5
      437 JUMPIFNOT                        R17 ; [+24]
      438 GETUPVAL                         R17 7
      439 GETTABLEKS                       R17 R17 K11 ["createElement"]
      441 GETUPVAL                         R18 10
      442 DUPTABLE                         R19 K88 [{["Title"], ["ToolTip"], ["SortOrder"] = 5, ["Setting"], ["Property"] = "Show Animation Skeleton Rotations"}]
      443 LOADK                            R22 K38 ["StudioModes"]
      444 LOADK                            R23 K69 ["ShowAnimationSkeletonRotations"]
      445 NAMECALL                         R20 R4 K28 ["getText"]
      447 CALL                             R20 3 1
      448 SETTABLEKS                       R20 R19 K25 ["Title"]
      450 LOADK                            R22 K38 ["StudioModes"]
      451 LOADK                            R23 K89 ["ShowAnimationSkeletonRotationsToolTip"]
      452 NAMECALL                         R20 R4 K28 ["getText"]
      454 CALL                             R20 3 1
      455 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      457 GETTABLEKS                       R20 R3 K5 ["Studio"]
      459 SETTABLEKS                       R20 R19 K47 ["Setting"]
      461 CALL                             R17 2 1
      462 SETTABLEKS                       R17 R16 K69 ["ShowAnimationSkeletonRotations"]
      464 CALL                             R13 3 1
      465 SETTABLEKS                       R13 R12 K16 ["Animation"]
      467 MOVE                             R13 R2
      468 JUMPIFNOT                        R13 ; [+68]
      469 GETUPVAL                         R13 7
      470 GETTABLEKS                       R13 R13 K11 ["createElement"]
      472 LOADK                            R14 K24 ["VisualizationModeCategory"]
      473 DUPTABLE                         R15 K26 [{"Title"}]
      474 LOADK                            R18 K27 ["VisualizationModeCategories"]
      475 LOADK                            R19 K17 ["Audio"]
      476 NAMECALL                         R16 R4 K28 ["getText"]
      478 CALL                             R16 3 1
      479 SETTABLEKS                       R16 R15 K25 ["Title"]
      481 DUPTABLE                         R16 K92 [{"ShowSources", "ShowInactiveSources"}]
      482 GETUPVAL                         R17 7
      483 GETTABLEKS                       R17 R17 K11 ["createElement"]
      485 GETUPVAL                         R18 8
      486 DUPTABLE                         R19 K93 [{["Title"], ["ToolTip"], ["SortOrder"] = 1, ["FeatureId"] = "AudioViewportVisualizations", ["ActionId"] = "Toggle", ["Actions"]}]
      487 LOADK                            R22 K38 ["StudioModes"]
      488 LOADK                            R23 K94 ["ShowAudioSources"]
      489 NAMECALL                         R20 R4 K28 ["getText"]
      491 CALL                             R20 3 1
      492 SETTABLEKS                       R20 R19 K25 ["Title"]
      494 LOADK                            R22 K38 ["StudioModes"]
      495 LOADK                            R23 K95 ["ShowAudioSourcesToolTip"]
      496 NAMECALL                         R20 R4 K28 ["getText"]
      498 CALL                             R20 3 1
      499 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      501 GETTABLEKS                       R20 R0 K36 ["Actions"]
      503 SETTABLEKS                       R20 R19 K36 ["Actions"]
      505 CALL                             R17 2 1
      506 SETTABLEKS                       R17 R16 K90 ["ShowSources"]
      508 MOVE                             R17 R6
      509 JUMPIFNOT                        R17 ; [+24]
      510 GETUPVAL                         R17 7
      511 GETTABLEKS                       R17 R17 K11 ["createElement"]
      513 GETUPVAL                         R18 8
      514 DUPTABLE                         R19 K97 [{["Title"], ["ToolTip"], ["SortOrder"] = 2, ["FeatureId"] = "AudioViewportVisualizations", ["ActionId"] = "ToggleShowInactiveSources", ["Actions"]}]
      515 LOADK                            R22 K38 ["StudioModes"]
      516 LOADK                            R23 K98 ["ShowAudioInactiveSources"]
      517 NAMECALL                         R20 R4 K28 ["getText"]
      519 CALL                             R20 3 1
      520 SETTABLEKS                       R20 R19 K25 ["Title"]
      522 LOADK                            R22 K38 ["StudioModes"]
      523 LOADK                            R23 K99 ["ShowAudioInactiveSourcesToolTip"]
      524 NAMECALL                         R20 R4 K28 ["getText"]
      526 CALL                             R20 3 1
      527 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      529 GETTABLEKS                       R20 R0 K36 ["Actions"]
      531 SETTABLEKS                       R20 R19 K36 ["Actions"]
      533 CALL                             R17 2 1
      534 SETTABLEKS                       R17 R16 K91 ["ShowInactiveSources"]
      536 CALL                             R13 3 1
      537 SETTABLEKS                       R13 R12 K17 ["Audio"]
      539 GETUPVAL                         R13 7
      540 GETTABLEKS                       R13 R13 K11 ["createElement"]
      542 LOADK                            R14 K24 ["VisualizationModeCategory"]
      543 DUPTABLE                         R15 K26 [{"Title"}]
      544 LOADK                            R18 K27 ["VisualizationModeCategories"]
      545 LOADK                            R19 K18 ["Pathfinding"]
      546 NAMECALL                         R16 R4 K28 ["getText"]
      548 CALL                             R16 3 1
      549 SETTABLEKS                       R16 R15 K25 ["Title"]
      551 DUPTABLE                         R16 K103 [{"PathfindingMesh", "PathfindingModifiers", "PathfindingLinks"}]
      552 GETUPVAL                         R17 7
      553 GETTABLEKS                       R17 R17 K11 ["createElement"]
      555 GETUPVAL                         R18 10
      556 DUPTABLE                         R19 K105 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Mesh"}]
      557 LOADK                            R22 K38 ["StudioModes"]
      558 LOADK                            R23 K100 ["PathfindingMesh"]
      559 NAMECALL                         R20 R4 K28 ["getText"]
      561 CALL                             R20 3 1
      562 SETTABLEKS                       R20 R19 K25 ["Title"]
      564 LOADK                            R22 K38 ["StudioModes"]
      565 LOADK                            R23 K106 ["PathfindingMeshToolTip"]
      566 NAMECALL                         R20 R4 K28 ["getText"]
      568 CALL                             R20 3 1
      569 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      571 GETTABLEKS                       R20 R3 K5 ["Studio"]
      573 SETTABLEKS                       R20 R19 K47 ["Setting"]
      575 CALL                             R17 2 1
      576 SETTABLEKS                       R17 R16 K100 ["PathfindingMesh"]
      578 GETUPVAL                         R17 7
      579 GETTABLEKS                       R17 R17 K11 ["createElement"]
      581 GETUPVAL                         R18 10
      582 DUPTABLE                         R19 K108 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Navigation Labels"}]
      583 LOADK                            R22 K38 ["StudioModes"]
      584 LOADK                            R23 K101 ["PathfindingModifiers"]
      585 NAMECALL                         R20 R4 K28 ["getText"]
      587 CALL                             R20 3 1
      588 SETTABLEKS                       R20 R19 K25 ["Title"]
      590 LOADK                            R22 K38 ["StudioModes"]
      591 LOADK                            R23 K109 ["PathfindingModifiersToolTip"]
      592 NAMECALL                         R20 R4 K28 ["getText"]
      594 CALL                             R20 3 1
      595 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      597 GETTABLEKS                       R20 R3 K5 ["Studio"]
      599 SETTABLEKS                       R20 R19 K47 ["Setting"]
      601 CALL                             R17 2 1
      602 SETTABLEKS                       R17 R16 K101 ["PathfindingModifiers"]
      604 GETUPVAL                         R17 7
      605 GETTABLEKS                       R17 R17 K11 ["createElement"]
      607 GETUPVAL                         R18 10
      608 DUPTABLE                         R19 K111 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "Show Pathfinding Links"}]
      609 LOADK                            R22 K38 ["StudioModes"]
      610 LOADK                            R23 K102 ["PathfindingLinks"]
      611 NAMECALL                         R20 R4 K28 ["getText"]
      613 CALL                             R20 3 1
      614 SETTABLEKS                       R20 R19 K25 ["Title"]
      616 LOADK                            R22 K38 ["StudioModes"]
      617 LOADK                            R23 K112 ["PathfindingLinksToolTip"]
      618 NAMECALL                         R20 R4 K28 ["getText"]
      620 CALL                             R20 3 1
      621 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      623 GETTABLEKS                       R20 R3 K5 ["Studio"]
      625 SETTABLEKS                       R20 R19 K47 ["Setting"]
      627 CALL                             R17 2 1
      628 SETTABLEKS                       R17 R16 K102 ["PathfindingLinks"]
      630 CALL                             R13 3 1
      631 SETTABLEKS                       R13 R12 K18 ["Pathfinding"]
      633 GETUPVAL                         R13 7
      634 GETTABLEKS                       R13 R13 K11 ["createElement"]
      636 LOADK                            R14 K24 ["VisualizationModeCategory"]
      637 DUPTABLE                         R15 K26 [{"Title"}]
      638 LOADK                            R18 K27 ["VisualizationModeCategories"]
      639 LOADK                            R19 K19 ["PhysicsConstraints"]
      640 NAMECALL                         R16 R4 K28 ["getText"]
      642 CALL                             R16 3 1
      643 SETTABLEKS                       R16 R15 K25 ["Title"]
      645 DUPTABLE                         R16 K115 [{"Constraints", "Welds"}]
      646 GETUPVAL                         R17 7
      647 GETTABLEKS                       R17 R17 K11 ["createElement"]
      649 GETUPVAL                         R18 8
      650 DUPTABLE                         R19 K117 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowDetails", ["Actions"]}]
      651 LOADK                            R22 K38 ["StudioModes"]
      652 LOADK                            R23 K113 ["Constraints"]
      653 NAMECALL                         R20 R4 K28 ["getText"]
      655 CALL                             R20 3 1
      656 SETTABLEKS                       R20 R19 K25 ["Title"]
      658 LOADK                            R22 K38 ["StudioModes"]
      659 LOADK                            R23 K118 ["ConstraintsToolTip"]
      660 NAMECALL                         R20 R4 K28 ["getText"]
      662 CALL                             R20 3 1
      663 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      665 GETTABLEKS                       R20 R0 K36 ["Actions"]
      667 SETTABLEKS                       R20 R19 K36 ["Actions"]
      669 CALL                             R17 2 1
      670 SETTABLEKS                       R17 R16 K113 ["Constraints"]
      672 GETUPVAL                         R17 7
      673 GETTABLEKS                       R17 R17 K11 ["createElement"]
      675 GETUPVAL                         R18 8
      676 DUPTABLE                         R19 K120 [{["Title"], ["ToolTip"], ["FeatureId"] = "Constraints", ["ActionId"] = "ShowWelds", ["Actions"]}]
      677 LOADK                            R22 K38 ["StudioModes"]
      678 LOADK                            R23 K114 ["Welds"]
      679 NAMECALL                         R20 R4 K28 ["getText"]
      681 CALL                             R20 3 1
      682 SETTABLEKS                       R20 R19 K25 ["Title"]
      684 LOADK                            R22 K38 ["StudioModes"]
      685 LOADK                            R23 K121 ["WeldsToolTip"]
      686 NAMECALL                         R20 R4 K28 ["getText"]
      688 CALL                             R20 3 1
      689 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      691 GETTABLEKS                       R20 R0 K36 ["Actions"]
      693 SETTABLEKS                       R20 R19 K36 ["Actions"]
      695 CALL                             R17 2 1
      696 SETTABLEKS                       R17 R16 K114 ["Welds"]
      698 CALL                             R13 3 1
      699 SETTABLEKS                       R13 R12 K19 ["PhysicsConstraints"]
      701 GETUPVAL                         R13 7
      702 GETTABLEKS                       R13 R13 K11 ["createElement"]
      704 LOADK                            R14 K24 ["VisualizationModeCategory"]
      705 DUPTABLE                         R15 K26 [{"Title"}]
      706 LOADK                            R18 K27 ["VisualizationModeCategories"]
      707 LOADK                            R19 K20 ["PhysicsLabels"]
      708 NAMECALL                         R16 R4 K28 ["getText"]
      710 CALL                             R16 3 1
      711 SETTABLEKS                       R16 R15 K25 ["Title"]
      713 DUPTABLE                         R16 K127 [{"AnchoredParts", "AwakeParts", "Assemblies", "Mechanisms", "NetworkOwner"}]
      714 GETUPVAL                         R17 7
      715 GETTABLEKS                       R17 R17 K11 ["createElement"]
      717 GETUPVAL                         R18 10
      718 DUPTABLE                         R19 K129 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAnchorsShown"}]
      719 LOADK                            R22 K38 ["StudioModes"]
      720 LOADK                            R23 K122 ["AnchoredParts"]
      721 NAMECALL                         R20 R4 K28 ["getText"]
      723 CALL                             R20 3 1
      724 SETTABLEKS                       R20 R19 K25 ["Title"]
      726 LOADK                            R22 K38 ["StudioModes"]
      727 LOADK                            R23 K130 ["AnchoredPartsToolTip"]
      728 NAMECALL                         R20 R4 K28 ["getText"]
      730 CALL                             R20 3 1
      731 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      733 GETTABLEKS                       R20 R3 K131 ["Physics"]
      735 SETTABLEKS                       R20 R19 K47 ["Setting"]
      737 CALL                             R17 2 1
      738 SETTABLEKS                       R17 R16 K122 ["AnchoredParts"]
      740 GETUPVAL                         R17 7
      741 GETTABLEKS                       R17 R17 K11 ["createElement"]
      743 GETUPVAL                         R18 10
      744 DUPTABLE                         R19 K133 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAwakePartsHighlighted"}]
      745 LOADK                            R22 K38 ["StudioModes"]
      746 LOADK                            R23 K123 ["AwakeParts"]
      747 NAMECALL                         R20 R4 K28 ["getText"]
      749 CALL                             R20 3 1
      750 SETTABLEKS                       R20 R19 K25 ["Title"]
      752 LOADK                            R22 K38 ["StudioModes"]
      753 LOADK                            R23 K134 ["AwakePartsToolTip"]
      754 NAMECALL                         R20 R4 K28 ["getText"]
      756 CALL                             R20 3 1
      757 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      759 GETTABLEKS                       R20 R3 K131 ["Physics"]
      761 SETTABLEKS                       R20 R19 K47 ["Setting"]
      763 CALL                             R17 2 1
      764 SETTABLEKS                       R17 R16 K123 ["AwakeParts"]
      766 GETUPVAL                         R17 7
      767 GETTABLEKS                       R17 R17 K11 ["createElement"]
      769 GETUPVAL                         R18 10
      770 DUPTABLE                         R19 K136 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreAssembliesShown"}]
      771 LOADK                            R22 K38 ["StudioModes"]
      772 LOADK                            R23 K137 ["ShowAssemblies"]
      773 NAMECALL                         R20 R4 K28 ["getText"]
      775 CALL                             R20 3 1
      776 SETTABLEKS                       R20 R19 K25 ["Title"]
      778 LOADK                            R22 K38 ["StudioModes"]
      779 LOADK                            R23 K138 ["ShowAssembliesToolTip"]
      780 NAMECALL                         R20 R4 K28 ["getText"]
      782 CALL                             R20 3 1
      783 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      785 GETTABLEKS                       R20 R3 K131 ["Physics"]
      787 SETTABLEKS                       R20 R19 K47 ["Setting"]
      789 CALL                             R17 2 1
      790 SETTABLEKS                       R17 R16 K124 ["Assemblies"]
      792 GETUPVAL                         R17 7
      793 GETTABLEKS                       R17 R17 K11 ["createElement"]
      795 GETUPVAL                         R18 10
      796 DUPTABLE                         R19 K140 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreMechanismsShown"}]
      797 LOADK                            R22 K38 ["StudioModes"]
      798 LOADK                            R23 K125 ["Mechanisms"]
      799 NAMECALL                         R20 R4 K28 ["getText"]
      801 CALL                             R20 3 1
      802 SETTABLEKS                       R20 R19 K25 ["Title"]
      804 LOADK                            R22 K38 ["StudioModes"]
      805 LOADK                            R23 K141 ["MechanismsToolTip"]
      806 NAMECALL                         R20 R4 K28 ["getText"]
      808 CALL                             R20 3 1
      809 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      811 GETTABLEKS                       R20 R3 K131 ["Physics"]
      813 SETTABLEKS                       R20 R19 K47 ["Setting"]
      815 CALL                             R17 2 1
      816 SETTABLEKS                       R17 R16 K125 ["Mechanisms"]
      818 GETUPVAL                         R17 7
      819 GETTABLEKS                       R17 R17 K11 ["createElement"]
      821 GETUPVAL                         R18 10
      822 DUPTABLE                         R19 K143 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreOwnersShown"}]
      823 LOADK                            R22 K38 ["StudioModes"]
      824 LOADK                            R23 K126 ["NetworkOwner"]
      825 NAMECALL                         R20 R4 K28 ["getText"]
      827 CALL                             R20 3 1
      828 SETTABLEKS                       R20 R19 K25 ["Title"]
      830 LOADK                            R22 K38 ["StudioModes"]
      831 LOADK                            R23 K144 ["NetworkOwnerToolTip"]
      832 NAMECALL                         R20 R4 K28 ["getText"]
      834 CALL                             R20 3 1
      835 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      837 GETTABLEKS                       R20 R3 K131 ["Physics"]
      839 SETTABLEKS                       R20 R19 K47 ["Setting"]
      841 CALL                             R17 2 1
      842 SETTABLEKS                       R17 R16 K126 ["NetworkOwner"]
      844 CALL                             R13 3 1
      845 SETTABLEKS                       R13 R12 K20 ["PhysicsLabels"]
      847 GETUPVAL                         R13 7
      848 GETTABLEKS                       R13 R13 K11 ["createElement"]
      850 LOADK                            R14 K24 ["VisualizationModeCategory"]
      851 DUPTABLE                         R15 K26 [{"Title"}]
      852 LOADK                            R18 K27 ["VisualizationModeCategories"]
      853 LOADK                            R19 K21 ["PhysicsSimulation"]
      854 NAMECALL                         R16 R4 K28 ["getText"]
      856 CALL                             R16 3 1
      857 SETTABLEKS                       R16 R15 K25 ["Title"]
      859 DUPTABLE                         R16 K149 [{"CollisionFidelity", "ContactPoints", "Shapecasts", "WindDirection"}]
      860 GETUPVAL                         R18 12
      861 CALL                             R18 0 1
      862 JUMPIF                           R18 ; [+25]
      863 GETUPVAL                         R17 7
      864 GETTABLEKS                       R17 R17 K11 ["createElement"]
      866 GETUPVAL                         R18 10
      867 DUPTABLE                         R19 K151 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "ShowDecompositionGeometry"}]
      868 LOADK                            R22 K38 ["StudioModes"]
      869 LOADK                            R23 K145 ["CollisionFidelity"]
      870 NAMECALL                         R20 R4 K28 ["getText"]
      872 CALL                             R20 3 1
      873 SETTABLEKS                       R20 R19 K25 ["Title"]
      875 LOADK                            R22 K38 ["StudioModes"]
      876 LOADK                            R23 K152 ["CollisionFidelityToolTip"]
      877 NAMECALL                         R20 R4 K28 ["getText"]
      879 CALL                             R20 3 1
      880 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      882 GETTABLEKS                       R20 R3 K131 ["Physics"]
      884 SETTABLEKS                       R20 R19 K47 ["Setting"]
      886 CALL                             R17 2 1
      887 JUMP                             ; [+1]
      888 LOADNIL                          R17
      889 SETTABLEKS                       R17 R16 K145 ["CollisionFidelity"]
      891 GETUPVAL                         R17 7
      892 GETTABLEKS                       R17 R17 K11 ["createElement"]
      894 GETUPVAL                         R18 10
      895 DUPTABLE                         R19 K154 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "AreContactPointsShown"}]
      896 LOADK                            R22 K38 ["StudioModes"]
      897 LOADK                            R23 K146 ["ContactPoints"]
      898 NAMECALL                         R20 R4 K28 ["getText"]
      900 CALL                             R20 3 1
      901 SETTABLEKS                       R20 R19 K25 ["Title"]
      903 LOADK                            R22 K38 ["StudioModes"]
      904 LOADK                            R23 K155 ["ContactPointsToolTip"]
      905 NAMECALL                         R20 R4 K28 ["getText"]
      907 CALL                             R20 3 1
      908 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      910 GETTABLEKS                       R20 R3 K131 ["Physics"]
      912 SETTABLEKS                       R20 R19 K47 ["Setting"]
      914 CALL                             R17 2 1
      915 SETTABLEKS                       R17 R16 K146 ["ContactPoints"]
      917 GETUPVAL                         R17 13
      918 CALL                             R17 0 1
      919 JUMPIFNOT                        R17 ; [+24]
      920 GETUPVAL                         R17 7
      921 GETTABLEKS                       R17 R17 K11 ["createElement"]
      923 GETUPVAL                         R18 10
      924 DUPTABLE                         R19 K157 [{["Title"], ["ToolTip"], ["Setting"], ["Property"] = "DrawShapecast"}]
      925 LOADK                            R22 K38 ["StudioModes"]
      926 LOADK                            R23 K147 ["Shapecasts"]
      927 NAMECALL                         R20 R4 K28 ["getText"]
      929 CALL                             R20 3 1
      930 SETTABLEKS                       R20 R19 K25 ["Title"]
      932 LOADK                            R22 K38 ["StudioModes"]
      933 LOADK                            R23 K158 ["ShapecastsToolTip"]
      934 NAMECALL                         R20 R4 K28 ["getText"]
      936 CALL                             R20 3 1
      937 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      939 GETTABLEKS                       R20 R3 K131 ["Physics"]
      941 SETTABLEKS                       R20 R19 K47 ["Setting"]
      943 CALL                             R17 2 1
      944 SETTABLEKS                       R17 R16 K147 ["Shapecasts"]
      946 GETUPVAL                         R17 7
      947 GETTABLEKS                       R17 R17 K11 ["createElement"]
      949 GETUPVAL                         R18 8
      950 DUPTABLE                         R19 K160 [{["Title"], ["ToolTip"], ["FeatureId"] = "WindControl", ["ActionId"] = "Toggle", ["Actions"]}]
      951 LOADK                            R22 K38 ["StudioModes"]
      952 LOADK                            R23 K148 ["WindDirection"]
      953 NAMECALL                         R20 R4 K28 ["getText"]
      955 CALL                             R20 3 1
      956 SETTABLEKS                       R20 R19 K25 ["Title"]
      958 LOADK                            R22 K38 ["StudioModes"]
      959 LOADK                            R23 K161 ["WindDirectionToolTip"]
      960 NAMECALL                         R20 R4 K28 ["getText"]
      962 CALL                             R20 3 1
      963 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
      965 GETTABLEKS                       R20 R0 K36 ["Actions"]
      967 SETTABLEKS                       R20 R19 K36 ["Actions"]
      969 CALL                             R17 2 1
      970 SETTABLEKS                       R17 R16 K148 ["WindDirection"]
      972 CALL                             R13 3 1
      973 SETTABLEKS                       R13 R12 K21 ["PhysicsSimulation"]
      975 GETUPVAL                         R13 7
      976 GETTABLEKS                       R13 R13 K11 ["createElement"]
      978 LOADK                            R14 K24 ["VisualizationModeCategory"]
      979 DUPTABLE                         R15 K26 [{"Title"}]
      980 LOADK                            R18 K27 ["VisualizationModeCategories"]
      981 LOADK                            R19 K22 ["View"]
      982 NAMECALL                         R16 R4 K28 ["getText"]
      984 CALL                             R16 3 1
      985 SETTABLEKS                       R16 R15 K25 ["Title"]
      987 DUPTABLE                         R16 K166 [{"ViewSelector", "Grid", "GridMaterial", "CollaboratorHighlights"}]
      988 GETUPVAL                         R17 7
      989 GETTABLEKS                       R17 R17 K11 ["createElement"]
      991 GETUPVAL                         R18 8
      992 DUPTABLE                         R19 K167 [{["Title"], ["ToolTip"], ["FeatureId"] = "ViewSelector", ["ActionId"] = "Toggle", ["Actions"]}]
      993 LOADK                            R22 K38 ["StudioModes"]
      994 LOADK                            R23 K162 ["ViewSelector"]
      995 NAMECALL                         R20 R4 K28 ["getText"]
      997 CALL                             R20 3 1
      998 SETTABLEKS                       R20 R19 K25 ["Title"]
     1000 LOADK                            R22 K38 ["StudioModes"]
     1001 LOADK                            R23 K168 ["ViewSelectorToolTip"]
     1002 NAMECALL                         R20 R4 K28 ["getText"]
     1004 CALL                             R20 3 1
     1005 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
     1007 GETTABLEKS                       R20 R0 K36 ["Actions"]
     1009 SETTABLEKS                       R20 R19 K36 ["Actions"]
     1011 CALL                             R17 2 1
     1012 SETTABLEKS                       R17 R16 K162 ["ViewSelector"]
     1014 GETUPVAL                         R17 7
     1015 GETTABLEKS                       R17 R17 K11 ["createElement"]
     1017 GETUPVAL                         R18 8
     1018 DUPTABLE                         R19 K170 [{["Title"], ["ToolTip"], ["FeatureId"] = "3DGrid", ["ActionId"] = "Toggle", ["Actions"]}]
     1019 LOADK                            R22 K38 ["StudioModes"]
     1020 LOADK                            R23 K163 ["Grid"]
     1021 NAMECALL                         R20 R4 K28 ["getText"]
     1023 CALL                             R20 3 1
     1024 SETTABLEKS                       R20 R19 K25 ["Title"]
     1026 LOADK                            R22 K38 ["StudioModes"]
     1027 LOADK                            R23 K171 ["GridToolTip"]
     1028 NAMECALL                         R20 R4 K28 ["getText"]
     1030 CALL                             R20 3 1
     1031 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
     1033 GETTABLEKS                       R20 R0 K36 ["Actions"]
     1035 SETTABLEKS                       R20 R19 K36 ["Actions"]
     1037 CALL                             R17 2 1
     1038 SETTABLEKS                       R17 R16 K163 ["Grid"]
     1040 GETUPVAL                         R17 7
     1041 GETTABLEKS                       R17 R17 K11 ["createElement"]
     1043 GETUPVAL                         R18 8
     1044 DUPTABLE                         R19 K172 [{["Title"], ["ToolTip"], ["FeatureId"] = "GridMaterial", ["ActionId"] = "Toggle", ["Actions"]}]
     1045 LOADK                            R22 K38 ["StudioModes"]
     1046 LOADK                            R23 K164 ["GridMaterial"]
     1047 NAMECALL                         R20 R4 K28 ["getText"]
     1049 CALL                             R20 3 1
     1050 SETTABLEKS                       R20 R19 K25 ["Title"]
     1052 LOADK                            R22 K38 ["StudioModes"]
     1053 LOADK                            R23 K173 ["GridMaterialToolTip"]
     1054 NAMECALL                         R20 R4 K28 ["getText"]
     1056 CALL                             R20 3 1
     1057 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
     1059 GETTABLEKS                       R20 R0 K36 ["Actions"]
     1061 SETTABLEKS                       R20 R19 K36 ["Actions"]
     1063 CALL                             R17 2 1
     1064 SETTABLEKS                       R17 R16 K164 ["GridMaterial"]
     1066 GETUPVAL                         R17 7
     1067 GETTABLEKS                       R17 R17 K11 ["createElement"]
     1069 GETUPVAL                         R18 14
     1070 DUPTABLE                         R19 K175 [{"Title", "ToolTip", "UseState"}]
     1071 LOADK                            R22 K38 ["StudioModes"]
     1072 LOADK                            R23 K165 ["CollaboratorHighlights"]
     1073 NAMECALL                         R20 R4 K28 ["getText"]
     1075 CALL                             R20 3 1
     1076 SETTABLEKS                       R20 R19 K25 ["Title"]
     1078 LOADK                            R22 K38 ["StudioModes"]
     1079 LOADK                            R23 K176 ["CollaboratorHighlightsToolTip"]
     1080 NAMECALL                         R20 R4 K28 ["getText"]
     1082 CALL                             R20 3 1
     1083 SETTABLEKS                       R20 R19 K32 ["ToolTip"]
     1085 GETUPVAL                         R20 15
     1086 SETTABLEKS                       R20 R19 K174 ["UseState"]
     1088 CALL                             R17 2 1
     1089 SETTABLEKS                       R17 R16 K165 ["CollaboratorHighlights"]
     1091 CALL                             R13 3 1
     1092 SETTABLEKS                       R13 R12 K22 ["View"]
     1094 CALL                             R9 3 -1
     1095 RETURN                           R9 -1

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
       23 GETTABLEKS                       R4 R0 K6 ["Packages"]
       25 GETTABLEKS                       R4 R4 K9 ["ReactUtils"]
       27 CALL                             R3 1 1
       28 GETIMPORT                        R4 K5 [require]
       30 GETTABLEKS                       R5 R0 K10 ["Src"]
       32 GETTABLEKS                       R5 R5 K11 ["Modes"]
       34 GETTABLEKS                       R5 R5 K12 ["SettingVisualizationMode"]
       36 CALL                             R4 1 1
       37 GETIMPORT                        R5 K5 [require]
       39 GETTABLEKS                       R6 R0 K10 ["Src"]
       41 GETTABLEKS                       R6 R6 K11 ["Modes"]
       43 GETTABLEKS                       R6 R6 K13 ["ToggleActionVisualizationMode"]
       45 CALL                             R5 1 1
       46 GETIMPORT                        R6 K5 [require]
       48 GETTABLEKS                       R7 R0 K10 ["Src"]
       50 GETTABLEKS                       R7 R7 K14 ["Hooks"]
       52 GETTABLEKS                       R7 R7 K15 ["useCollaborationHighlights"]
       54 CALL                             R6 1 1
       55 GETIMPORT                        R7 K5 [require]
       57 GETTABLEKS                       R8 R0 K10 ["Src"]
       59 GETTABLEKS                       R8 R8 K14 ["Hooks"]
       61 GETTABLEKS                       R8 R8 K16 ["useInstanceSetting"]
       63 CALL                             R7 1 1
       64 GETIMPORT                        R8 K5 [require]
       66 GETTABLEKS                       R9 R0 K10 ["Src"]
       68 GETTABLEKS                       R9 R9 K14 ["Hooks"]
       70 GETTABLEKS                       R9 R9 K17 ["useToggleAction"]
       72 CALL                             R8 1 1
       73 GETIMPORT                        R9 K5 [require]
       75 GETTABLEKS                       R10 R0 K10 ["Src"]
       77 GETTABLEKS                       R10 R10 K11 ["Modes"]
       79 GETTABLEKS                       R10 R10 K18 ["VisualizationMode"]
       81 CALL                             R9 1 1
       82 GETIMPORT                        R10 K5 [require]
       84 GETTABLEKS                       R11 R0 K10 ["Src"]
       86 GETTABLEKS                       R11 R11 K19 ["Flags"]
       88 GETTABLEKS                       R11 R11 K20 ["getEngineFeatureStudioVisualizationModesAmbientOcclusion"]
       90 CALL                             R10 1 1
       91 GETIMPORT                        R11 K5 [require]
       93 GETTABLEKS                       R12 R0 K10 ["Src"]
       95 GETTABLEKS                       R12 R12 K19 ["Flags"]
       97 GETTABLEKS                       R12 R12 K21 ["getFFlagStudioVisualizationModesTestSupport"]
       99 CALL                             R11 1 1
      100 GETIMPORT                        R12 K5 [require]
      102 GETTABLEKS                       R13 R0 K10 ["Src"]
      104 GETTABLEKS                       R13 R13 K19 ["Flags"]
      106 GETTABLEKS                       R13 R13 K22 ["getFFlagStudioVisualizationModesShowAudio"]
      108 CALL                             R12 1 1
      109 GETIMPORT                        R13 K5 [require]
      111 GETTABLEKS                       R14 R0 K10 ["Src"]
      113 GETTABLEKS                       R14 R14 K19 ["Flags"]
      115 GETTABLEKS                       R14 R14 K23 ["getFFlagUseAdornBasedCDDebugVis"]
      117 CALL                             R13 1 1
      118 GETIMPORT                        R14 K5 [require]
      120 GETTABLEKS                       R15 R0 K10 ["Src"]
      122 GETTABLEKS                       R15 R15 K19 ["Flags"]
      124 GETTABLEKS                       R15 R15 K24 ["getFFlagUseNewShapecasts"]
      126 CALL                             R14 1 1
      127 GETIMPORT                        R15 K5 [require]
      129 GETTABLEKS                       R16 R0 K10 ["Src"]
      131 GETTABLEKS                       R16 R16 K19 ["Flags"]
      133 GETTABLEKS                       R16 R16 K25 ["getEngineFeatureDeviceSimulatorToolbarHide"]
      135 CALL                             R15 1 1
      136 GETIMPORT                        R16 K5 [require]
      138 GETTABLEKS                       R17 R0 K10 ["Src"]
      140 GETTABLEKS                       R17 R17 K19 ["Flags"]
      142 GETTABLEKS                       R17 R17 K26 ["getRenameEmulatorToSimulatorEngineFeature"]
      144 CALL                             R16 1 1
      145 GETTABLEKS                       R17 R1 K27 ["ContextServices"]
      147 DUPCLOSURE                       R18 K28 [PROTO_0]
      148 CAPTURE                          VAL R11
      149 CAPTURE                          VAL R12
      150 CAPTURE                          VAL R17
      151 CAPTURE                          VAL R7
      152 CAPTURE                          VAL R8
      153 CAPTURE                          VAL R15
      154 CAPTURE                          VAL R3
      155 CAPTURE                          VAL R2
      156 CAPTURE                          VAL R5
      157 CAPTURE                          VAL R16
      158 CAPTURE                          VAL R4
      159 CAPTURE                          VAL R10
      160 CAPTURE                          VAL R13
      161 CAPTURE                          VAL R14
      162 CAPTURE                          VAL R9
      163 CAPTURE                          VAL R6
      164 RETURN                           R18 1
