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
      131 GETIMPORT                        R15 K27 [game]
      133 LOADK                            R17 K28 ["CopyPathAction"]
      134 NAMECALL                         R15 R15 K29 ["GetEngineFeature"]
      136 CALL                             R15 2 1
      137 GETIMPORT                        R16 K27 [game]
      139 LOADK                            R18 K30 ["CopyUniqueIdAction"]
      140 NAMECALL                         R16 R16 K29 ["GetEngineFeature"]
      142 CALL                             R16 2 1
      143 GETIMPORT                        R17 K27 [game]
      145 LOADK                            R19 K31 ["UnifiedSyncActions"]
      146 NAMECALL                         R17 R17 K29 ["GetEngineFeature"]
      148 CALL                             R17 2 1
      149 GETTABLEKS                       R19 R3 K13 ["Util"]
      151 GETTABLEKS                       R18 R19 K32 ["StudioUri"]
      153 DUPCLOSURE                       R19 K33 [PROTO_0]
      154 CAPTURE                          VAL R18
      155 DUPCLOSURE                       R20 K34 [PROTO_1]
      156 DUPCLOSURE                       R21 K35 [PROTO_2]
      157 CAPTURE                          VAL R18
      158 NEWTABLE                         R22 0 0
      160 DUPCLOSURE                       R23 K36 [PROTO_3]
      161 DUPCLOSURE                       R24 K37 [PROTO_4]
      162 MOVE                             R25 R9
      163 CALL                             R25 0 1
      164 JUMPIFNOT                        R25 ; [+38]
      165 MOVE                             R25 R11
      166 CALL                             R25 0 1
      167 JUMPIFNOT                        R25 ; [+35]
      168 NEWTABLE                         R27 0 3
      170 MOVE                             R28 R19
      171 GETTABLEKS                       R29 R18 K38 ["fromAction"]
      173 LOADK                            R30 K39 ["ScriptTools"]
      174 LOADK                            R31 K40 ["Open"]
      175 CALL                             R29 2 1
      176 LOADK                            R30 K41 ["NonServices"]
      177 CALL                             R28 2 1
      178 MOVE                             R29 R19
      179 GETTABLEKS                       R30 R18 K38 ["fromAction"]
      181 LOADK                            R31 K42 ["FileSync"]
      182 LOADK                            R32 K43 ["OpenInExternalEditor"]
      183 CALL                             R30 2 1
      184 LOADK                            R31 K41 ["NonServices"]
      185 CALL                             R29 2 1
      186 MOVE                             R30 R19
      187 GETTABLEKS                       R31 R18 K38 ["fromAction"]
      189 LOADK                            R32 K39 ["ScriptTools"]
      190 LOADK                            R33 K44 ["OpenScriptHistory"]
      191 CALL                             R31 2 1
      192 LOADK                            R32 K41 ["NonServices"]
      193 CALL                             R30 2 1
      194 SETLIST                          R27 R28 3 [1]
      196 FASTCALL2                        TABLE_INSERT R22 R27 ; [+4]
      198 MOVE                             R26 R22
      199 GETIMPORT                        R25 K47 [table.insert]
      201 CALL                             R25 2 0
      202 JUMP                             ; [+26]
      203 NEWTABLE                         R27 0 2
      205 MOVE                             R28 R19
      206 GETTABLEKS                       R29 R18 K38 ["fromAction"]
      208 LOADK                            R30 K39 ["ScriptTools"]
      209 LOADK                            R31 K40 ["Open"]
      210 CALL                             R29 2 1
      211 LOADK                            R30 K41 ["NonServices"]
      212 CALL                             R28 2 1
      213 MOVE                             R29 R19
      214 GETTABLEKS                       R30 R18 K38 ["fromAction"]
      216 LOADK                            R31 K39 ["ScriptTools"]
      217 LOADK                            R32 K44 ["OpenScriptHistory"]
      218 CALL                             R30 2 1
      219 LOADK                            R31 K41 ["NonServices"]
      220 CALL                             R29 2 1
      221 SETLIST                          R27 R28 2 [1]
      223 FASTCALL2                        TABLE_INSERT R22 R27 ; [+4]
      225 MOVE                             R26 R22
      226 GETIMPORT                        R25 K47 [table.insert]
      228 CALL                             R25 2 0
      229 MOVE                             R26 R22
      230 MOVE                             R27 R4
      231 NEWTABLE                         R28 0 8
      233 MOVE                             R29 R19
      234 GETTABLEKS                       R30 R18 K38 ["fromAction"]
      236 LOADK                            R31 K48 ["Common"]
      237 LOADK                            R32 K49 ["Cut"]
      238 CALL                             R30 2 1
      239 LOADK                            R31 K41 ["NonServices"]
      240 CALL                             R29 2 1
      241 MOVE                             R30 R19
      242 GETTABLEKS                       R31 R18 K38 ["fromAction"]
      244 LOADK                            R32 K48 ["Common"]
      245 LOADK                            R33 K50 ["Copy"]
      246 CALL                             R31 2 1
      247 LOADK                            R32 K41 ["NonServices"]
      248 CALL                             R30 2 1
      249 JUMPIF                           R15 ; [+1]
      250 JUMPIFNOT                        R16 ; [+45]
      251 NEWTABLE                         R32 0 1
      253 MOVE                             R33 R4
      254 NEWTABLE                         R34 0 2
      256 JUMPIFNOT                        R15 ; [+9]
      257 MOVE                             R35 R19
      258 GETTABLEKS                       R36 R18 K38 ["fromAction"]
      260 LOADK                            R37 K51 ["BuilderTools"]
      261 LOADK                            R38 K52 ["CopyPath"]
      262 CALL                             R36 2 1
      263 LOADK                            R37 K53 ["All"]
      264 CALL                             R35 2 1
      265 JUMP                             ; [+1]
      266 LOADNIL                          R35
      267 JUMPIFNOT                        R16 ; [+9]
      268 MOVE                             R36 R19
      269 GETTABLEKS                       R37 R18 K38 ["fromAction"]
      271 LOADK                            R38 K51 ["BuilderTools"]
      272 LOADK                            R39 K54 ["CopyUniqueId"]
      273 CALL                             R37 2 1
      274 LOADK                            R38 K53 ["All"]
      275 CALL                             R36 2 1
      276 JUMP                             ; [+1]
      277 LOADNIL                          R36
      278 SETLIST                          R34 R35 2 [1]
      280 CALL                             R33 1 -1
      281 SETLIST                          R32 R33 -1 [1]
      283 DUPTABLE                         R31 K57 [{"key", "source"}]
      284 LOADK                            R33 K58 ["CopyAs"]
      285 SETTABLEKS                       R33 R31 K55 ["key"]
      287 DUPTABLE                         R33 K61 [{"type", "submenuCategories"}]
      288 LOADK                            R34 K62 ["submenu"]
      289 SETTABLEKS                       R34 R33 K59 ["type"]
      291 SETTABLEKS                       R32 R33 K60 ["submenuCategories"]
      293 SETTABLEKS                       R33 R31 K56 ["source"]
      295 JUMP                             ; [+1]
      296 LOADNIL                          R31
      297 MOVE                             R32 R19
      298 GETTABLEKS                       R33 R18 K38 ["fromAction"]
      300 LOADK                            R34 K48 ["Common"]
      301 LOADK                            R35 K63 ["PasteInto"]
      302 CALL                             R33 2 1
      303 LOADK                            R34 K53 ["All"]
      304 CALL                             R32 2 1
      305 MOVE                             R33 R19
      306 GETTABLEKS                       R34 R18 K38 ["fromAction"]
      308 LOADK                            R35 K51 ["BuilderTools"]
      309 LOADK                            R36 K64 ["PasteIntoAtOriginalLocation"]
      310 CALL                             R34 2 1
      311 LOADK                            R35 K53 ["All"]
      312 CALL                             R33 2 1
      313 MOVE                             R34 R19
      314 GETTABLEKS                       R35 R18 K38 ["fromAction"]
      316 LOADK                            R36 K48 ["Common"]
      317 LOADK                            R37 K65 ["Duplicate"]
      318 CALL                             R35 2 1
      319 LOADK                            R36 K41 ["NonServices"]
      320 CALL                             R34 2 1
      321 MOVE                             R35 R19
      322 GETTABLEKS                       R36 R18 K38 ["fromAction"]
      324 LOADK                            R37 K48 ["Common"]
      325 LOADK                            R38 K66 ["Delete"]
      326 CALL                             R36 2 1
      327 LOADK                            R37 K41 ["NonServices"]
      328 CALL                             R35 2 1
      329 MOVE                             R36 R19
      330 GETTABLEKS                       R37 R18 K38 ["fromAction"]
      332 LOADK                            R38 K11 ["Explorer"]
      333 LOADK                            R39 K67 ["Rename"]
      334 CALL                             R37 2 1
      335 LOADK                            R38 K53 ["All"]
      336 LOADNIL                          R39
      337 GETTABLEKS                       R43 R2 K68 ["Data"]
      339 GETTABLEKS                       R42 R43 K8 ["ContextMenu"]
      341 GETTABLEKS                       R41 R42 K69 ["coreItems"]
      343 GETTABLEKS                       R40 R41 K70 ["rename"]
      345 CALL                             R36 4 1
      346 SETLIST                          R28 R29 8 [1]
      348 CALL                             R27 1 -1
      349 FASTCALL                         TABLE_INSERT ; [+2]
      350 GETIMPORT                        R25 K47 [table.insert]
      352 CALL                             R25 -1 0
      353 NEWTABLE                         R27 0 4
      355 MOVE                             R28 R19
      356 GETTABLEKS                       R29 R18 K38 ["fromAction"]
      358 LOADK                            R30 K51 ["BuilderTools"]
      359 LOADK                            R31 K71 ["GroupAsModel"]
      360 CALL                             R29 2 1
      361 LOADK                            R30 K41 ["NonServices"]
      362 CALL                             R28 2 1
      363 MOVE                             R29 R19
      364 GETTABLEKS                       R30 R18 K38 ["fromAction"]
      366 LOADK                            R31 K51 ["BuilderTools"]
      367 LOADK                            R32 K72 ["GroupAsFolder"]
      368 CALL                             R30 2 1
      369 LOADK                            R31 K41 ["NonServices"]
      370 CALL                             R29 2 1
      371 MOVE                             R30 R19
      372 GETTABLEKS                       R31 R18 K38 ["fromAction"]
      374 LOADK                            R32 K51 ["BuilderTools"]
      375 LOADK                            R33 K73 ["Ungroup"]
      376 CALL                             R31 2 1
      377 LOADK                            R32 K41 ["NonServices"]
      378 CALL                             R30 2 1
      379 NEWTABLE                         R32 0 1
      381 NEWTABLE                         R33 0 4
      383 MOVE                             R34 R19
      384 GETTABLEKS                       R35 R18 K38 ["fromAction"]
      386 LOADK                            R36 K51 ["BuilderTools"]
      387 LOADK                            R37 K74 ["UnionSelection"]
      388 CALL                             R35 2 1
      389 LOADK                            R36 K41 ["NonServices"]
      390 CALL                             R34 2 1
      391 MOVE                             R35 R19
      392 GETTABLEKS                       R36 R18 K38 ["fromAction"]
      394 LOADK                            R37 K51 ["BuilderTools"]
      395 LOADK                            R38 K75 ["IntersectSelection"]
      396 CALL                             R36 2 1
      397 LOADK                            R37 K41 ["NonServices"]
      398 CALL                             R35 2 1
      399 MOVE                             R36 R19
      400 GETTABLEKS                       R37 R18 K38 ["fromAction"]
      402 LOADK                            R38 K51 ["BuilderTools"]
      403 LOADK                            R39 K76 ["NegateSelection"]
      404 CALL                             R37 2 1
      405 LOADK                            R38 K41 ["NonServices"]
      406 CALL                             R36 2 1
      407 MOVE                             R37 R19
      408 GETTABLEKS                       R38 R18 K38 ["fromAction"]
      410 LOADK                            R39 K51 ["BuilderTools"]
      411 LOADK                            R40 K77 ["SeparateSelection"]
      412 CALL                             R38 2 1
      413 LOADK                            R39 K41 ["NonServices"]
      414 CALL                             R37 2 1
      415 SETLIST                          R33 R34 4 [1]
      417 SETLIST                          R32 R33 1 [1]
      419 DUPTABLE                         R31 K57 [{"key", "source"}]
      420 LOADK                            R33 K78 ["solidModeling"]
      421 SETTABLEKS                       R33 R31 K55 ["key"]
      423 DUPTABLE                         R33 K61 [{"type", "submenuCategories"}]
      424 LOADK                            R34 K62 ["submenu"]
      425 SETTABLEKS                       R34 R33 K59 ["type"]
      427 SETTABLEKS                       R32 R33 K60 ["submenuCategories"]
      429 SETTABLEKS                       R33 R31 K56 ["source"]
      431 SETLIST                          R27 R28 4 [1]
      433 FASTCALL2                        TABLE_INSERT R22 R27 ; [+4]
      435 MOVE                             R26 R22
      436 GETIMPORT                        R25 K47 [table.insert]
      438 CALL                             R25 2 0
      439 MOVE                             R26 R22
      440 MOVE                             R27 R4
      441 NEWTABLE                         R28 0 5
      443 NEWTABLE                         R30 0 1
      445 NEWTABLE                         R31 0 3
      447 MOVE                             R32 R19
      448 GETTABLEKS                       R33 R18 K38 ["fromAction"]
      450 LOADK                            R34 K51 ["BuilderTools"]
      451 LOADK                            R35 K79 ["InsertPartIntoSelection"]
      452 CALL                             R33 2 1
      453 LOADK                            R34 K53 ["All"]
      454 CALL                             R32 2 1
      455 MOVE                             R33 R19
      456 GETTABLEKS                       R34 R18 K38 ["fromAction"]
      458 LOADK                            R35 K51 ["BuilderTools"]
      459 LOADK                            R36 K80 ["InsertObject"]
      460 CALL                             R34 2 1
      461 LOADK                            R35 K53 ["All"]
      462 CALL                             R33 2 1
      463 MOVE                             R34 R19
      464 GETTABLEKS                       R35 R18 K38 ["fromAction"]
      466 LOADK                            R36 K51 ["BuilderTools"]
      467 LOADK                            R37 K81 ["InsertFromFile"]
      468 CALL                             R35 2 1
      469 LOADK                            R36 K53 ["All"]
      470 CALL                             R34 2 1
      471 SETLIST                          R31 R32 3 [1]
      473 SETLIST                          R30 R31 1 [1]
      475 DUPTABLE                         R29 K57 [{"key", "source"}]
      476 LOADK                            R31 K46 ["insert"]
      477 SETTABLEKS                       R31 R29 K55 ["key"]
      479 DUPTABLE                         R31 K61 [{"type", "submenuCategories"}]
      480 LOADK                            R32 K62 ["submenu"]
      481 SETTABLEKS                       R32 R31 K59 ["type"]
      483 SETTABLEKS                       R30 R31 K60 ["submenuCategories"]
      485 SETTABLEKS                       R31 R29 K56 ["source"]
      487 MOVE                             R31 R4
      488 NEWTABLE                         R32 0 1
      490 NEWTABLE                         R33 0 4
      492 MOVE                             R35 R8
      493 CALL                             R35 0 1
      494 JUMPIFNOT                        R35 ; [+10]
      495 MOVE                             R34 R19
      496 GETTABLEKS                       R35 R18 K38 ["fromAction"]
      498 LOADK                            R36 K48 ["Common"]
      499 LOADK                            R37 K82 ["SelectParents"]
      500 CALL                             R35 2 1
      501 LOADK                            R36 K41 ["NonServices"]
      502 LOADNIL                          R37
      503 CALL                             R34 3 1
      504 JUMP                             ; [+1]
      505 LOADNIL                          R34
      506 MOVE                             R36 R8
      507 CALL                             R36 0 1
      508 JUMPIFNOT                        R36 ; [+10]
      509 MOVE                             R35 R19
      510 GETTABLEKS                       R36 R18 K38 ["fromAction"]
      512 LOADK                            R37 K48 ["Common"]
      513 LOADK                            R38 K83 ["SelectChildren"]
      514 CALL                             R36 2 1
      515 LOADK                            R37 K53 ["All"]
      516 LOADNIL                          R38
      517 CALL                             R35 3 1
      518 JUMP                             ; [+1]
      519 LOADNIL                          R35
      520 MOVE                             R36 R19
      521 GETTABLEKS                       R37 R18 K38 ["fromAction"]
      523 LOADK                            R38 K11 ["Explorer"]
      524 LOADK                            R39 K84 ["ExpandAll"]
      525 CALL                             R37 2 1
      526 LOADK                            R38 K53 ["All"]
      527 LOADNIL                          R39
      528 GETTABLEKS                       R43 R2 K68 ["Data"]
      530 GETTABLEKS                       R42 R43 K8 ["ContextMenu"]
      532 GETTABLEKS                       R41 R42 K69 ["coreItems"]
      534 GETTABLEKS                       R40 R41 K85 ["expandAll"]
      536 CALL                             R36 4 1
      537 MOVE                             R37 R19
      538 GETTABLEKS                       R38 R18 K38 ["fromAction"]
      540 LOADK                            R39 K11 ["Explorer"]
      541 LOADK                            R40 K86 ["CollapseAll"]
      542 CALL                             R38 2 1
      543 LOADK                            R39 K53 ["All"]
      544 LOADNIL                          R40
      545 GETTABLEKS                       R44 R2 K68 ["Data"]
      547 GETTABLEKS                       R43 R44 K8 ["ContextMenu"]
      549 GETTABLEKS                       R42 R43 K69 ["coreItems"]
      551 GETTABLEKS                       R41 R42 K87 ["collapseAll"]
      553 CALL                             R37 4 1
      554 SETLIST                          R33 R34 4 [1]
      556 SETLIST                          R32 R33 1 [1]
      558 CALL                             R31 1 1
      559 DUPTABLE                         R30 K57 [{"key", "source"}]
      560 LOADK                            R32 K88 ["hierarchy"]
      561 SETTABLEKS                       R32 R30 K55 ["key"]
      563 DUPTABLE                         R32 K61 [{"type", "submenuCategories"}]
      564 LOADK                            R33 K62 ["submenu"]
      565 SETTABLEKS                       R33 R32 K59 ["type"]
      567 SETTABLEKS                       R31 R32 K60 ["submenuCategories"]
      569 SETTABLEKS                       R32 R30 K56 ["source"]
      571 MOVE                             R31 R19
      572 GETTABLEKS                       R32 R18 K38 ["fromAction"]
      574 LOADK                            R33 K51 ["BuilderTools"]
      575 LOADK                            R34 K89 ["ZoomExtents"]
      576 CALL                             R32 2 1
      577 LOADK                            R33 K41 ["NonServices"]
      578 MOVE                             R34 R23
      579 CALL                             R31 3 1
      580 MOVE                             R32 R19
      581 GETTABLEKS                       R33 R18 K38 ["fromAction"]
      583 LOADK                            R34 K51 ["BuilderTools"]
      584 LOADK                            R35 K90 ["ShowOrientationIndicator"]
      585 CALL                             R33 2 1
      586 LOADK                            R34 K41 ["NonServices"]
      587 CALL                             R32 2 1
      588 MOVE                             R33 R19
      589 GETTABLEKS                       R34 R18 K38 ["fromAction"]
      591 LOADK                            R35 K39 ["ScriptTools"]
      592 LOADK                            R36 K91 ["ToggleScripts"]
      593 CALL                             R34 2 1
      594 LOADK                            R35 K41 ["NonServices"]
      595 CALL                             R33 2 1
      596 SETLIST                          R28 R29 5 [1]
      598 CALL                             R27 1 -1
      599 FASTCALL                         TABLE_INSERT ; [+2]
      600 GETIMPORT                        R25 K47 [table.insert]
      602 CALL                             R25 -1 0
      603 MOVE                             R25 R14
      604 CALL                             R25 0 1
      605 JUMPIFNOT                        R25 ; [+43]
      606 NEWTABLE                         R27 0 4
      608 MOVE                             R28 R19
      609 GETTABLEKS                       R29 R18 K38 ["fromAction"]
      611 LOADK                            R30 K92 ["PluginDebugging"]
      612 LOADK                            R31 K93 ["SaveAndReloadDebuggablePlugin"]
      613 CALL                             R29 2 1
      614 LOADK                            R30 K53 ["All"]
      615 CALL                             R28 2 1
      616 MOVE                             R29 R19
      617 GETTABLEKS                       R30 R18 K38 ["fromAction"]
      619 LOADK                            R31 K92 ["PluginDebugging"]
      620 LOADK                            R32 K94 ["ReloadDebuggablePlugin"]
      621 CALL                             R30 2 1
      622 LOADK                            R31 K53 ["All"]
      623 CALL                             R29 2 1
      624 MOVE                             R30 R19
      625 GETTABLEKS                       R31 R18 K38 ["fromAction"]
      627 LOADK                            R32 K92 ["PluginDebugging"]
      628 LOADK                            R33 K95 ["SaveAndReloadAllDebuggablePlugins"]
      629 CALL                             R31 2 1
      630 LOADK                            R32 K53 ["All"]
      631 MOVE                             R33 R24
      632 CALL                             R30 3 1
      633 MOVE                             R31 R19
      634 GETTABLEKS                       R32 R18 K38 ["fromAction"]
      636 LOADK                            R33 K92 ["PluginDebugging"]
      637 LOADK                            R34 K96 ["SaveBuildAndReloadDebuggablePlugin"]
      638 CALL                             R32 2 1
      639 LOADK                            R33 K53 ["All"]
      640 CALL                             R31 2 1
      641 SETLIST                          R27 R28 4 [1]
      643 FASTCALL2                        TABLE_INSERT R22 R27 ; [+4]
      645 MOVE                             R26 R22
      646 GETIMPORT                        R25 K47 [table.insert]
      648 CALL                             R25 2 0
      649 MOVE                             R25 R10
      650 CALL                             R25 0 1
      651 JUMPIFNOT                        R25 ; [+42]
      652 NEWTABLE                         R27 0 4
      654 MOVE                             R28 R19
      655 GETTABLEKS                       R29 R18 K38 ["fromAction"]
      657 LOADK                            R30 K42 ["FileSync"]
      658 LOADK                            R31 K97 ["StopScriptSync"]
      659 CALL                             R29 2 1
      660 LOADK                            R30 K41 ["NonServices"]
      661 CALL                             R28 2 1
      662 MOVE                             R29 R19
      663 GETTABLEKS                       R30 R18 K38 ["fromAction"]
      665 LOADK                            R31 K42 ["FileSync"]
      666 LOADK                            R32 K98 ["StartScriptSync"]
      667 CALL                             R30 2 1
      668 LOADK                            R31 K41 ["NonServices"]
      669 CALL                             R29 2 1
      670 MOVE                             R30 R19
      671 GETTABLEKS                       R31 R18 K38 ["fromAction"]
      673 LOADK                            R32 K42 ["FileSync"]
      674 LOADK                            R33 K99 ["ResumeScriptSync"]
      675 CALL                             R31 2 1
      676 LOADK                            R32 K41 ["NonServices"]
      677 CALL                             R30 2 1
      678 MOVE                             R31 R19
      679 GETTABLEKS                       R32 R18 K38 ["fromAction"]
      681 LOADK                            R33 K42 ["FileSync"]
      682 LOADK                            R34 K100 ["ShowInFolder"]
      683 CALL                             R32 2 1
      684 LOADK                            R33 K41 ["NonServices"]
      685 CALL                             R31 2 1
      686 SETLIST                          R27 R28 4 [1]
      688 FASTCALL2                        TABLE_INSERT R22 R27 ; [+4]
      690 MOVE                             R26 R22
      691 GETIMPORT                        R25 K47 [table.insert]
      693 CALL                             R25 2 0
      694 MOVE                             R25 R11
      695 CALL                             R25 0 1
      696 JUMPIFNOT                        R25 ; [+172]
      697 MOVE                             R26 R12
      698 CALL                             R26 0 1
      699 JUMPIFNOT                        R26 ; [+2]
      700 LOADK                            R25 K53 ["All"]
      701 JUMP                             ; [+1]
      702 LOADK                            R25 K41 ["NonServices"]
      703 JUMPIFNOT                        R17 ; [+71]
      704 NEWTABLE                         R28 0 1
      706 NEWTABLE                         R30 0 1
      708 NEWTABLE                         R31 0 5
      710 MOVE                             R32 R19
      711 GETTABLEKS                       R33 R18 K38 ["fromAction"]
      713 LOADK                            R34 K42 ["FileSync"]
      714 LOADK                            R35 K97 ["StopScriptSync"]
      715 CALL                             R33 2 1
      716 MOVE                             R34 R25
      717 CALL                             R32 2 1
      718 MOVE                             R33 R19
      719 GETTABLEKS                       R34 R18 K38 ["fromAction"]
      721 LOADK                            R35 K42 ["FileSync"]
      722 LOADK                            R36 K101 ["StartSync"]
      723 CALL                             R34 2 1
      724 MOVE                             R35 R25
      725 CALL                             R33 2 1
      726 MOVE                             R34 R19
      727 GETTABLEKS                       R35 R18 K38 ["fromAction"]
      729 LOADK                            R36 K42 ["FileSync"]
      730 LOADK                            R37 K99 ["ResumeScriptSync"]
      731 CALL                             R35 2 1
      732 MOVE                             R36 R25
      733 CALL                             R34 2 1
      734 MOVE                             R35 R19
      735 GETTABLEKS                       R36 R18 K38 ["fromAction"]
      737 LOADK                            R37 K42 ["FileSync"]
      738 LOADK                            R38 K100 ["ShowInFolder"]
      739 CALL                             R36 2 1
      740 MOVE                             R37 R25
      741 CALL                             R35 2 1
      742 MOVE                             R36 R19
      743 GETTABLEKS                       R37 R18 K38 ["fromAction"]
      745 LOADK                            R38 K42 ["FileSync"]
      746 LOADK                            R39 K102 ["SelectSyncingRoot"]
      747 CALL                             R37 2 1
      748 MOVE                             R38 R25
      749 CALL                             R36 2 1
      750 SETLIST                          R31 R32 5 [1]
      752 SETLIST                          R30 R31 1 [1]
      754 DUPTABLE                         R29 K57 [{"key", "source"}]
      755 LOADK                            R31 K103 ["scriptSync"]
      756 SETTABLEKS                       R31 R29 K55 ["key"]
      758 DUPTABLE                         R31 K61 [{"type", "submenuCategories"}]
      759 LOADK                            R32 K62 ["submenu"]
      760 SETTABLEKS                       R32 R31 K59 ["type"]
      762 SETTABLEKS                       R30 R31 K60 ["submenuCategories"]
      764 SETTABLEKS                       R31 R29 K56 ["source"]
      766 SETLIST                          R28 R29 1 [1]
      768 FASTCALL2                        TABLE_INSERT R22 R28 ; [+4]
      770 MOVE                             R27 R22
      771 GETIMPORT                        R26 K47 [table.insert]
      773 CALL                             R26 2 0
      774 JUMP                             ; [+94]
      775 NEWTABLE                         R28 0 1
      777 NEWTABLE                         R30 0 1
      779 NEWTABLE                         R31 0 8
      781 MOVE                             R32 R19
      782 GETTABLEKS                       R33 R18 K38 ["fromAction"]
      784 LOADK                            R34 K42 ["FileSync"]
      785 LOADK                            R35 K97 ["StopScriptSync"]
      786 CALL                             R33 2 1
      787 MOVE                             R34 R25
      788 CALL                             R32 2 1
      789 MOVE                             R33 R19
      790 GETTABLEKS                       R34 R18 K38 ["fromAction"]
      792 LOADK                            R35 K42 ["FileSync"]
      793 LOADK                            R36 K104 ["StartSyncToNewFile"]
      794 CALL                             R34 2 1
      795 LOADK                            R35 K41 ["NonServices"]
      796 CALL                             R33 2 1
      797 MOVE                             R34 R19
      798 GETTABLEKS                       R35 R18 K38 ["fromAction"]
      800 LOADK                            R36 K42 ["FileSync"]
      801 LOADK                            R37 K105 ["StartSyncToExistingFile"]
      802 CALL                             R35 2 1
      803 LOADK                            R36 K41 ["NonServices"]
      804 CALL                             R34 2 1
      805 MOVE                             R35 R19
      806 GETTABLEKS                       R36 R18 K38 ["fromAction"]
      808 LOADK                            R37 K42 ["FileSync"]
      809 LOADK                            R38 K106 ["StartSyncSelectedInstancesTo"]
      810 CALL                             R36 2 1
      811 MOVE                             R37 R25
      812 CALL                             R35 2 1
      813 MOVE                             R36 R19
      814 GETTABLEKS                       R37 R18 K38 ["fromAction"]
      816 LOADK                            R38 K42 ["FileSync"]
      817 LOADK                            R39 K107 ["StartSyncToDirectory"]
      818 CALL                             R37 2 1
      819 MOVE                             R38 R25
      820 CALL                             R36 2 1
      821 MOVE                             R37 R19
      822 GETTABLEKS                       R38 R18 K38 ["fromAction"]
      824 LOADK                            R39 K42 ["FileSync"]
      825 LOADK                            R40 K99 ["ResumeScriptSync"]
      826 CALL                             R38 2 1
      827 MOVE                             R39 R25
      828 CALL                             R37 2 1
      829 MOVE                             R38 R19
      830 GETTABLEKS                       R39 R18 K38 ["fromAction"]
      832 LOADK                            R40 K42 ["FileSync"]
      833 LOADK                            R41 K100 ["ShowInFolder"]
      834 CALL                             R39 2 1
      835 MOVE                             R40 R25
      836 CALL                             R38 2 1
      837 MOVE                             R39 R19
      838 GETTABLEKS                       R40 R18 K38 ["fromAction"]
      840 LOADK                            R41 K42 ["FileSync"]
      841 LOADK                            R42 K102 ["SelectSyncingRoot"]
      842 CALL                             R40 2 1
      843 MOVE                             R41 R25
      844 CALL                             R39 2 1
      845 SETLIST                          R31 R32 8 [1]
      847 SETLIST                          R30 R31 1 [1]
      849 DUPTABLE                         R29 K57 [{"key", "source"}]
      850 LOADK                            R31 K103 ["scriptSync"]
      851 SETTABLEKS                       R31 R29 K55 ["key"]
      853 DUPTABLE                         R31 K61 [{"type", "submenuCategories"}]
      854 LOADK                            R32 K62 ["submenu"]
      855 SETTABLEKS                       R32 R31 K59 ["type"]
      857 SETTABLEKS                       R30 R31 K60 ["submenuCategories"]
      859 SETTABLEKS                       R31 R29 K56 ["source"]
      861 SETLIST                          R28 R29 1 [1]
      863 FASTCALL2                        TABLE_INSERT R22 R28 ; [+4]
      865 MOVE                             R27 R22
      866 GETIMPORT                        R26 K47 [table.insert]
      868 CALL                             R26 2 0
      869 MOVE                             R25 R13
      870 CALL                             R25 0 1
      871 JUMPIFNOT                        R25 ; [+87]
      872 NEWTABLE                         R27 0 4
      874 MOVE                             R28 R19
      875 GETTABLEKS                       R29 R18 K38 ["fromAction"]
      877 LOADK                            R30 K108 ["PackageTools"]
      878 LOADK                            R31 K109 ["PublishPackage"]
      879 CALL                             R29 2 1
      880 LOADK                            R30 K41 ["NonServices"]
      881 CALL                             R28 2 1
      882 MOVE                             R29 R19
      883 GETTABLEKS                       R30 R18 K38 ["fromAction"]
      885 LOADK                            R31 K108 ["PackageTools"]
      886 LOADK                            R32 K110 ["UndoPackageChanges"]
      887 CALL                             R30 2 1
      888 LOADK                            R31 K41 ["NonServices"]
      889 CALL                             R29 2 1
      890 MOVE                             R30 R19
      891 GETTABLEKS                       R31 R18 K38 ["fromAction"]
      893 LOADK                            R32 K108 ["PackageTools"]
      894 LOADK                            R33 K111 ["GetLatestPackage"]
      895 CALL                             R31 2 1
      896 LOADK                            R32 K41 ["NonServices"]
      897 CALL                             R30 2 1
      898 NEWTABLE                         R32 0 1
      900 NEWTABLE                         R33 0 4
      902 MOVE                             R34 R19
      903 GETTABLEKS                       R35 R18 K38 ["fromAction"]
      905 LOADK                            R36 K108 ["PackageTools"]
      906 LOADK                            R37 K112 ["DiffPackageAgainstLatest"]
      907 CALL                             R35 2 1
      908 LOADK                            R36 K41 ["NonServices"]
      909 CALL                             R34 2 1
      910 MOVE                             R35 R19
      911 GETTABLEKS                       R36 R18 K38 ["fromAction"]
      913 LOADK                            R37 K108 ["PackageTools"]
      914 LOADK                            R38 K113 ["MassUpdate"]
      915 CALL                             R36 2 1
      916 LOADK                            R37 K41 ["NonServices"]
      917 CALL                             R35 2 1
      918 MOVE                             R36 R19
      919 GETTABLEKS                       R37 R18 K38 ["fromAction"]
      921 LOADK                            R38 K108 ["PackageTools"]
      922 LOADK                            R39 K114 ["ShowPackagesDiff"]
      923 CALL                             R37 2 1
      924 LOADK                            R38 K41 ["NonServices"]
      925 CALL                             R36 2 1
      926 MOVE                             R37 R19
      927 GETTABLEKS                       R38 R18 K38 ["fromAction"]
      929 LOADK                            R39 K108 ["PackageTools"]
      930 LOADK                            R40 K115 ["PackageDetails"]
      931 CALL                             R38 2 1
      932 LOADK                            R39 K41 ["NonServices"]
      933 CALL                             R37 2 1
      934 SETLIST                          R33 R34 4 [1]
      936 SETLIST                          R32 R33 1 [1]
      938 DUPTABLE                         R31 K57 [{"key", "source"}]
      939 LOADK                            R33 K116 ["morePackageOptions"]
      940 SETTABLEKS                       R33 R31 K55 ["key"]
      942 DUPTABLE                         R33 K61 [{"type", "submenuCategories"}]
      943 LOADK                            R34 K62 ["submenu"]
      944 SETTABLEKS                       R34 R33 K59 ["type"]
      946 SETTABLEKS                       R32 R33 K60 ["submenuCategories"]
      948 SETTABLEKS                       R33 R31 K56 ["source"]
      950 SETLIST                          R27 R28 4 [1]
      952 FASTCALL2                        TABLE_INSERT R22 R27 ; [+4]
      954 MOVE                             R26 R22
      955 GETIMPORT                        R25 K47 [table.insert]
      957 CALL                             R25 2 0
      958 JUMP                             ; [+62]
      959 NEWTABLE                         R27 0 2
      961 MOVE                             R28 R19
      962 GETTABLEKS                       R29 R18 K38 ["fromAction"]
      964 LOADK                            R30 K108 ["PackageTools"]
      965 LOADK                            R31 K109 ["PublishPackage"]
      966 CALL                             R29 2 1
      967 LOADK                            R30 K41 ["NonServices"]
      968 CALL                             R28 2 1
      969 NEWTABLE                         R30 0 1
      971 NEWTABLE                         R31 0 3
      973 MOVE                             R32 R19
      974 GETTABLEKS                       R33 R18 K38 ["fromAction"]
      976 LOADK                            R34 K108 ["PackageTools"]
      977 LOADK                            R35 K113 ["MassUpdate"]
      978 CALL                             R33 2 1
      979 LOADK                            R34 K41 ["NonServices"]
      980 CALL                             R32 2 1
      981 MOVE                             R33 R19
      982 GETTABLEKS                       R34 R18 K38 ["fromAction"]
      984 LOADK                            R35 K108 ["PackageTools"]
      985 LOADK                            R36 K114 ["ShowPackagesDiff"]
      986 CALL                             R34 2 1
      987 LOADK                            R35 K41 ["NonServices"]
      988 CALL                             R33 2 1
      989 MOVE                             R34 R19
      990 GETTABLEKS                       R35 R18 K38 ["fromAction"]
      992 LOADK                            R36 K108 ["PackageTools"]
      993 LOADK                            R37 K115 ["PackageDetails"]
      994 CALL                             R35 2 1
      995 LOADK                            R36 K41 ["NonServices"]
      996 CALL                             R34 2 1
      997 SETLIST                          R31 R32 3 [1]
      999 SETLIST                          R30 R31 1 [1]
     1001 DUPTABLE                         R29 K57 [{"key", "source"}]
     1002 LOADK                            R31 K116 ["morePackageOptions"]
     1003 SETTABLEKS                       R31 R29 K55 ["key"]
     1005 DUPTABLE                         R31 K61 [{"type", "submenuCategories"}]
     1006 LOADK                            R32 K62 ["submenu"]
     1007 SETTABLEKS                       R32 R31 K59 ["type"]
     1009 SETTABLEKS                       R30 R31 K60 ["submenuCategories"]
     1011 SETTABLEKS                       R31 R29 K56 ["source"]
     1013 SETLIST                          R27 R28 2 [1]
     1015 FASTCALL2                        TABLE_INSERT R22 R27 ; [+4]
     1017 MOVE                             R26 R22
     1018 GETIMPORT                        R25 K47 [table.insert]
     1020 CALL                             R25 2 0
     1021 GETIMPORT                        R25 K118 [xpcall]
     1023 DUPCLOSURE                       R26 K119 [PROTO_5]
     1024 CAPTURE                          VAL R21
     1025 DUPCLOSURE                       R27 K120 [PROTO_6]
     1026 CAPTURE                          VAL R21
     1027 CALL                             R25 2 2
     1028 MOVE                             R27 R6
     1029 CALL                             R27 0 1
     1030 JUMPIFNOT                        R27 ; [+78]
     1031 GETIMPORT                        R27 K5 [require]
     1033 GETTABLEKS                       R29 R0 K10 ["Packages"]
     1035 GETTABLEKS                       R28 R29 K121 ["SharedPluginConstants"]
     1037 CALL                             R27 1 1
     1038 GETTABLEKS                       R29 R27 K122 ["REIMPORT"]
     1040 GETTABLEKS                       R28 R29 K123 ["ACTION_ID"]
     1042 GETTABLEKS                       R30 R27 K122 ["REIMPORT"]
     1044 GETTABLEKS                       R29 R30 K124 ["ACTION_EVENTS"]
     1046 NEWTABLE                         R32 0 1
     1048 NEWTABLE                         R34 0 1
     1050 NEWTABLE                         R35 0 3
     1052 MOVE                             R36 R19
     1053 GETTABLEKS                       R38 R29 K122 ["REIMPORT"]
     1055 GETTABLEKS                       R39 R18 K38 ["fromAction"]
     1057 MOVE                             R40 R28
     1058 MOVE                             R41 R38
     1059 CALL                             R39 2 1
     1060 MOVE                             R37 R39
     1061 LOADK                            R38 K41 ["NonServices"]
     1062 CALL                             R36 2 1
     1063 MOVE                             R37 R19
     1064 GETTABLEKS                       R39 R29 K125 ["REIMPORT_RELATIVE_TO_THIS"]
     1066 GETTABLEKS                       R40 R18 K38 ["fromAction"]
     1068 MOVE                             R41 R28
     1069 MOVE                             R42 R39
     1070 CALL                             R40 2 1
     1071 MOVE                             R38 R40
     1072 LOADK                            R39 K41 ["NonServices"]
     1073 CALL                             R37 2 1
     1074 MOVE                             R38 R19
     1075 GETTABLEKS                       R40 R29 K126 ["CONFIGURE"]
     1077 GETTABLEKS                       R41 R18 K38 ["fromAction"]
     1079 MOVE                             R42 R28
     1080 MOVE                             R43 R40
     1081 CALL                             R41 2 1
     1082 MOVE                             R39 R41
     1083 LOADK                            R40 K41 ["NonServices"]
     1084 CALL                             R38 2 1
     1085 SETLIST                          R35 R36 3 [1]
     1087 SETLIST                          R34 R35 1 [1]
     1089 DUPTABLE                         R33 K57 [{"key", "source"}]
     1090 LOADK                            R35 K127 ["Reimport"]
     1091 SETTABLEKS                       R35 R33 K55 ["key"]
     1093 DUPTABLE                         R35 K61 [{"type", "submenuCategories"}]
     1094 LOADK                            R36 K62 ["submenu"]
     1095 SETTABLEKS                       R36 R35 K59 ["type"]
     1097 SETTABLEKS                       R34 R35 K60 ["submenuCategories"]
     1099 SETTABLEKS                       R35 R33 K56 ["source"]
     1101 SETLIST                          R32 R33 1 [1]
     1103 FASTCALL2                        TABLE_INSERT R22 R32 ; [+4]
     1105 MOVE                             R31 R22
     1106 GETIMPORT                        R30 K47 [table.insert]
     1108 CALL                             R30 2 0
     1109 MOVE                             R27 R5
     1110 CALL                             R27 0 1
     1111 JUMPIF                           R27 ; [+102]
     1112 MOVE                             R28 R22
     1113 MOVE                             R29 R4
     1114 NEWTABLE                         R30 0 4
     1116 MOVE                             R32 R7
     1117 CALL                             R32 0 1
     1118 JUMPIFNOT                        R32 ; [+9]
     1119 MOVE                             R31 R19
     1120 GETTABLEKS                       R32 R18 K38 ["fromAction"]
     1122 LOADK                            R33 K128 ["LocalizationTools"]
     1123 LOADK                            R34 K129 ["SaveCsv"]
     1124 CALL                             R32 2 1
     1125 LOADK                            R33 K41 ["NonServices"]
     1126 CALL                             R31 2 1
     1127 JUMP                             ; [+1]
     1128 LOADNIL                          R31
     1129 MOVE                             R33 R7
     1130 CALL                             R33 0 1
     1131 JUMPIFNOT                        R33 ; [+9]
     1132 MOVE                             R32 R19
     1133 GETTABLEKS                       R33 R18 K38 ["fromAction"]
     1135 LOADK                            R34 K128 ["LocalizationTools"]
     1136 LOADK                            R35 K130 ["LoadCsv"]
     1137 CALL                             R33 2 1
     1138 LOADK                            R34 K41 ["NonServices"]
     1139 CALL                             R32 2 1
     1140 JUMP                             ; [+1]
     1141 LOADNIL                          R32
     1142 MOVE                             R33 R19
     1143 MOVE                             R34 R26
     1144 LOADK                            R35 K41 ["NonServices"]
     1145 CALL                             R33 2 1
     1146 NEWTABLE                         R35 0 1
     1148 NEWTABLE                         R36 0 5
     1150 MOVE                             R37 R19
     1151 GETTABLEKS                       R38 R18 K38 ["fromAction"]
     1153 LOADK                            R39 K131 ["Export"]
     1154 LOADK                            R40 K132 ["PublishSelectionToRoblox"]
     1155 CALL                             R38 2 1
     1156 LOADK                            R39 K41 ["NonServices"]
     1157 CALL                             R37 2 1
     1158 MOVE                             R38 R19
     1159 GETTABLEKS                       R39 R18 K38 ["fromAction"]
     1161 LOADK                            R40 K131 ["Export"]
     1162 LOADK                            R41 K133 ["SaveSelectionToFile"]
     1163 CALL                             R39 2 1
     1164 LOADK                            R40 K53 ["All"]
     1165 CALL                             R38 2 1
     1166 MOVE                             R39 R19
     1167 GETTABLEKS                       R40 R18 K38 ["fromAction"]
     1169 LOADK                            R41 K134 ["PluginManagement"]
     1170 LOADK                            R42 K135 ["SaveAsLocalPlugin"]
     1171 CALL                             R40 2 1
     1172 LOADK                            R41 K53 ["All"]
     1173 CALL                             R39 2 1
     1174 MOVE                             R40 R19
     1175 GETTABLEKS                       R41 R18 K38 ["fromAction"]
     1177 LOADK                            R42 K134 ["PluginManagement"]
     1178 LOADK                            R43 K136 ["PublishToRoblox"]
     1179 CALL                             R41 2 1
     1180 LOADK                            R42 K53 ["All"]
     1181 CALL                             R40 2 1
     1182 MOVE                             R41 R19
     1183 GETTABLEKS                       R42 R18 K38 ["fromAction"]
     1185 LOADK                            R43 K131 ["Export"]
     1186 LOADK                            R44 K137 ["ExportSelection"]
     1187 CALL                             R42 2 1
     1188 LOADK                            R43 K53 ["All"]
     1189 CALL                             R41 2 1
     1190 SETLIST                          R36 R37 5 [1]
     1192 SETLIST                          R35 R36 1 [1]
     1194 DUPTABLE                         R34 K57 [{"key", "source"}]
     1195 LOADK                            R36 K138 ["saveAndExport"]
     1196 SETTABLEKS                       R36 R34 K55 ["key"]
     1198 DUPTABLE                         R36 K61 [{"type", "submenuCategories"}]
     1199 LOADK                            R37 K62 ["submenu"]
     1200 SETTABLEKS                       R37 R36 K59 ["type"]
     1202 SETTABLEKS                       R35 R36 K60 ["submenuCategories"]
     1204 SETTABLEKS                       R36 R34 K56 ["source"]
     1206 SETLIST                          R30 R31 4 [1]
     1208 CALL                             R29 1 -1
     1209 FASTCALL                         TABLE_INSERT ; [+2]
     1210 GETIMPORT                        R27 K47 [table.insert]
     1212 CALL                             R27 -1 0
     1213 JUMP                             ; [+109]
     1214 MOVE                             R28 R22
     1215 MOVE                             R29 R4
     1216 NEWTABLE                         R30 0 4
     1218 MOVE                             R32 R7
     1219 CALL                             R32 0 1
     1220 JUMPIFNOT                        R32 ; [+9]
     1221 MOVE                             R31 R19
     1222 GETTABLEKS                       R32 R18 K38 ["fromAction"]
     1224 LOADK                            R33 K128 ["LocalizationTools"]
     1225 LOADK                            R34 K129 ["SaveCsv"]
     1226 CALL                             R32 2 1
     1227 LOADK                            R33 K41 ["NonServices"]
     1228 CALL                             R31 2 1
     1229 JUMP                             ; [+1]
     1230 LOADNIL                          R31
     1231 MOVE                             R33 R7
     1232 CALL                             R33 0 1
     1233 JUMPIFNOT                        R33 ; [+9]
     1234 MOVE                             R32 R19
     1235 GETTABLEKS                       R33 R18 K38 ["fromAction"]
     1237 LOADK                            R34 K128 ["LocalizationTools"]
     1238 LOADK                            R35 K130 ["LoadCsv"]
     1239 CALL                             R33 2 1
     1240 LOADK                            R34 K41 ["NonServices"]
     1241 CALL                             R32 2 1
     1242 JUMP                             ; [+1]
     1243 LOADNIL                          R32
     1244 MOVE                             R33 R19
     1245 MOVE                             R34 R26
     1246 LOADK                            R35 K41 ["NonServices"]
     1247 CALL                             R33 2 1
     1248 NEWTABLE                         R35 0 1
     1250 NEWTABLE                         R36 0 6
     1252 MOVE                             R37 R19
     1253 GETTABLEKS                       R38 R18 K38 ["fromAction"]
     1255 LOADK                            R39 K131 ["Export"]
     1256 LOADK                            R40 K132 ["PublishSelectionToRoblox"]
     1257 CALL                             R38 2 1
     1258 LOADK                            R39 K41 ["NonServices"]
     1259 CALL                             R37 2 1
     1260 MOVE                             R38 R19
     1261 GETTABLEKS                       R39 R18 K38 ["fromAction"]
     1263 LOADK                            R40 K131 ["Export"]
     1264 LOADK                            R41 K133 ["SaveSelectionToFile"]
     1265 CALL                             R39 2 1
     1266 LOADK                            R40 K53 ["All"]
     1267 CALL                             R38 2 1
     1268 MOVE                             R39 R19
     1269 GETTABLEKS                       R40 R18 K38 ["fromAction"]
     1271 LOADK                            R41 K134 ["PluginManagement"]
     1272 LOADK                            R42 K135 ["SaveAsLocalPlugin"]
     1273 CALL                             R40 2 1
     1274 LOADK                            R41 K53 ["All"]
     1275 CALL                             R39 2 1
     1276 MOVE                             R40 R19
     1277 GETTABLEKS                       R41 R18 K38 ["fromAction"]
     1279 LOADK                            R42 K134 ["PluginManagement"]
     1280 LOADK                            R43 K136 ["PublishToRoblox"]
     1281 CALL                             R41 2 1
     1282 LOADK                            R42 K53 ["All"]
     1283 CALL                             R40 2 1
     1284 MOVE                             R41 R19
     1285 GETTABLEKS                       R42 R18 K38 ["fromAction"]
     1287 LOADK                            R43 K131 ["Export"]
     1288 LOADK                            R44 K137 ["ExportSelection"]
     1289 CALL                             R42 2 1
     1290 LOADK                            R43 K53 ["All"]
     1291 CALL                             R41 2 1
     1292 MOVE                             R42 R19
     1293 GETTABLEKS                       R43 R18 K38 ["fromAction"]
     1295 LOADK                            R44 K131 ["Export"]
     1296 LOADK                            R45 K139 ["ExportAsGltf"]
     1297 CALL                             R43 2 1
     1298 LOADK                            R44 K53 ["All"]
     1299 CALL                             R42 2 1
     1300 SETLIST                          R36 R37 6 [1]
     1302 SETLIST                          R35 R36 1 [1]
     1304 DUPTABLE                         R34 K57 [{"key", "source"}]
     1305 LOADK                            R36 K138 ["saveAndExport"]
     1306 SETTABLEKS                       R36 R34 K55 ["key"]
     1308 DUPTABLE                         R36 K61 [{"type", "submenuCategories"}]
     1309 LOADK                            R37 K62 ["submenu"]
     1310 SETTABLEKS                       R37 R36 K59 ["type"]
     1312 SETTABLEKS                       R35 R36 K60 ["submenuCategories"]
     1314 SETTABLEKS                       R36 R34 K56 ["source"]
     1316 SETLIST                          R30 R31 4 [1]
     1318 CALL                             R29 1 -1
     1319 FASTCALL                         TABLE_INSERT ; [+2]
     1320 GETIMPORT                        R27 K47 [table.insert]
     1322 CALL                             R27 -1 0
     1323 NEWTABLE                         R29 0 2
     1325 MOVE                             R30 R19
     1326 GETTABLEKS                       R31 R18 K38 ["fromAction"]
     1328 LOADK                            R32 K140 ["InsertService"]
     1329 LOADK                            R33 K141 ["ShowServices"]
     1330 CALL                             R31 2 1
     1331 LOADK                            R32 K142 ["ServicesAndBlank"]
     1332 CALL                             R30 2 1
     1333 MOVE                             R31 R19
     1334 GETTABLEKS                       R32 R18 K38 ["fromAction"]
     1336 LOADK                            R33 K140 ["InsertService"]
     1337 LOADK                            R34 K143 ["HideService"]
     1338 CALL                             R32 2 1
     1339 LOADK                            R33 K144 ["Services"]
     1340 CALL                             R31 2 1
     1341 SETLIST                          R29 R30 2 [1]
     1343 FASTCALL2                        TABLE_INSERT R22 R29 ; [+4]
     1345 MOVE                             R28 R22
     1346 GETIMPORT                        R27 K47 [table.insert]
     1348 CALL                             R27 2 0
     1349 NEWTABLE                         R29 0 1
     1351 MOVE                             R30 R19
     1352 GETTABLEKS                       R31 R18 K38 ["fromAction"]
     1354 LOADK                            R32 K48 ["Common"]
     1355 LOADK                            R33 K145 ["Help"]
     1356 CALL                             R31 2 1
     1357 LOADK                            R32 K53 ["All"]
     1358 CALL                             R30 2 1
     1359 SETLIST                          R29 R30 1 [1]
     1361 FASTCALL2                        TABLE_INSERT R22 R29 ; [+4]
     1363 MOVE                             R28 R22
     1364 GETIMPORT                        R27 K47 [table.insert]
     1366 CALL                             R27 2 0
     1367 RETURN                           R22 1
