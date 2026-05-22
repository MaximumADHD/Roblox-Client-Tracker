PROTO_0:
        0 DUPTABLE                         R4 K2 [{"key", "source"}]
        1 MOVE                             R5 R3
        2 JUMPIF                           R5 ; [+5]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K3 ["toString"]
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
        0 GETUPVAL                         R2 0
        1 GETTABLEKS                       R2 R2 K0 ["fromAction"]
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
        9 GETTABLEKS                       R2 R0 K6 ["Src"]
       11 GETTABLEKS                       R2 R2 K7 ["SharedFeatures"]
       13 GETTABLEKS                       R2 R2 K8 ["ContextMenu"]
       15 GETTABLEKS                       R2 R2 K9 ["ContextMenuTypes"]
       17 CALL                             R1 1 1
       18 GETIMPORT                        R2 K5 [require]
       20 GETTABLEKS                       R3 R0 K10 ["Packages"]
       22 GETTABLEKS                       R3 R3 K11 ["Explorer"]
       24 CALL                             R2 1 1
       25 GETIMPORT                        R3 K5 [require]
       27 GETTABLEKS                       R4 R0 K10 ["Packages"]
       29 GETTABLEKS                       R4 R4 K12 ["Framework"]
       31 CALL                             R3 1 1
       32 GETIMPORT                        R4 K5 [require]
       34 GETTABLEKS                       R5 R0 K6 ["Src"]
       36 GETTABLEKS                       R5 R5 K13 ["Util"]
       38 GETTABLEKS                       R5 R5 K14 ["cleanHoles"]
       40 CALL                             R4 1 1
       41 GETIMPORT                        R5 K5 [require]
       43 GETTABLEKS                       R6 R0 K6 ["Src"]
       45 GETTABLEKS                       R6 R6 K15 ["Flags"]
       47 GETTABLEKS                       R6 R6 K16 ["getFFlagDevAssetExport"]
       49 CALL                             R5 1 1
       50 GETIMPORT                        R6 K5 [require]
       52 GETTABLEKS                       R7 R0 K6 ["Src"]
       54 GETTABLEKS                       R7 R7 K15 ["Flags"]
       56 GETTABLEKS                       R7 R7 K17 ["getFFlagEnableReimport"]
       58 CALL                             R6 1 1
       59 GETIMPORT                        R7 K5 [require]
       61 GETTABLEKS                       R8 R0 K6 ["Src"]
       63 GETTABLEKS                       R8 R8 K15 ["Flags"]
       65 GETTABLEKS                       R8 R8 K18 ["getFFlagExplorerAllActionsContextual"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Src"]
       72 GETTABLEKS                       R9 R9 K15 ["Flags"]
       74 GETTABLEKS                       R9 R9 K19 ["getFFlagForgottenExplorerVerbs"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K6 ["Src"]
       81 GETTABLEKS                       R10 R10 K15 ["Flags"]
       83 GETTABLEKS                       R10 R10 K20 ["getFFlagLuaExplorerExternalEditor"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K6 ["Src"]
       90 GETTABLEKS                       R11 R11 K15 ["Flags"]
       92 GETTABLEKS                       R11 R11 K21 ["getFFlagLuaExplorerFileSync"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K6 ["Src"]
       99 GETTABLEKS                       R12 R12 K15 ["Flags"]
      101 GETTABLEKS                       R12 R12 K22 ["getFFlagLuaExplorerHierarchySync"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K5 [require]
      106 GETTABLEKS                       R13 R0 K6 ["Src"]
      108 GETTABLEKS                       R13 R13 K15 ["Flags"]
      110 GETTABLEKS                       R13 R13 K23 ["getFFlagLuaExplorerHierarchySyncServices"]
      112 CALL                             R12 1 1
      113 GETIMPORT                        R13 K5 [require]
      115 GETTABLEKS                       R14 R0 K6 ["Src"]
      117 GETTABLEKS                       R14 R14 K15 ["Flags"]
      119 GETTABLEKS                       R14 R14 K24 ["getFFlagLuaExplorerPackages"]
      121 CALL                             R13 1 1
      122 GETIMPORT                        R14 K5 [require]
      124 GETTABLEKS                       R15 R0 K6 ["Src"]
      126 GETTABLEKS                       R15 R15 K15 ["Flags"]
      128 GETTABLEKS                       R15 R15 K25 ["getFFlagPluginGuiServiceExplorerVerbsManIReallyHopeTheseAreTheLastOnes"]
      130 CALL                             R14 1 1
      131 GETIMPORT                        R15 K5 [require]
      133 GETTABLEKS                       R16 R0 K6 ["Src"]
      135 GETTABLEKS                       R16 R16 K15 ["Flags"]
      137 GETTABLEKS                       R16 R16 K26 ["getFFlagReimportClearAction"]
      139 CALL                             R15 1 1
      140 GETIMPORT                        R16 K28 [game]
      142 LOADK                            R18 K29 ["CopyPathAction"]
      143 NAMECALL                         R16 R16 K30 ["GetEngineFeature"]
      145 CALL                             R16 2 1
      146 GETIMPORT                        R17 K28 [game]
      148 LOADK                            R19 K31 ["CopyUniqueIdAction"]
      149 NAMECALL                         R17 R17 K30 ["GetEngineFeature"]
      151 CALL                             R17 2 1
      152 GETIMPORT                        R18 K28 [game]
      154 LOADK                            R20 K32 ["UnifiedSyncActions"]
      155 NAMECALL                         R18 R18 K30 ["GetEngineFeature"]
      157 CALL                             R18 2 1
      158 GETTABLEKS                       R19 R3 K13 ["Util"]
      160 GETTABLEKS                       R19 R19 K33 ["StudioUri"]
      162 DUPCLOSURE                       R20 K34 [PROTO_0]
      163 CAPTURE                          VAL R19
      164 DUPCLOSURE                       R21 K35 [PROTO_1]
      165 DUPCLOSURE                       R22 K36 [PROTO_2]
      166 CAPTURE                          VAL R19
      167 NEWTABLE                         R23 0 0
      169 DUPCLOSURE                       R24 K37 [PROTO_3]
      170 DUPCLOSURE                       R25 K38 [PROTO_4]
      171 MOVE                             R26 R9
      172 CALL                             R26 0 1
      173 JUMPIFNOT                        R26 ; [+38]
      174 MOVE                             R26 R11
      175 CALL                             R26 0 1
      176 JUMPIFNOT                        R26 ; [+35]
      177 NEWTABLE                         R28 0 3
      179 MOVE                             R29 R20
      180 GETTABLEKS                       R30 R19 K39 ["fromAction"]
      182 LOADK                            R31 K40 ["ScriptTools"]
      183 LOADK                            R32 K41 ["Open"]
      184 CALL                             R30 2 1
      185 LOADK                            R31 K42 ["NonServices"]
      186 CALL                             R29 2 1
      187 MOVE                             R30 R20
      188 GETTABLEKS                       R31 R19 K39 ["fromAction"]
      190 LOADK                            R32 K43 ["FileSync"]
      191 LOADK                            R33 K44 ["OpenInExternalEditor"]
      192 CALL                             R31 2 1
      193 LOADK                            R32 K42 ["NonServices"]
      194 CALL                             R30 2 1
      195 MOVE                             R31 R20
      196 GETTABLEKS                       R32 R19 K39 ["fromAction"]
      198 LOADK                            R33 K40 ["ScriptTools"]
      199 LOADK                            R34 K45 ["OpenScriptHistory"]
      200 CALL                             R32 2 1
      201 LOADK                            R33 K42 ["NonServices"]
      202 CALL                             R31 2 1
      203 SETLIST                          R28 R29 3 [1]
      205 FASTCALL2                        TABLE_INSERT R23 R28 ; [+4]
      207 MOVE                             R27 R23
      208 GETIMPORT                        R26 K48 [table.insert]
      210 CALL                             R26 2 0
      211 JUMP                             ; [+26]
      212 NEWTABLE                         R28 0 2
      214 MOVE                             R29 R20
      215 GETTABLEKS                       R30 R19 K39 ["fromAction"]
      217 LOADK                            R31 K40 ["ScriptTools"]
      218 LOADK                            R32 K41 ["Open"]
      219 CALL                             R30 2 1
      220 LOADK                            R31 K42 ["NonServices"]
      221 CALL                             R29 2 1
      222 MOVE                             R30 R20
      223 GETTABLEKS                       R31 R19 K39 ["fromAction"]
      225 LOADK                            R32 K40 ["ScriptTools"]
      226 LOADK                            R33 K45 ["OpenScriptHistory"]
      227 CALL                             R31 2 1
      228 LOADK                            R32 K42 ["NonServices"]
      229 CALL                             R30 2 1
      230 SETLIST                          R28 R29 2 [1]
      232 FASTCALL2                        TABLE_INSERT R23 R28 ; [+4]
      234 MOVE                             R27 R23
      235 GETIMPORT                        R26 K48 [table.insert]
      237 CALL                             R26 2 0
      238 MOVE                             R27 R23
      239 MOVE                             R28 R4
      240 NEWTABLE                         R29 0 8
      242 MOVE                             R30 R20
      243 GETTABLEKS                       R31 R19 K39 ["fromAction"]
      245 LOADK                            R32 K49 ["Common"]
      246 LOADK                            R33 K50 ["Cut"]
      247 CALL                             R31 2 1
      248 LOADK                            R32 K42 ["NonServices"]
      249 CALL                             R30 2 1
      250 MOVE                             R31 R20
      251 GETTABLEKS                       R32 R19 K39 ["fromAction"]
      253 LOADK                            R33 K49 ["Common"]
      254 LOADK                            R34 K51 ["Copy"]
      255 CALL                             R32 2 1
      256 LOADK                            R33 K42 ["NonServices"]
      257 CALL                             R31 2 1
      258 JUMPIF                           R16 ; [+1]
      259 JUMPIFNOT                        R17 ; [+45]
      260 NEWTABLE                         R33 0 1
      262 MOVE                             R34 R4
      263 NEWTABLE                         R35 0 2
      265 JUMPIFNOT                        R16 ; [+9]
      266 MOVE                             R36 R20
      267 GETTABLEKS                       R37 R19 K39 ["fromAction"]
      269 LOADK                            R38 K52 ["BuilderTools"]
      270 LOADK                            R39 K53 ["CopyPath"]
      271 CALL                             R37 2 1
      272 LOADK                            R38 K54 ["All"]
      273 CALL                             R36 2 1
      274 JUMP                             ; [+1]
      275 LOADNIL                          R36
      276 JUMPIFNOT                        R17 ; [+9]
      277 MOVE                             R37 R20
      278 GETTABLEKS                       R38 R19 K39 ["fromAction"]
      280 LOADK                            R39 K52 ["BuilderTools"]
      281 LOADK                            R40 K55 ["CopyUniqueId"]
      282 CALL                             R38 2 1
      283 LOADK                            R39 K54 ["All"]
      284 CALL                             R37 2 1
      285 JUMP                             ; [+1]
      286 LOADNIL                          R37
      287 SETLIST                          R35 R36 2 [1]
      289 CALL                             R34 1 -1
      290 SETLIST                          R33 R34 -1 [1]
      292 DUPTABLE                         R32 K58 [{"key", "source"}]
      293 LOADK                            R34 K59 ["CopyAs"]
      294 SETTABLEKS                       R34 R32 K56 ["key"]
      296 DUPTABLE                         R34 K62 [{"type", "submenuCategories"}]
      297 LOADK                            R35 K63 ["submenu"]
      298 SETTABLEKS                       R35 R34 K60 ["type"]
      300 SETTABLEKS                       R33 R34 K61 ["submenuCategories"]
      302 SETTABLEKS                       R34 R32 K57 ["source"]
      304 JUMP                             ; [+1]
      305 LOADNIL                          R32
      306 MOVE                             R33 R20
      307 GETTABLEKS                       R34 R19 K39 ["fromAction"]
      309 LOADK                            R35 K49 ["Common"]
      310 LOADK                            R36 K64 ["PasteInto"]
      311 CALL                             R34 2 1
      312 LOADK                            R35 K54 ["All"]
      313 CALL                             R33 2 1
      314 MOVE                             R34 R20
      315 GETTABLEKS                       R35 R19 K39 ["fromAction"]
      317 LOADK                            R36 K52 ["BuilderTools"]
      318 LOADK                            R37 K65 ["PasteIntoAtOriginalLocation"]
      319 CALL                             R35 2 1
      320 LOADK                            R36 K54 ["All"]
      321 CALL                             R34 2 1
      322 MOVE                             R35 R20
      323 GETTABLEKS                       R36 R19 K39 ["fromAction"]
      325 LOADK                            R37 K49 ["Common"]
      326 LOADK                            R38 K66 ["Duplicate"]
      327 CALL                             R36 2 1
      328 LOADK                            R37 K42 ["NonServices"]
      329 CALL                             R35 2 1
      330 MOVE                             R36 R20
      331 GETTABLEKS                       R37 R19 K39 ["fromAction"]
      333 LOADK                            R38 K49 ["Common"]
      334 LOADK                            R39 K67 ["Delete"]
      335 CALL                             R37 2 1
      336 LOADK                            R38 K42 ["NonServices"]
      337 CALL                             R36 2 1
      338 MOVE                             R37 R20
      339 GETTABLEKS                       R38 R19 K39 ["fromAction"]
      341 LOADK                            R39 K11 ["Explorer"]
      342 LOADK                            R40 K68 ["Rename"]
      343 CALL                             R38 2 1
      344 LOADK                            R39 K54 ["All"]
      345 LOADNIL                          R40
      346 GETTABLEKS                       R41 R2 K69 ["Data"]
      348 GETTABLEKS                       R41 R41 K8 ["ContextMenu"]
      350 GETTABLEKS                       R41 R41 K70 ["coreItems"]
      352 GETTABLEKS                       R41 R41 K71 ["rename"]
      354 CALL                             R37 4 1
      355 SETLIST                          R29 R30 8 [1]
      357 CALL                             R28 1 -1
      358 FASTCALL                         TABLE_INSERT ; [+2]
      359 GETIMPORT                        R26 K48 [table.insert]
      361 CALL                             R26 -1 0
      362 NEWTABLE                         R28 0 4
      364 MOVE                             R29 R20
      365 GETTABLEKS                       R30 R19 K39 ["fromAction"]
      367 LOADK                            R31 K52 ["BuilderTools"]
      368 LOADK                            R32 K72 ["GroupAsModel"]
      369 CALL                             R30 2 1
      370 LOADK                            R31 K42 ["NonServices"]
      371 CALL                             R29 2 1
      372 MOVE                             R30 R20
      373 GETTABLEKS                       R31 R19 K39 ["fromAction"]
      375 LOADK                            R32 K52 ["BuilderTools"]
      376 LOADK                            R33 K73 ["GroupAsFolder"]
      377 CALL                             R31 2 1
      378 LOADK                            R32 K42 ["NonServices"]
      379 CALL                             R30 2 1
      380 MOVE                             R31 R20
      381 GETTABLEKS                       R32 R19 K39 ["fromAction"]
      383 LOADK                            R33 K52 ["BuilderTools"]
      384 LOADK                            R34 K74 ["Ungroup"]
      385 CALL                             R32 2 1
      386 LOADK                            R33 K42 ["NonServices"]
      387 CALL                             R31 2 1
      388 NEWTABLE                         R33 0 1
      390 NEWTABLE                         R34 0 4
      392 MOVE                             R35 R20
      393 GETTABLEKS                       R36 R19 K39 ["fromAction"]
      395 LOADK                            R37 K52 ["BuilderTools"]
      396 LOADK                            R38 K75 ["UnionSelection"]
      397 CALL                             R36 2 1
      398 LOADK                            R37 K42 ["NonServices"]
      399 CALL                             R35 2 1
      400 MOVE                             R36 R20
      401 GETTABLEKS                       R37 R19 K39 ["fromAction"]
      403 LOADK                            R38 K52 ["BuilderTools"]
      404 LOADK                            R39 K76 ["IntersectSelection"]
      405 CALL                             R37 2 1
      406 LOADK                            R38 K42 ["NonServices"]
      407 CALL                             R36 2 1
      408 MOVE                             R37 R20
      409 GETTABLEKS                       R38 R19 K39 ["fromAction"]
      411 LOADK                            R39 K52 ["BuilderTools"]
      412 LOADK                            R40 K77 ["NegateSelection"]
      413 CALL                             R38 2 1
      414 LOADK                            R39 K42 ["NonServices"]
      415 CALL                             R37 2 1
      416 MOVE                             R38 R20
      417 GETTABLEKS                       R39 R19 K39 ["fromAction"]
      419 LOADK                            R40 K52 ["BuilderTools"]
      420 LOADK                            R41 K78 ["SeparateSelection"]
      421 CALL                             R39 2 1
      422 LOADK                            R40 K42 ["NonServices"]
      423 CALL                             R38 2 1
      424 SETLIST                          R34 R35 4 [1]
      426 SETLIST                          R33 R34 1 [1]
      428 DUPTABLE                         R32 K58 [{"key", "source"}]
      429 LOADK                            R34 K79 ["solidModeling"]
      430 SETTABLEKS                       R34 R32 K56 ["key"]
      432 DUPTABLE                         R34 K62 [{"type", "submenuCategories"}]
      433 LOADK                            R35 K63 ["submenu"]
      434 SETTABLEKS                       R35 R34 K60 ["type"]
      436 SETTABLEKS                       R33 R34 K61 ["submenuCategories"]
      438 SETTABLEKS                       R34 R32 K57 ["source"]
      440 SETLIST                          R28 R29 4 [1]
      442 FASTCALL2                        TABLE_INSERT R23 R28 ; [+4]
      444 MOVE                             R27 R23
      445 GETIMPORT                        R26 K48 [table.insert]
      447 CALL                             R26 2 0
      448 MOVE                             R27 R23
      449 MOVE                             R28 R4
      450 NEWTABLE                         R29 0 5
      452 NEWTABLE                         R31 0 1
      454 NEWTABLE                         R32 0 3
      456 MOVE                             R33 R20
      457 GETTABLEKS                       R34 R19 K39 ["fromAction"]
      459 LOADK                            R35 K52 ["BuilderTools"]
      460 LOADK                            R36 K80 ["InsertPartIntoSelection"]
      461 CALL                             R34 2 1
      462 LOADK                            R35 K54 ["All"]
      463 CALL                             R33 2 1
      464 MOVE                             R34 R20
      465 GETTABLEKS                       R35 R19 K39 ["fromAction"]
      467 LOADK                            R36 K52 ["BuilderTools"]
      468 LOADK                            R37 K81 ["InsertObject"]
      469 CALL                             R35 2 1
      470 LOADK                            R36 K54 ["All"]
      471 CALL                             R34 2 1
      472 MOVE                             R35 R20
      473 GETTABLEKS                       R36 R19 K39 ["fromAction"]
      475 LOADK                            R37 K52 ["BuilderTools"]
      476 LOADK                            R38 K82 ["InsertFromFile"]
      477 CALL                             R36 2 1
      478 LOADK                            R37 K54 ["All"]
      479 CALL                             R35 2 1
      480 SETLIST                          R32 R33 3 [1]
      482 SETLIST                          R31 R32 1 [1]
      484 DUPTABLE                         R30 K58 [{"key", "source"}]
      485 LOADK                            R32 K47 ["insert"]
      486 SETTABLEKS                       R32 R30 K56 ["key"]
      488 DUPTABLE                         R32 K62 [{"type", "submenuCategories"}]
      489 LOADK                            R33 K63 ["submenu"]
      490 SETTABLEKS                       R33 R32 K60 ["type"]
      492 SETTABLEKS                       R31 R32 K61 ["submenuCategories"]
      494 SETTABLEKS                       R32 R30 K57 ["source"]
      496 MOVE                             R32 R4
      497 NEWTABLE                         R33 0 1
      499 NEWTABLE                         R34 0 4
      501 MOVE                             R36 R8
      502 CALL                             R36 0 1
      503 JUMPIFNOT                        R36 ; [+10]
      504 MOVE                             R35 R20
      505 GETTABLEKS                       R36 R19 K39 ["fromAction"]
      507 LOADK                            R37 K49 ["Common"]
      508 LOADK                            R38 K83 ["SelectParents"]
      509 CALL                             R36 2 1
      510 LOADK                            R37 K42 ["NonServices"]
      511 LOADNIL                          R38
      512 CALL                             R35 3 1
      513 JUMP                             ; [+1]
      514 LOADNIL                          R35
      515 MOVE                             R37 R8
      516 CALL                             R37 0 1
      517 JUMPIFNOT                        R37 ; [+10]
      518 MOVE                             R36 R20
      519 GETTABLEKS                       R37 R19 K39 ["fromAction"]
      521 LOADK                            R38 K49 ["Common"]
      522 LOADK                            R39 K84 ["SelectChildren"]
      523 CALL                             R37 2 1
      524 LOADK                            R38 K54 ["All"]
      525 LOADNIL                          R39
      526 CALL                             R36 3 1
      527 JUMP                             ; [+1]
      528 LOADNIL                          R36
      529 MOVE                             R37 R20
      530 GETTABLEKS                       R38 R19 K39 ["fromAction"]
      532 LOADK                            R39 K11 ["Explorer"]
      533 LOADK                            R40 K85 ["ExpandAll"]
      534 CALL                             R38 2 1
      535 LOADK                            R39 K54 ["All"]
      536 LOADNIL                          R40
      537 GETTABLEKS                       R41 R2 K69 ["Data"]
      539 GETTABLEKS                       R41 R41 K8 ["ContextMenu"]
      541 GETTABLEKS                       R41 R41 K70 ["coreItems"]
      543 GETTABLEKS                       R41 R41 K86 ["expandAll"]
      545 CALL                             R37 4 1
      546 MOVE                             R38 R20
      547 GETTABLEKS                       R39 R19 K39 ["fromAction"]
      549 LOADK                            R40 K11 ["Explorer"]
      550 LOADK                            R41 K87 ["CollapseAll"]
      551 CALL                             R39 2 1
      552 LOADK                            R40 K54 ["All"]
      553 LOADNIL                          R41
      554 GETTABLEKS                       R42 R2 K69 ["Data"]
      556 GETTABLEKS                       R42 R42 K8 ["ContextMenu"]
      558 GETTABLEKS                       R42 R42 K70 ["coreItems"]
      560 GETTABLEKS                       R42 R42 K88 ["collapseAll"]
      562 CALL                             R38 4 1
      563 SETLIST                          R34 R35 4 [1]
      565 SETLIST                          R33 R34 1 [1]
      567 CALL                             R32 1 1
      568 DUPTABLE                         R31 K58 [{"key", "source"}]
      569 LOADK                            R33 K89 ["hierarchy"]
      570 SETTABLEKS                       R33 R31 K56 ["key"]
      572 DUPTABLE                         R33 K62 [{"type", "submenuCategories"}]
      573 LOADK                            R34 K63 ["submenu"]
      574 SETTABLEKS                       R34 R33 K60 ["type"]
      576 SETTABLEKS                       R32 R33 K61 ["submenuCategories"]
      578 SETTABLEKS                       R33 R31 K57 ["source"]
      580 MOVE                             R32 R20
      581 GETTABLEKS                       R33 R19 K39 ["fromAction"]
      583 LOADK                            R34 K52 ["BuilderTools"]
      584 LOADK                            R35 K90 ["ZoomExtents"]
      585 CALL                             R33 2 1
      586 LOADK                            R34 K42 ["NonServices"]
      587 MOVE                             R35 R24
      588 CALL                             R32 3 1
      589 MOVE                             R33 R20
      590 GETTABLEKS                       R34 R19 K39 ["fromAction"]
      592 LOADK                            R35 K52 ["BuilderTools"]
      593 LOADK                            R36 K91 ["ShowOrientationIndicator"]
      594 CALL                             R34 2 1
      595 LOADK                            R35 K42 ["NonServices"]
      596 CALL                             R33 2 1
      597 MOVE                             R34 R20
      598 GETTABLEKS                       R35 R19 K39 ["fromAction"]
      600 LOADK                            R36 K40 ["ScriptTools"]
      601 LOADK                            R37 K92 ["ToggleScripts"]
      602 CALL                             R35 2 1
      603 LOADK                            R36 K42 ["NonServices"]
      604 CALL                             R34 2 1
      605 SETLIST                          R29 R30 5 [1]
      607 CALL                             R28 1 -1
      608 FASTCALL                         TABLE_INSERT ; [+2]
      609 GETIMPORT                        R26 K48 [table.insert]
      611 CALL                             R26 -1 0
      612 MOVE                             R26 R14
      613 CALL                             R26 0 1
      614 JUMPIFNOT                        R26 ; [+43]
      615 NEWTABLE                         R28 0 4
      617 MOVE                             R29 R20
      618 GETTABLEKS                       R30 R19 K39 ["fromAction"]
      620 LOADK                            R31 K93 ["PluginDebugging"]
      621 LOADK                            R32 K94 ["SaveAndReloadDebuggablePlugin"]
      622 CALL                             R30 2 1
      623 LOADK                            R31 K54 ["All"]
      624 CALL                             R29 2 1
      625 MOVE                             R30 R20
      626 GETTABLEKS                       R31 R19 K39 ["fromAction"]
      628 LOADK                            R32 K93 ["PluginDebugging"]
      629 LOADK                            R33 K95 ["ReloadDebuggablePlugin"]
      630 CALL                             R31 2 1
      631 LOADK                            R32 K54 ["All"]
      632 CALL                             R30 2 1
      633 MOVE                             R31 R20
      634 GETTABLEKS                       R32 R19 K39 ["fromAction"]
      636 LOADK                            R33 K93 ["PluginDebugging"]
      637 LOADK                            R34 K96 ["SaveAndReloadAllDebuggablePlugins"]
      638 CALL                             R32 2 1
      639 LOADK                            R33 K54 ["All"]
      640 MOVE                             R34 R25
      641 CALL                             R31 3 1
      642 MOVE                             R32 R20
      643 GETTABLEKS                       R33 R19 K39 ["fromAction"]
      645 LOADK                            R34 K93 ["PluginDebugging"]
      646 LOADK                            R35 K97 ["SaveBuildAndReloadDebuggablePlugin"]
      647 CALL                             R33 2 1
      648 LOADK                            R34 K54 ["All"]
      649 CALL                             R32 2 1
      650 SETLIST                          R28 R29 4 [1]
      652 FASTCALL2                        TABLE_INSERT R23 R28 ; [+4]
      654 MOVE                             R27 R23
      655 GETIMPORT                        R26 K48 [table.insert]
      657 CALL                             R26 2 0
      658 MOVE                             R26 R10
      659 CALL                             R26 0 1
      660 JUMPIFNOT                        R26 ; [+42]
      661 NEWTABLE                         R28 0 4
      663 MOVE                             R29 R20
      664 GETTABLEKS                       R30 R19 K39 ["fromAction"]
      666 LOADK                            R31 K43 ["FileSync"]
      667 LOADK                            R32 K98 ["StopScriptSync"]
      668 CALL                             R30 2 1
      669 LOADK                            R31 K42 ["NonServices"]
      670 CALL                             R29 2 1
      671 MOVE                             R30 R20
      672 GETTABLEKS                       R31 R19 K39 ["fromAction"]
      674 LOADK                            R32 K43 ["FileSync"]
      675 LOADK                            R33 K99 ["StartScriptSync"]
      676 CALL                             R31 2 1
      677 LOADK                            R32 K42 ["NonServices"]
      678 CALL                             R30 2 1
      679 MOVE                             R31 R20
      680 GETTABLEKS                       R32 R19 K39 ["fromAction"]
      682 LOADK                            R33 K43 ["FileSync"]
      683 LOADK                            R34 K100 ["ResumeScriptSync"]
      684 CALL                             R32 2 1
      685 LOADK                            R33 K42 ["NonServices"]
      686 CALL                             R31 2 1
      687 MOVE                             R32 R20
      688 GETTABLEKS                       R33 R19 K39 ["fromAction"]
      690 LOADK                            R34 K43 ["FileSync"]
      691 LOADK                            R35 K101 ["ShowInFolder"]
      692 CALL                             R33 2 1
      693 LOADK                            R34 K42 ["NonServices"]
      694 CALL                             R32 2 1
      695 SETLIST                          R28 R29 4 [1]
      697 FASTCALL2                        TABLE_INSERT R23 R28 ; [+4]
      699 MOVE                             R27 R23
      700 GETIMPORT                        R26 K48 [table.insert]
      702 CALL                             R26 2 0
      703 MOVE                             R26 R11
      704 CALL                             R26 0 1
      705 JUMPIFNOT                        R26 ; [+172]
      706 MOVE                             R27 R12
      707 CALL                             R27 0 1
      708 JUMPIFNOT                        R27 ; [+2]
      709 LOADK                            R26 K54 ["All"]
      710 JUMP                             ; [+1]
      711 LOADK                            R26 K42 ["NonServices"]
      712 JUMPIFNOT                        R18 ; [+71]
      713 NEWTABLE                         R29 0 1
      715 NEWTABLE                         R31 0 1
      717 NEWTABLE                         R32 0 5
      719 MOVE                             R33 R20
      720 GETTABLEKS                       R34 R19 K39 ["fromAction"]
      722 LOADK                            R35 K43 ["FileSync"]
      723 LOADK                            R36 K98 ["StopScriptSync"]
      724 CALL                             R34 2 1
      725 MOVE                             R35 R26
      726 CALL                             R33 2 1
      727 MOVE                             R34 R20
      728 GETTABLEKS                       R35 R19 K39 ["fromAction"]
      730 LOADK                            R36 K43 ["FileSync"]
      731 LOADK                            R37 K102 ["StartSync"]
      732 CALL                             R35 2 1
      733 MOVE                             R36 R26
      734 CALL                             R34 2 1
      735 MOVE                             R35 R20
      736 GETTABLEKS                       R36 R19 K39 ["fromAction"]
      738 LOADK                            R37 K43 ["FileSync"]
      739 LOADK                            R38 K100 ["ResumeScriptSync"]
      740 CALL                             R36 2 1
      741 MOVE                             R37 R26
      742 CALL                             R35 2 1
      743 MOVE                             R36 R20
      744 GETTABLEKS                       R37 R19 K39 ["fromAction"]
      746 LOADK                            R38 K43 ["FileSync"]
      747 LOADK                            R39 K101 ["ShowInFolder"]
      748 CALL                             R37 2 1
      749 MOVE                             R38 R26
      750 CALL                             R36 2 1
      751 MOVE                             R37 R20
      752 GETTABLEKS                       R38 R19 K39 ["fromAction"]
      754 LOADK                            R39 K43 ["FileSync"]
      755 LOADK                            R40 K103 ["SelectSyncingRoot"]
      756 CALL                             R38 2 1
      757 MOVE                             R39 R26
      758 CALL                             R37 2 1
      759 SETLIST                          R32 R33 5 [1]
      761 SETLIST                          R31 R32 1 [1]
      763 DUPTABLE                         R30 K58 [{"key", "source"}]
      764 LOADK                            R32 K104 ["scriptSync"]
      765 SETTABLEKS                       R32 R30 K56 ["key"]
      767 DUPTABLE                         R32 K62 [{"type", "submenuCategories"}]
      768 LOADK                            R33 K63 ["submenu"]
      769 SETTABLEKS                       R33 R32 K60 ["type"]
      771 SETTABLEKS                       R31 R32 K61 ["submenuCategories"]
      773 SETTABLEKS                       R32 R30 K57 ["source"]
      775 SETLIST                          R29 R30 1 [1]
      777 FASTCALL2                        TABLE_INSERT R23 R29 ; [+4]
      779 MOVE                             R28 R23
      780 GETIMPORT                        R27 K48 [table.insert]
      782 CALL                             R27 2 0
      783 JUMP                             ; [+94]
      784 NEWTABLE                         R29 0 1
      786 NEWTABLE                         R31 0 1
      788 NEWTABLE                         R32 0 8
      790 MOVE                             R33 R20
      791 GETTABLEKS                       R34 R19 K39 ["fromAction"]
      793 LOADK                            R35 K43 ["FileSync"]
      794 LOADK                            R36 K98 ["StopScriptSync"]
      795 CALL                             R34 2 1
      796 MOVE                             R35 R26
      797 CALL                             R33 2 1
      798 MOVE                             R34 R20
      799 GETTABLEKS                       R35 R19 K39 ["fromAction"]
      801 LOADK                            R36 K43 ["FileSync"]
      802 LOADK                            R37 K105 ["StartSyncToNewFile"]
      803 CALL                             R35 2 1
      804 LOADK                            R36 K42 ["NonServices"]
      805 CALL                             R34 2 1
      806 MOVE                             R35 R20
      807 GETTABLEKS                       R36 R19 K39 ["fromAction"]
      809 LOADK                            R37 K43 ["FileSync"]
      810 LOADK                            R38 K106 ["StartSyncToExistingFile"]
      811 CALL                             R36 2 1
      812 LOADK                            R37 K42 ["NonServices"]
      813 CALL                             R35 2 1
      814 MOVE                             R36 R20
      815 GETTABLEKS                       R37 R19 K39 ["fromAction"]
      817 LOADK                            R38 K43 ["FileSync"]
      818 LOADK                            R39 K107 ["StartSyncSelectedInstancesTo"]
      819 CALL                             R37 2 1
      820 MOVE                             R38 R26
      821 CALL                             R36 2 1
      822 MOVE                             R37 R20
      823 GETTABLEKS                       R38 R19 K39 ["fromAction"]
      825 LOADK                            R39 K43 ["FileSync"]
      826 LOADK                            R40 K108 ["StartSyncToDirectory"]
      827 CALL                             R38 2 1
      828 MOVE                             R39 R26
      829 CALL                             R37 2 1
      830 MOVE                             R38 R20
      831 GETTABLEKS                       R39 R19 K39 ["fromAction"]
      833 LOADK                            R40 K43 ["FileSync"]
      834 LOADK                            R41 K100 ["ResumeScriptSync"]
      835 CALL                             R39 2 1
      836 MOVE                             R40 R26
      837 CALL                             R38 2 1
      838 MOVE                             R39 R20
      839 GETTABLEKS                       R40 R19 K39 ["fromAction"]
      841 LOADK                            R41 K43 ["FileSync"]
      842 LOADK                            R42 K101 ["ShowInFolder"]
      843 CALL                             R40 2 1
      844 MOVE                             R41 R26
      845 CALL                             R39 2 1
      846 MOVE                             R40 R20
      847 GETTABLEKS                       R41 R19 K39 ["fromAction"]
      849 LOADK                            R42 K43 ["FileSync"]
      850 LOADK                            R43 K103 ["SelectSyncingRoot"]
      851 CALL                             R41 2 1
      852 MOVE                             R42 R26
      853 CALL                             R40 2 1
      854 SETLIST                          R32 R33 8 [1]
      856 SETLIST                          R31 R32 1 [1]
      858 DUPTABLE                         R30 K58 [{"key", "source"}]
      859 LOADK                            R32 K104 ["scriptSync"]
      860 SETTABLEKS                       R32 R30 K56 ["key"]
      862 DUPTABLE                         R32 K62 [{"type", "submenuCategories"}]
      863 LOADK                            R33 K63 ["submenu"]
      864 SETTABLEKS                       R33 R32 K60 ["type"]
      866 SETTABLEKS                       R31 R32 K61 ["submenuCategories"]
      868 SETTABLEKS                       R32 R30 K57 ["source"]
      870 SETLIST                          R29 R30 1 [1]
      872 FASTCALL2                        TABLE_INSERT R23 R29 ; [+4]
      874 MOVE                             R28 R23
      875 GETIMPORT                        R27 K48 [table.insert]
      877 CALL                             R27 2 0
      878 MOVE                             R26 R13
      879 CALL                             R26 0 1
      880 JUMPIFNOT                        R26 ; [+87]
      881 NEWTABLE                         R28 0 4
      883 MOVE                             R29 R20
      884 GETTABLEKS                       R30 R19 K39 ["fromAction"]
      886 LOADK                            R31 K109 ["PackageTools"]
      887 LOADK                            R32 K110 ["PublishPackage"]
      888 CALL                             R30 2 1
      889 LOADK                            R31 K42 ["NonServices"]
      890 CALL                             R29 2 1
      891 MOVE                             R30 R20
      892 GETTABLEKS                       R31 R19 K39 ["fromAction"]
      894 LOADK                            R32 K109 ["PackageTools"]
      895 LOADK                            R33 K111 ["UndoPackageChanges"]
      896 CALL                             R31 2 1
      897 LOADK                            R32 K42 ["NonServices"]
      898 CALL                             R30 2 1
      899 MOVE                             R31 R20
      900 GETTABLEKS                       R32 R19 K39 ["fromAction"]
      902 LOADK                            R33 K109 ["PackageTools"]
      903 LOADK                            R34 K112 ["GetLatestPackage"]
      904 CALL                             R32 2 1
      905 LOADK                            R33 K42 ["NonServices"]
      906 CALL                             R31 2 1
      907 NEWTABLE                         R33 0 1
      909 NEWTABLE                         R34 0 4
      911 MOVE                             R35 R20
      912 GETTABLEKS                       R36 R19 K39 ["fromAction"]
      914 LOADK                            R37 K109 ["PackageTools"]
      915 LOADK                            R38 K113 ["DiffPackageAgainstLatest"]
      916 CALL                             R36 2 1
      917 LOADK                            R37 K42 ["NonServices"]
      918 CALL                             R35 2 1
      919 MOVE                             R36 R20
      920 GETTABLEKS                       R37 R19 K39 ["fromAction"]
      922 LOADK                            R38 K109 ["PackageTools"]
      923 LOADK                            R39 K114 ["MassUpdate"]
      924 CALL                             R37 2 1
      925 LOADK                            R38 K42 ["NonServices"]
      926 CALL                             R36 2 1
      927 MOVE                             R37 R20
      928 GETTABLEKS                       R38 R19 K39 ["fromAction"]
      930 LOADK                            R39 K109 ["PackageTools"]
      931 LOADK                            R40 K115 ["ShowPackagesDiff"]
      932 CALL                             R38 2 1
      933 LOADK                            R39 K42 ["NonServices"]
      934 CALL                             R37 2 1
      935 MOVE                             R38 R20
      936 GETTABLEKS                       R39 R19 K39 ["fromAction"]
      938 LOADK                            R40 K109 ["PackageTools"]
      939 LOADK                            R41 K116 ["PackageDetails"]
      940 CALL                             R39 2 1
      941 LOADK                            R40 K42 ["NonServices"]
      942 CALL                             R38 2 1
      943 SETLIST                          R34 R35 4 [1]
      945 SETLIST                          R33 R34 1 [1]
      947 DUPTABLE                         R32 K58 [{"key", "source"}]
      948 LOADK                            R34 K117 ["morePackageOptions"]
      949 SETTABLEKS                       R34 R32 K56 ["key"]
      951 DUPTABLE                         R34 K62 [{"type", "submenuCategories"}]
      952 LOADK                            R35 K63 ["submenu"]
      953 SETTABLEKS                       R35 R34 K60 ["type"]
      955 SETTABLEKS                       R33 R34 K61 ["submenuCategories"]
      957 SETTABLEKS                       R34 R32 K57 ["source"]
      959 SETLIST                          R28 R29 4 [1]
      961 FASTCALL2                        TABLE_INSERT R23 R28 ; [+4]
      963 MOVE                             R27 R23
      964 GETIMPORT                        R26 K48 [table.insert]
      966 CALL                             R26 2 0
      967 JUMP                             ; [+62]
      968 NEWTABLE                         R28 0 2
      970 MOVE                             R29 R20
      971 GETTABLEKS                       R30 R19 K39 ["fromAction"]
      973 LOADK                            R31 K109 ["PackageTools"]
      974 LOADK                            R32 K110 ["PublishPackage"]
      975 CALL                             R30 2 1
      976 LOADK                            R31 K42 ["NonServices"]
      977 CALL                             R29 2 1
      978 NEWTABLE                         R31 0 1
      980 NEWTABLE                         R32 0 3
      982 MOVE                             R33 R20
      983 GETTABLEKS                       R34 R19 K39 ["fromAction"]
      985 LOADK                            R35 K109 ["PackageTools"]
      986 LOADK                            R36 K114 ["MassUpdate"]
      987 CALL                             R34 2 1
      988 LOADK                            R35 K42 ["NonServices"]
      989 CALL                             R33 2 1
      990 MOVE                             R34 R20
      991 GETTABLEKS                       R35 R19 K39 ["fromAction"]
      993 LOADK                            R36 K109 ["PackageTools"]
      994 LOADK                            R37 K115 ["ShowPackagesDiff"]
      995 CALL                             R35 2 1
      996 LOADK                            R36 K42 ["NonServices"]
      997 CALL                             R34 2 1
      998 MOVE                             R35 R20
      999 GETTABLEKS                       R36 R19 K39 ["fromAction"]
     1001 LOADK                            R37 K109 ["PackageTools"]
     1002 LOADK                            R38 K116 ["PackageDetails"]
     1003 CALL                             R36 2 1
     1004 LOADK                            R37 K42 ["NonServices"]
     1005 CALL                             R35 2 1
     1006 SETLIST                          R32 R33 3 [1]
     1008 SETLIST                          R31 R32 1 [1]
     1010 DUPTABLE                         R30 K58 [{"key", "source"}]
     1011 LOADK                            R32 K117 ["morePackageOptions"]
     1012 SETTABLEKS                       R32 R30 K56 ["key"]
     1014 DUPTABLE                         R32 K62 [{"type", "submenuCategories"}]
     1015 LOADK                            R33 K63 ["submenu"]
     1016 SETTABLEKS                       R33 R32 K60 ["type"]
     1018 SETTABLEKS                       R31 R32 K61 ["submenuCategories"]
     1020 SETTABLEKS                       R32 R30 K57 ["source"]
     1022 SETLIST                          R28 R29 2 [1]
     1024 FASTCALL2                        TABLE_INSERT R23 R28 ; [+4]
     1026 MOVE                             R27 R23
     1027 GETIMPORT                        R26 K48 [table.insert]
     1029 CALL                             R26 2 0
     1030 GETIMPORT                        R26 K119 [xpcall]
     1032 DUPCLOSURE                       R27 K120 [PROTO_5]
     1033 CAPTURE                          VAL R22
     1034 DUPCLOSURE                       R28 K121 [PROTO_6]
     1035 CAPTURE                          VAL R22
     1036 CALL                             R26 2 2
     1037 MOVE                             R28 R6
     1038 CALL                             R28 0 1
     1039 JUMPIFNOT                        R28 ; [+96]
     1040 GETIMPORT                        R28 K5 [require]
     1042 GETTABLEKS                       R29 R0 K10 ["Packages"]
     1044 GETTABLEKS                       R29 R29 K122 ["SharedPluginConstants"]
     1046 CALL                             R28 1 1
     1047 GETTABLEKS                       R29 R28 K123 ["REIMPORT"]
     1049 GETTABLEKS                       R29 R29 K124 ["ACTION_ID"]
     1051 GETTABLEKS                       R30 R28 K123 ["REIMPORT"]
     1053 GETTABLEKS                       R30 R30 K125 ["ACTION_EVENTS"]
     1055 NEWTABLE                         R33 0 1
     1057 NEWTABLE                         R35 0 1
     1059 MOVE                             R36 R4
     1060 NEWTABLE                         R37 0 4
     1062 MOVE                             R38 R20
     1063 GETTABLEKS                       R40 R30 K123 ["REIMPORT"]
     1065 GETTABLEKS                       R41 R19 K39 ["fromAction"]
     1067 MOVE                             R42 R29
     1068 MOVE                             R43 R40
     1069 CALL                             R41 2 1
     1070 MOVE                             R39 R41
     1071 LOADK                            R40 K42 ["NonServices"]
     1072 CALL                             R38 2 1
     1073 MOVE                             R39 R20
     1074 GETTABLEKS                       R41 R30 K126 ["REIMPORT_RELATIVE_TO_THIS"]
     1076 GETTABLEKS                       R42 R19 K39 ["fromAction"]
     1078 MOVE                             R43 R29
     1079 MOVE                             R44 R41
     1080 CALL                             R42 2 1
     1081 MOVE                             R40 R42
     1082 LOADK                            R41 K42 ["NonServices"]
     1083 CALL                             R39 2 1
     1084 MOVE                             R40 R20
     1085 GETTABLEKS                       R42 R30 K127 ["CONFIGURE"]
     1087 GETTABLEKS                       R43 R19 K39 ["fromAction"]
     1089 MOVE                             R44 R29
     1090 MOVE                             R45 R42
     1091 CALL                             R43 2 1
     1092 MOVE                             R41 R43
     1093 LOADK                            R42 K42 ["NonServices"]
     1094 CALL                             R40 2 1
     1095 MOVE                             R42 R15
     1096 CALL                             R42 0 1
     1097 JUMPIFNOT                        R42 ; [+12]
     1098 MOVE                             R41 R20
     1099 GETTABLEKS                       R43 R30 K128 ["CLEAR_REIMPORT_CONFIG"]
     1101 GETTABLEKS                       R44 R19 K39 ["fromAction"]
     1103 MOVE                             R45 R29
     1104 MOVE                             R46 R43
     1105 CALL                             R44 2 1
     1106 MOVE                             R42 R44
     1107 LOADK                            R43 K42 ["NonServices"]
     1108 CALL                             R41 2 1
     1109 JUMP                             ; [+1]
     1110 LOADNIL                          R41
     1111 SETLIST                          R37 R38 4 [1]
     1113 CALL                             R36 1 -1
     1114 SETLIST                          R35 R36 -1 [1]
     1116 DUPTABLE                         R34 K58 [{"key", "source"}]
     1117 LOADK                            R36 K129 ["Reimport"]
     1118 SETTABLEKS                       R36 R34 K56 ["key"]
     1120 DUPTABLE                         R36 K62 [{"type", "submenuCategories"}]
     1121 LOADK                            R37 K63 ["submenu"]
     1122 SETTABLEKS                       R37 R36 K60 ["type"]
     1124 SETTABLEKS                       R35 R36 K61 ["submenuCategories"]
     1126 SETTABLEKS                       R36 R34 K57 ["source"]
     1128 SETLIST                          R33 R34 1 [1]
     1130 FASTCALL2                        TABLE_INSERT R23 R33 ; [+4]
     1132 MOVE                             R32 R23
     1133 GETIMPORT                        R31 K48 [table.insert]
     1135 CALL                             R31 2 0
     1136 MOVE                             R28 R5
     1137 CALL                             R28 0 1
     1138 JUMPIF                           R28 ; [+102]
     1139 MOVE                             R29 R23
     1140 MOVE                             R30 R4
     1141 NEWTABLE                         R31 0 4
     1143 MOVE                             R33 R7
     1144 CALL                             R33 0 1
     1145 JUMPIFNOT                        R33 ; [+9]
     1146 MOVE                             R32 R20
     1147 GETTABLEKS                       R33 R19 K39 ["fromAction"]
     1149 LOADK                            R34 K130 ["LocalizationTools"]
     1150 LOADK                            R35 K131 ["SaveCsv"]
     1151 CALL                             R33 2 1
     1152 LOADK                            R34 K42 ["NonServices"]
     1153 CALL                             R32 2 1
     1154 JUMP                             ; [+1]
     1155 LOADNIL                          R32
     1156 MOVE                             R34 R7
     1157 CALL                             R34 0 1
     1158 JUMPIFNOT                        R34 ; [+9]
     1159 MOVE                             R33 R20
     1160 GETTABLEKS                       R34 R19 K39 ["fromAction"]
     1162 LOADK                            R35 K130 ["LocalizationTools"]
     1163 LOADK                            R36 K132 ["LoadCsv"]
     1164 CALL                             R34 2 1
     1165 LOADK                            R35 K42 ["NonServices"]
     1166 CALL                             R33 2 1
     1167 JUMP                             ; [+1]
     1168 LOADNIL                          R33
     1169 MOVE                             R34 R20
     1170 MOVE                             R35 R27
     1171 LOADK                            R36 K42 ["NonServices"]
     1172 CALL                             R34 2 1
     1173 NEWTABLE                         R36 0 1
     1175 NEWTABLE                         R37 0 5
     1177 MOVE                             R38 R20
     1178 GETTABLEKS                       R39 R19 K39 ["fromAction"]
     1180 LOADK                            R40 K133 ["Export"]
     1181 LOADK                            R41 K134 ["PublishSelectionToRoblox"]
     1182 CALL                             R39 2 1
     1183 LOADK                            R40 K42 ["NonServices"]
     1184 CALL                             R38 2 1
     1185 MOVE                             R39 R20
     1186 GETTABLEKS                       R40 R19 K39 ["fromAction"]
     1188 LOADK                            R41 K133 ["Export"]
     1189 LOADK                            R42 K135 ["SaveSelectionToFile"]
     1190 CALL                             R40 2 1
     1191 LOADK                            R41 K54 ["All"]
     1192 CALL                             R39 2 1
     1193 MOVE                             R40 R20
     1194 GETTABLEKS                       R41 R19 K39 ["fromAction"]
     1196 LOADK                            R42 K136 ["PluginManagement"]
     1197 LOADK                            R43 K137 ["SaveAsLocalPlugin"]
     1198 CALL                             R41 2 1
     1199 LOADK                            R42 K54 ["All"]
     1200 CALL                             R40 2 1
     1201 MOVE                             R41 R20
     1202 GETTABLEKS                       R42 R19 K39 ["fromAction"]
     1204 LOADK                            R43 K136 ["PluginManagement"]
     1205 LOADK                            R44 K138 ["PublishToRoblox"]
     1206 CALL                             R42 2 1
     1207 LOADK                            R43 K54 ["All"]
     1208 CALL                             R41 2 1
     1209 MOVE                             R42 R20
     1210 GETTABLEKS                       R43 R19 K39 ["fromAction"]
     1212 LOADK                            R44 K133 ["Export"]
     1213 LOADK                            R45 K139 ["ExportSelection"]
     1214 CALL                             R43 2 1
     1215 LOADK                            R44 K54 ["All"]
     1216 CALL                             R42 2 1
     1217 SETLIST                          R37 R38 5 [1]
     1219 SETLIST                          R36 R37 1 [1]
     1221 DUPTABLE                         R35 K58 [{"key", "source"}]
     1222 LOADK                            R37 K140 ["saveAndExport"]
     1223 SETTABLEKS                       R37 R35 K56 ["key"]
     1225 DUPTABLE                         R37 K62 [{"type", "submenuCategories"}]
     1226 LOADK                            R38 K63 ["submenu"]
     1227 SETTABLEKS                       R38 R37 K60 ["type"]
     1229 SETTABLEKS                       R36 R37 K61 ["submenuCategories"]
     1231 SETTABLEKS                       R37 R35 K57 ["source"]
     1233 SETLIST                          R31 R32 4 [1]
     1235 CALL                             R30 1 -1
     1236 FASTCALL                         TABLE_INSERT ; [+2]
     1237 GETIMPORT                        R28 K48 [table.insert]
     1239 CALL                             R28 -1 0
     1240 JUMP                             ; [+109]
     1241 MOVE                             R29 R23
     1242 MOVE                             R30 R4
     1243 NEWTABLE                         R31 0 4
     1245 MOVE                             R33 R7
     1246 CALL                             R33 0 1
     1247 JUMPIFNOT                        R33 ; [+9]
     1248 MOVE                             R32 R20
     1249 GETTABLEKS                       R33 R19 K39 ["fromAction"]
     1251 LOADK                            R34 K130 ["LocalizationTools"]
     1252 LOADK                            R35 K131 ["SaveCsv"]
     1253 CALL                             R33 2 1
     1254 LOADK                            R34 K42 ["NonServices"]
     1255 CALL                             R32 2 1
     1256 JUMP                             ; [+1]
     1257 LOADNIL                          R32
     1258 MOVE                             R34 R7
     1259 CALL                             R34 0 1
     1260 JUMPIFNOT                        R34 ; [+9]
     1261 MOVE                             R33 R20
     1262 GETTABLEKS                       R34 R19 K39 ["fromAction"]
     1264 LOADK                            R35 K130 ["LocalizationTools"]
     1265 LOADK                            R36 K132 ["LoadCsv"]
     1266 CALL                             R34 2 1
     1267 LOADK                            R35 K42 ["NonServices"]
     1268 CALL                             R33 2 1
     1269 JUMP                             ; [+1]
     1270 LOADNIL                          R33
     1271 MOVE                             R34 R20
     1272 MOVE                             R35 R27
     1273 LOADK                            R36 K42 ["NonServices"]
     1274 CALL                             R34 2 1
     1275 NEWTABLE                         R36 0 1
     1277 NEWTABLE                         R37 0 6
     1279 MOVE                             R38 R20
     1280 GETTABLEKS                       R39 R19 K39 ["fromAction"]
     1282 LOADK                            R40 K133 ["Export"]
     1283 LOADK                            R41 K134 ["PublishSelectionToRoblox"]
     1284 CALL                             R39 2 1
     1285 LOADK                            R40 K42 ["NonServices"]
     1286 CALL                             R38 2 1
     1287 MOVE                             R39 R20
     1288 GETTABLEKS                       R40 R19 K39 ["fromAction"]
     1290 LOADK                            R41 K133 ["Export"]
     1291 LOADK                            R42 K135 ["SaveSelectionToFile"]
     1292 CALL                             R40 2 1
     1293 LOADK                            R41 K54 ["All"]
     1294 CALL                             R39 2 1
     1295 MOVE                             R40 R20
     1296 GETTABLEKS                       R41 R19 K39 ["fromAction"]
     1298 LOADK                            R42 K136 ["PluginManagement"]
     1299 LOADK                            R43 K137 ["SaveAsLocalPlugin"]
     1300 CALL                             R41 2 1
     1301 LOADK                            R42 K54 ["All"]
     1302 CALL                             R40 2 1
     1303 MOVE                             R41 R20
     1304 GETTABLEKS                       R42 R19 K39 ["fromAction"]
     1306 LOADK                            R43 K136 ["PluginManagement"]
     1307 LOADK                            R44 K138 ["PublishToRoblox"]
     1308 CALL                             R42 2 1
     1309 LOADK                            R43 K54 ["All"]
     1310 CALL                             R41 2 1
     1311 MOVE                             R42 R20
     1312 GETTABLEKS                       R43 R19 K39 ["fromAction"]
     1314 LOADK                            R44 K133 ["Export"]
     1315 LOADK                            R45 K139 ["ExportSelection"]
     1316 CALL                             R43 2 1
     1317 LOADK                            R44 K54 ["All"]
     1318 CALL                             R42 2 1
     1319 MOVE                             R43 R20
     1320 GETTABLEKS                       R44 R19 K39 ["fromAction"]
     1322 LOADK                            R45 K133 ["Export"]
     1323 LOADK                            R46 K141 ["ExportAsGltf"]
     1324 CALL                             R44 2 1
     1325 LOADK                            R45 K54 ["All"]
     1326 CALL                             R43 2 1
     1327 SETLIST                          R37 R38 6 [1]
     1329 SETLIST                          R36 R37 1 [1]
     1331 DUPTABLE                         R35 K58 [{"key", "source"}]
     1332 LOADK                            R37 K140 ["saveAndExport"]
     1333 SETTABLEKS                       R37 R35 K56 ["key"]
     1335 DUPTABLE                         R37 K62 [{"type", "submenuCategories"}]
     1336 LOADK                            R38 K63 ["submenu"]
     1337 SETTABLEKS                       R38 R37 K60 ["type"]
     1339 SETTABLEKS                       R36 R37 K61 ["submenuCategories"]
     1341 SETTABLEKS                       R37 R35 K57 ["source"]
     1343 SETLIST                          R31 R32 4 [1]
     1345 CALL                             R30 1 -1
     1346 FASTCALL                         TABLE_INSERT ; [+2]
     1347 GETIMPORT                        R28 K48 [table.insert]
     1349 CALL                             R28 -1 0
     1350 NEWTABLE                         R30 0 2
     1352 MOVE                             R31 R20
     1353 GETTABLEKS                       R32 R19 K39 ["fromAction"]
     1355 LOADK                            R33 K142 ["InsertService"]
     1356 LOADK                            R34 K143 ["ShowServices"]
     1357 CALL                             R32 2 1
     1358 LOADK                            R33 K144 ["ServicesAndBlank"]
     1359 CALL                             R31 2 1
     1360 MOVE                             R32 R20
     1361 GETTABLEKS                       R33 R19 K39 ["fromAction"]
     1363 LOADK                            R34 K142 ["InsertService"]
     1364 LOADK                            R35 K145 ["HideService"]
     1365 CALL                             R33 2 1
     1366 LOADK                            R34 K146 ["Services"]
     1367 CALL                             R32 2 1
     1368 SETLIST                          R30 R31 2 [1]
     1370 FASTCALL2                        TABLE_INSERT R23 R30 ; [+4]
     1372 MOVE                             R29 R23
     1373 GETIMPORT                        R28 K48 [table.insert]
     1375 CALL                             R28 2 0
     1376 NEWTABLE                         R30 0 1
     1378 MOVE                             R31 R20
     1379 GETTABLEKS                       R32 R19 K39 ["fromAction"]
     1381 LOADK                            R33 K49 ["Common"]
     1382 LOADK                            R34 K147 ["Help"]
     1383 CALL                             R32 2 1
     1384 LOADK                            R33 K54 ["All"]
     1385 CALL                             R31 2 1
     1386 SETLIST                          R30 R31 1 [1]
     1388 FASTCALL2                        TABLE_INSERT R23 R30 ; [+4]
     1390 MOVE                             R29 R23
     1391 GETIMPORT                        R28 K48 [table.insert]
     1393 CALL                             R28 2 0
     1394 RETURN                           R23 1
