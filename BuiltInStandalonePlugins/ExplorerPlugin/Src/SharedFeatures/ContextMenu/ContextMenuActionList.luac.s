PROTO_0:
        0 DUPTABLE                         R4 K2 [{"key", "source"}]
        1 MOVE                             R5 R3
        2 JUMPIF                           R5 ; [+5]
        3 GETUPVAL                         R6 0
        4 GETTABLEKS                       R5 R6 K3 ["toString"]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 SETTABLEKS                       R5 R4 K0 ["key"]
       10 DUPTABLE                         R5 K8 [{"type", "uri", "expectation", "shouldShow"}]
       11 LOADK                            R6 K9 ["studioAction"]
       12 SETTABLEKS                       R6 R5 K4 ["type"]
       14 SETTABLEKS                       R0 R5 K5 ["uri"]
       16 SETTABLEKS                       R1 R5 K6 ["expectation"]
       18 SETTABLEKS                       R2 R5 K7 ["shouldShow"]
       20 SETTABLEKS                       R5 R4 K1 ["source"]
       22 RETURN                           R4 1

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"key", "source"}]
        1 SETTABLEKS                       R0 R2 K0 ["key"]
        3 DUPTABLE                         R3 K5 [{"type", "submenuCategories"}]
        4 LOADK                            R4 K6 ["submenu"]
        5 SETTABLEKS                       R4 R3 K3 ["type"]
        7 SETTABLEKS                       R1 R3 K4 ["submenuCategories"]
        9 SETTABLEKS                       R3 R2 K1 ["source"]
       11 RETURN                           R2 1

PROTO_2:
        0 GETUPVAL                         R3 0
        1 GETTABLEKS                       R2 R3 K0 ["fromAction"]
        3 MOVE                             R3 R0
        4 MOVE                             R4 R1
        5 CALL                             R2 2 -1
        6 RETURN                           R2 -1

PROTO_3:
        0 LOADK                            R3 K0 ["Model"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 1
        4 JUMPIF                           R1 ; [+9]
        5 LOADK                            R3 K2 ["BasePart"]
        6 NAMECALL                         R1 R0 K1 ["IsA"]
        8 CALL                             R1 2 1
        9 JUMPIF                           R1 ; [+4]
       10 LOADK                            R3 K3 ["Attachment"]
       11 NAMECALL                         R1 R0 K1 ["IsA"]
       13 CALL                             R1 2 1
       14 RETURN                           R1 1

PROTO_4:
        0 LOADK                            R3 K0 ["PluginDebugService"]
        1 NAMECALL                         R1 R0 K1 ["IsA"]
        3 CALL                             R1 2 -1
        4 RETURN                           R1 -1

PROTO_5:
        0 GETIMPORT                        R0 K1 [game]
        2 LOADK                            R2 K2 ["UnifyModelPackagePublish3"]
        3 NAMECALL                         R0 R0 K3 ["GetFastFlag"]
        5 CALL                             R0 2 0
        6 GETUPVAL                         R0 0
        7 LOADK                            R1 K4 ["PackageTools"]
        8 LOADK                            R2 K5 ["DEPRECATED_ConvertToPackage"]
        9 CALL                             R0 2 -1
       10 RETURN                           R0 -1

PROTO_6:
        0 GETUPVAL                         R0 0
        1 LOADK                            R1 K0 ["PackageTools"]
        2 LOADK                            R2 K1 ["ConvertToPackage"]
        3 CALL                             R0 2 -1
        4 RETURN                           R0 -1

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 LOADK                            R2 K2 ["ExplorerPlugin"]
        4 NAMECALL                         R0 R0 K3 ["FindFirstAncestor"]
        6 CALL                             R0 2 1
        7 GETIMPORT                        R1 K5 [require]
        9 GETTABLEKS                       R5 R0 K6 ["Src"]
       11 GETTABLEKS                       R4 R5 K7 ["SharedFeatures"]
       13 GETTABLEKS                       R3 R4 K8 ["ContextMenu"]
       15 GETTABLEKS                       R2 R3 K9 ["ContextMenuTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R4 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R4 K11 ["Explorer"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R5 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R5 K12 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R7 R0 K6 ["Src"]
       36 GETTABLEKS                       R6 R7 K13 ["Util"]
       38 GETTABLEKS                       R5 R6 K14 ["cleanHoles"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R8 R0 K6 ["Src"]
       45 GETTABLEKS                       R7 R8 K15 ["Flags"]
       47 GETTABLEKS                       R6 R7 K16 ["getFFlagDevAssetExport"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R9 R0 K6 ["Src"]
       54 GETTABLEKS                       R8 R9 K15 ["Flags"]
       56 GETTABLEKS                       R7 R8 K17 ["getFFlagEnableReimport"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R10 R0 K6 ["Src"]
       63 GETTABLEKS                       R9 R10 K15 ["Flags"]
       65 GETTABLEKS                       R8 R9 K18 ["getFFlagExplorerAllActionsContextual"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R11 R0 K6 ["Src"]
       72 GETTABLEKS                       R10 R11 K15 ["Flags"]
       74 GETTABLEKS                       R9 R10 K19 ["getFFlagForgottenExplorerVerbs"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R12 R0 K6 ["Src"]
       81 GETTABLEKS                       R11 R12 K15 ["Flags"]
       83 GETTABLEKS                       R10 R11 K20 ["getFFlagLuaExplorerExternalEditor"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R13 R0 K6 ["Src"]
       90 GETTABLEKS                       R12 R13 K15 ["Flags"]
       92 GETTABLEKS                       R11 R12 K21 ["getFFlagLuaExplorerFileSync"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R14 R0 K6 ["Src"]
       99 GETTABLEKS                       R13 R14 K15 ["Flags"]
      101 GETTABLEKS                       R12 R13 K22 ["getFFlagLuaExplorerHierarchySync"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R15 R0 K6 ["Src"]
      108 GETTABLEKS                       R14 R15 K15 ["Flags"]
      110 GETTABLEKS                       R13 R14 K23 ["getFFlagLuaExplorerHierarchySyncServices"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R16 R0 K6 ["Src"]
      117 GETTABLEKS                       R15 R16 K15 ["Flags"]
      119 GETTABLEKS                       R14 R15 K24 ["getFFlagLuaExplorerPackages"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K5 [require]
      124 GETTABLEKS                       R17 R0 K6 ["Src"]
      126 GETTABLEKS                       R16 R17 K15 ["Flags"]
      128 GETTABLEKS                       R15 R16 K25 ["getFFlagPluginGuiServiceExplorerVerbsManIReallyHopeTheseAreTheLastOnes"]
      130 CALL                             R14 1 1
      131 GETTABLEKS                       R16 R3 K13 ["Util"]
      133 GETTABLEKS                       R15 R16 K26 ["StudioUri"]
      135 DUPCLOSURE                       R16 K27 [PROTO_0]
      136 CAPTURE                          VAL R15
      137 DUPCLOSURE                       R17 K28 [PROTO_1]
      138 DUPCLOSURE                       R18 K29 [PROTO_2]
      139 CAPTURE                          VAL R15
      140 NEWTABLE                         R19 0 0
      142 DUPCLOSURE                       R20 K30 [PROTO_3]
      143 DUPCLOSURE                       R21 K31 [PROTO_4]
      144 MOVE                             R22 R9
      145 CALL                             R22 0 1
      146 JUMPIFNOT                        R22 ; [+38]
      147 MOVE                             R22 R11
      148 CALL                             R22 0 1
      149 JUMPIFNOT                        R22 ; [+35]
      150 NEWTABLE                         R24 0 3
      152 MOVE                             R25 R16
      153 GETTABLEKS                       R26 R15 K32 ["fromAction"]
      155 LOADK                            R27 K33 ["ScriptTools"]
      156 LOADK                            R28 K34 ["Open"]
      157 CALL                             R26 2 1
      158 LOADK                            R27 K35 ["NonServices"]
      159 CALL                             R25 2 1
      160 MOVE                             R26 R16
      161 GETTABLEKS                       R27 R15 K32 ["fromAction"]
      163 LOADK                            R28 K36 ["FileSync"]
      164 LOADK                            R29 K37 ["OpenInExternalEditor"]
      165 CALL                             R27 2 1
      166 LOADK                            R28 K35 ["NonServices"]
      167 CALL                             R26 2 1
      168 MOVE                             R27 R16
      169 GETTABLEKS                       R28 R15 K32 ["fromAction"]
      171 LOADK                            R29 K33 ["ScriptTools"]
      172 LOADK                            R30 K38 ["OpenScriptHistory"]
      173 CALL                             R28 2 1
      174 LOADK                            R29 K35 ["NonServices"]
      175 CALL                             R27 2 1
      176 SETLIST                          R24 R25 3 [1]
      178 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      180 MOVE                             R23 R19
      181 GETIMPORT                        R22 K41 [table.insert]
      183 CALL                             R22 2 0
      184 JUMP                             ; [+26]
      185 NEWTABLE                         R24 0 2
      187 MOVE                             R25 R16
      188 GETTABLEKS                       R26 R15 K32 ["fromAction"]
      190 LOADK                            R27 K33 ["ScriptTools"]
      191 LOADK                            R28 K34 ["Open"]
      192 CALL                             R26 2 1
      193 LOADK                            R27 K35 ["NonServices"]
      194 CALL                             R25 2 1
      195 MOVE                             R26 R16
      196 GETTABLEKS                       R27 R15 K32 ["fromAction"]
      198 LOADK                            R28 K33 ["ScriptTools"]
      199 LOADK                            R29 K38 ["OpenScriptHistory"]
      200 CALL                             R27 2 1
      201 LOADK                            R28 K35 ["NonServices"]
      202 CALL                             R26 2 1
      203 SETLIST                          R24 R25 2 [1]
      205 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      207 MOVE                             R23 R19
      208 GETIMPORT                        R22 K41 [table.insert]
      210 CALL                             R22 2 0
      211 NEWTABLE                         R24 0 7
      213 MOVE                             R25 R16
      214 GETTABLEKS                       R26 R15 K32 ["fromAction"]
      216 LOADK                            R27 K42 ["Common"]
      217 LOADK                            R28 K43 ["Cut"]
      218 CALL                             R26 2 1
      219 LOADK                            R27 K35 ["NonServices"]
      220 CALL                             R25 2 1
      221 MOVE                             R26 R16
      222 GETTABLEKS                       R27 R15 K32 ["fromAction"]
      224 LOADK                            R28 K42 ["Common"]
      225 LOADK                            R29 K44 ["Copy"]
      226 CALL                             R27 2 1
      227 LOADK                            R28 K35 ["NonServices"]
      228 CALL                             R26 2 1
      229 MOVE                             R27 R16
      230 GETTABLEKS                       R28 R15 K32 ["fromAction"]
      232 LOADK                            R29 K42 ["Common"]
      233 LOADK                            R30 K45 ["PasteInto"]
      234 CALL                             R28 2 1
      235 LOADK                            R29 K46 ["All"]
      236 CALL                             R27 2 1
      237 MOVE                             R28 R16
      238 GETTABLEKS                       R29 R15 K32 ["fromAction"]
      240 LOADK                            R30 K47 ["BuilderTools"]
      241 LOADK                            R31 K48 ["PasteIntoAtOriginalLocation"]
      242 CALL                             R29 2 1
      243 LOADK                            R30 K46 ["All"]
      244 CALL                             R28 2 1
      245 MOVE                             R29 R16
      246 GETTABLEKS                       R30 R15 K32 ["fromAction"]
      248 LOADK                            R31 K42 ["Common"]
      249 LOADK                            R32 K49 ["Duplicate"]
      250 CALL                             R30 2 1
      251 LOADK                            R31 K35 ["NonServices"]
      252 CALL                             R29 2 1
      253 MOVE                             R30 R16
      254 GETTABLEKS                       R31 R15 K32 ["fromAction"]
      256 LOADK                            R32 K42 ["Common"]
      257 LOADK                            R33 K50 ["Delete"]
      258 CALL                             R31 2 1
      259 LOADK                            R32 K35 ["NonServices"]
      260 CALL                             R30 2 1
      261 MOVE                             R31 R16
      262 GETTABLEKS                       R32 R15 K32 ["fromAction"]
      264 LOADK                            R33 K11 ["Explorer"]
      265 LOADK                            R34 K51 ["Rename"]
      266 CALL                             R32 2 1
      267 LOADK                            R33 K46 ["All"]
      268 LOADNIL                          R34
      269 GETTABLEKS                       R38 R2 K52 ["Data"]
      271 GETTABLEKS                       R37 R38 K8 ["ContextMenu"]
      273 GETTABLEKS                       R36 R37 K53 ["coreItems"]
      275 GETTABLEKS                       R35 R36 K54 ["rename"]
      277 CALL                             R31 4 1
      278 SETLIST                          R24 R25 7 [1]
      280 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      282 MOVE                             R23 R19
      283 GETIMPORT                        R22 K41 [table.insert]
      285 CALL                             R22 2 0
      286 NEWTABLE                         R24 0 4
      288 MOVE                             R25 R16
      289 GETTABLEKS                       R26 R15 K32 ["fromAction"]
      291 LOADK                            R27 K47 ["BuilderTools"]
      292 LOADK                            R28 K55 ["GroupAsModel"]
      293 CALL                             R26 2 1
      294 LOADK                            R27 K35 ["NonServices"]
      295 CALL                             R25 2 1
      296 MOVE                             R26 R16
      297 GETTABLEKS                       R27 R15 K32 ["fromAction"]
      299 LOADK                            R28 K47 ["BuilderTools"]
      300 LOADK                            R29 K56 ["GroupAsFolder"]
      301 CALL                             R27 2 1
      302 LOADK                            R28 K35 ["NonServices"]
      303 CALL                             R26 2 1
      304 MOVE                             R27 R16
      305 GETTABLEKS                       R28 R15 K32 ["fromAction"]
      307 LOADK                            R29 K47 ["BuilderTools"]
      308 LOADK                            R30 K57 ["Ungroup"]
      309 CALL                             R28 2 1
      310 LOADK                            R29 K35 ["NonServices"]
      311 CALL                             R27 2 1
      312 NEWTABLE                         R29 0 1
      314 NEWTABLE                         R30 0 4
      316 MOVE                             R31 R16
      317 GETTABLEKS                       R32 R15 K32 ["fromAction"]
      319 LOADK                            R33 K47 ["BuilderTools"]
      320 LOADK                            R34 K58 ["UnionSelection"]
      321 CALL                             R32 2 1
      322 LOADK                            R33 K35 ["NonServices"]
      323 CALL                             R31 2 1
      324 MOVE                             R32 R16
      325 GETTABLEKS                       R33 R15 K32 ["fromAction"]
      327 LOADK                            R34 K47 ["BuilderTools"]
      328 LOADK                            R35 K59 ["IntersectSelection"]
      329 CALL                             R33 2 1
      330 LOADK                            R34 K35 ["NonServices"]
      331 CALL                             R32 2 1
      332 MOVE                             R33 R16
      333 GETTABLEKS                       R34 R15 K32 ["fromAction"]
      335 LOADK                            R35 K47 ["BuilderTools"]
      336 LOADK                            R36 K60 ["NegateSelection"]
      337 CALL                             R34 2 1
      338 LOADK                            R35 K35 ["NonServices"]
      339 CALL                             R33 2 1
      340 MOVE                             R34 R16
      341 GETTABLEKS                       R35 R15 K32 ["fromAction"]
      343 LOADK                            R36 K47 ["BuilderTools"]
      344 LOADK                            R37 K61 ["SeparateSelection"]
      345 CALL                             R35 2 1
      346 LOADK                            R36 K35 ["NonServices"]
      347 CALL                             R34 2 1
      348 SETLIST                          R30 R31 4 [1]
      350 SETLIST                          R29 R30 1 [1]
      352 DUPTABLE                         R28 K64 [{"key", "source"}]
      353 LOADK                            R30 K65 ["solidModeling"]
      354 SETTABLEKS                       R30 R28 K62 ["key"]
      356 DUPTABLE                         R30 K68 [{"type", "submenuCategories"}]
      357 LOADK                            R31 K69 ["submenu"]
      358 SETTABLEKS                       R31 R30 K66 ["type"]
      360 SETTABLEKS                       R29 R30 K67 ["submenuCategories"]
      362 SETTABLEKS                       R30 R28 K63 ["source"]
      364 SETLIST                          R24 R25 4 [1]
      366 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      368 MOVE                             R23 R19
      369 GETIMPORT                        R22 K41 [table.insert]
      371 CALL                             R22 2 0
      372 MOVE                             R23 R19
      373 MOVE                             R24 R4
      374 NEWTABLE                         R25 0 5
      376 NEWTABLE                         R27 0 1
      378 NEWTABLE                         R28 0 3
      380 MOVE                             R29 R16
      381 GETTABLEKS                       R30 R15 K32 ["fromAction"]
      383 LOADK                            R31 K47 ["BuilderTools"]
      384 LOADK                            R32 K70 ["InsertPartIntoSelection"]
      385 CALL                             R30 2 1
      386 LOADK                            R31 K46 ["All"]
      387 CALL                             R29 2 1
      388 MOVE                             R30 R16
      389 GETTABLEKS                       R31 R15 K32 ["fromAction"]
      391 LOADK                            R32 K47 ["BuilderTools"]
      392 LOADK                            R33 K71 ["InsertObject"]
      393 CALL                             R31 2 1
      394 LOADK                            R32 K46 ["All"]
      395 CALL                             R30 2 1
      396 MOVE                             R31 R16
      397 GETTABLEKS                       R32 R15 K32 ["fromAction"]
      399 LOADK                            R33 K47 ["BuilderTools"]
      400 LOADK                            R34 K72 ["InsertFromFile"]
      401 CALL                             R32 2 1
      402 LOADK                            R33 K46 ["All"]
      403 CALL                             R31 2 1
      404 SETLIST                          R28 R29 3 [1]
      406 SETLIST                          R27 R28 1 [1]
      408 DUPTABLE                         R26 K64 [{"key", "source"}]
      409 LOADK                            R28 K40 ["insert"]
      410 SETTABLEKS                       R28 R26 K62 ["key"]
      412 DUPTABLE                         R28 K68 [{"type", "submenuCategories"}]
      413 LOADK                            R29 K69 ["submenu"]
      414 SETTABLEKS                       R29 R28 K66 ["type"]
      416 SETTABLEKS                       R27 R28 K67 ["submenuCategories"]
      418 SETTABLEKS                       R28 R26 K63 ["source"]
      420 MOVE                             R28 R4
      421 NEWTABLE                         R29 0 1
      423 NEWTABLE                         R30 0 4
      425 MOVE                             R32 R8
      426 CALL                             R32 0 1
      427 JUMPIFNOT                        R32 ; [+10]
      428 MOVE                             R31 R16
      429 GETTABLEKS                       R32 R15 K32 ["fromAction"]
      431 LOADK                            R33 K42 ["Common"]
      432 LOADK                            R34 K73 ["SelectParents"]
      433 CALL                             R32 2 1
      434 LOADK                            R33 K35 ["NonServices"]
      435 LOADNIL                          R34
      436 CALL                             R31 3 1
      437 JUMP                             ; [+1]
      438 LOADNIL                          R31
      439 MOVE                             R33 R8
      440 CALL                             R33 0 1
      441 JUMPIFNOT                        R33 ; [+10]
      442 MOVE                             R32 R16
      443 GETTABLEKS                       R33 R15 K32 ["fromAction"]
      445 LOADK                            R34 K42 ["Common"]
      446 LOADK                            R35 K74 ["SelectChildren"]
      447 CALL                             R33 2 1
      448 LOADK                            R34 K46 ["All"]
      449 LOADNIL                          R35
      450 CALL                             R32 3 1
      451 JUMP                             ; [+1]
      452 LOADNIL                          R32
      453 MOVE                             R33 R16
      454 GETTABLEKS                       R34 R15 K32 ["fromAction"]
      456 LOADK                            R35 K11 ["Explorer"]
      457 LOADK                            R36 K75 ["ExpandAll"]
      458 CALL                             R34 2 1
      459 LOADK                            R35 K46 ["All"]
      460 LOADNIL                          R36
      461 GETTABLEKS                       R40 R2 K52 ["Data"]
      463 GETTABLEKS                       R39 R40 K8 ["ContextMenu"]
      465 GETTABLEKS                       R38 R39 K53 ["coreItems"]
      467 GETTABLEKS                       R37 R38 K76 ["expandAll"]
      469 CALL                             R33 4 1
      470 MOVE                             R34 R16
      471 GETTABLEKS                       R35 R15 K32 ["fromAction"]
      473 LOADK                            R36 K11 ["Explorer"]
      474 LOADK                            R37 K77 ["CollapseAll"]
      475 CALL                             R35 2 1
      476 LOADK                            R36 K46 ["All"]
      477 LOADNIL                          R37
      478 GETTABLEKS                       R41 R2 K52 ["Data"]
      480 GETTABLEKS                       R40 R41 K8 ["ContextMenu"]
      482 GETTABLEKS                       R39 R40 K53 ["coreItems"]
      484 GETTABLEKS                       R38 R39 K78 ["collapseAll"]
      486 CALL                             R34 4 1
      487 SETLIST                          R30 R31 4 [1]
      489 SETLIST                          R29 R30 1 [1]
      491 CALL                             R28 1 1
      492 DUPTABLE                         R27 K64 [{"key", "source"}]
      493 LOADK                            R29 K79 ["hierarchy"]
      494 SETTABLEKS                       R29 R27 K62 ["key"]
      496 DUPTABLE                         R29 K68 [{"type", "submenuCategories"}]
      497 LOADK                            R30 K69 ["submenu"]
      498 SETTABLEKS                       R30 R29 K66 ["type"]
      500 SETTABLEKS                       R28 R29 K67 ["submenuCategories"]
      502 SETTABLEKS                       R29 R27 K63 ["source"]
      504 MOVE                             R28 R16
      505 GETTABLEKS                       R29 R15 K32 ["fromAction"]
      507 LOADK                            R30 K47 ["BuilderTools"]
      508 LOADK                            R31 K80 ["ZoomExtents"]
      509 CALL                             R29 2 1
      510 LOADK                            R30 K35 ["NonServices"]
      511 MOVE                             R31 R20
      512 CALL                             R28 3 1
      513 MOVE                             R29 R16
      514 GETTABLEKS                       R30 R15 K32 ["fromAction"]
      516 LOADK                            R31 K47 ["BuilderTools"]
      517 LOADK                            R32 K81 ["ShowOrientationIndicator"]
      518 CALL                             R30 2 1
      519 LOADK                            R31 K35 ["NonServices"]
      520 CALL                             R29 2 1
      521 MOVE                             R30 R16
      522 GETTABLEKS                       R31 R15 K32 ["fromAction"]
      524 LOADK                            R32 K33 ["ScriptTools"]
      525 LOADK                            R33 K82 ["ToggleScripts"]
      526 CALL                             R31 2 1
      527 LOADK                            R32 K35 ["NonServices"]
      528 CALL                             R30 2 1
      529 SETLIST                          R25 R26 5 [1]
      531 CALL                             R24 1 -1
      532 FASTCALL                         TABLE_INSERT ; [+2]
      533 GETIMPORT                        R22 K41 [table.insert]
      535 CALL                             R22 -1 0
      536 MOVE                             R22 R14
      537 CALL                             R22 0 1
      538 JUMPIFNOT                        R22 ; [+43]
      539 NEWTABLE                         R24 0 4
      541 MOVE                             R25 R16
      542 GETTABLEKS                       R26 R15 K32 ["fromAction"]
      544 LOADK                            R27 K83 ["PluginDebugging"]
      545 LOADK                            R28 K84 ["SaveAndReloadDebuggablePlugin"]
      546 CALL                             R26 2 1
      547 LOADK                            R27 K46 ["All"]
      548 CALL                             R25 2 1
      549 MOVE                             R26 R16
      550 GETTABLEKS                       R27 R15 K32 ["fromAction"]
      552 LOADK                            R28 K83 ["PluginDebugging"]
      553 LOADK                            R29 K85 ["ReloadDebuggablePlugin"]
      554 CALL                             R27 2 1
      555 LOADK                            R28 K46 ["All"]
      556 CALL                             R26 2 1
      557 MOVE                             R27 R16
      558 GETTABLEKS                       R28 R15 K32 ["fromAction"]
      560 LOADK                            R29 K83 ["PluginDebugging"]
      561 LOADK                            R30 K86 ["SaveAndReloadAllDebuggablePlugins"]
      562 CALL                             R28 2 1
      563 LOADK                            R29 K46 ["All"]
      564 MOVE                             R30 R21
      565 CALL                             R27 3 1
      566 MOVE                             R28 R16
      567 GETTABLEKS                       R29 R15 K32 ["fromAction"]
      569 LOADK                            R30 K83 ["PluginDebugging"]
      570 LOADK                            R31 K87 ["SaveBuildAndReloadDebuggablePlugin"]
      571 CALL                             R29 2 1
      572 LOADK                            R30 K46 ["All"]
      573 CALL                             R28 2 1
      574 SETLIST                          R24 R25 4 [1]
      576 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      578 MOVE                             R23 R19
      579 GETIMPORT                        R22 K41 [table.insert]
      581 CALL                             R22 2 0
      582 MOVE                             R22 R10
      583 CALL                             R22 0 1
      584 JUMPIFNOT                        R22 ; [+42]
      585 NEWTABLE                         R24 0 4
      587 MOVE                             R25 R16
      588 GETTABLEKS                       R26 R15 K32 ["fromAction"]
      590 LOADK                            R27 K36 ["FileSync"]
      591 LOADK                            R28 K88 ["StopScriptSync"]
      592 CALL                             R26 2 1
      593 LOADK                            R27 K35 ["NonServices"]
      594 CALL                             R25 2 1
      595 MOVE                             R26 R16
      596 GETTABLEKS                       R27 R15 K32 ["fromAction"]
      598 LOADK                            R28 K36 ["FileSync"]
      599 LOADK                            R29 K89 ["StartScriptSync"]
      600 CALL                             R27 2 1
      601 LOADK                            R28 K35 ["NonServices"]
      602 CALL                             R26 2 1
      603 MOVE                             R27 R16
      604 GETTABLEKS                       R28 R15 K32 ["fromAction"]
      606 LOADK                            R29 K36 ["FileSync"]
      607 LOADK                            R30 K90 ["ResumeScriptSync"]
      608 CALL                             R28 2 1
      609 LOADK                            R29 K35 ["NonServices"]
      610 CALL                             R27 2 1
      611 MOVE                             R28 R16
      612 GETTABLEKS                       R29 R15 K32 ["fromAction"]
      614 LOADK                            R30 K36 ["FileSync"]
      615 LOADK                            R31 K91 ["ShowInFolder"]
      616 CALL                             R29 2 1
      617 LOADK                            R30 K35 ["NonServices"]
      618 CALL                             R28 2 1
      619 SETLIST                          R24 R25 4 [1]
      621 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      623 MOVE                             R23 R19
      624 GETIMPORT                        R22 K41 [table.insert]
      626 CALL                             R22 2 0
      627 MOVE                             R22 R11
      628 CALL                             R22 0 1
      629 JUMPIFNOT                        R22 ; [+100]
      630 MOVE                             R23 R12
      631 CALL                             R23 0 1
      632 JUMPIFNOT                        R23 ; [+2]
      633 LOADK                            R22 K46 ["All"]
      634 JUMP                             ; [+1]
      635 LOADK                            R22 K35 ["NonServices"]
      636 NEWTABLE                         R25 0 1
      638 NEWTABLE                         R27 0 1
      640 NEWTABLE                         R28 0 8
      642 MOVE                             R29 R16
      643 GETTABLEKS                       R30 R15 K32 ["fromAction"]
      645 LOADK                            R31 K36 ["FileSync"]
      646 LOADK                            R32 K88 ["StopScriptSync"]
      647 CALL                             R30 2 1
      648 MOVE                             R31 R22
      649 CALL                             R29 2 1
      650 MOVE                             R30 R16
      651 GETTABLEKS                       R31 R15 K32 ["fromAction"]
      653 LOADK                            R32 K36 ["FileSync"]
      654 LOADK                            R33 K92 ["StartSyncToNewFile"]
      655 CALL                             R31 2 1
      656 LOADK                            R32 K35 ["NonServices"]
      657 CALL                             R30 2 1
      658 MOVE                             R31 R16
      659 GETTABLEKS                       R32 R15 K32 ["fromAction"]
      661 LOADK                            R33 K36 ["FileSync"]
      662 LOADK                            R34 K93 ["StartSyncToExistingFile"]
      663 CALL                             R32 2 1
      664 LOADK                            R33 K35 ["NonServices"]
      665 CALL                             R31 2 1
      666 MOVE                             R32 R16
      667 GETTABLEKS                       R33 R15 K32 ["fromAction"]
      669 LOADK                            R34 K36 ["FileSync"]
      670 LOADK                            R35 K94 ["StartSyncSelectedInstancesTo"]
      671 CALL                             R33 2 1
      672 MOVE                             R34 R22
      673 CALL                             R32 2 1
      674 MOVE                             R33 R16
      675 GETTABLEKS                       R34 R15 K32 ["fromAction"]
      677 LOADK                            R35 K36 ["FileSync"]
      678 LOADK                            R36 K95 ["StartSyncToDirectory"]
      679 CALL                             R34 2 1
      680 MOVE                             R35 R22
      681 CALL                             R33 2 1
      682 MOVE                             R34 R16
      683 GETTABLEKS                       R35 R15 K32 ["fromAction"]
      685 LOADK                            R36 K36 ["FileSync"]
      686 LOADK                            R37 K90 ["ResumeScriptSync"]
      687 CALL                             R35 2 1
      688 MOVE                             R36 R22
      689 CALL                             R34 2 1
      690 MOVE                             R35 R16
      691 GETTABLEKS                       R36 R15 K32 ["fromAction"]
      693 LOADK                            R37 K36 ["FileSync"]
      694 LOADK                            R38 K91 ["ShowInFolder"]
      695 CALL                             R36 2 1
      696 MOVE                             R37 R22
      697 CALL                             R35 2 1
      698 MOVE                             R36 R16
      699 GETTABLEKS                       R37 R15 K32 ["fromAction"]
      701 LOADK                            R38 K36 ["FileSync"]
      702 LOADK                            R39 K96 ["SelectSyncingRoot"]
      703 CALL                             R37 2 1
      704 MOVE                             R38 R22
      705 CALL                             R36 2 1
      706 SETLIST                          R28 R29 8 [1]
      708 SETLIST                          R27 R28 1 [1]
      710 DUPTABLE                         R26 K64 [{"key", "source"}]
      711 LOADK                            R28 K97 ["scriptSync"]
      712 SETTABLEKS                       R28 R26 K62 ["key"]
      714 DUPTABLE                         R28 K68 [{"type", "submenuCategories"}]
      715 LOADK                            R29 K69 ["submenu"]
      716 SETTABLEKS                       R29 R28 K66 ["type"]
      718 SETTABLEKS                       R27 R28 K67 ["submenuCategories"]
      720 SETTABLEKS                       R28 R26 K63 ["source"]
      722 SETLIST                          R25 R26 1 [1]
      724 FASTCALL2                        TABLE_INSERT R19 R25 ; [+4]
      726 MOVE                             R24 R19
      727 GETIMPORT                        R23 K41 [table.insert]
      729 CALL                             R23 2 0
      730 MOVE                             R22 R13
      731 CALL                             R22 0 1
      732 JUMPIFNOT                        R22 ; [+87]
      733 NEWTABLE                         R24 0 4
      735 MOVE                             R25 R16
      736 GETTABLEKS                       R26 R15 K32 ["fromAction"]
      738 LOADK                            R27 K98 ["PackageTools"]
      739 LOADK                            R28 K99 ["PublishPackage"]
      740 CALL                             R26 2 1
      741 LOADK                            R27 K35 ["NonServices"]
      742 CALL                             R25 2 1
      743 MOVE                             R26 R16
      744 GETTABLEKS                       R27 R15 K32 ["fromAction"]
      746 LOADK                            R28 K98 ["PackageTools"]
      747 LOADK                            R29 K100 ["UndoPackageChanges"]
      748 CALL                             R27 2 1
      749 LOADK                            R28 K35 ["NonServices"]
      750 CALL                             R26 2 1
      751 MOVE                             R27 R16
      752 GETTABLEKS                       R28 R15 K32 ["fromAction"]
      754 LOADK                            R29 K98 ["PackageTools"]
      755 LOADK                            R30 K101 ["GetLatestPackage"]
      756 CALL                             R28 2 1
      757 LOADK                            R29 K35 ["NonServices"]
      758 CALL                             R27 2 1
      759 NEWTABLE                         R29 0 1
      761 NEWTABLE                         R30 0 4
      763 MOVE                             R31 R16
      764 GETTABLEKS                       R32 R15 K32 ["fromAction"]
      766 LOADK                            R33 K98 ["PackageTools"]
      767 LOADK                            R34 K102 ["DiffPackageAgainstLatest"]
      768 CALL                             R32 2 1
      769 LOADK                            R33 K35 ["NonServices"]
      770 CALL                             R31 2 1
      771 MOVE                             R32 R16
      772 GETTABLEKS                       R33 R15 K32 ["fromAction"]
      774 LOADK                            R34 K98 ["PackageTools"]
      775 LOADK                            R35 K103 ["MassUpdate"]
      776 CALL                             R33 2 1
      777 LOADK                            R34 K35 ["NonServices"]
      778 CALL                             R32 2 1
      779 MOVE                             R33 R16
      780 GETTABLEKS                       R34 R15 K32 ["fromAction"]
      782 LOADK                            R35 K98 ["PackageTools"]
      783 LOADK                            R36 K104 ["ShowPackagesDiff"]
      784 CALL                             R34 2 1
      785 LOADK                            R35 K35 ["NonServices"]
      786 CALL                             R33 2 1
      787 MOVE                             R34 R16
      788 GETTABLEKS                       R35 R15 K32 ["fromAction"]
      790 LOADK                            R36 K98 ["PackageTools"]
      791 LOADK                            R37 K105 ["PackageDetails"]
      792 CALL                             R35 2 1
      793 LOADK                            R36 K35 ["NonServices"]
      794 CALL                             R34 2 1
      795 SETLIST                          R30 R31 4 [1]
      797 SETLIST                          R29 R30 1 [1]
      799 DUPTABLE                         R28 K64 [{"key", "source"}]
      800 LOADK                            R30 K106 ["morePackageOptions"]
      801 SETTABLEKS                       R30 R28 K62 ["key"]
      803 DUPTABLE                         R30 K68 [{"type", "submenuCategories"}]
      804 LOADK                            R31 K69 ["submenu"]
      805 SETTABLEKS                       R31 R30 K66 ["type"]
      807 SETTABLEKS                       R29 R30 K67 ["submenuCategories"]
      809 SETTABLEKS                       R30 R28 K63 ["source"]
      811 SETLIST                          R24 R25 4 [1]
      813 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      815 MOVE                             R23 R19
      816 GETIMPORT                        R22 K41 [table.insert]
      818 CALL                             R22 2 0
      819 JUMP                             ; [+62]
      820 NEWTABLE                         R24 0 2
      822 MOVE                             R25 R16
      823 GETTABLEKS                       R26 R15 K32 ["fromAction"]
      825 LOADK                            R27 K98 ["PackageTools"]
      826 LOADK                            R28 K99 ["PublishPackage"]
      827 CALL                             R26 2 1
      828 LOADK                            R27 K35 ["NonServices"]
      829 CALL                             R25 2 1
      830 NEWTABLE                         R27 0 1
      832 NEWTABLE                         R28 0 3
      834 MOVE                             R29 R16
      835 GETTABLEKS                       R30 R15 K32 ["fromAction"]
      837 LOADK                            R31 K98 ["PackageTools"]
      838 LOADK                            R32 K103 ["MassUpdate"]
      839 CALL                             R30 2 1
      840 LOADK                            R31 K35 ["NonServices"]
      841 CALL                             R29 2 1
      842 MOVE                             R30 R16
      843 GETTABLEKS                       R31 R15 K32 ["fromAction"]
      845 LOADK                            R32 K98 ["PackageTools"]
      846 LOADK                            R33 K104 ["ShowPackagesDiff"]
      847 CALL                             R31 2 1
      848 LOADK                            R32 K35 ["NonServices"]
      849 CALL                             R30 2 1
      850 MOVE                             R31 R16
      851 GETTABLEKS                       R32 R15 K32 ["fromAction"]
      853 LOADK                            R33 K98 ["PackageTools"]
      854 LOADK                            R34 K105 ["PackageDetails"]
      855 CALL                             R32 2 1
      856 LOADK                            R33 K35 ["NonServices"]
      857 CALL                             R31 2 1
      858 SETLIST                          R28 R29 3 [1]
      860 SETLIST                          R27 R28 1 [1]
      862 DUPTABLE                         R26 K64 [{"key", "source"}]
      863 LOADK                            R28 K106 ["morePackageOptions"]
      864 SETTABLEKS                       R28 R26 K62 ["key"]
      866 DUPTABLE                         R28 K68 [{"type", "submenuCategories"}]
      867 LOADK                            R29 K69 ["submenu"]
      868 SETTABLEKS                       R29 R28 K66 ["type"]
      870 SETTABLEKS                       R27 R28 K67 ["submenuCategories"]
      872 SETTABLEKS                       R28 R26 K63 ["source"]
      874 SETLIST                          R24 R25 2 [1]
      876 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      878 MOVE                             R23 R19
      879 GETIMPORT                        R22 K41 [table.insert]
      881 CALL                             R22 2 0
      882 GETIMPORT                        R22 K108 [xpcall]
      884 DUPCLOSURE                       R23 K109 [PROTO_5]
      885 CAPTURE                          VAL R18
      886 DUPCLOSURE                       R24 K110 [PROTO_6]
      887 CAPTURE                          VAL R18
      888 CALL                             R22 2 2
      889 MOVE                             R24 R6
      890 CALL                             R24 0 1
      891 JUMPIFNOT                        R24 ; [+78]
      892 GETIMPORT                        R24 K5 [require]
      894 GETTABLEKS                       R26 R0 K10 ["Packages"]
      896 GETTABLEKS                       R25 R26 K111 ["SharedPluginConstants"]
      898 CALL                             R24 1 1
      899 GETTABLEKS                       R26 R24 K112 ["REIMPORT"]
      901 GETTABLEKS                       R25 R26 K113 ["ACTION_ID"]
      903 GETTABLEKS                       R27 R24 K112 ["REIMPORT"]
      905 GETTABLEKS                       R26 R27 K114 ["ACTION_EVENTS"]
      907 NEWTABLE                         R29 0 1
      909 NEWTABLE                         R31 0 1
      911 NEWTABLE                         R32 0 3
      913 MOVE                             R33 R16
      914 GETTABLEKS                       R35 R26 K112 ["REIMPORT"]
      916 GETTABLEKS                       R36 R15 K32 ["fromAction"]
      918 MOVE                             R37 R25
      919 MOVE                             R38 R35
      920 CALL                             R36 2 1
      921 MOVE                             R34 R36
      922 LOADK                            R35 K35 ["NonServices"]
      923 CALL                             R33 2 1
      924 MOVE                             R34 R16
      925 GETTABLEKS                       R36 R26 K115 ["REIMPORT_RELATIVE_TO_THIS"]
      927 GETTABLEKS                       R37 R15 K32 ["fromAction"]
      929 MOVE                             R38 R25
      930 MOVE                             R39 R36
      931 CALL                             R37 2 1
      932 MOVE                             R35 R37
      933 LOADK                            R36 K35 ["NonServices"]
      934 CALL                             R34 2 1
      935 MOVE                             R35 R16
      936 GETTABLEKS                       R37 R26 K116 ["CONFIGURE"]
      938 GETTABLEKS                       R38 R15 K32 ["fromAction"]
      940 MOVE                             R39 R25
      941 MOVE                             R40 R37
      942 CALL                             R38 2 1
      943 MOVE                             R36 R38
      944 LOADK                            R37 K35 ["NonServices"]
      945 CALL                             R35 2 1
      946 SETLIST                          R32 R33 3 [1]
      948 SETLIST                          R31 R32 1 [1]
      950 DUPTABLE                         R30 K64 [{"key", "source"}]
      951 LOADK                            R32 K117 ["Reimport"]
      952 SETTABLEKS                       R32 R30 K62 ["key"]
      954 DUPTABLE                         R32 K68 [{"type", "submenuCategories"}]
      955 LOADK                            R33 K69 ["submenu"]
      956 SETTABLEKS                       R33 R32 K66 ["type"]
      958 SETTABLEKS                       R31 R32 K67 ["submenuCategories"]
      960 SETTABLEKS                       R32 R30 K63 ["source"]
      962 SETLIST                          R29 R30 1 [1]
      964 FASTCALL2                        TABLE_INSERT R19 R29 ; [+4]
      966 MOVE                             R28 R19
      967 GETIMPORT                        R27 K41 [table.insert]
      969 CALL                             R27 2 0
      970 MOVE                             R24 R5
      971 CALL                             R24 0 1
      972 JUMPIF                           R24 ; [+102]
      973 MOVE                             R25 R19
      974 MOVE                             R26 R4
      975 NEWTABLE                         R27 0 4
      977 MOVE                             R29 R7
      978 CALL                             R29 0 1
      979 JUMPIFNOT                        R29 ; [+9]
      980 MOVE                             R28 R16
      981 GETTABLEKS                       R29 R15 K32 ["fromAction"]
      983 LOADK                            R30 K118 ["LocalizationTools"]
      984 LOADK                            R31 K119 ["SaveCsv"]
      985 CALL                             R29 2 1
      986 LOADK                            R30 K35 ["NonServices"]
      987 CALL                             R28 2 1
      988 JUMP                             ; [+1]
      989 LOADNIL                          R28
      990 MOVE                             R30 R7
      991 CALL                             R30 0 1
      992 JUMPIFNOT                        R30 ; [+9]
      993 MOVE                             R29 R16
      994 GETTABLEKS                       R30 R15 K32 ["fromAction"]
      996 LOADK                            R31 K118 ["LocalizationTools"]
      997 LOADK                            R32 K120 ["LoadCsv"]
      998 CALL                             R30 2 1
      999 LOADK                            R31 K35 ["NonServices"]
     1000 CALL                             R29 2 1
     1001 JUMP                             ; [+1]
     1002 LOADNIL                          R29
     1003 MOVE                             R30 R16
     1004 MOVE                             R31 R23
     1005 LOADK                            R32 K35 ["NonServices"]
     1006 CALL                             R30 2 1
     1007 NEWTABLE                         R32 0 1
     1009 NEWTABLE                         R33 0 5
     1011 MOVE                             R34 R16
     1012 GETTABLEKS                       R35 R15 K32 ["fromAction"]
     1014 LOADK                            R36 K121 ["Export"]
     1015 LOADK                            R37 K122 ["PublishSelectionToRoblox"]
     1016 CALL                             R35 2 1
     1017 LOADK                            R36 K35 ["NonServices"]
     1018 CALL                             R34 2 1
     1019 MOVE                             R35 R16
     1020 GETTABLEKS                       R36 R15 K32 ["fromAction"]
     1022 LOADK                            R37 K121 ["Export"]
     1023 LOADK                            R38 K123 ["SaveSelectionToFile"]
     1024 CALL                             R36 2 1
     1025 LOADK                            R37 K46 ["All"]
     1026 CALL                             R35 2 1
     1027 MOVE                             R36 R16
     1028 GETTABLEKS                       R37 R15 K32 ["fromAction"]
     1030 LOADK                            R38 K124 ["PluginManagement"]
     1031 LOADK                            R39 K125 ["SaveAsLocalPlugin"]
     1032 CALL                             R37 2 1
     1033 LOADK                            R38 K46 ["All"]
     1034 CALL                             R36 2 1
     1035 MOVE                             R37 R16
     1036 GETTABLEKS                       R38 R15 K32 ["fromAction"]
     1038 LOADK                            R39 K124 ["PluginManagement"]
     1039 LOADK                            R40 K126 ["PublishToRoblox"]
     1040 CALL                             R38 2 1
     1041 LOADK                            R39 K46 ["All"]
     1042 CALL                             R37 2 1
     1043 MOVE                             R38 R16
     1044 GETTABLEKS                       R39 R15 K32 ["fromAction"]
     1046 LOADK                            R40 K121 ["Export"]
     1047 LOADK                            R41 K127 ["ExportSelection"]
     1048 CALL                             R39 2 1
     1049 LOADK                            R40 K46 ["All"]
     1050 CALL                             R38 2 1
     1051 SETLIST                          R33 R34 5 [1]
     1053 SETLIST                          R32 R33 1 [1]
     1055 DUPTABLE                         R31 K64 [{"key", "source"}]
     1056 LOADK                            R33 K128 ["saveAndExport"]
     1057 SETTABLEKS                       R33 R31 K62 ["key"]
     1059 DUPTABLE                         R33 K68 [{"type", "submenuCategories"}]
     1060 LOADK                            R34 K69 ["submenu"]
     1061 SETTABLEKS                       R34 R33 K66 ["type"]
     1063 SETTABLEKS                       R32 R33 K67 ["submenuCategories"]
     1065 SETTABLEKS                       R33 R31 K63 ["source"]
     1067 SETLIST                          R27 R28 4 [1]
     1069 CALL                             R26 1 -1
     1070 FASTCALL                         TABLE_INSERT ; [+2]
     1071 GETIMPORT                        R24 K41 [table.insert]
     1073 CALL                             R24 -1 0
     1074 JUMP                             ; [+109]
     1075 MOVE                             R25 R19
     1076 MOVE                             R26 R4
     1077 NEWTABLE                         R27 0 4
     1079 MOVE                             R29 R7
     1080 CALL                             R29 0 1
     1081 JUMPIFNOT                        R29 ; [+9]
     1082 MOVE                             R28 R16
     1083 GETTABLEKS                       R29 R15 K32 ["fromAction"]
     1085 LOADK                            R30 K118 ["LocalizationTools"]
     1086 LOADK                            R31 K119 ["SaveCsv"]
     1087 CALL                             R29 2 1
     1088 LOADK                            R30 K35 ["NonServices"]
     1089 CALL                             R28 2 1
     1090 JUMP                             ; [+1]
     1091 LOADNIL                          R28
     1092 MOVE                             R30 R7
     1093 CALL                             R30 0 1
     1094 JUMPIFNOT                        R30 ; [+9]
     1095 MOVE                             R29 R16
     1096 GETTABLEKS                       R30 R15 K32 ["fromAction"]
     1098 LOADK                            R31 K118 ["LocalizationTools"]
     1099 LOADK                            R32 K120 ["LoadCsv"]
     1100 CALL                             R30 2 1
     1101 LOADK                            R31 K35 ["NonServices"]
     1102 CALL                             R29 2 1
     1103 JUMP                             ; [+1]
     1104 LOADNIL                          R29
     1105 MOVE                             R30 R16
     1106 MOVE                             R31 R23
     1107 LOADK                            R32 K35 ["NonServices"]
     1108 CALL                             R30 2 1
     1109 NEWTABLE                         R32 0 1
     1111 NEWTABLE                         R33 0 6
     1113 MOVE                             R34 R16
     1114 GETTABLEKS                       R35 R15 K32 ["fromAction"]
     1116 LOADK                            R36 K121 ["Export"]
     1117 LOADK                            R37 K122 ["PublishSelectionToRoblox"]
     1118 CALL                             R35 2 1
     1119 LOADK                            R36 K35 ["NonServices"]
     1120 CALL                             R34 2 1
     1121 MOVE                             R35 R16
     1122 GETTABLEKS                       R36 R15 K32 ["fromAction"]
     1124 LOADK                            R37 K121 ["Export"]
     1125 LOADK                            R38 K123 ["SaveSelectionToFile"]
     1126 CALL                             R36 2 1
     1127 LOADK                            R37 K46 ["All"]
     1128 CALL                             R35 2 1
     1129 MOVE                             R36 R16
     1130 GETTABLEKS                       R37 R15 K32 ["fromAction"]
     1132 LOADK                            R38 K124 ["PluginManagement"]
     1133 LOADK                            R39 K125 ["SaveAsLocalPlugin"]
     1134 CALL                             R37 2 1
     1135 LOADK                            R38 K46 ["All"]
     1136 CALL                             R36 2 1
     1137 MOVE                             R37 R16
     1138 GETTABLEKS                       R38 R15 K32 ["fromAction"]
     1140 LOADK                            R39 K124 ["PluginManagement"]
     1141 LOADK                            R40 K126 ["PublishToRoblox"]
     1142 CALL                             R38 2 1
     1143 LOADK                            R39 K46 ["All"]
     1144 CALL                             R37 2 1
     1145 MOVE                             R38 R16
     1146 GETTABLEKS                       R39 R15 K32 ["fromAction"]
     1148 LOADK                            R40 K121 ["Export"]
     1149 LOADK                            R41 K127 ["ExportSelection"]
     1150 CALL                             R39 2 1
     1151 LOADK                            R40 K46 ["All"]
     1152 CALL                             R38 2 1
     1153 MOVE                             R39 R16
     1154 GETTABLEKS                       R40 R15 K32 ["fromAction"]
     1156 LOADK                            R41 K121 ["Export"]
     1157 LOADK                            R42 K129 ["ExportAsGltf"]
     1158 CALL                             R40 2 1
     1159 LOADK                            R41 K46 ["All"]
     1160 CALL                             R39 2 1
     1161 SETLIST                          R33 R34 6 [1]
     1163 SETLIST                          R32 R33 1 [1]
     1165 DUPTABLE                         R31 K64 [{"key", "source"}]
     1166 LOADK                            R33 K128 ["saveAndExport"]
     1167 SETTABLEKS                       R33 R31 K62 ["key"]
     1169 DUPTABLE                         R33 K68 [{"type", "submenuCategories"}]
     1170 LOADK                            R34 K69 ["submenu"]
     1171 SETTABLEKS                       R34 R33 K66 ["type"]
     1173 SETTABLEKS                       R32 R33 K67 ["submenuCategories"]
     1175 SETTABLEKS                       R33 R31 K63 ["source"]
     1177 SETLIST                          R27 R28 4 [1]
     1179 CALL                             R26 1 -1
     1180 FASTCALL                         TABLE_INSERT ; [+2]
     1181 GETIMPORT                        R24 K41 [table.insert]
     1183 CALL                             R24 -1 0
     1184 NEWTABLE                         R26 0 2
     1186 MOVE                             R27 R16
     1187 GETTABLEKS                       R28 R15 K32 ["fromAction"]
     1189 LOADK                            R29 K130 ["InsertService"]
     1190 LOADK                            R30 K131 ["ShowServices"]
     1191 CALL                             R28 2 1
     1192 LOADK                            R29 K132 ["ServicesAndBlank"]
     1193 CALL                             R27 2 1
     1194 MOVE                             R28 R16
     1195 GETTABLEKS                       R29 R15 K32 ["fromAction"]
     1197 LOADK                            R30 K130 ["InsertService"]
     1198 LOADK                            R31 K133 ["HideService"]
     1199 CALL                             R29 2 1
     1200 LOADK                            R30 K134 ["Services"]
     1201 CALL                             R28 2 1
     1202 SETLIST                          R26 R27 2 [1]
     1204 FASTCALL2                        TABLE_INSERT R19 R26 ; [+4]
     1206 MOVE                             R25 R19
     1207 GETIMPORT                        R24 K41 [table.insert]
     1209 CALL                             R24 2 0
     1210 NEWTABLE                         R26 0 1
     1212 MOVE                             R27 R16
     1213 GETTABLEKS                       R28 R15 K32 ["fromAction"]
     1215 LOADK                            R29 K42 ["Common"]
     1216 LOADK                            R30 K135 ["Help"]
     1217 CALL                             R28 2 1
     1218 LOADK                            R29 K46 ["All"]
     1219 CALL                             R27 2 1
     1220 SETLIST                          R26 R27 1 [1]
     1222 FASTCALL2                        TABLE_INSERT R19 R26 ; [+4]
     1224 MOVE                             R25 R19
     1225 GETIMPORT                        R24 K41 [table.insert]
     1227 CALL                             R24 2 0
     1228 RETURN                           R19 1
