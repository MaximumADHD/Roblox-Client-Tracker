PROTO_0:
        0 DUPTABLE                         R4 K2 [{"key", "source"}]
        1 MOVE                             R5 R3
        2 JUMPIF                           R5 ; [+5]
        3 GETUPVAL                         R5 0
        4 GETTABLEKS                       R5 R5 K3 ["toString"]
        6 MOVE                             R6 R0
        7 CALL                             R5 1 1
        8 SETTABLEKS                       R5 R4 K0 ["key"]
       10 DUPTABLE                         R5 K9 [{["type"] = "studioAction", ["uri"], ["expectation"], ["shouldShow"]}]
       11 SETTABLEKS                       R0 R5 K6 ["uri"]
       13 SETTABLEKS                       R1 R5 K7 ["expectation"]
       15 SETTABLEKS                       R2 R5 K8 ["shouldShow"]
       17 SETTABLEKS                       R5 R4 K1 ["source"]
       19 RETURN                           R4 1

PROTO_1:
        0 DUPTABLE                         R2 K2 [{"key", "source"}]
        1 SETTABLEKS                       R0 R2 K0 ["key"]
        3 DUPTABLE                         R3 K6 [{["type"] = "submenu", ["submenuCategories"]}]
        4 SETTABLEKS                       R1 R3 K5 ["submenuCategories"]
        6 SETTABLEKS                       R3 R2 K1 ["source"]
        8 RETURN                           R2 1

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
       65 GETTABLEKS                       R8 R8 K18 ["getFFlagLuaExplorerHierarchySync"]
       67 CALL                             R7 1 1
       68 GETIMPORT                        R8 K5 [require]
       70 GETTABLEKS                       R9 R0 K6 ["Src"]
       72 GETTABLEKS                       R9 R9 K15 ["Flags"]
       74 GETTABLEKS                       R9 R9 K19 ["getFFlagLuaExplorerPackages"]
       76 CALL                             R8 1 1
       77 GETIMPORT                        R9 K5 [require]
       79 GETTABLEKS                       R10 R0 K6 ["Src"]
       81 GETTABLEKS                       R10 R10 K15 ["Flags"]
       83 GETTABLEKS                       R10 R10 K20 ["getFFlagPackageCondensedContextMenu"]
       85 CALL                             R9 1 1
       86 GETIMPORT                        R10 K5 [require]
       88 GETTABLEKS                       R11 R0 K6 ["Src"]
       90 GETTABLEKS                       R11 R11 K15 ["Flags"]
       92 GETTABLEKS                       R11 R11 K21 ["getFFlagReimportClearAction"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K5 [require]
       97 GETTABLEKS                       R12 R0 K6 ["Src"]
       99 GETTABLEKS                       R12 R12 K15 ["Flags"]
      101 GETTABLEKS                       R12 R12 K22 ["getFFlagReimportFileWatcher"]
      103 CALL                             R11 1 1
      104 GETIMPORT                        R12 K24 [game]
      106 LOADK                            R14 K25 ["CopyPathAction"]
      107 NAMECALL                         R12 R12 K26 ["GetEngineFeature"]
      109 CALL                             R12 2 1
      110 GETIMPORT                        R13 K24 [game]
      112 LOADK                            R15 K27 ["CopyUniqueIdAction"]
      113 NAMECALL                         R13 R13 K26 ["GetEngineFeature"]
      115 CALL                             R13 2 1
      116 GETIMPORT                        R14 K24 [game]
      118 LOADK                            R16 K28 ["UnifiedSyncActions"]
      119 NAMECALL                         R14 R14 K26 ["GetEngineFeature"]
      121 CALL                             R14 2 1
      122 GETTABLEKS                       R15 R3 K13 ["Util"]
      124 GETTABLEKS                       R15 R15 K29 ["StudioUri"]
      126 DUPCLOSURE                       R16 K30 [PROTO_0]
      127 CAPTURE                          VAL R15
      128 DUPCLOSURE                       R17 K31 [PROTO_1]
      129 DUPCLOSURE                       R18 K32 [PROTO_2]
      130 CAPTURE                          VAL R15
      131 NEWTABLE                         R19 0 0
      133 DUPCLOSURE                       R20 K33 [PROTO_3]
      134 DUPCLOSURE                       R21 K34 [PROTO_4]
      135 MOVE                             R22 R7
      136 CALL                             R22 0 1
      137 JUMPIFNOT                        R22 ; [+35]
      138 NEWTABLE                         R24 0 3
      140 MOVE                             R25 R16
      141 GETTABLEKS                       R26 R15 K35 ["fromAction"]
      143 LOADK                            R27 K36 ["ScriptTools"]
      144 LOADK                            R28 K37 ["Open"]
      145 CALL                             R26 2 1
      146 LOADK                            R27 K38 ["NonServices"]
      147 CALL                             R25 2 1
      148 MOVE                             R26 R16
      149 GETTABLEKS                       R27 R15 K35 ["fromAction"]
      151 LOADK                            R28 K39 ["FileSync"]
      152 LOADK                            R29 K40 ["OpenInExternalEditor"]
      153 CALL                             R27 2 1
      154 LOADK                            R28 K38 ["NonServices"]
      155 CALL                             R26 2 1
      156 MOVE                             R27 R16
      157 GETTABLEKS                       R28 R15 K35 ["fromAction"]
      159 LOADK                            R29 K36 ["ScriptTools"]
      160 LOADK                            R30 K41 ["OpenScriptHistory"]
      161 CALL                             R28 2 1
      162 LOADK                            R29 K38 ["NonServices"]
      163 CALL                             R27 2 1
      164 SETLIST                          R24 R25 3 [1]
      166 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      168 MOVE                             R23 R19
      169 GETIMPORT                        R22 K44 [table.insert]
      171 CALL                             R22 2 0
      172 JUMP                             ; [+26]
      173 NEWTABLE                         R24 0 2
      175 MOVE                             R25 R16
      176 GETTABLEKS                       R26 R15 K35 ["fromAction"]
      178 LOADK                            R27 K36 ["ScriptTools"]
      179 LOADK                            R28 K37 ["Open"]
      180 CALL                             R26 2 1
      181 LOADK                            R27 K38 ["NonServices"]
      182 CALL                             R25 2 1
      183 MOVE                             R26 R16
      184 GETTABLEKS                       R27 R15 K35 ["fromAction"]
      186 LOADK                            R28 K36 ["ScriptTools"]
      187 LOADK                            R29 K41 ["OpenScriptHistory"]
      188 CALL                             R27 2 1
      189 LOADK                            R28 K38 ["NonServices"]
      190 CALL                             R26 2 1
      191 SETLIST                          R24 R25 2 [1]
      193 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      195 MOVE                             R23 R19
      196 GETIMPORT                        R22 K44 [table.insert]
      198 CALL                             R22 2 0
      199 MOVE                             R23 R19
      200 MOVE                             R24 R4
      201 NEWTABLE                         R25 0 8
      203 MOVE                             R26 R16
      204 GETTABLEKS                       R27 R15 K35 ["fromAction"]
      206 LOADK                            R28 K45 ["Common"]
      207 LOADK                            R29 K46 ["Cut"]
      208 CALL                             R27 2 1
      209 LOADK                            R28 K38 ["NonServices"]
      210 CALL                             R26 2 1
      211 MOVE                             R27 R16
      212 GETTABLEKS                       R28 R15 K35 ["fromAction"]
      214 LOADK                            R29 K45 ["Common"]
      215 LOADK                            R30 K47 ["Copy"]
      216 CALL                             R28 2 1
      217 LOADK                            R29 K38 ["NonServices"]
      218 CALL                             R27 2 1
      219 JUMPIF                           R12 ; [+1]
      220 JUMPIFNOT                        R13 ; [+39]
      221 NEWTABLE                         R29 0 1
      223 MOVE                             R30 R4
      224 NEWTABLE                         R31 0 2
      226 JUMPIFNOT                        R12 ; [+9]
      227 MOVE                             R32 R16
      228 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      230 LOADK                            R34 K48 ["BuilderTools"]
      231 LOADK                            R35 K49 ["CopyPath"]
      232 CALL                             R33 2 1
      233 LOADK                            R34 K50 ["All"]
      234 CALL                             R32 2 1
      235 JUMP                             ; [+1]
      236 LOADNIL                          R32
      237 JUMPIFNOT                        R13 ; [+9]
      238 MOVE                             R33 R16
      239 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      241 LOADK                            R35 K48 ["BuilderTools"]
      242 LOADK                            R36 K51 ["CopyUniqueId"]
      243 CALL                             R34 2 1
      244 LOADK                            R35 K50 ["All"]
      245 CALL                             R33 2 1
      246 JUMP                             ; [+1]
      247 LOADNIL                          R33
      248 SETLIST                          R31 R32 2 [1]
      250 CALL                             R30 1 -1
      251 SETLIST                          R29 R30 -1 [1]
      253 DUPTABLE                         R28 K55 [{["key"] = "CopyAs", ["source"]}]
      254 DUPTABLE                         R30 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      255 SETTABLEKS                       R29 R30 K58 ["submenuCategories"]
      257 SETTABLEKS                       R30 R28 K54 ["source"]
      259 JUMP                             ; [+1]
      260 LOADNIL                          R28
      261 MOVE                             R29 R16
      262 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      264 LOADK                            R31 K45 ["Common"]
      265 LOADK                            R32 K60 ["PasteInto"]
      266 CALL                             R30 2 1
      267 LOADK                            R31 K50 ["All"]
      268 CALL                             R29 2 1
      269 MOVE                             R30 R16
      270 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      272 LOADK                            R32 K48 ["BuilderTools"]
      273 LOADK                            R33 K61 ["PasteIntoAtOriginalLocation"]
      274 CALL                             R31 2 1
      275 LOADK                            R32 K50 ["All"]
      276 CALL                             R30 2 1
      277 MOVE                             R31 R16
      278 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      280 LOADK                            R33 K45 ["Common"]
      281 LOADK                            R34 K62 ["Duplicate"]
      282 CALL                             R32 2 1
      283 LOADK                            R33 K38 ["NonServices"]
      284 CALL                             R31 2 1
      285 MOVE                             R32 R16
      286 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      288 LOADK                            R34 K45 ["Common"]
      289 LOADK                            R35 K63 ["Delete"]
      290 CALL                             R33 2 1
      291 LOADK                            R34 K38 ["NonServices"]
      292 CALL                             R32 2 1
      293 MOVE                             R33 R16
      294 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      296 LOADK                            R35 K11 ["Explorer"]
      297 LOADK                            R36 K64 ["Rename"]
      298 CALL                             R34 2 1
      299 LOADK                            R35 K50 ["All"]
      300 LOADNIL                          R36
      301 GETTABLEKS                       R37 R2 K65 ["Data"]
      303 GETTABLEKS                       R37 R37 K8 ["ContextMenu"]
      305 GETTABLEKS                       R37 R37 K66 ["coreItems"]
      307 GETTABLEKS                       R37 R37 K67 ["rename"]
      309 CALL                             R33 4 1
      310 SETLIST                          R25 R26 8 [1]
      312 CALL                             R24 1 -1
      313 FASTCALL                         TABLE_INSERT ; [+2]
      314 GETIMPORT                        R22 K44 [table.insert]
      316 CALL                             R22 -1 0
      317 NEWTABLE                         R24 0 4
      319 MOVE                             R25 R16
      320 GETTABLEKS                       R26 R15 K35 ["fromAction"]
      322 LOADK                            R27 K48 ["BuilderTools"]
      323 LOADK                            R28 K68 ["GroupAsModel"]
      324 CALL                             R26 2 1
      325 LOADK                            R27 K38 ["NonServices"]
      326 CALL                             R25 2 1
      327 MOVE                             R26 R16
      328 GETTABLEKS                       R27 R15 K35 ["fromAction"]
      330 LOADK                            R28 K48 ["BuilderTools"]
      331 LOADK                            R29 K69 ["GroupAsFolder"]
      332 CALL                             R27 2 1
      333 LOADK                            R28 K38 ["NonServices"]
      334 CALL                             R26 2 1
      335 MOVE                             R27 R16
      336 GETTABLEKS                       R28 R15 K35 ["fromAction"]
      338 LOADK                            R29 K48 ["BuilderTools"]
      339 LOADK                            R30 K70 ["Ungroup"]
      340 CALL                             R28 2 1
      341 LOADK                            R29 K38 ["NonServices"]
      342 CALL                             R27 2 1
      343 NEWTABLE                         R29 0 1
      345 NEWTABLE                         R30 0 4
      347 MOVE                             R31 R16
      348 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      350 LOADK                            R33 K48 ["BuilderTools"]
      351 LOADK                            R34 K71 ["UnionSelection"]
      352 CALL                             R32 2 1
      353 LOADK                            R33 K38 ["NonServices"]
      354 CALL                             R31 2 1
      355 MOVE                             R32 R16
      356 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      358 LOADK                            R34 K48 ["BuilderTools"]
      359 LOADK                            R35 K72 ["IntersectSelection"]
      360 CALL                             R33 2 1
      361 LOADK                            R34 K38 ["NonServices"]
      362 CALL                             R32 2 1
      363 MOVE                             R33 R16
      364 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      366 LOADK                            R35 K48 ["BuilderTools"]
      367 LOADK                            R36 K73 ["NegateSelection"]
      368 CALL                             R34 2 1
      369 LOADK                            R35 K38 ["NonServices"]
      370 CALL                             R33 2 1
      371 MOVE                             R34 R16
      372 GETTABLEKS                       R35 R15 K35 ["fromAction"]
      374 LOADK                            R36 K48 ["BuilderTools"]
      375 LOADK                            R37 K74 ["SeparateSelection"]
      376 CALL                             R35 2 1
      377 LOADK                            R36 K38 ["NonServices"]
      378 CALL                             R34 2 1
      379 SETLIST                          R30 R31 4 [1]
      381 SETLIST                          R29 R30 1 [1]
      383 DUPTABLE                         R28 K76 [{["key"] = "solidModeling", ["source"]}]
      384 DUPTABLE                         R30 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      385 SETTABLEKS                       R29 R30 K58 ["submenuCategories"]
      387 SETTABLEKS                       R30 R28 K54 ["source"]
      389 SETLIST                          R24 R25 4 [1]
      391 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      393 MOVE                             R23 R19
      394 GETIMPORT                        R22 K44 [table.insert]
      396 CALL                             R22 2 0
      397 MOVE                             R23 R19
      398 MOVE                             R24 R4
      399 NEWTABLE                         R25 0 5
      401 NEWTABLE                         R27 0 1
      403 NEWTABLE                         R28 0 3
      405 MOVE                             R29 R16
      406 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      408 LOADK                            R31 K48 ["BuilderTools"]
      409 LOADK                            R32 K77 ["InsertPartIntoSelection"]
      410 CALL                             R30 2 1
      411 LOADK                            R31 K50 ["All"]
      412 CALL                             R29 2 1
      413 MOVE                             R30 R16
      414 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      416 LOADK                            R32 K48 ["BuilderTools"]
      417 LOADK                            R33 K78 ["InsertObject"]
      418 CALL                             R31 2 1
      419 LOADK                            R32 K50 ["All"]
      420 CALL                             R30 2 1
      421 MOVE                             R31 R16
      422 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      424 LOADK                            R33 K48 ["BuilderTools"]
      425 LOADK                            R34 K79 ["InsertFromFile"]
      426 CALL                             R32 2 1
      427 LOADK                            R33 K50 ["All"]
      428 CALL                             R31 2 1
      429 SETLIST                          R28 R29 3 [1]
      431 SETLIST                          R27 R28 1 [1]
      433 DUPTABLE                         R26 K80 [{["key"] = "insert", ["source"]}]
      434 DUPTABLE                         R28 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      435 SETTABLEKS                       R27 R28 K58 ["submenuCategories"]
      437 SETTABLEKS                       R28 R26 K54 ["source"]
      439 MOVE                             R28 R4
      440 NEWTABLE                         R29 0 1
      442 NEWTABLE                         R30 0 4
      444 MOVE                             R31 R16
      445 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      447 LOADK                            R33 K45 ["Common"]
      448 LOADK                            R34 K81 ["SelectParents"]
      449 CALL                             R32 2 1
      450 LOADK                            R33 K38 ["NonServices"]
      451 LOADNIL                          R34
      452 CALL                             R31 3 1
      453 MOVE                             R32 R16
      454 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      456 LOADK                            R34 K45 ["Common"]
      457 LOADK                            R35 K82 ["SelectChildren"]
      458 CALL                             R33 2 1
      459 LOADK                            R34 K50 ["All"]
      460 LOADNIL                          R35
      461 CALL                             R32 3 1
      462 MOVE                             R33 R16
      463 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      465 LOADK                            R35 K11 ["Explorer"]
      466 LOADK                            R36 K83 ["ExpandAll"]
      467 CALL                             R34 2 1
      468 LOADK                            R35 K50 ["All"]
      469 LOADNIL                          R36
      470 GETTABLEKS                       R37 R2 K65 ["Data"]
      472 GETTABLEKS                       R37 R37 K8 ["ContextMenu"]
      474 GETTABLEKS                       R37 R37 K66 ["coreItems"]
      476 GETTABLEKS                       R37 R37 K84 ["expandAll"]
      478 CALL                             R33 4 1
      479 MOVE                             R34 R16
      480 GETTABLEKS                       R35 R15 K35 ["fromAction"]
      482 LOADK                            R36 K11 ["Explorer"]
      483 LOADK                            R37 K85 ["CollapseAll"]
      484 CALL                             R35 2 1
      485 LOADK                            R36 K50 ["All"]
      486 LOADNIL                          R37
      487 GETTABLEKS                       R38 R2 K65 ["Data"]
      489 GETTABLEKS                       R38 R38 K8 ["ContextMenu"]
      491 GETTABLEKS                       R38 R38 K66 ["coreItems"]
      493 GETTABLEKS                       R38 R38 K86 ["collapseAll"]
      495 CALL                             R34 4 1
      496 SETLIST                          R30 R31 4 [1]
      498 SETLIST                          R29 R30 1 [1]
      500 CALL                             R28 1 1
      501 DUPTABLE                         R27 K88 [{["key"] = "hierarchy", ["source"]}]
      502 DUPTABLE                         R29 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      503 SETTABLEKS                       R28 R29 K58 ["submenuCategories"]
      505 SETTABLEKS                       R29 R27 K54 ["source"]
      507 MOVE                             R28 R16
      508 GETTABLEKS                       R29 R15 K35 ["fromAction"]
      510 LOADK                            R30 K48 ["BuilderTools"]
      511 LOADK                            R31 K89 ["ZoomExtents"]
      512 CALL                             R29 2 1
      513 LOADK                            R30 K38 ["NonServices"]
      514 MOVE                             R31 R20
      515 CALL                             R28 3 1
      516 MOVE                             R29 R16
      517 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      519 LOADK                            R31 K48 ["BuilderTools"]
      520 LOADK                            R32 K90 ["ShowOrientationIndicator"]
      521 CALL                             R30 2 1
      522 LOADK                            R31 K38 ["NonServices"]
      523 CALL                             R29 2 1
      524 MOVE                             R30 R16
      525 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      527 LOADK                            R32 K36 ["ScriptTools"]
      528 LOADK                            R33 K91 ["ToggleScripts"]
      529 CALL                             R31 2 1
      530 LOADK                            R32 K38 ["NonServices"]
      531 CALL                             R30 2 1
      532 SETLIST                          R25 R26 5 [1]
      534 CALL                             R24 1 -1
      535 FASTCALL                         TABLE_INSERT ; [+2]
      536 GETIMPORT                        R22 K44 [table.insert]
      538 CALL                             R22 -1 0
      539 NEWTABLE                         R24 0 4
      541 MOVE                             R25 R16
      542 GETTABLEKS                       R26 R15 K35 ["fromAction"]
      544 LOADK                            R27 K92 ["PluginDebugging"]
      545 LOADK                            R28 K93 ["SaveAndReloadDebuggablePlugin"]
      546 CALL                             R26 2 1
      547 LOADK                            R27 K50 ["All"]
      548 CALL                             R25 2 1
      549 MOVE                             R26 R16
      550 GETTABLEKS                       R27 R15 K35 ["fromAction"]
      552 LOADK                            R28 K92 ["PluginDebugging"]
      553 LOADK                            R29 K94 ["ReloadDebuggablePlugin"]
      554 CALL                             R27 2 1
      555 LOADK                            R28 K50 ["All"]
      556 CALL                             R26 2 1
      557 MOVE                             R27 R16
      558 GETTABLEKS                       R28 R15 K35 ["fromAction"]
      560 LOADK                            R29 K92 ["PluginDebugging"]
      561 LOADK                            R30 K95 ["SaveAndReloadAllDebuggablePlugins"]
      562 CALL                             R28 2 1
      563 LOADK                            R29 K50 ["All"]
      564 MOVE                             R30 R21
      565 CALL                             R27 3 1
      566 MOVE                             R28 R16
      567 GETTABLEKS                       R29 R15 K35 ["fromAction"]
      569 LOADK                            R30 K92 ["PluginDebugging"]
      570 LOADK                            R31 K96 ["SaveBuildAndReloadDebuggablePlugin"]
      571 CALL                             R29 2 1
      572 LOADK                            R30 K50 ["All"]
      573 CALL                             R28 2 1
      574 SETLIST                          R24 R25 4 [1]
      576 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      578 MOVE                             R23 R19
      579 GETIMPORT                        R22 K44 [table.insert]
      581 CALL                             R22 2 0
      582 MOVE                             R22 R7
      583 CALL                             R22 0 1
      584 JUMPIFNOT                        R22 ; [+154]
      585 JUMPIFNOT                        R14 ; [+65]
      586 NEWTABLE                         R24 0 1
      588 NEWTABLE                         R26 0 1
      590 NEWTABLE                         R27 0 5
      592 MOVE                             R28 R16
      593 GETTABLEKS                       R29 R15 K35 ["fromAction"]
      595 LOADK                            R30 K39 ["FileSync"]
      596 LOADK                            R31 K97 ["StopScriptSync"]
      597 CALL                             R29 2 1
      598 LOADK                            R30 K50 ["All"]
      599 CALL                             R28 2 1
      600 MOVE                             R29 R16
      601 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      603 LOADK                            R31 K39 ["FileSync"]
      604 LOADK                            R32 K98 ["StartSync"]
      605 CALL                             R30 2 1
      606 LOADK                            R31 K50 ["All"]
      607 CALL                             R29 2 1
      608 MOVE                             R30 R16
      609 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      611 LOADK                            R32 K39 ["FileSync"]
      612 LOADK                            R33 K99 ["ResumeScriptSync"]
      613 CALL                             R31 2 1
      614 LOADK                            R32 K50 ["All"]
      615 CALL                             R30 2 1
      616 MOVE                             R31 R16
      617 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      619 LOADK                            R33 K39 ["FileSync"]
      620 LOADK                            R34 K100 ["ShowInFolder"]
      621 CALL                             R32 2 1
      622 LOADK                            R33 K50 ["All"]
      623 CALL                             R31 2 1
      624 MOVE                             R32 R16
      625 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      627 LOADK                            R34 K39 ["FileSync"]
      628 LOADK                            R35 K101 ["SelectSyncingRoot"]
      629 CALL                             R33 2 1
      630 LOADK                            R34 K50 ["All"]
      631 CALL                             R32 2 1
      632 SETLIST                          R27 R28 5 [1]
      634 SETLIST                          R26 R27 1 [1]
      636 DUPTABLE                         R25 K103 [{["key"] = "scriptSync", ["source"]}]
      637 DUPTABLE                         R27 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      638 SETTABLEKS                       R26 R27 K58 ["submenuCategories"]
      640 SETTABLEKS                       R27 R25 K54 ["source"]
      642 SETLIST                          R24 R25 1 [1]
      644 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      646 MOVE                             R23 R19
      647 GETIMPORT                        R22 K44 [table.insert]
      649 CALL                             R22 2 0
      650 JUMP                             ; [+88]
      651 NEWTABLE                         R24 0 1
      653 NEWTABLE                         R26 0 1
      655 NEWTABLE                         R27 0 8
      657 MOVE                             R28 R16
      658 GETTABLEKS                       R29 R15 K35 ["fromAction"]
      660 LOADK                            R30 K39 ["FileSync"]
      661 LOADK                            R31 K97 ["StopScriptSync"]
      662 CALL                             R29 2 1
      663 LOADK                            R30 K50 ["All"]
      664 CALL                             R28 2 1
      665 MOVE                             R29 R16
      666 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      668 LOADK                            R31 K39 ["FileSync"]
      669 LOADK                            R32 K104 ["StartSyncToNewFile"]
      670 CALL                             R30 2 1
      671 LOADK                            R31 K38 ["NonServices"]
      672 CALL                             R29 2 1
      673 MOVE                             R30 R16
      674 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      676 LOADK                            R32 K39 ["FileSync"]
      677 LOADK                            R33 K105 ["StartSyncToExistingFile"]
      678 CALL                             R31 2 1
      679 LOADK                            R32 K38 ["NonServices"]
      680 CALL                             R30 2 1
      681 MOVE                             R31 R16
      682 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      684 LOADK                            R33 K39 ["FileSync"]
      685 LOADK                            R34 K106 ["StartSyncSelectedInstancesTo"]
      686 CALL                             R32 2 1
      687 LOADK                            R33 K50 ["All"]
      688 CALL                             R31 2 1
      689 MOVE                             R32 R16
      690 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      692 LOADK                            R34 K39 ["FileSync"]
      693 LOADK                            R35 K107 ["StartSyncToDirectory"]
      694 CALL                             R33 2 1
      695 LOADK                            R34 K50 ["All"]
      696 CALL                             R32 2 1
      697 MOVE                             R33 R16
      698 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      700 LOADK                            R35 K39 ["FileSync"]
      701 LOADK                            R36 K99 ["ResumeScriptSync"]
      702 CALL                             R34 2 1
      703 LOADK                            R35 K50 ["All"]
      704 CALL                             R33 2 1
      705 MOVE                             R34 R16
      706 GETTABLEKS                       R35 R15 K35 ["fromAction"]
      708 LOADK                            R36 K39 ["FileSync"]
      709 LOADK                            R37 K100 ["ShowInFolder"]
      710 CALL                             R35 2 1
      711 LOADK                            R36 K50 ["All"]
      712 CALL                             R34 2 1
      713 MOVE                             R35 R16
      714 GETTABLEKS                       R36 R15 K35 ["fromAction"]
      716 LOADK                            R37 K39 ["FileSync"]
      717 LOADK                            R38 K101 ["SelectSyncingRoot"]
      718 CALL                             R36 2 1
      719 LOADK                            R37 K50 ["All"]
      720 CALL                             R35 2 1
      721 SETLIST                          R27 R28 8 [1]
      723 SETLIST                          R26 R27 1 [1]
      725 DUPTABLE                         R25 K103 [{["key"] = "scriptSync", ["source"]}]
      726 DUPTABLE                         R27 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      727 SETTABLEKS                       R26 R27 K58 ["submenuCategories"]
      729 SETTABLEKS                       R27 R25 K54 ["source"]
      731 SETLIST                          R24 R25 1 [1]
      733 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      735 MOVE                             R23 R19
      736 GETIMPORT                        R22 K44 [table.insert]
      738 CALL                             R22 2 0
      739 MOVE                             R22 R8
      740 CALL                             R22 0 1
      741 JUMPIFNOT                        R22 ; [+169]
      742 MOVE                             R22 R9
      743 CALL                             R22 0 1
      744 JUMPIFNOT                        R22 ; [+85]
      745 NEWTABLE                         R24 0 1
      747 NEWTABLE                         R26 0 4
      749 NEWTABLE                         R27 0 2
      751 MOVE                             R28 R16
      752 GETTABLEKS                       R29 R15 K35 ["fromAction"]
      754 LOADK                            R30 K108 ["PackageTools"]
      755 LOADK                            R31 K109 ["PublishPackage"]
      756 CALL                             R29 2 1
      757 LOADK                            R30 K38 ["NonServices"]
      758 CALL                             R28 2 1
      759 MOVE                             R29 R16
      760 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      762 LOADK                            R31 K108 ["PackageTools"]
      763 LOADK                            R32 K110 ["GetLatestPackage"]
      764 CALL                             R30 2 1
      765 LOADK                            R31 K38 ["NonServices"]
      766 CALL                             R29 2 1
      767 SETLIST                          R27 R28 2 [1]
      769 NEWTABLE                         R28 0 2
      771 MOVE                             R29 R16
      772 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      774 LOADK                            R31 K108 ["PackageTools"]
      775 LOADK                            R32 K111 ["ShowPackagesDiff"]
      776 CALL                             R30 2 1
      777 LOADK                            R31 K38 ["NonServices"]
      778 CALL                             R29 2 1
      779 MOVE                             R30 R16
      780 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      782 LOADK                            R32 K108 ["PackageTools"]
      783 LOADK                            R33 K112 ["PackageDetails"]
      784 CALL                             R31 2 1
      785 LOADK                            R32 K38 ["NonServices"]
      786 CALL                             R30 2 1
      787 SETLIST                          R28 R29 2 [1]
      789 NEWTABLE                         R29 0 1
      791 MOVE                             R30 R16
      792 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      794 LOADK                            R32 K108 ["PackageTools"]
      795 LOADK                            R33 K113 ["MassUpdate"]
      796 CALL                             R31 2 1
      797 LOADK                            R32 K38 ["NonServices"]
      798 CALL                             R30 2 1
      799 SETLIST                          R29 R30 1 [1]
      801 NEWTABLE                         R30 0 1
      803 MOVE                             R31 R16
      804 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      806 LOADK                            R33 K108 ["PackageTools"]
      807 LOADK                            R34 K114 ["UndoPackageChanges"]
      808 CALL                             R32 2 1
      809 LOADK                            R33 K38 ["NonServices"]
      810 CALL                             R31 2 1
      811 SETLIST                          R30 R31 1 [1]
      813 SETLIST                          R26 R27 4 [1]
      815 DUPTABLE                         R25 K116 [{["key"] = "package", ["source"]}]
      816 DUPTABLE                         R27 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      817 SETTABLEKS                       R26 R27 K58 ["submenuCategories"]
      819 SETTABLEKS                       R27 R25 K54 ["source"]
      821 SETLIST                          R24 R25 1 [1]
      823 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      825 MOVE                             R23 R19
      826 GETIMPORT                        R22 K44 [table.insert]
      828 CALL                             R22 2 0
      829 JUMP                             ; [+137]
      830 NEWTABLE                         R24 0 4
      832 MOVE                             R25 R16
      833 GETTABLEKS                       R26 R15 K35 ["fromAction"]
      835 LOADK                            R27 K108 ["PackageTools"]
      836 LOADK                            R28 K109 ["PublishPackage"]
      837 CALL                             R26 2 1
      838 LOADK                            R27 K38 ["NonServices"]
      839 CALL                             R25 2 1
      840 MOVE                             R26 R16
      841 GETTABLEKS                       R27 R15 K35 ["fromAction"]
      843 LOADK                            R28 K108 ["PackageTools"]
      844 LOADK                            R29 K114 ["UndoPackageChanges"]
      845 CALL                             R27 2 1
      846 LOADK                            R28 K38 ["NonServices"]
      847 CALL                             R26 2 1
      848 MOVE                             R27 R16
      849 GETTABLEKS                       R28 R15 K35 ["fromAction"]
      851 LOADK                            R29 K108 ["PackageTools"]
      852 LOADK                            R30 K110 ["GetLatestPackage"]
      853 CALL                             R28 2 1
      854 LOADK                            R29 K38 ["NonServices"]
      855 CALL                             R27 2 1
      856 NEWTABLE                         R29 0 1
      858 NEWTABLE                         R30 0 4
      860 MOVE                             R31 R16
      861 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      863 LOADK                            R33 K108 ["PackageTools"]
      864 LOADK                            R34 K117 ["DiffPackageAgainstLatest"]
      865 CALL                             R32 2 1
      866 LOADK                            R33 K38 ["NonServices"]
      867 CALL                             R31 2 1
      868 MOVE                             R32 R16
      869 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      871 LOADK                            R34 K108 ["PackageTools"]
      872 LOADK                            R35 K113 ["MassUpdate"]
      873 CALL                             R33 2 1
      874 LOADK                            R34 K38 ["NonServices"]
      875 CALL                             R32 2 1
      876 MOVE                             R33 R16
      877 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      879 LOADK                            R35 K108 ["PackageTools"]
      880 LOADK                            R36 K111 ["ShowPackagesDiff"]
      881 CALL                             R34 2 1
      882 LOADK                            R35 K38 ["NonServices"]
      883 CALL                             R33 2 1
      884 MOVE                             R34 R16
      885 GETTABLEKS                       R35 R15 K35 ["fromAction"]
      887 LOADK                            R36 K108 ["PackageTools"]
      888 LOADK                            R37 K112 ["PackageDetails"]
      889 CALL                             R35 2 1
      890 LOADK                            R36 K38 ["NonServices"]
      891 CALL                             R34 2 1
      892 SETLIST                          R30 R31 4 [1]
      894 SETLIST                          R29 R30 1 [1]
      896 DUPTABLE                         R28 K119 [{["key"] = "morePackageOptions", ["source"]}]
      897 DUPTABLE                         R30 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      898 SETTABLEKS                       R29 R30 K58 ["submenuCategories"]
      900 SETTABLEKS                       R30 R28 K54 ["source"]
      902 SETLIST                          R24 R25 4 [1]
      904 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      906 MOVE                             R23 R19
      907 GETIMPORT                        R22 K44 [table.insert]
      909 CALL                             R22 2 0
      910 JUMP                             ; [+56]
      911 NEWTABLE                         R24 0 2
      913 MOVE                             R25 R16
      914 GETTABLEKS                       R26 R15 K35 ["fromAction"]
      916 LOADK                            R27 K108 ["PackageTools"]
      917 LOADK                            R28 K109 ["PublishPackage"]
      918 CALL                             R26 2 1
      919 LOADK                            R27 K38 ["NonServices"]
      920 CALL                             R25 2 1
      921 NEWTABLE                         R27 0 1
      923 NEWTABLE                         R28 0 3
      925 MOVE                             R29 R16
      926 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      928 LOADK                            R31 K108 ["PackageTools"]
      929 LOADK                            R32 K113 ["MassUpdate"]
      930 CALL                             R30 2 1
      931 LOADK                            R31 K38 ["NonServices"]
      932 CALL                             R29 2 1
      933 MOVE                             R30 R16
      934 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      936 LOADK                            R32 K108 ["PackageTools"]
      937 LOADK                            R33 K111 ["ShowPackagesDiff"]
      938 CALL                             R31 2 1
      939 LOADK                            R32 K38 ["NonServices"]
      940 CALL                             R30 2 1
      941 MOVE                             R31 R16
      942 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      944 LOADK                            R33 K108 ["PackageTools"]
      945 LOADK                            R34 K112 ["PackageDetails"]
      946 CALL                             R32 2 1
      947 LOADK                            R33 K38 ["NonServices"]
      948 CALL                             R31 2 1
      949 SETLIST                          R28 R29 3 [1]
      951 SETLIST                          R27 R28 1 [1]
      953 DUPTABLE                         R26 K119 [{["key"] = "morePackageOptions", ["source"]}]
      954 DUPTABLE                         R28 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      955 SETTABLEKS                       R27 R28 K58 ["submenuCategories"]
      957 SETTABLEKS                       R28 R26 K54 ["source"]
      959 SETLIST                          R24 R25 2 [1]
      961 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      963 MOVE                             R23 R19
      964 GETIMPORT                        R22 K44 [table.insert]
      966 CALL                             R22 2 0
      967 GETIMPORT                        R22 K121 [xpcall]
      969 DUPCLOSURE                       R23 K122 [PROTO_5]
      970 CAPTURE                          VAL R18
      971 DUPCLOSURE                       R24 K123 [PROTO_6]
      972 CAPTURE                          VAL R18
      973 CALL                             R22 2 2
      974 MOVE                             R24 R6
      975 CALL                             R24 0 1
      976 JUMPIFNOT                        R24 ; [+106]
      977 GETIMPORT                        R24 K5 [require]
      979 GETTABLEKS                       R25 R0 K10 ["Packages"]
      981 GETTABLEKS                       R25 R25 K124 ["SharedPluginConstants"]
      983 CALL                             R24 1 1
      984 GETTABLEKS                       R25 R24 K125 ["REIMPORT"]
      986 GETTABLEKS                       R25 R25 K126 ["ACTION_ID"]
      988 GETTABLEKS                       R26 R24 K125 ["REIMPORT"]
      990 GETTABLEKS                       R26 R26 K127 ["ACTION_EVENTS"]
      992 NEWTABLE                         R29 0 1
      994 NEWTABLE                         R31 0 1
      996 MOVE                             R32 R4
      997 NEWTABLE                         R33 0 5
      999 MOVE                             R34 R16
     1000 GETTABLEKS                       R36 R26 K125 ["REIMPORT"]
     1002 GETTABLEKS                       R37 R15 K35 ["fromAction"]
     1004 MOVE                             R38 R25
     1005 MOVE                             R39 R36
     1006 CALL                             R37 2 1
     1007 MOVE                             R35 R37
     1008 LOADK                            R36 K38 ["NonServices"]
     1009 CALL                             R34 2 1
     1010 MOVE                             R35 R16
     1011 GETTABLEKS                       R37 R26 K128 ["REIMPORT_RELATIVE_TO_THIS"]
     1013 GETTABLEKS                       R38 R15 K35 ["fromAction"]
     1015 MOVE                             R39 R25
     1016 MOVE                             R40 R37
     1017 CALL                             R38 2 1
     1018 MOVE                             R36 R38
     1019 LOADK                            R37 K38 ["NonServices"]
     1020 CALL                             R35 2 1
     1021 MOVE                             R36 R16
     1022 GETTABLEKS                       R38 R26 K129 ["CONFIGURE"]
     1024 GETTABLEKS                       R39 R15 K35 ["fromAction"]
     1026 MOVE                             R40 R25
     1027 MOVE                             R41 R38
     1028 CALL                             R39 2 1
     1029 MOVE                             R37 R39
     1030 LOADK                            R38 K38 ["NonServices"]
     1031 CALL                             R36 2 1
     1032 MOVE                             R38 R10
     1033 CALL                             R38 0 1
     1034 JUMPIFNOT                        R38 ; [+12]
     1035 MOVE                             R37 R16
     1036 GETTABLEKS                       R39 R26 K130 ["CLEAR_REIMPORT_CONFIG"]
     1038 GETTABLEKS                       R40 R15 K35 ["fromAction"]
     1040 MOVE                             R41 R25
     1041 MOVE                             R42 R39
     1042 CALL                             R40 2 1
     1043 MOVE                             R38 R40
     1044 LOADK                            R39 K38 ["NonServices"]
     1045 CALL                             R37 2 1
     1046 JUMP                             ; [+1]
     1047 LOADNIL                          R37
     1048 MOVE                             R39 R11
     1049 CALL                             R39 0 1
     1050 JUMPIFNOT                        R39 ; [+12]
     1051 MOVE                             R38 R16
     1052 GETTABLEKS                       R40 R26 K131 ["WATCH_INSTANCE_FILE"]
     1054 GETTABLEKS                       R41 R15 K35 ["fromAction"]
     1056 MOVE                             R42 R25
     1057 MOVE                             R43 R40
     1058 CALL                             R41 2 1
     1059 MOVE                             R39 R41
     1060 LOADK                            R40 K38 ["NonServices"]
     1061 CALL                             R38 2 1
     1062 JUMP                             ; [+1]
     1063 LOADNIL                          R38
     1064 SETLIST                          R33 R34 5 [1]
     1066 CALL                             R32 1 -1
     1067 SETLIST                          R31 R32 -1 [1]
     1069 DUPTABLE                         R30 K133 [{["key"] = "Reimport", ["source"]}]
     1070 DUPTABLE                         R32 K59 [{["type"] = "submenu", ["submenuCategories"]}]
     1071 SETTABLEKS                       R31 R32 K58 ["submenuCategories"]
     1073 SETTABLEKS                       R32 R30 K54 ["source"]
     1075 SETLIST                          R29 R30 1 [1]
     1077 FASTCALL2                        TABLE_INSERT R19 R29 ; [+4]
     1079 MOVE                             R28 R19
     1080 GETIMPORT                        R27 K44 [table.insert]
     1082 CALL                             R27 2 0
     1083 MOVE                             R24 R5
     1084 CALL                             R24 0 1
     1085 JUMPIF                           R24 ; [+86]
     1086 MOVE                             R25 R19
     1087 MOVE                             R26 R4
     1088 NEWTABLE                         R27 0 4
     1090 MOVE                             R28 R16
     1091 GETTABLEKS                       R29 R15 K35 ["fromAction"]
     1093 LOADK                            R30 K134 ["LocalizationTools"]
     1094 LOADK                            R31 K135 ["SaveCsv"]
     1095 CALL                             R29 2 1
     1096 LOADK                            R30 K38 ["NonServices"]
     1097 CALL                             R28 2 1
     1098 MOVE                             R29 R16
     1099 GETTABLEKS                       R30 R15 K35 ["fromAction"]
     1101 LOADK                            R31 K134 ["LocalizationTools"]
     1102 LOADK                            R32 K136 ["LoadCsv"]
     1103 CALL                             R30 2 1
     1104 LOADK                            R31 K38 ["NonServices"]
     1105 CALL                             R29 2 1
     1106 MOVE                             R30 R16
     1107 MOVE                             R31 R23
     1108 LOADK                            R32 K38 ["NonServices"]
     1109 CALL                             R30 2 1
     1110 NEWTABLE                         R32 0 1
     1112 NEWTABLE                         R33 0 5
     1114 MOVE                             R34 R16
     1115 GETTABLEKS                       R35 R15 K35 ["fromAction"]
     1117 LOADK                            R36 K137 ["Export"]
     1118 LOADK                            R37 K138 ["PublishSelectionToRoblox"]
     1119 CALL                             R35 2 1
     1120 LOADK                            R36 K38 ["NonServices"]
     1121 CALL                             R34 2 1
     1122 MOVE                             R35 R16
     1123 GETTABLEKS                       R36 R15 K35 ["fromAction"]
     1125 LOADK                            R37 K137 ["Export"]
     1126 LOADK                            R38 K139 ["SaveSelectionToFile"]
     1127 CALL                             R36 2 1
     1128 LOADK                            R37 K50 ["All"]
     1129 CALL                             R35 2 1
     1130 MOVE                             R36 R16
     1131 GETTABLEKS                       R37 R15 K35 ["fromAction"]
     1133 LOADK                            R38 K140 ["PluginManagement"]
     1134 LOADK                            R39 K141 ["SaveAsLocalPlugin"]
     1135 CALL                             R37 2 1
     1136 LOADK                            R38 K50 ["All"]
     1137 CALL                             R36 2 1
     1138 MOVE                             R37 R16
     1139 GETTABLEKS                       R38 R15 K35 ["fromAction"]
     1141 LOADK                            R39 K140 ["PluginManagement"]
     1142 LOADK                            R40 K142 ["PublishToRoblox"]
     1143 CALL                             R38 2 1
     1144 LOADK                            R39 K50 ["All"]
     1145 CALL                             R37 2 1
     1146 MOVE                             R38 R16
     1147 GETTABLEKS                       R39 R15 K35 ["fromAction"]
     1149 LOADK                            R40 K137 ["Export"]
     1150 LOADK                            R41 K143 ["ExportSelection"]
     1151 CALL                             R39 2 1
     1152 LOADK                            R40 K50 ["All"]
     1153 CALL                             R38 2 1
     1154 SETLIST                          R33 R34 5 [1]
     1156 SETLIST                          R32 R33 1 [1]
     1158 DUPTABLE                         R31 K145 [{["key"] = "saveAndExport", ["source"]}]
     1159 DUPTABLE                         R33 K59 [{["type"] = "submenu", ["submenuCategories"]}]
     1160 SETTABLEKS                       R32 R33 K58 ["submenuCategories"]
     1162 SETTABLEKS                       R33 R31 K54 ["source"]
     1164 SETLIST                          R27 R28 4 [1]
     1166 CALL                             R26 1 -1
     1167 FASTCALL                         TABLE_INSERT ; [+2]
     1168 GETIMPORT                        R24 K44 [table.insert]
     1170 CALL                             R24 -1 0
     1171 JUMP                             ; [+93]
     1172 MOVE                             R25 R19
     1173 MOVE                             R26 R4
     1174 NEWTABLE                         R27 0 4
     1176 MOVE                             R28 R16
     1177 GETTABLEKS                       R29 R15 K35 ["fromAction"]
     1179 LOADK                            R30 K134 ["LocalizationTools"]
     1180 LOADK                            R31 K135 ["SaveCsv"]
     1181 CALL                             R29 2 1
     1182 LOADK                            R30 K38 ["NonServices"]
     1183 CALL                             R28 2 1
     1184 MOVE                             R29 R16
     1185 GETTABLEKS                       R30 R15 K35 ["fromAction"]
     1187 LOADK                            R31 K134 ["LocalizationTools"]
     1188 LOADK                            R32 K136 ["LoadCsv"]
     1189 CALL                             R30 2 1
     1190 LOADK                            R31 K38 ["NonServices"]
     1191 CALL                             R29 2 1
     1192 MOVE                             R30 R16
     1193 MOVE                             R31 R23
     1194 LOADK                            R32 K38 ["NonServices"]
     1195 CALL                             R30 2 1
     1196 NEWTABLE                         R32 0 1
     1198 NEWTABLE                         R33 0 6
     1200 MOVE                             R34 R16
     1201 GETTABLEKS                       R35 R15 K35 ["fromAction"]
     1203 LOADK                            R36 K137 ["Export"]
     1204 LOADK                            R37 K138 ["PublishSelectionToRoblox"]
     1205 CALL                             R35 2 1
     1206 LOADK                            R36 K38 ["NonServices"]
     1207 CALL                             R34 2 1
     1208 MOVE                             R35 R16
     1209 GETTABLEKS                       R36 R15 K35 ["fromAction"]
     1211 LOADK                            R37 K137 ["Export"]
     1212 LOADK                            R38 K139 ["SaveSelectionToFile"]
     1213 CALL                             R36 2 1
     1214 LOADK                            R37 K50 ["All"]
     1215 CALL                             R35 2 1
     1216 MOVE                             R36 R16
     1217 GETTABLEKS                       R37 R15 K35 ["fromAction"]
     1219 LOADK                            R38 K140 ["PluginManagement"]
     1220 LOADK                            R39 K141 ["SaveAsLocalPlugin"]
     1221 CALL                             R37 2 1
     1222 LOADK                            R38 K50 ["All"]
     1223 CALL                             R36 2 1
     1224 MOVE                             R37 R16
     1225 GETTABLEKS                       R38 R15 K35 ["fromAction"]
     1227 LOADK                            R39 K140 ["PluginManagement"]
     1228 LOADK                            R40 K142 ["PublishToRoblox"]
     1229 CALL                             R38 2 1
     1230 LOADK                            R39 K50 ["All"]
     1231 CALL                             R37 2 1
     1232 MOVE                             R38 R16
     1233 GETTABLEKS                       R39 R15 K35 ["fromAction"]
     1235 LOADK                            R40 K137 ["Export"]
     1236 LOADK                            R41 K143 ["ExportSelection"]
     1237 CALL                             R39 2 1
     1238 LOADK                            R40 K50 ["All"]
     1239 CALL                             R38 2 1
     1240 MOVE                             R39 R16
     1241 GETTABLEKS                       R40 R15 K35 ["fromAction"]
     1243 LOADK                            R41 K137 ["Export"]
     1244 LOADK                            R42 K146 ["ExportAsGltf"]
     1245 CALL                             R40 2 1
     1246 LOADK                            R41 K50 ["All"]
     1247 CALL                             R39 2 1
     1248 SETLIST                          R33 R34 6 [1]
     1250 SETLIST                          R32 R33 1 [1]
     1252 DUPTABLE                         R31 K145 [{["key"] = "saveAndExport", ["source"]}]
     1253 DUPTABLE                         R33 K59 [{["type"] = "submenu", ["submenuCategories"]}]
     1254 SETTABLEKS                       R32 R33 K58 ["submenuCategories"]
     1256 SETTABLEKS                       R33 R31 K54 ["source"]
     1258 SETLIST                          R27 R28 4 [1]
     1260 CALL                             R26 1 -1
     1261 FASTCALL                         TABLE_INSERT ; [+2]
     1262 GETIMPORT                        R24 K44 [table.insert]
     1264 CALL                             R24 -1 0
     1265 NEWTABLE                         R26 0 2
     1267 MOVE                             R27 R16
     1268 GETTABLEKS                       R28 R15 K35 ["fromAction"]
     1270 LOADK                            R29 K147 ["InsertService"]
     1271 LOADK                            R30 K148 ["ShowServices"]
     1272 CALL                             R28 2 1
     1273 LOADK                            R29 K149 ["ServicesAndBlank"]
     1274 CALL                             R27 2 1
     1275 MOVE                             R28 R16
     1276 GETTABLEKS                       R29 R15 K35 ["fromAction"]
     1278 LOADK                            R30 K147 ["InsertService"]
     1279 LOADK                            R31 K150 ["HideService"]
     1280 CALL                             R29 2 1
     1281 LOADK                            R30 K151 ["Services"]
     1282 CALL                             R28 2 1
     1283 SETLIST                          R26 R27 2 [1]
     1285 FASTCALL2                        TABLE_INSERT R19 R26 ; [+4]
     1287 MOVE                             R25 R19
     1288 GETIMPORT                        R24 K44 [table.insert]
     1290 CALL                             R24 2 0
     1291 NEWTABLE                         R26 0 1
     1293 MOVE                             R27 R16
     1294 GETTABLEKS                       R28 R15 K35 ["fromAction"]
     1296 LOADK                            R29 K45 ["Common"]
     1297 LOADK                            R30 K152 ["Help"]
     1298 CALL                             R28 2 1
     1299 LOADK                            R29 K50 ["All"]
     1300 CALL                             R27 2 1
     1301 SETLIST                          R26 R27 1 [1]
     1303 FASTCALL2                        TABLE_INSERT R19 R26 ; [+4]
     1305 MOVE                             R25 R19
     1306 GETIMPORT                        R24 K44 [table.insert]
     1308 CALL                             R24 2 0
     1309 RETURN                           R19 1
