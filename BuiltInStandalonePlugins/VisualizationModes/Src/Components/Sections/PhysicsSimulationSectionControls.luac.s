PROTO_0:
        0 GETTABLEKS                       R4 R0 K0 ["searchText"]
        2 JUMPIFNOTEQKS                    R4 K1 [""] ; [+3]
        4 DUPTABLE                         R4 K6 [{["collisionFidelitySubSearch"] = , ["hasSubMatch"] = False}]
        5 RETURN                           R4 1
        6 GETTABLEKS                       R4 R0 K7 ["includeEntry"]
        8 MOVE                             R5 R1
        9 CALL                             R4 1 1
       10 JUMPIFNOT                        R2 ; [+5]
       11 GETTABLEKS                       R5 R0 K7 ["includeEntry"]
       13 MOVE                             R6 R2
       14 CALL                             R5 1 1
       15 JUMP                             ; [+1]
       16 LOADB                            R5 0
       17 OR                               R6 R4 R5
       18 NEWTABLE                         R7 0 7
       20 LOADK                            R8 K8 ["DrawOriginalParts"]
       21 LOADK                            R9 K9 ["MatchPartTransparency"]
       22 LOADK                            R10 K10 ["OverlayTransparency"]
       23 LOADK                            R11 K11 ["ShowCollidableParts"]
       24 LOADK                            R12 K12 ["ShowQueryableParts"]
       25 LOADK                            R13 K13 ["ShowTouchableParts"]
       26 LOADK                            R14 K14 ["ShowCollisionGroup"]
       27 SETLIST                          R7 R8 7 [1]
       29 DUPTABLE                         R8 K15 [{"DrawOriginalParts", "MatchPartTransparency", "OverlayTransparency", "ShowCollidableParts", "ShowQueryableParts", "ShowTouchableParts", "ShowCollisionGroup"}]
       30 LOADK                            R11 K16 ["PhysicsSimulationSection"]
       31 LOADK                            R12 K8 ["DrawOriginalParts"]
       32 NAMECALL                         R9 R3 K17 ["getText"]
       34 CALL                             R9 3 1
       35 SETTABLEKS                       R9 R8 K8 ["DrawOriginalParts"]
       37 LOADK                            R11 K16 ["PhysicsSimulationSection"]
       38 LOADK                            R12 K9 ["MatchPartTransparency"]
       39 NAMECALL                         R9 R3 K17 ["getText"]
       41 CALL                             R9 3 1
       42 SETTABLEKS                       R9 R8 K9 ["MatchPartTransparency"]
       44 LOADK                            R11 K16 ["PhysicsSimulationSection"]
       45 LOADK                            R12 K10 ["OverlayTransparency"]
       46 NAMECALL                         R9 R3 K17 ["getText"]
       48 CALL                             R9 3 1
       49 SETTABLEKS                       R9 R8 K10 ["OverlayTransparency"]
       51 LOADK                            R11 K16 ["PhysicsSimulationSection"]
       52 LOADK                            R12 K11 ["ShowCollidableParts"]
       53 NAMECALL                         R9 R3 K17 ["getText"]
       55 CALL                             R9 3 1
       56 SETTABLEKS                       R9 R8 K11 ["ShowCollidableParts"]
       58 LOADK                            R11 K16 ["PhysicsSimulationSection"]
       59 LOADK                            R12 K12 ["ShowQueryableParts"]
       60 NAMECALL                         R9 R3 K17 ["getText"]
       62 CALL                             R9 3 1
       63 SETTABLEKS                       R9 R8 K12 ["ShowQueryableParts"]
       65 LOADK                            R11 K16 ["PhysicsSimulationSection"]
       66 LOADK                            R12 K13 ["ShowTouchableParts"]
       67 NAMECALL                         R9 R3 K17 ["getText"]
       69 CALL                             R9 3 1
       70 SETTABLEKS                       R9 R8 K13 ["ShowTouchableParts"]
       72 LOADK                            R11 K16 ["PhysicsSimulationSection"]
       73 LOADK                            R12 K14 ["ShowCollisionGroup"]
       74 NAMECALL                         R9 R3 K17 ["getText"]
       76 CALL                             R9 3 1
       77 SETTABLEKS                       R9 R8 K14 ["ShowCollisionGroup"]
       79 LOADB                            R9 0
       80 NEWTABLE                         R10 0 0
       82 MOVE                             R11 R7
       83 LOADNIL                          R12
       84 LOADNIL                          R13
       85 FORGPREP                         R11
       86 GETTABLEKS                       R16 R0 K18 ["incrementEntryCount"]
       88 CALL                             R16 0 0
       89 GETTABLEKS                       R16 R0 K7 ["includeEntry"]
       91 GETTABLE                         R17 R8 R15
       92 CALL                             R16 1 2
       93 JUMPIFNOT                        R6 ; [+1]
       94 LOADB                            R16 1
       95 JUMPIFEQKNIL                     R17 ; [+2]
       97 LOADB                            R9 1
       98 JUMPIF                           R16 ; [+3]
       99 GETTABLEKS                       R18 R0 K19 ["incrementFilteredCount"]
      101 CALL                             R18 0 0
      102 DUPTABLE                         R18 K22 [{"visible", "matchIndexes"}]
      103 SETTABLEKS                       R16 R18 K20 ["visible"]
      105 SETTABLEKS                       R17 R18 K21 ["matchIndexes"]
      107 SETTABLE                         R18 R10 R15
      108 FORGLOOP                         R11 2 ; [-23]
      110 DUPTABLE                         R11 K23 [{"collisionFidelitySubSearch", "hasSubMatch"}]
      111 DUPTABLE                         R12 K26 [{"anySubOptionMatched", "subOptionVisibility"}]
      112 SETTABLEKS                       R9 R12 K24 ["anySubOptionMatched"]
      114 SETTABLEKS                       R10 R12 K25 ["subOptionVisibility"]
      116 SETTABLEKS                       R12 R11 K2 ["collisionFidelitySubSearch"]
      118 SETTABLEKS                       R9 R11 K4 ["hasSubMatch"]
      120 RETURN                           R11 1

PROTO_1:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_2:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_3:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_4:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_5:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_6:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_7:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R2 1
        2 NOT                              R1 R2
        3 CALL                             R0 1 0
        4 RETURN                           R0 0

PROTO_8:
        0 GETUPVAL                         R1 0
        1 GETTABLEKS                       R1 R1 K0 ["Localization"]
        3 NAMECALL                         R1 R1 K1 ["use"]
        5 CALL                             R1 1 1
        6 GETUPVAL                         R2 1
        7 GETTABLEKS                       R2 R2 K2 ["useContext"]
        9 GETUPVAL                         R3 2
       10 GETTABLEKS                       R3 R3 K3 ["Context"]
       12 CALL                             R2 1 1
       13 GETTABLEKS                       R2 R2 K4 ["overlayFocused"]
       15 GETIMPORT                        R3 K6 [settings]
       17 CALL                             R3 0 1
       18 GETTABLEKS                       R3 R3 K7 ["Physics"]
       20 GETUPVAL                         R4 3
       21 MOVE                             R5 R3
       22 LOADK                            R6 K8 ["ShowDecompositionGeometry"]
       23 LOADB                            R7 0
       24 CALL                             R4 3 2
       25 GETUPVAL                         R6 3
       26 MOVE                             R7 R3
       27 LOADK                            R8 K9 ["CollisionGeomDrawOriginalParts"]
       28 LOADB                            R9 0
       29 CALL                             R6 3 2
       30 GETUPVAL                         R8 3
       31 MOVE                             R9 R3
       32 LOADK                            R10 K10 ["CollisionGeomMatchPartTransparency"]
       33 LOADB                            R11 1
       34 CALL                             R8 3 2
       35 GETUPVAL                         R10 3
       36 MOVE                             R11 R3
       37 LOADK                            R12 K11 ["CollisionGeomOverlayTransparency"]
       38 LOADN                            R13 0
       39 CALL                             R10 3 2
       40 GETUPVAL                         R12 3
       41 MOVE                             R13 R3
       42 LOADK                            R14 K12 ["CollisionGeomShowCollidableParts"]
       43 LOADB                            R15 0
       44 CALL                             R12 3 2
       45 GETUPVAL                         R14 3
       46 MOVE                             R15 R3
       47 LOADK                            R16 K13 ["CollisionGeomShowQueryableParts"]
       48 LOADB                            R17 0
       49 CALL                             R14 3 2
       50 GETUPVAL                         R16 3
       51 MOVE                             R17 R3
       52 LOADK                            R18 K14 ["CollisionGeomShowTouchableParts"]
       53 LOADB                            R19 0
       54 CALL                             R16 3 2
       55 GETUPVAL                         R18 3
       56 MOVE                             R19 R3
       57 LOADK                            R20 K15 ["CollisionGeomShowCollisionGroup"]
       58 LOADK                            R21 K16 [""]
       59 CALL                             R18 3 2
       60 GETUPVAL                         R20 4
       61 LOADK                            R21 K17 ["CollisionFidelity_Expanded"]
       62 LOADB                            R22 0
       63 CALL                             R20 2 2
       64 MOVE                             R22 R20
       65 JUMPIF                           R22 ; [+6]
       66 GETTABLEKS                       R23 R0 K18 ["ForceExpand"]
       68 JUMPIFEQKB                       R23 TRUE ; [+2]
       70 LOADB                            R22 0 +1
       71 LOADB                            R22 1
       72 GETTABLEKS                       R24 R0 K18 ["ForceExpand"]
       74 JUMPIFEQKB                       R24 TRUE ; [+2]
       76 LOADB                            R23 0 +1
       77 LOADB                            R23 1
       78 GETUPVAL                         R24 1
       79 GETTABLEKS                       R24 R24 K19 ["useCallback"]
       81 NEWCLOSURE                       R25 P0
       82 CAPTURE                          VAL R5
       83 CAPTURE                          VAL R4
       84 NEWTABLE                         R26 0 1
       86 MOVE                             R27 R4
       87 SETLIST                          R26 R27 1 [1]
       89 CALL                             R24 2 1
       90 GETUPVAL                         R25 1
       91 GETTABLEKS                       R25 R25 K19 ["useCallback"]
       93 NEWCLOSURE                       R26 P1
       94 CAPTURE                          VAL R21
       95 CAPTURE                          VAL R20
       96 NEWTABLE                         R27 0 1
       98 MOVE                             R28 R20
       99 SETLIST                          R27 R28 1 [1]
      101 CALL                             R25 2 1
      102 GETUPVAL                         R26 1
      103 GETTABLEKS                       R26 R26 K19 ["useCallback"]
      105 NEWCLOSURE                       R27 P2
      106 CAPTURE                          VAL R7
      107 CAPTURE                          VAL R6
      108 NEWTABLE                         R28 0 1
      110 MOVE                             R29 R6
      111 SETLIST                          R28 R29 1 [1]
      113 CALL                             R26 2 1
      114 GETUPVAL                         R27 1
      115 GETTABLEKS                       R27 R27 K19 ["useCallback"]
      117 NEWCLOSURE                       R28 P3
      118 CAPTURE                          VAL R9
      119 CAPTURE                          VAL R8
      120 NEWTABLE                         R29 0 1
      122 MOVE                             R30 R8
      123 SETLIST                          R29 R30 1 [1]
      125 CALL                             R27 2 1
      126 GETUPVAL                         R28 1
      127 GETTABLEKS                       R28 R28 K19 ["useCallback"]
      129 NEWCLOSURE                       R29 P4
      130 CAPTURE                          VAL R13
      131 CAPTURE                          VAL R12
      132 NEWTABLE                         R30 0 1
      134 MOVE                             R31 R12
      135 SETLIST                          R30 R31 1 [1]
      137 CALL                             R28 2 1
      138 GETUPVAL                         R29 1
      139 GETTABLEKS                       R29 R29 K19 ["useCallback"]
      141 NEWCLOSURE                       R30 P5
      142 CAPTURE                          VAL R15
      143 CAPTURE                          VAL R14
      144 NEWTABLE                         R31 0 1
      146 MOVE                             R32 R14
      147 SETLIST                          R31 R32 1 [1]
      149 CALL                             R29 2 1
      150 GETUPVAL                         R30 1
      151 GETTABLEKS                       R30 R30 K19 ["useCallback"]
      153 NEWCLOSURE                       R31 P6
      154 CAPTURE                          VAL R17
      155 CAPTURE                          VAL R16
      156 NEWTABLE                         R32 0 1
      158 MOVE                             R33 R16
      159 SETLIST                          R32 R33 1 [1]
      161 CALL                             R30 2 1
      162 GETUPVAL                         R31 1
      163 GETTABLEKS                       R31 R31 K20 ["createElement"]
      165 GETUPVAL                         R32 5
      166 NEWTABLE                         R33 2 0
      168 GETUPVAL                         R34 1
      169 GETTABLEKS                       R34 R34 K21 ["Tag"]
      171 LOADK                            R35 K22 ["X-Fill X-Column X-Top X-FitY"]
      172 SETTABLE                         R35 R33 R34
      173 GETTABLEKS                       R34 R0 K23 ["LayoutOrder"]
      175 SETTABLEKS                       R34 R33 K23 ["LayoutOrder"]
      177 DUPTABLE                         R34 K26 [{"CollisionFidelityEntry", "SubControls"}]
      178 GETUPVAL                         R35 1
      179 GETTABLEKS                       R35 R35 K20 ["createElement"]
      181 LOADK                            R36 K27 ["ImageButton"]
      182 NEWTABLE                         R37 4 0
      184 LOADN                            R38 1
      185 SETTABLEKS                       R38 R37 K23 ["LayoutOrder"]
      187 GETUPVAL                         R38 1
      188 GETTABLEKS                       R38 R38 K21 ["Tag"]
      190 LOADK                            R39 K28 ["VisualizationModes-Entry VisualizationModes-Active"]
      191 SETTABLE                         R39 R37 R38
      192 GETUPVAL                         R38 1
      193 GETTABLEKS                       R38 R38 K29 ["Event"]
      195 GETTABLEKS                       R38 R38 K30 ["Activated"]
      197 SETTABLE                         R24 R37 R38
      198 DUPTABLE                         R38 K34 [{"ToolTip", "VisualizationModesEntryBacking", "Contents"}]
      199 GETUPVAL                         R39 1
      200 GETTABLEKS                       R39 R39 K20 ["createElement"]
      202 GETUPVAL                         R40 6
      203 DUPTABLE                         R41 K37 [{"Text", "Enabled"}]
      204 LOADK                            R44 K38 ["StudioModes"]
      205 LOADK                            R45 K39 ["CollisionFidelityToolTip"]
      206 NAMECALL                         R42 R1 K40 ["getText"]
      208 CALL                             R42 3 1
      209 SETTABLEKS                       R42 R41 K35 ["Text"]
      211 NOT                              R42 R2
      212 SETTABLEKS                       R42 R41 K36 ["Enabled"]
      214 CALL                             R39 2 1
      215 SETTABLEKS                       R39 R38 K31 ["ToolTip"]
      217 GETUPVAL                         R39 1
      218 GETTABLEKS                       R39 R39 K20 ["createElement"]
      220 LOADK                            R40 K41 ["Frame"]
      221 NEWTABLE                         R41 1 0
      223 GETUPVAL                         R42 1
      224 GETTABLEKS                       R42 R42 K21 ["Tag"]
      226 JUMPIFNOT                        R2 ; [+2]
      227 LOADK                            R43 K42 ["VisualizationModesEntryBacking-Disabled"]
      228 JUMP                             ; [+1]
      229 LOADK                            R43 K43 ["VisualizationModesEntryBacking-Enabled"]
      230 SETTABLE                         R43 R41 R42
      231 CALL                             R39 2 1
      232 SETTABLEKS                       R39 R38 K32 ["VisualizationModesEntryBacking"]
      234 GETUPVAL                         R39 1
      235 GETTABLEKS                       R39 R39 K20 ["createElement"]
      237 LOADK                            R40 K41 ["Frame"]
      238 DUPTABLE                         R41 K49 [{["Size"], ["AnchorPoint"], ["Position"], ["BackgroundTransparency"] = 1}]
      239 GETIMPORT                        R42 K52 [UDim2.new]
      241 LOADN                            R43 1
      242 LOADN                            R44 0
      243 LOADN                            R45 0
      244 LOADN                            R46 26
      245 CALL                             R42 4 1
      246 SETTABLEKS                       R42 R41 K44 ["Size"]
      248 GETIMPORT                        R42 K54 [Vector2.new]
      250 LOADK                            R43 K55 [0.5]
      251 LOADK                            R44 K55 [0.5]
      252 CALL                             R42 2 1
      253 SETTABLEKS                       R42 R41 K45 ["AnchorPoint"]
      255 GETIMPORT                        R42 K57 [UDim2.fromScale]
      257 LOADK                            R43 K55 [0.5]
      258 LOADK                            R44 K55 [0.5]
      259 CALL                             R42 2 1
      260 SETTABLEKS                       R42 R41 K46 ["Position"]
      262 DUPTABLE                         R42 K61 [{"Layout", "LeftContent", "ExpandButton"}]
      263 GETUPVAL                         R43 1
      264 GETTABLEKS                       R43 R43 K20 ["createElement"]
      266 LOADK                            R44 K62 ["UIListLayout"]
      267 DUPTABLE                         R45 K66 [{"FillDirection", "VerticalAlignment", "SortOrder"}]
      268 GETIMPORT                        R46 K69 [Enum.FillDirection.Horizontal]
      270 SETTABLEKS                       R46 R45 K63 ["FillDirection"]
      272 GETIMPORT                        R46 K71 [Enum.VerticalAlignment.Center]
      274 SETTABLEKS                       R46 R45 K64 ["VerticalAlignment"]
      276 GETIMPORT                        R46 K72 [Enum.SortOrder.LayoutOrder]
      278 SETTABLEKS                       R46 R45 K65 ["SortOrder"]
      280 CALL                             R43 2 1
      281 SETTABLEKS                       R43 R42 K58 ["Layout"]
      283 GETUPVAL                         R43 1
      284 GETTABLEKS                       R43 R43 K20 ["createElement"]
      286 GETUPVAL                         R44 5
      287 NEWTABLE                         R45 4 0
      289 GETUPVAL                         R46 1
      290 GETTABLEKS                       R46 R46 K21 ["Tag"]
      292 LOADK                            R47 K73 ["X-RowS X-Left X-Middle X-PadS"]
      293 SETTABLE                         R47 R45 R46
      294 GETIMPORT                        R46 K52 [UDim2.new]
      296 LOADN                            R47 1
      297 LOADN                            R48 -28
      298 LOADN                            R49 1
      299 LOADN                            R50 0
      300 CALL                             R46 4 1
      301 SETTABLEKS                       R46 R45 K44 ["Size"]
      303 LOADN                            R46 1
      304 SETTABLEKS                       R46 R45 K23 ["LayoutOrder"]
      306 DUPTABLE                         R46 K76 [{"LeftSpacer", "MainEntry"}]
      307 GETUPVAL                         R47 1
      308 GETTABLEKS                       R47 R47 K20 ["createElement"]
      310 LOADK                            R48 K41 ["Frame"]
      311 DUPTABLE                         R49 K77 [{["Size"], ["LayoutOrder"] = 1, ["BackgroundTransparency"] = 1}]
      312 GETIMPORT                        R50 K79 [UDim2.fromOffset]
      314 LOADN                            R51 7
      315 LOADN                            R52 12
      316 CALL                             R50 2 1
      317 SETTABLEKS                       R50 R49 K44 ["Size"]
      319 CALL                             R47 2 1
      320 SETTABLEKS                       R47 R46 K74 ["LeftSpacer"]
      322 GETUPVAL                         R47 1
      323 GETTABLEKS                       R47 R47 K20 ["createElement"]
      325 LOADK                            R48 K41 ["Frame"]
      326 NEWTABLE                         R49 2 0
      328 LOADN                            R50 2
      329 SETTABLEKS                       R50 R49 K23 ["LayoutOrder"]
      331 GETUPVAL                         R50 1
      332 GETTABLEKS                       R50 R50 K21 ["Tag"]
      334 LOADK                            R51 K80 ["VisualizationModes-EntryButton"]
      335 SETTABLE                         R51 R49 R50
      336 DUPTABLE                         R50 K81 [{"Contents"}]
      337 GETUPVAL                         R51 1
      338 GETTABLEKS                       R51 R51 K20 ["createElement"]
      340 GETUPVAL                         R52 5
      341 NEWTABLE                         R53 1 0
      343 GETUPVAL                         R54 1
      344 GETTABLEKS                       R54 R54 K21 ["Tag"]
      346 LOADK                            R55 K82 ["X-RowS X-Left X-Middle"]
      347 SETTABLE                         R55 R53 R54
      348 DUPTABLE                         R54 K85 [{"Checkbox", "VisualizationModeEntryTitle"}]
      349 GETUPVAL                         R55 1
      350 GETTABLEKS                       R55 R55 K20 ["createElement"]
      352 GETUPVAL                         R56 7
      353 DUPTABLE                         R57 K88 [{["Checked"], ["OnClick"], ["LayoutOrder"] = 1}]
      354 SETTABLEKS                       R4 R57 K86 ["Checked"]
      356 SETTABLEKS                       R24 R57 K87 ["OnClick"]
      358 CALL                             R55 2 1
      359 SETTABLEKS                       R55 R54 K83 ["Checkbox"]
      361 GETUPVAL                         R55 1
      362 GETTABLEKS                       R55 R55 K20 ["createElement"]
      364 GETUPVAL                         R56 8
      365 DUPTABLE                         R57 K91 [{["LayoutOrder"] = 2, ["Text"], ["MatchIndexes"]}]
      366 LOADK                            R60 K38 ["StudioModes"]
      367 LOADK                            R61 K92 ["CollisionFidelity"]
      368 NAMECALL                         R58 R1 K40 ["getText"]
      370 CALL                             R58 3 1
      371 SETTABLEKS                       R58 R57 K35 ["Text"]
      373 GETTABLEKS                       R58 R0 K90 ["MatchIndexes"]
      375 SETTABLEKS                       R58 R57 K90 ["MatchIndexes"]
      377 CALL                             R55 2 1
      378 SETTABLEKS                       R55 R54 K84 ["VisualizationModeEntryTitle"]
      380 CALL                             R51 3 1
      381 SETTABLEKS                       R51 R50 K33 ["Contents"]
      383 CALL                             R47 3 1
      384 SETTABLEKS                       R47 R46 K75 ["MainEntry"]
      386 CALL                             R43 3 1
      387 SETTABLEKS                       R43 R42 K59 ["LeftContent"]
      389 GETUPVAL                         R43 1
      390 GETTABLEKS                       R43 R43 K20 ["createElement"]
      392 LOADK                            R44 K27 ["ImageButton"]
      393 NEWTABLE                         R45 4 0
      395 GETIMPORT                        R46 K79 [UDim2.fromOffset]
      397 LOADN                            R47 28
      398 LOADN                            R48 26
      399 CALL                             R46 2 1
      400 SETTABLEKS                       R46 R45 K44 ["Size"]
      402 LOADN                            R46 1
      403 SETTABLEKS                       R46 R45 K47 ["BackgroundTransparency"]
      405 LOADN                            R46 2
      406 SETTABLEKS                       R46 R45 K23 ["LayoutOrder"]
      408 GETUPVAL                         R46 1
      409 GETTABLEKS                       R46 R46 K29 ["Event"]
      411 GETTABLEKS                       R46 R46 K30 ["Activated"]
      413 SETTABLE                         R25 R45 R46
      414 DUPTABLE                         R46 K94 [{"ArrowImage"}]
      415 GETUPVAL                         R47 1
      416 GETTABLEKS                       R47 R47 K20 ["createElement"]
      418 LOADK                            R48 K95 ["ImageLabel"]
      419 NEWTABLE                         R49 1 0
      421 GETUPVAL                         R50 1
      422 GETTABLEKS                       R50 R50 K21 ["Tag"]
      424 GETUPVAL                         R51 9
      425 GETTABLEKS                       R51 R51 K96 ["Styling"]
      427 GETTABLEKS                       R51 R51 K97 ["joinTags"]
      429 LOADK                            R52 K98 ["VisualizationModes-ExpandIcon"]
      430 JUMPIFNOT                        R20 ; [+2]
      431 LOADK                            R53 K99 ["VisualizationModes-ExpandIcon-Expanded"]
      432 JUMP                             ; [+1]
      433 LOADK                            R53 K100 ["VisualizationModes-ExpandIcon-Collapsed"]
      434 CALL                             R51 2 1
      435 SETTABLE                         R51 R49 R50
      436 CALL                             R47 2 1
      437 SETTABLEKS                       R47 R46 K93 ["ArrowImage"]
      439 CALL                             R43 3 1
      440 SETTABLEKS                       R43 R42 K60 ["ExpandButton"]
      442 CALL                             R39 3 1
      443 SETTABLEKS                       R39 R38 K33 ["Contents"]
      445 CALL                             R35 3 1
      446 SETTABLEKS                       R35 R34 K24 ["CollisionFidelityEntry"]
      448 JUMPIFNOT                        R22 ; [+391]
      449 GETUPVAL                         R35 1
      450 GETTABLEKS                       R35 R35 K20 ["createElement"]
      452 GETUPVAL                         R36 5
      453 NEWTABLE                         R37 2 0
      455 GETUPVAL                         R38 1
      456 GETTABLEKS                       R38 R38 K21 ["Tag"]
      458 LOADK                            R39 K22 ["X-Fill X-Column X-Top X-FitY"]
      459 SETTABLE                         R39 R37 R38
      460 LOADN                            R38 2
      461 SETTABLEKS                       R38 R37 K23 ["LayoutOrder"]
      463 DUPTABLE                         R38 K108 [{"DrawOriginalParts", "MatchPartTransparency", "OverlayTransparency", "ShowCollidableParts", "ShowQueryableParts", "ShowTouchableParts", "ShowCollisionGroup"}]
      464 GETUPVAL                         R39 1
      465 GETTABLEKS                       R39 R39 K20 ["createElement"]
      467 GETUPVAL                         R40 10
      468 DUPTABLE                         R41 K112 [{["LayoutOrder"] = 1, ["Text"], ["ToolTipText"], ["Checked"], ["OnToggle"], ["Visible"], ["MatchIndexes"]}]
      469 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      470 LOADK                            R45 K101 ["DrawOriginalParts"]
      471 NAMECALL                         R42 R1 K40 ["getText"]
      473 CALL                             R42 3 1
      474 SETTABLEKS                       R42 R41 K35 ["Text"]
      476 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      477 LOADK                            R45 K114 ["DrawOriginalPartsToolTip"]
      478 NAMECALL                         R42 R1 K40 ["getText"]
      480 CALL                             R42 3 1
      481 SETTABLEKS                       R42 R41 K109 ["ToolTipText"]
      483 SETTABLEKS                       R6 R41 K86 ["Checked"]
      485 SETTABLEKS                       R26 R41 K110 ["OnToggle"]
      487 JUMPIFNOT                        R23 ; [+10]
      488 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      490 JUMPIFNOT                        R43 ; [+7]
      491 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      493 GETTABLEKS                       R42 R42 K101 ["DrawOriginalParts"]
      495 GETTABLEKS                       R42 R42 K116 ["visible"]
      497 JUMP                             ; [+1]
      498 LOADNIL                          R42
      499 SETTABLEKS                       R42 R41 K111 ["Visible"]
      501 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      503 JUMPIFNOT                        R43 ; [+7]
      504 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      506 GETTABLEKS                       R42 R42 K101 ["DrawOriginalParts"]
      508 GETTABLEKS                       R42 R42 K117 ["matchIndexes"]
      510 JUMP                             ; [+1]
      511 LOADNIL                          R42
      512 SETTABLEKS                       R42 R41 K90 ["MatchIndexes"]
      514 CALL                             R39 2 1
      515 SETTABLEKS                       R39 R38 K101 ["DrawOriginalParts"]
      517 GETUPVAL                         R39 1
      518 GETTABLEKS                       R39 R39 K20 ["createElement"]
      520 GETUPVAL                         R40 10
      521 DUPTABLE                         R41 K118 [{["LayoutOrder"] = 2, ["Text"], ["ToolTipText"], ["Checked"], ["OnToggle"], ["Visible"], ["MatchIndexes"]}]
      522 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      523 LOADK                            R45 K102 ["MatchPartTransparency"]
      524 NAMECALL                         R42 R1 K40 ["getText"]
      526 CALL                             R42 3 1
      527 SETTABLEKS                       R42 R41 K35 ["Text"]
      529 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      530 LOADK                            R45 K119 ["MatchPartTransparencyToolTip"]
      531 NAMECALL                         R42 R1 K40 ["getText"]
      533 CALL                             R42 3 1
      534 SETTABLEKS                       R42 R41 K109 ["ToolTipText"]
      536 SETTABLEKS                       R8 R41 K86 ["Checked"]
      538 SETTABLEKS                       R27 R41 K110 ["OnToggle"]
      540 JUMPIFNOT                        R23 ; [+10]
      541 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      543 JUMPIFNOT                        R43 ; [+7]
      544 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      546 GETTABLEKS                       R42 R42 K102 ["MatchPartTransparency"]
      548 GETTABLEKS                       R42 R42 K116 ["visible"]
      550 JUMP                             ; [+1]
      551 LOADNIL                          R42
      552 SETTABLEKS                       R42 R41 K111 ["Visible"]
      554 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      556 JUMPIFNOT                        R43 ; [+7]
      557 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      559 GETTABLEKS                       R42 R42 K102 ["MatchPartTransparency"]
      561 GETTABLEKS                       R42 R42 K117 ["matchIndexes"]
      563 JUMP                             ; [+1]
      564 LOADNIL                          R42
      565 SETTABLEKS                       R42 R41 K90 ["MatchIndexes"]
      567 CALL                             R39 2 1
      568 SETTABLEKS                       R39 R38 K102 ["MatchPartTransparency"]
      570 JUMPIF                           R8 ; [+52]
      571 GETUPVAL                         R39 1
      572 GETTABLEKS                       R39 R39 K20 ["createElement"]
      574 GETUPVAL                         R40 11
      575 DUPTABLE                         R41 K128 [{["LayoutOrder"] = 3, ["Text"], ["ToolTipText"], ["Min"] = 0, ["Max"] = 1, ["SnapIncrement"] = 0.01, ["Value"], ["OnValueChanged"], ["Visible"], ["MatchIndexes"]}]
      576 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      577 LOADK                            R45 K103 ["OverlayTransparency"]
      578 NAMECALL                         R42 R1 K40 ["getText"]
      580 CALL                             R42 3 1
      581 SETTABLEKS                       R42 R41 K35 ["Text"]
      583 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      584 LOADK                            R45 K129 ["OverlayTransparencyToolTip"]
      585 NAMECALL                         R42 R1 K40 ["getText"]
      587 CALL                             R42 3 1
      588 SETTABLEKS                       R42 R41 K109 ["ToolTipText"]
      590 SETTABLEKS                       R10 R41 K126 ["Value"]
      592 SETTABLEKS                       R11 R41 K127 ["OnValueChanged"]
      594 JUMPIFNOT                        R23 ; [+10]
      595 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      597 JUMPIFNOT                        R43 ; [+7]
      598 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      600 GETTABLEKS                       R42 R42 K103 ["OverlayTransparency"]
      602 GETTABLEKS                       R42 R42 K116 ["visible"]
      604 JUMP                             ; [+1]
      605 LOADNIL                          R42
      606 SETTABLEKS                       R42 R41 K111 ["Visible"]
      608 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      610 JUMPIFNOT                        R43 ; [+7]
      611 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      613 GETTABLEKS                       R42 R42 K103 ["OverlayTransparency"]
      615 GETTABLEKS                       R42 R42 K117 ["matchIndexes"]
      617 JUMP                             ; [+1]
      618 LOADNIL                          R42
      619 SETTABLEKS                       R42 R41 K90 ["MatchIndexes"]
      621 CALL                             R39 2 1
      622 JUMP                             ; [+1]
      623 LOADNIL                          R39
      624 SETTABLEKS                       R39 R38 K103 ["OverlayTransparency"]
      626 GETUPVAL                         R39 1
      627 GETTABLEKS                       R39 R39 K20 ["createElement"]
      629 GETUPVAL                         R40 10
      630 DUPTABLE                         R41 K131 [{["LayoutOrder"] = 4, ["Text"], ["ToolTipText"], ["Checked"], ["OnToggle"], ["Visible"], ["MatchIndexes"]}]
      631 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      632 LOADK                            R45 K104 ["ShowCollidableParts"]
      633 NAMECALL                         R42 R1 K40 ["getText"]
      635 CALL                             R42 3 1
      636 SETTABLEKS                       R42 R41 K35 ["Text"]
      638 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      639 LOADK                            R45 K132 ["ShowCollidablePartsToolTip"]
      640 NAMECALL                         R42 R1 K40 ["getText"]
      642 CALL                             R42 3 1
      643 SETTABLEKS                       R42 R41 K109 ["ToolTipText"]
      645 SETTABLEKS                       R12 R41 K86 ["Checked"]
      647 SETTABLEKS                       R28 R41 K110 ["OnToggle"]
      649 JUMPIFNOT                        R23 ; [+10]
      650 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      652 JUMPIFNOT                        R43 ; [+7]
      653 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      655 GETTABLEKS                       R42 R42 K104 ["ShowCollidableParts"]
      657 GETTABLEKS                       R42 R42 K116 ["visible"]
      659 JUMP                             ; [+1]
      660 LOADNIL                          R42
      661 SETTABLEKS                       R42 R41 K111 ["Visible"]
      663 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      665 JUMPIFNOT                        R43 ; [+7]
      666 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      668 GETTABLEKS                       R42 R42 K104 ["ShowCollidableParts"]
      670 GETTABLEKS                       R42 R42 K117 ["matchIndexes"]
      672 JUMP                             ; [+1]
      673 LOADNIL                          R42
      674 SETTABLEKS                       R42 R41 K90 ["MatchIndexes"]
      676 CALL                             R39 2 1
      677 SETTABLEKS                       R39 R38 K104 ["ShowCollidableParts"]
      679 GETUPVAL                         R39 1
      680 GETTABLEKS                       R39 R39 K20 ["createElement"]
      682 GETUPVAL                         R40 10
      683 DUPTABLE                         R41 K134 [{["LayoutOrder"] = 5, ["Text"], ["ToolTipText"], ["Checked"], ["OnToggle"], ["Visible"], ["MatchIndexes"]}]
      684 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      685 LOADK                            R45 K105 ["ShowQueryableParts"]
      686 NAMECALL                         R42 R1 K40 ["getText"]
      688 CALL                             R42 3 1
      689 SETTABLEKS                       R42 R41 K35 ["Text"]
      691 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      692 LOADK                            R45 K135 ["ShowQueryablePartsToolTip"]
      693 NAMECALL                         R42 R1 K40 ["getText"]
      695 CALL                             R42 3 1
      696 SETTABLEKS                       R42 R41 K109 ["ToolTipText"]
      698 SETTABLEKS                       R14 R41 K86 ["Checked"]
      700 SETTABLEKS                       R29 R41 K110 ["OnToggle"]
      702 JUMPIFNOT                        R23 ; [+10]
      703 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      705 JUMPIFNOT                        R43 ; [+7]
      706 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      708 GETTABLEKS                       R42 R42 K105 ["ShowQueryableParts"]
      710 GETTABLEKS                       R42 R42 K116 ["visible"]
      712 JUMP                             ; [+1]
      713 LOADNIL                          R42
      714 SETTABLEKS                       R42 R41 K111 ["Visible"]
      716 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      718 JUMPIFNOT                        R43 ; [+7]
      719 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      721 GETTABLEKS                       R42 R42 K105 ["ShowQueryableParts"]
      723 GETTABLEKS                       R42 R42 K117 ["matchIndexes"]
      725 JUMP                             ; [+1]
      726 LOADNIL                          R42
      727 SETTABLEKS                       R42 R41 K90 ["MatchIndexes"]
      729 CALL                             R39 2 1
      730 SETTABLEKS                       R39 R38 K105 ["ShowQueryableParts"]
      732 GETUPVAL                         R39 1
      733 GETTABLEKS                       R39 R39 K20 ["createElement"]
      735 GETUPVAL                         R40 10
      736 DUPTABLE                         R41 K137 [{["LayoutOrder"] = 6, ["Text"], ["ToolTipText"], ["Checked"], ["OnToggle"], ["Visible"], ["MatchIndexes"]}]
      737 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      738 LOADK                            R45 K106 ["ShowTouchableParts"]
      739 NAMECALL                         R42 R1 K40 ["getText"]
      741 CALL                             R42 3 1
      742 SETTABLEKS                       R42 R41 K35 ["Text"]
      744 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      745 LOADK                            R45 K138 ["ShowTouchablePartsToolTip"]
      746 NAMECALL                         R42 R1 K40 ["getText"]
      748 CALL                             R42 3 1
      749 SETTABLEKS                       R42 R41 K109 ["ToolTipText"]
      751 SETTABLEKS                       R16 R41 K86 ["Checked"]
      753 SETTABLEKS                       R30 R41 K110 ["OnToggle"]
      755 JUMPIFNOT                        R23 ; [+10]
      756 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      758 JUMPIFNOT                        R43 ; [+7]
      759 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      761 GETTABLEKS                       R42 R42 K106 ["ShowTouchableParts"]
      763 GETTABLEKS                       R42 R42 K116 ["visible"]
      765 JUMP                             ; [+1]
      766 LOADNIL                          R42
      767 SETTABLEKS                       R42 R41 K111 ["Visible"]
      769 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      771 JUMPIFNOT                        R43 ; [+7]
      772 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      774 GETTABLEKS                       R42 R42 K106 ["ShowTouchableParts"]
      776 GETTABLEKS                       R42 R42 K117 ["matchIndexes"]
      778 JUMP                             ; [+1]
      779 LOADNIL                          R42
      780 SETTABLEKS                       R42 R41 K90 ["MatchIndexes"]
      782 CALL                             R39 2 1
      783 SETTABLEKS                       R39 R38 K106 ["ShowTouchableParts"]
      785 GETUPVAL                         R39 1
      786 GETTABLEKS                       R39 R39 K20 ["createElement"]
      788 GETUPVAL                         R40 12
      789 DUPTABLE                         R41 K143 [{["LayoutOrder"] = 7, ["Text"], ["ToolTipText"], ["InputText"], ["PlaceholderText"] = "", ["OnTextChanged"], ["Visible"], ["MatchIndexes"]}]
      790 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      791 LOADK                            R45 K107 ["ShowCollisionGroup"]
      792 NAMECALL                         R42 R1 K40 ["getText"]
      794 CALL                             R42 3 1
      795 SETTABLEKS                       R42 R41 K35 ["Text"]
      797 LOADK                            R44 K113 ["PhysicsSimulationSection"]
      798 LOADK                            R45 K144 ["ShowCollisionGroupToolTip"]
      799 NAMECALL                         R42 R1 K40 ["getText"]
      801 CALL                             R42 3 1
      802 SETTABLEKS                       R42 R41 K109 ["ToolTipText"]
      804 SETTABLEKS                       R18 R41 K140 ["InputText"]
      806 SETTABLEKS                       R19 R41 K142 ["OnTextChanged"]
      808 JUMPIFNOT                        R23 ; [+10]
      809 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      811 JUMPIFNOT                        R43 ; [+7]
      812 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      814 GETTABLEKS                       R42 R42 K107 ["ShowCollisionGroup"]
      816 GETTABLEKS                       R42 R42 K116 ["visible"]
      818 JUMP                             ; [+1]
      819 LOADNIL                          R42
      820 SETTABLEKS                       R42 R41 K111 ["Visible"]
      822 GETTABLEKS                       R43 R0 K115 ["SubOptionVisibility"]
      824 JUMPIFNOT                        R43 ; [+7]
      825 GETTABLEKS                       R42 R0 K115 ["SubOptionVisibility"]
      827 GETTABLEKS                       R42 R42 K107 ["ShowCollisionGroup"]
      829 GETTABLEKS                       R42 R42 K117 ["matchIndexes"]
      831 JUMP                             ; [+1]
      832 LOADNIL                          R42
      833 SETTABLEKS                       R42 R41 K90 ["MatchIndexes"]
      835 CALL                             R39 2 1
      836 SETTABLEKS                       R39 R38 K107 ["ShowCollisionGroup"]
      838 CALL                             R35 3 1
      839 JUMP                             ; [+1]
      840 LOADNIL                          R35
      841 SETTABLEKS                       R35 R34 K25 ["SubControls"]
      843 CALL                             R31 3 -1
      844 RETURN                           R31 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["VisualizationModes"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["Components"]
       13 GETTABLEKS                       R2 R2 K8 ["SubEntries"]
       15 GETTABLEKS                       R2 R2 K9 ["CheckboxSubEntry"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["Framework"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K6 ["Src"]
       29 GETTABLEKS                       R4 R4 K7 ["Components"]
       31 GETTABLEKS                       R4 R4 K12 ["HighlightTextLabel"]
       33 CALL                             R3 1 1
       34 GETIMPORT                        R4 K5 [require]
       36 GETTABLEKS                       R5 R0 K6 ["Src"]
       38 GETTABLEKS                       R5 R5 K13 ["Contexts"]
       40 GETTABLEKS                       R5 R5 K14 ["OverlayMenuFocusedContext"]
       42 CALL                             R4 1 1
       43 GETIMPORT                        R5 K5 [require]
       45 GETTABLEKS                       R6 R0 K10 ["Packages"]
       47 GETTABLEKS                       R6 R6 K15 ["React"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K7 ["Components"]
       56 GETTABLEKS                       R7 R7 K8 ["SubEntries"]
       58 GETTABLEKS                       R7 R7 K16 ["SliderSubEntry"]
       60 CALL                             R6 1 1
       61 GETIMPORT                        R7 K5 [require]
       63 GETTABLEKS                       R8 R0 K6 ["Src"]
       65 GETTABLEKS                       R8 R8 K7 ["Components"]
       67 GETTABLEKS                       R8 R8 K8 ["SubEntries"]
       69 GETTABLEKS                       R8 R8 K17 ["TextInputSubEntry"]
       71 CALL                             R7 1 1
       72 GETIMPORT                        R8 K5 [require]
       74 GETTABLEKS                       R9 R0 K6 ["Src"]
       76 GETTABLEKS                       R9 R9 K18 ["Types"]
       78 CALL                             R8 1 1
       79 GETIMPORT                        R9 K5 [require]
       81 GETTABLEKS                       R10 R0 K6 ["Src"]
       83 GETTABLEKS                       R10 R10 K19 ["Hooks"]
       85 GETTABLEKS                       R10 R10 K20 ["useFuzzySearch"]
       87 CALL                             R9 1 1
       88 GETIMPORT                        R10 K5 [require]
       90 GETTABLEKS                       R11 R0 K6 ["Src"]
       92 GETTABLEKS                       R11 R11 K19 ["Hooks"]
       94 GETTABLEKS                       R11 R11 K21 ["useInstanceSetting"]
       96 CALL                             R10 1 1
       97 GETIMPORT                        R11 K5 [require]
       99 GETTABLEKS                       R12 R0 K6 ["Src"]
      101 GETTABLEKS                       R12 R12 K19 ["Hooks"]
      103 GETTABLEKS                       R12 R12 K22 ["usePluginSetting"]
      105 CALL                             R11 1 1
      106 GETTABLEKS                       R12 R2 K23 ["UI"]
      108 GETTABLEKS                       R13 R2 K24 ["ContextServices"]
      110 GETTABLEKS                       R14 R12 K25 ["Checkbox"]
      112 GETTABLEKS                       R15 R12 K26 ["Pane"]
      114 GETTABLEKS                       R16 R12 K27 ["Tooltip"]
      116 DUPCLOSURE                       R17 K28 [PROTO_0]
      117 DUPCLOSURE                       R18 K29 [PROTO_8]
      118 CAPTURE                          VAL R13
      119 CAPTURE                          VAL R5
      120 CAPTURE                          VAL R4
      121 CAPTURE                          VAL R10
      122 CAPTURE                          VAL R11
      123 CAPTURE                          VAL R15
      124 CAPTURE                          VAL R16
      125 CAPTURE                          VAL R14
      126 CAPTURE                          VAL R3
      127 CAPTURE                          VAL R2
      128 CAPTURE                          VAL R1
      129 CAPTURE                          VAL R6
      130 CAPTURE                          VAL R7
      131 DUPTABLE                         R19 K32 [{"Component", "computeCollisionFidelityFuzzySearch"}]
      132 SETTABLEKS                       R18 R19 K30 ["Component"]
      134 SETTABLEKS                       R17 R19 K31 ["computeCollisionFidelityFuzzySearch"]
      136 RETURN                           R19 1
