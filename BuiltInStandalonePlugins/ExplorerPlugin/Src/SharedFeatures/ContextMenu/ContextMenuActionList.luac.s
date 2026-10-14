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
       92 GETTABLEKS                       R11 R11 K21 ["getFFlagReimportFileWatcher"]
       94 CALL                             R10 1 1
       95 GETIMPORT                        R11 K23 [game]
       97 LOADK                            R13 K24 ["CopyPathAction"]
       98 NAMECALL                         R11 R11 K25 ["GetEngineFeature"]
      100 CALL                             R11 2 1
      101 GETIMPORT                        R12 K23 [game]
      103 LOADK                            R14 K26 ["CopyUniqueIdAction"]
      104 NAMECALL                         R12 R12 K25 ["GetEngineFeature"]
      106 CALL                             R12 2 1
      107 GETIMPORT                        R13 K23 [game]
      109 LOADK                            R15 K27 ["UnifiedSyncActions"]
      110 NAMECALL                         R13 R13 K25 ["GetEngineFeature"]
      112 CALL                             R13 2 1
      113 GETIMPORT                        R14 K23 [game]
      115 LOADK                            R16 K28 ["RevertInstanceOverridesAction"]
      116 NAMECALL                         R14 R14 K25 ["GetEngineFeature"]
      118 CALL                             R14 2 1
      119 GETTABLEKS                       R15 R3 K13 ["Util"]
      121 GETTABLEKS                       R15 R15 K29 ["StudioUri"]
      123 DUPCLOSURE                       R16 K30 [PROTO_0]
      124 CAPTURE                          VAL R15
      125 DUPCLOSURE                       R17 K31 [PROTO_1]
      126 DUPCLOSURE                       R18 K32 [PROTO_2]
      127 CAPTURE                          VAL R15
      128 NEWTABLE                         R19 0 0
      130 DUPCLOSURE                       R20 K33 [PROTO_3]
      131 DUPCLOSURE                       R21 K34 [PROTO_4]
      132 MOVE                             R22 R7
      133 CALL                             R22 0 1
      134 JUMPIFNOT                        R22 ; [+35]
      135 NEWTABLE                         R24 0 3
      137 MOVE                             R25 R16
      138 GETTABLEKS                       R26 R15 K35 ["fromAction"]
      140 LOADK                            R27 K36 ["ScriptTools"]
      141 LOADK                            R28 K37 ["Open"]
      142 CALL                             R26 2 1
      143 LOADK                            R27 K38 ["NonServices"]
      144 CALL                             R25 2 1
      145 MOVE                             R26 R16
      146 GETTABLEKS                       R27 R15 K35 ["fromAction"]
      148 LOADK                            R28 K39 ["FileSync"]
      149 LOADK                            R29 K40 ["OpenInExternalEditor"]
      150 CALL                             R27 2 1
      151 LOADK                            R28 K38 ["NonServices"]
      152 CALL                             R26 2 1
      153 MOVE                             R27 R16
      154 GETTABLEKS                       R28 R15 K35 ["fromAction"]
      156 LOADK                            R29 K36 ["ScriptTools"]
      157 LOADK                            R30 K41 ["OpenScriptHistory"]
      158 CALL                             R28 2 1
      159 LOADK                            R29 K38 ["NonServices"]
      160 CALL                             R27 2 1
      161 SETLIST                          R24 R25 3 [1]
      163 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      165 MOVE                             R23 R19
      166 GETIMPORT                        R22 K44 [table.insert]
      168 CALL                             R22 2 0
      169 JUMP                             ; [+26]
      170 NEWTABLE                         R24 0 2
      172 MOVE                             R25 R16
      173 GETTABLEKS                       R26 R15 K35 ["fromAction"]
      175 LOADK                            R27 K36 ["ScriptTools"]
      176 LOADK                            R28 K37 ["Open"]
      177 CALL                             R26 2 1
      178 LOADK                            R27 K38 ["NonServices"]
      179 CALL                             R25 2 1
      180 MOVE                             R26 R16
      181 GETTABLEKS                       R27 R15 K35 ["fromAction"]
      183 LOADK                            R28 K36 ["ScriptTools"]
      184 LOADK                            R29 K41 ["OpenScriptHistory"]
      185 CALL                             R27 2 1
      186 LOADK                            R28 K38 ["NonServices"]
      187 CALL                             R26 2 1
      188 SETLIST                          R24 R25 2 [1]
      190 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      192 MOVE                             R23 R19
      193 GETIMPORT                        R22 K44 [table.insert]
      195 CALL                             R22 2 0
      196 MOVE                             R23 R19
      197 MOVE                             R24 R4
      198 NEWTABLE                         R25 0 8
      200 MOVE                             R26 R16
      201 GETTABLEKS                       R27 R15 K35 ["fromAction"]
      203 LOADK                            R28 K45 ["Common"]
      204 LOADK                            R29 K46 ["Cut"]
      205 CALL                             R27 2 1
      206 LOADK                            R28 K38 ["NonServices"]
      207 CALL                             R26 2 1
      208 MOVE                             R27 R16
      209 GETTABLEKS                       R28 R15 K35 ["fromAction"]
      211 LOADK                            R29 K45 ["Common"]
      212 LOADK                            R30 K47 ["Copy"]
      213 CALL                             R28 2 1
      214 LOADK                            R29 K38 ["NonServices"]
      215 CALL                             R27 2 1
      216 JUMPIF                           R11 ; [+1]
      217 JUMPIFNOT                        R12 ; [+39]
      218 NEWTABLE                         R29 0 1
      220 MOVE                             R30 R4
      221 NEWTABLE                         R31 0 2
      223 JUMPIFNOT                        R11 ; [+9]
      224 MOVE                             R32 R16
      225 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      227 LOADK                            R34 K48 ["BuilderTools"]
      228 LOADK                            R35 K49 ["CopyPath"]
      229 CALL                             R33 2 1
      230 LOADK                            R34 K50 ["All"]
      231 CALL                             R32 2 1
      232 JUMP                             ; [+1]
      233 LOADNIL                          R32
      234 JUMPIFNOT                        R12 ; [+9]
      235 MOVE                             R33 R16
      236 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      238 LOADK                            R35 K48 ["BuilderTools"]
      239 LOADK                            R36 K51 ["CopyUniqueId"]
      240 CALL                             R34 2 1
      241 LOADK                            R35 K50 ["All"]
      242 CALL                             R33 2 1
      243 JUMP                             ; [+1]
      244 LOADNIL                          R33
      245 SETLIST                          R31 R32 2 [1]
      247 CALL                             R30 1 -1
      248 SETLIST                          R29 R30 -1 [1]
      250 DUPTABLE                         R28 K55 [{["key"] = "CopyAs", ["source"]}]
      251 DUPTABLE                         R30 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      252 SETTABLEKS                       R29 R30 K58 ["submenuCategories"]
      254 SETTABLEKS                       R30 R28 K54 ["source"]
      256 JUMP                             ; [+1]
      257 LOADNIL                          R28
      258 MOVE                             R29 R16
      259 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      261 LOADK                            R31 K45 ["Common"]
      262 LOADK                            R32 K60 ["PasteInto"]
      263 CALL                             R30 2 1
      264 LOADK                            R31 K50 ["All"]
      265 CALL                             R29 2 1
      266 MOVE                             R30 R16
      267 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      269 LOADK                            R32 K48 ["BuilderTools"]
      270 LOADK                            R33 K61 ["PasteIntoAtOriginalLocation"]
      271 CALL                             R31 2 1
      272 LOADK                            R32 K50 ["All"]
      273 CALL                             R30 2 1
      274 MOVE                             R31 R16
      275 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      277 LOADK                            R33 K45 ["Common"]
      278 LOADK                            R34 K62 ["Duplicate"]
      279 CALL                             R32 2 1
      280 LOADK                            R33 K38 ["NonServices"]
      281 CALL                             R31 2 1
      282 MOVE                             R32 R16
      283 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      285 LOADK                            R34 K45 ["Common"]
      286 LOADK                            R35 K63 ["Delete"]
      287 CALL                             R33 2 1
      288 LOADK                            R34 K38 ["NonServices"]
      289 CALL                             R32 2 1
      290 MOVE                             R33 R16
      291 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      293 LOADK                            R35 K11 ["Explorer"]
      294 LOADK                            R36 K64 ["Rename"]
      295 CALL                             R34 2 1
      296 LOADK                            R35 K50 ["All"]
      297 LOADNIL                          R36
      298 GETTABLEKS                       R37 R2 K65 ["Data"]
      300 GETTABLEKS                       R37 R37 K8 ["ContextMenu"]
      302 GETTABLEKS                       R37 R37 K66 ["coreItems"]
      304 GETTABLEKS                       R37 R37 K67 ["rename"]
      306 CALL                             R33 4 1
      307 SETLIST                          R25 R26 8 [1]
      309 CALL                             R24 1 -1
      310 FASTCALL                         TABLE_INSERT ; [+2]
      311 GETIMPORT                        R22 K44 [table.insert]
      313 CALL                             R22 -1 0
      314 NEWTABLE                         R24 0 4
      316 MOVE                             R25 R16
      317 GETTABLEKS                       R26 R15 K35 ["fromAction"]
      319 LOADK                            R27 K48 ["BuilderTools"]
      320 LOADK                            R28 K68 ["GroupAsModel"]
      321 CALL                             R26 2 1
      322 LOADK                            R27 K38 ["NonServices"]
      323 CALL                             R25 2 1
      324 MOVE                             R26 R16
      325 GETTABLEKS                       R27 R15 K35 ["fromAction"]
      327 LOADK                            R28 K48 ["BuilderTools"]
      328 LOADK                            R29 K69 ["GroupAsFolder"]
      329 CALL                             R27 2 1
      330 LOADK                            R28 K38 ["NonServices"]
      331 CALL                             R26 2 1
      332 MOVE                             R27 R16
      333 GETTABLEKS                       R28 R15 K35 ["fromAction"]
      335 LOADK                            R29 K48 ["BuilderTools"]
      336 LOADK                            R30 K70 ["Ungroup"]
      337 CALL                             R28 2 1
      338 LOADK                            R29 K38 ["NonServices"]
      339 CALL                             R27 2 1
      340 NEWTABLE                         R29 0 1
      342 NEWTABLE                         R30 0 4
      344 MOVE                             R31 R16
      345 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      347 LOADK                            R33 K48 ["BuilderTools"]
      348 LOADK                            R34 K71 ["UnionSelection"]
      349 CALL                             R32 2 1
      350 LOADK                            R33 K38 ["NonServices"]
      351 CALL                             R31 2 1
      352 MOVE                             R32 R16
      353 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      355 LOADK                            R34 K48 ["BuilderTools"]
      356 LOADK                            R35 K72 ["IntersectSelection"]
      357 CALL                             R33 2 1
      358 LOADK                            R34 K38 ["NonServices"]
      359 CALL                             R32 2 1
      360 MOVE                             R33 R16
      361 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      363 LOADK                            R35 K48 ["BuilderTools"]
      364 LOADK                            R36 K73 ["NegateSelection"]
      365 CALL                             R34 2 1
      366 LOADK                            R35 K38 ["NonServices"]
      367 CALL                             R33 2 1
      368 MOVE                             R34 R16
      369 GETTABLEKS                       R35 R15 K35 ["fromAction"]
      371 LOADK                            R36 K48 ["BuilderTools"]
      372 LOADK                            R37 K74 ["SeparateSelection"]
      373 CALL                             R35 2 1
      374 LOADK                            R36 K38 ["NonServices"]
      375 CALL                             R34 2 1
      376 SETLIST                          R30 R31 4 [1]
      378 SETLIST                          R29 R30 1 [1]
      380 DUPTABLE                         R28 K76 [{["key"] = "solidModeling", ["source"]}]
      381 DUPTABLE                         R30 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      382 SETTABLEKS                       R29 R30 K58 ["submenuCategories"]
      384 SETTABLEKS                       R30 R28 K54 ["source"]
      386 SETLIST                          R24 R25 4 [1]
      388 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      390 MOVE                             R23 R19
      391 GETIMPORT                        R22 K44 [table.insert]
      393 CALL                             R22 2 0
      394 MOVE                             R23 R19
      395 MOVE                             R24 R4
      396 NEWTABLE                         R25 0 5
      398 NEWTABLE                         R27 0 1
      400 NEWTABLE                         R28 0 3
      402 MOVE                             R29 R16
      403 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      405 LOADK                            R31 K48 ["BuilderTools"]
      406 LOADK                            R32 K77 ["InsertPartIntoSelection"]
      407 CALL                             R30 2 1
      408 LOADK                            R31 K50 ["All"]
      409 CALL                             R29 2 1
      410 MOVE                             R30 R16
      411 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      413 LOADK                            R32 K48 ["BuilderTools"]
      414 LOADK                            R33 K78 ["InsertObject"]
      415 CALL                             R31 2 1
      416 LOADK                            R32 K50 ["All"]
      417 CALL                             R30 2 1
      418 MOVE                             R31 R16
      419 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      421 LOADK                            R33 K48 ["BuilderTools"]
      422 LOADK                            R34 K79 ["InsertFromFile"]
      423 CALL                             R32 2 1
      424 LOADK                            R33 K50 ["All"]
      425 CALL                             R31 2 1
      426 SETLIST                          R28 R29 3 [1]
      428 SETLIST                          R27 R28 1 [1]
      430 DUPTABLE                         R26 K80 [{["key"] = "insert", ["source"]}]
      431 DUPTABLE                         R28 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      432 SETTABLEKS                       R27 R28 K58 ["submenuCategories"]
      434 SETTABLEKS                       R28 R26 K54 ["source"]
      436 MOVE                             R28 R4
      437 NEWTABLE                         R29 0 1
      439 NEWTABLE                         R30 0 4
      441 MOVE                             R31 R16
      442 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      444 LOADK                            R33 K45 ["Common"]
      445 LOADK                            R34 K81 ["SelectParents"]
      446 CALL                             R32 2 1
      447 LOADK                            R33 K38 ["NonServices"]
      448 LOADNIL                          R34
      449 CALL                             R31 3 1
      450 MOVE                             R32 R16
      451 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      453 LOADK                            R34 K45 ["Common"]
      454 LOADK                            R35 K82 ["SelectChildren"]
      455 CALL                             R33 2 1
      456 LOADK                            R34 K50 ["All"]
      457 LOADNIL                          R35
      458 CALL                             R32 3 1
      459 MOVE                             R33 R16
      460 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      462 LOADK                            R35 K11 ["Explorer"]
      463 LOADK                            R36 K83 ["ExpandAll"]
      464 CALL                             R34 2 1
      465 LOADK                            R35 K50 ["All"]
      466 LOADNIL                          R36
      467 GETTABLEKS                       R37 R2 K65 ["Data"]
      469 GETTABLEKS                       R37 R37 K8 ["ContextMenu"]
      471 GETTABLEKS                       R37 R37 K66 ["coreItems"]
      473 GETTABLEKS                       R37 R37 K84 ["expandAll"]
      475 CALL                             R33 4 1
      476 MOVE                             R34 R16
      477 GETTABLEKS                       R35 R15 K35 ["fromAction"]
      479 LOADK                            R36 K11 ["Explorer"]
      480 LOADK                            R37 K85 ["CollapseAll"]
      481 CALL                             R35 2 1
      482 LOADK                            R36 K50 ["All"]
      483 LOADNIL                          R37
      484 GETTABLEKS                       R38 R2 K65 ["Data"]
      486 GETTABLEKS                       R38 R38 K8 ["ContextMenu"]
      488 GETTABLEKS                       R38 R38 K66 ["coreItems"]
      490 GETTABLEKS                       R38 R38 K86 ["collapseAll"]
      492 CALL                             R34 4 1
      493 SETLIST                          R30 R31 4 [1]
      495 SETLIST                          R29 R30 1 [1]
      497 CALL                             R28 1 1
      498 DUPTABLE                         R27 K88 [{["key"] = "hierarchy", ["source"]}]
      499 DUPTABLE                         R29 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      500 SETTABLEKS                       R28 R29 K58 ["submenuCategories"]
      502 SETTABLEKS                       R29 R27 K54 ["source"]
      504 MOVE                             R28 R16
      505 GETTABLEKS                       R29 R15 K35 ["fromAction"]
      507 LOADK                            R30 K48 ["BuilderTools"]
      508 LOADK                            R31 K89 ["ZoomExtents"]
      509 CALL                             R29 2 1
      510 LOADK                            R30 K38 ["NonServices"]
      511 MOVE                             R31 R20
      512 CALL                             R28 3 1
      513 MOVE                             R29 R16
      514 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      516 LOADK                            R31 K48 ["BuilderTools"]
      517 LOADK                            R32 K90 ["ShowOrientationIndicator"]
      518 CALL                             R30 2 1
      519 LOADK                            R31 K38 ["NonServices"]
      520 CALL                             R29 2 1
      521 MOVE                             R30 R16
      522 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      524 LOADK                            R32 K36 ["ScriptTools"]
      525 LOADK                            R33 K91 ["ToggleScripts"]
      526 CALL                             R31 2 1
      527 LOADK                            R32 K38 ["NonServices"]
      528 CALL                             R30 2 1
      529 SETLIST                          R25 R26 5 [1]
      531 CALL                             R24 1 -1
      532 FASTCALL                         TABLE_INSERT ; [+2]
      533 GETIMPORT                        R22 K44 [table.insert]
      535 CALL                             R22 -1 0
      536 NEWTABLE                         R24 0 4
      538 MOVE                             R25 R16
      539 GETTABLEKS                       R26 R15 K35 ["fromAction"]
      541 LOADK                            R27 K92 ["PluginDebugging"]
      542 LOADK                            R28 K93 ["SaveAndReloadDebuggablePlugin"]
      543 CALL                             R26 2 1
      544 LOADK                            R27 K50 ["All"]
      545 CALL                             R25 2 1
      546 MOVE                             R26 R16
      547 GETTABLEKS                       R27 R15 K35 ["fromAction"]
      549 LOADK                            R28 K92 ["PluginDebugging"]
      550 LOADK                            R29 K94 ["ReloadDebuggablePlugin"]
      551 CALL                             R27 2 1
      552 LOADK                            R28 K50 ["All"]
      553 CALL                             R26 2 1
      554 MOVE                             R27 R16
      555 GETTABLEKS                       R28 R15 K35 ["fromAction"]
      557 LOADK                            R29 K92 ["PluginDebugging"]
      558 LOADK                            R30 K95 ["SaveAndReloadAllDebuggablePlugins"]
      559 CALL                             R28 2 1
      560 LOADK                            R29 K50 ["All"]
      561 MOVE                             R30 R21
      562 CALL                             R27 3 1
      563 MOVE                             R28 R16
      564 GETTABLEKS                       R29 R15 K35 ["fromAction"]
      566 LOADK                            R30 K92 ["PluginDebugging"]
      567 LOADK                            R31 K96 ["SaveBuildAndReloadDebuggablePlugin"]
      568 CALL                             R29 2 1
      569 LOADK                            R30 K50 ["All"]
      570 CALL                             R28 2 1
      571 SETLIST                          R24 R25 4 [1]
      573 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      575 MOVE                             R23 R19
      576 GETIMPORT                        R22 K44 [table.insert]
      578 CALL                             R22 2 0
      579 MOVE                             R22 R7
      580 CALL                             R22 0 1
      581 JUMPIFNOT                        R22 ; [+154]
      582 JUMPIFNOT                        R13 ; [+65]
      583 NEWTABLE                         R24 0 1
      585 NEWTABLE                         R26 0 1
      587 NEWTABLE                         R27 0 5
      589 MOVE                             R28 R16
      590 GETTABLEKS                       R29 R15 K35 ["fromAction"]
      592 LOADK                            R30 K39 ["FileSync"]
      593 LOADK                            R31 K97 ["StopScriptSync"]
      594 CALL                             R29 2 1
      595 LOADK                            R30 K50 ["All"]
      596 CALL                             R28 2 1
      597 MOVE                             R29 R16
      598 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      600 LOADK                            R31 K39 ["FileSync"]
      601 LOADK                            R32 K98 ["StartSync"]
      602 CALL                             R30 2 1
      603 LOADK                            R31 K50 ["All"]
      604 CALL                             R29 2 1
      605 MOVE                             R30 R16
      606 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      608 LOADK                            R32 K39 ["FileSync"]
      609 LOADK                            R33 K99 ["ResumeScriptSync"]
      610 CALL                             R31 2 1
      611 LOADK                            R32 K50 ["All"]
      612 CALL                             R30 2 1
      613 MOVE                             R31 R16
      614 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      616 LOADK                            R33 K39 ["FileSync"]
      617 LOADK                            R34 K100 ["ShowInFolder"]
      618 CALL                             R32 2 1
      619 LOADK                            R33 K50 ["All"]
      620 CALL                             R31 2 1
      621 MOVE                             R32 R16
      622 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      624 LOADK                            R34 K39 ["FileSync"]
      625 LOADK                            R35 K101 ["SelectSyncingRoot"]
      626 CALL                             R33 2 1
      627 LOADK                            R34 K50 ["All"]
      628 CALL                             R32 2 1
      629 SETLIST                          R27 R28 5 [1]
      631 SETLIST                          R26 R27 1 [1]
      633 DUPTABLE                         R25 K103 [{["key"] = "scriptSync", ["source"]}]
      634 DUPTABLE                         R27 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      635 SETTABLEKS                       R26 R27 K58 ["submenuCategories"]
      637 SETTABLEKS                       R27 R25 K54 ["source"]
      639 SETLIST                          R24 R25 1 [1]
      641 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      643 MOVE                             R23 R19
      644 GETIMPORT                        R22 K44 [table.insert]
      646 CALL                             R22 2 0
      647 JUMP                             ; [+88]
      648 NEWTABLE                         R24 0 1
      650 NEWTABLE                         R26 0 1
      652 NEWTABLE                         R27 0 8
      654 MOVE                             R28 R16
      655 GETTABLEKS                       R29 R15 K35 ["fromAction"]
      657 LOADK                            R30 K39 ["FileSync"]
      658 LOADK                            R31 K97 ["StopScriptSync"]
      659 CALL                             R29 2 1
      660 LOADK                            R30 K50 ["All"]
      661 CALL                             R28 2 1
      662 MOVE                             R29 R16
      663 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      665 LOADK                            R31 K39 ["FileSync"]
      666 LOADK                            R32 K104 ["StartSyncToNewFile"]
      667 CALL                             R30 2 1
      668 LOADK                            R31 K38 ["NonServices"]
      669 CALL                             R29 2 1
      670 MOVE                             R30 R16
      671 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      673 LOADK                            R32 K39 ["FileSync"]
      674 LOADK                            R33 K105 ["StartSyncToExistingFile"]
      675 CALL                             R31 2 1
      676 LOADK                            R32 K38 ["NonServices"]
      677 CALL                             R30 2 1
      678 MOVE                             R31 R16
      679 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      681 LOADK                            R33 K39 ["FileSync"]
      682 LOADK                            R34 K106 ["StartSyncSelectedInstancesTo"]
      683 CALL                             R32 2 1
      684 LOADK                            R33 K50 ["All"]
      685 CALL                             R31 2 1
      686 MOVE                             R32 R16
      687 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      689 LOADK                            R34 K39 ["FileSync"]
      690 LOADK                            R35 K107 ["StartSyncToDirectory"]
      691 CALL                             R33 2 1
      692 LOADK                            R34 K50 ["All"]
      693 CALL                             R32 2 1
      694 MOVE                             R33 R16
      695 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      697 LOADK                            R35 K39 ["FileSync"]
      698 LOADK                            R36 K99 ["ResumeScriptSync"]
      699 CALL                             R34 2 1
      700 LOADK                            R35 K50 ["All"]
      701 CALL                             R33 2 1
      702 MOVE                             R34 R16
      703 GETTABLEKS                       R35 R15 K35 ["fromAction"]
      705 LOADK                            R36 K39 ["FileSync"]
      706 LOADK                            R37 K100 ["ShowInFolder"]
      707 CALL                             R35 2 1
      708 LOADK                            R36 K50 ["All"]
      709 CALL                             R34 2 1
      710 MOVE                             R35 R16
      711 GETTABLEKS                       R36 R15 K35 ["fromAction"]
      713 LOADK                            R37 K39 ["FileSync"]
      714 LOADK                            R38 K101 ["SelectSyncingRoot"]
      715 CALL                             R36 2 1
      716 LOADK                            R37 K50 ["All"]
      717 CALL                             R35 2 1
      718 SETLIST                          R27 R28 8 [1]
      720 SETLIST                          R26 R27 1 [1]
      722 DUPTABLE                         R25 K103 [{["key"] = "scriptSync", ["source"]}]
      723 DUPTABLE                         R27 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      724 SETTABLEKS                       R26 R27 K58 ["submenuCategories"]
      726 SETTABLEKS                       R27 R25 K54 ["source"]
      728 SETLIST                          R24 R25 1 [1]
      730 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      732 MOVE                             R23 R19
      733 GETIMPORT                        R22 K44 [table.insert]
      735 CALL                             R22 2 0
      736 MOVE                             R22 R8
      737 CALL                             R22 0 1
      738 JUMPIFNOT                        R22 ; [+194]
      739 MOVE                             R22 R9
      740 CALL                             R22 0 1
      741 JUMPIFNOT                        R22 ; [+98]
      742 NEWTABLE                         R24 0 1
      744 NEWTABLE                         R26 0 4
      746 NEWTABLE                         R27 0 2
      748 MOVE                             R28 R16
      749 GETTABLEKS                       R29 R15 K35 ["fromAction"]
      751 LOADK                            R30 K108 ["PackageTools"]
      752 LOADK                            R31 K109 ["PublishPackage"]
      753 CALL                             R29 2 1
      754 LOADK                            R30 K38 ["NonServices"]
      755 CALL                             R28 2 1
      756 MOVE                             R29 R16
      757 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      759 LOADK                            R31 K108 ["PackageTools"]
      760 LOADK                            R32 K110 ["GetLatestPackage"]
      761 CALL                             R30 2 1
      762 LOADK                            R31 K38 ["NonServices"]
      763 CALL                             R29 2 1
      764 SETLIST                          R27 R28 2 [1]
      766 NEWTABLE                         R28 0 2
      768 MOVE                             R29 R16
      769 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      771 LOADK                            R31 K108 ["PackageTools"]
      772 LOADK                            R32 K111 ["ShowPackagesDiff"]
      773 CALL                             R30 2 1
      774 LOADK                            R31 K38 ["NonServices"]
      775 CALL                             R29 2 1
      776 MOVE                             R30 R16
      777 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      779 LOADK                            R32 K108 ["PackageTools"]
      780 LOADK                            R33 K112 ["PackageDetails"]
      781 CALL                             R31 2 1
      782 LOADK                            R32 K38 ["NonServices"]
      783 CALL                             R30 2 1
      784 SETLIST                          R28 R29 2 [1]
      786 NEWTABLE                         R29 0 1
      788 MOVE                             R30 R16
      789 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      791 LOADK                            R32 K108 ["PackageTools"]
      792 LOADK                            R33 K113 ["MassUpdate"]
      793 CALL                             R31 2 1
      794 LOADK                            R32 K38 ["NonServices"]
      795 CALL                             R30 2 1
      796 SETLIST                          R29 R30 1 [1]
      798 MOVE                             R30 R4
      799 NEWTABLE                         R31 0 2
      801 MOVE                             R32 R16
      802 GETTABLEKS                       R33 R15 K35 ["fromAction"]
      804 LOADK                            R34 K108 ["PackageTools"]
      805 LOADK                            R35 K114 ["UndoPackageChanges"]
      806 CALL                             R33 2 1
      807 LOADK                            R34 K38 ["NonServices"]
      808 CALL                             R32 2 1
      809 JUMPIFNOT                        R14 ; [+9]
      810 MOVE                             R33 R16
      811 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      813 LOADK                            R35 K108 ["PackageTools"]
      814 LOADK                            R36 K115 ["RevertInstanceOverrides"]
      815 CALL                             R34 2 1
      816 LOADK                            R35 K38 ["NonServices"]
      817 CALL                             R33 2 1
      818 JUMP                             ; [+1]
      819 LOADNIL                          R33
      820 SETLIST                          R31 R32 2 [1]
      822 CALL                             R30 1 -1
      823 SETLIST                          R26 R27 -1 [1]
      825 DUPTABLE                         R25 K117 [{["key"] = "package", ["source"]}]
      826 DUPTABLE                         R27 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      827 SETTABLEKS                       R26 R27 K58 ["submenuCategories"]
      829 SETTABLEKS                       R27 R25 K54 ["source"]
      831 SETLIST                          R24 R25 1 [1]
      833 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      835 MOVE                             R23 R19
      836 GETIMPORT                        R22 K44 [table.insert]
      838 CALL                             R22 2 0
      839 JUMP                             ; [+149]
      840 MOVE                             R23 R19
      841 MOVE                             R24 R4
      842 NEWTABLE                         R25 0 5
      844 MOVE                             R26 R16
      845 GETTABLEKS                       R27 R15 K35 ["fromAction"]
      847 LOADK                            R28 K108 ["PackageTools"]
      848 LOADK                            R29 K109 ["PublishPackage"]
      849 CALL                             R27 2 1
      850 LOADK                            R28 K38 ["NonServices"]
      851 CALL                             R26 2 1
      852 MOVE                             R27 R16
      853 GETTABLEKS                       R28 R15 K35 ["fromAction"]
      855 LOADK                            R29 K108 ["PackageTools"]
      856 LOADK                            R30 K114 ["UndoPackageChanges"]
      857 CALL                             R28 2 1
      858 LOADK                            R29 K38 ["NonServices"]
      859 CALL                             R27 2 1
      860 JUMPIFNOT                        R14 ; [+9]
      861 MOVE                             R28 R16
      862 GETTABLEKS                       R29 R15 K35 ["fromAction"]
      864 LOADK                            R30 K108 ["PackageTools"]
      865 LOADK                            R31 K115 ["RevertInstanceOverrides"]
      866 CALL                             R29 2 1
      867 LOADK                            R30 K38 ["NonServices"]
      868 CALL                             R28 2 1
      869 JUMP                             ; [+1]
      870 LOADNIL                          R28
      871 MOVE                             R29 R16
      872 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      874 LOADK                            R31 K108 ["PackageTools"]
      875 LOADK                            R32 K110 ["GetLatestPackage"]
      876 CALL                             R30 2 1
      877 LOADK                            R31 K38 ["NonServices"]
      878 CALL                             R29 2 1
      879 NEWTABLE                         R31 0 1
      881 NEWTABLE                         R32 0 4
      883 MOVE                             R33 R16
      884 GETTABLEKS                       R34 R15 K35 ["fromAction"]
      886 LOADK                            R35 K108 ["PackageTools"]
      887 LOADK                            R36 K118 ["DiffPackageAgainstLatest"]
      888 CALL                             R34 2 1
      889 LOADK                            R35 K38 ["NonServices"]
      890 CALL                             R33 2 1
      891 MOVE                             R34 R16
      892 GETTABLEKS                       R35 R15 K35 ["fromAction"]
      894 LOADK                            R36 K108 ["PackageTools"]
      895 LOADK                            R37 K113 ["MassUpdate"]
      896 CALL                             R35 2 1
      897 LOADK                            R36 K38 ["NonServices"]
      898 CALL                             R34 2 1
      899 MOVE                             R35 R16
      900 GETTABLEKS                       R36 R15 K35 ["fromAction"]
      902 LOADK                            R37 K108 ["PackageTools"]
      903 LOADK                            R38 K111 ["ShowPackagesDiff"]
      904 CALL                             R36 2 1
      905 LOADK                            R37 K38 ["NonServices"]
      906 CALL                             R35 2 1
      907 MOVE                             R36 R16
      908 GETTABLEKS                       R37 R15 K35 ["fromAction"]
      910 LOADK                            R38 K108 ["PackageTools"]
      911 LOADK                            R39 K112 ["PackageDetails"]
      912 CALL                             R37 2 1
      913 LOADK                            R38 K38 ["NonServices"]
      914 CALL                             R36 2 1
      915 SETLIST                          R32 R33 4 [1]
      917 SETLIST                          R31 R32 1 [1]
      919 DUPTABLE                         R30 K120 [{["key"] = "morePackageOptions", ["source"]}]
      920 DUPTABLE                         R32 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      921 SETTABLEKS                       R31 R32 K58 ["submenuCategories"]
      923 SETTABLEKS                       R32 R30 K54 ["source"]
      925 SETLIST                          R25 R26 5 [1]
      927 CALL                             R24 1 -1
      928 FASTCALL                         TABLE_INSERT ; [+2]
      929 GETIMPORT                        R22 K44 [table.insert]
      931 CALL                             R22 -1 0
      932 JUMP                             ; [+56]
      933 NEWTABLE                         R24 0 2
      935 MOVE                             R25 R16
      936 GETTABLEKS                       R26 R15 K35 ["fromAction"]
      938 LOADK                            R27 K108 ["PackageTools"]
      939 LOADK                            R28 K109 ["PublishPackage"]
      940 CALL                             R26 2 1
      941 LOADK                            R27 K38 ["NonServices"]
      942 CALL                             R25 2 1
      943 NEWTABLE                         R27 0 1
      945 NEWTABLE                         R28 0 3
      947 MOVE                             R29 R16
      948 GETTABLEKS                       R30 R15 K35 ["fromAction"]
      950 LOADK                            R31 K108 ["PackageTools"]
      951 LOADK                            R32 K113 ["MassUpdate"]
      952 CALL                             R30 2 1
      953 LOADK                            R31 K38 ["NonServices"]
      954 CALL                             R29 2 1
      955 MOVE                             R30 R16
      956 GETTABLEKS                       R31 R15 K35 ["fromAction"]
      958 LOADK                            R32 K108 ["PackageTools"]
      959 LOADK                            R33 K111 ["ShowPackagesDiff"]
      960 CALL                             R31 2 1
      961 LOADK                            R32 K38 ["NonServices"]
      962 CALL                             R30 2 1
      963 MOVE                             R31 R16
      964 GETTABLEKS                       R32 R15 K35 ["fromAction"]
      966 LOADK                            R33 K108 ["PackageTools"]
      967 LOADK                            R34 K112 ["PackageDetails"]
      968 CALL                             R32 2 1
      969 LOADK                            R33 K38 ["NonServices"]
      970 CALL                             R31 2 1
      971 SETLIST                          R28 R29 3 [1]
      973 SETLIST                          R27 R28 1 [1]
      975 DUPTABLE                         R26 K120 [{["key"] = "morePackageOptions", ["source"]}]
      976 DUPTABLE                         R28 K59 [{["type"] = "submenu", ["submenuCategories"]}]
      977 SETTABLEKS                       R27 R28 K58 ["submenuCategories"]
      979 SETTABLEKS                       R28 R26 K54 ["source"]
      981 SETLIST                          R24 R25 2 [1]
      983 FASTCALL2                        TABLE_INSERT R19 R24 ; [+4]
      985 MOVE                             R23 R19
      986 GETIMPORT                        R22 K44 [table.insert]
      988 CALL                             R22 2 0
      989 GETIMPORT                        R22 K122 [xpcall]
      991 DUPCLOSURE                       R23 K123 [PROTO_5]
      992 CAPTURE                          VAL R18
      993 DUPCLOSURE                       R24 K124 [PROTO_6]
      994 CAPTURE                          VAL R18
      995 CALL                             R22 2 2
      996 MOVE                             R24 R6
      997 CALL                             R24 0 1
      998 JUMPIFNOT                        R24 ; [+101]
      999 GETIMPORT                        R24 K5 [require]
     1001 GETTABLEKS                       R25 R0 K10 ["Packages"]
     1003 GETTABLEKS                       R25 R25 K125 ["SharedPluginConstants"]
     1005 CALL                             R24 1 1
     1006 GETTABLEKS                       R25 R24 K126 ["REIMPORT"]
     1008 GETTABLEKS                       R25 R25 K127 ["ACTION_ID"]
     1010 GETTABLEKS                       R26 R24 K126 ["REIMPORT"]
     1012 GETTABLEKS                       R26 R26 K128 ["ACTION_EVENTS"]
     1014 NEWTABLE                         R29 0 1
     1016 NEWTABLE                         R31 0 1
     1018 MOVE                             R32 R4
     1019 NEWTABLE                         R33 0 5
     1021 MOVE                             R34 R16
     1022 GETTABLEKS                       R36 R26 K126 ["REIMPORT"]
     1024 GETTABLEKS                       R37 R15 K35 ["fromAction"]
     1026 MOVE                             R38 R25
     1027 MOVE                             R39 R36
     1028 CALL                             R37 2 1
     1029 MOVE                             R35 R37
     1030 LOADK                            R36 K38 ["NonServices"]
     1031 CALL                             R34 2 1
     1032 MOVE                             R35 R16
     1033 GETTABLEKS                       R37 R26 K129 ["REIMPORT_RELATIVE_TO_THIS"]
     1035 GETTABLEKS                       R38 R15 K35 ["fromAction"]
     1037 MOVE                             R39 R25
     1038 MOVE                             R40 R37
     1039 CALL                             R38 2 1
     1040 MOVE                             R36 R38
     1041 LOADK                            R37 K38 ["NonServices"]
     1042 CALL                             R35 2 1
     1043 MOVE                             R36 R16
     1044 GETTABLEKS                       R38 R26 K130 ["CONFIGURE"]
     1046 GETTABLEKS                       R39 R15 K35 ["fromAction"]
     1048 MOVE                             R40 R25
     1049 MOVE                             R41 R38
     1050 CALL                             R39 2 1
     1051 MOVE                             R37 R39
     1052 LOADK                            R38 K38 ["NonServices"]
     1053 CALL                             R36 2 1
     1054 MOVE                             R37 R16
     1055 GETTABLEKS                       R39 R26 K131 ["CLEAR_REIMPORT_CONFIG"]
     1057 GETTABLEKS                       R40 R15 K35 ["fromAction"]
     1059 MOVE                             R41 R25
     1060 MOVE                             R42 R39
     1061 CALL                             R40 2 1
     1062 MOVE                             R38 R40
     1063 LOADK                            R39 K38 ["NonServices"]
     1064 CALL                             R37 2 1
     1065 MOVE                             R39 R10
     1066 CALL                             R39 0 1
     1067 JUMPIFNOT                        R39 ; [+12]
     1068 MOVE                             R38 R16
     1069 GETTABLEKS                       R40 R26 K132 ["WATCH_INSTANCE_FILE"]
     1071 GETTABLEKS                       R41 R15 K35 ["fromAction"]
     1073 MOVE                             R42 R25
     1074 MOVE                             R43 R40
     1075 CALL                             R41 2 1
     1076 MOVE                             R39 R41
     1077 LOADK                            R40 K38 ["NonServices"]
     1078 CALL                             R38 2 1
     1079 JUMP                             ; [+1]
     1080 LOADNIL                          R38
     1081 SETLIST                          R33 R34 5 [1]
     1083 CALL                             R32 1 -1
     1084 SETLIST                          R31 R32 -1 [1]
     1086 DUPTABLE                         R30 K134 [{["key"] = "Reimport", ["source"]}]
     1087 DUPTABLE                         R32 K59 [{["type"] = "submenu", ["submenuCategories"]}]
     1088 SETTABLEKS                       R31 R32 K58 ["submenuCategories"]
     1090 SETTABLEKS                       R32 R30 K54 ["source"]
     1092 SETLIST                          R29 R30 1 [1]
     1094 FASTCALL2                        TABLE_INSERT R19 R29 ; [+4]
     1096 MOVE                             R28 R19
     1097 GETIMPORT                        R27 K44 [table.insert]
     1099 CALL                             R27 2 0
     1100 MOVE                             R24 R5
     1101 CALL                             R24 0 1
     1102 JUMPIF                           R24 ; [+86]
     1103 MOVE                             R25 R19
     1104 MOVE                             R26 R4
     1105 NEWTABLE                         R27 0 4
     1107 MOVE                             R28 R16
     1108 GETTABLEKS                       R29 R15 K35 ["fromAction"]
     1110 LOADK                            R30 K135 ["LocalizationTools"]
     1111 LOADK                            R31 K136 ["SaveCsv"]
     1112 CALL                             R29 2 1
     1113 LOADK                            R30 K38 ["NonServices"]
     1114 CALL                             R28 2 1
     1115 MOVE                             R29 R16
     1116 GETTABLEKS                       R30 R15 K35 ["fromAction"]
     1118 LOADK                            R31 K135 ["LocalizationTools"]
     1119 LOADK                            R32 K137 ["LoadCsv"]
     1120 CALL                             R30 2 1
     1121 LOADK                            R31 K38 ["NonServices"]
     1122 CALL                             R29 2 1
     1123 MOVE                             R30 R16
     1124 MOVE                             R31 R23
     1125 LOADK                            R32 K38 ["NonServices"]
     1126 CALL                             R30 2 1
     1127 NEWTABLE                         R32 0 1
     1129 NEWTABLE                         R33 0 5
     1131 MOVE                             R34 R16
     1132 GETTABLEKS                       R35 R15 K35 ["fromAction"]
     1134 LOADK                            R36 K138 ["Export"]
     1135 LOADK                            R37 K139 ["PublishSelectionToRoblox"]
     1136 CALL                             R35 2 1
     1137 LOADK                            R36 K38 ["NonServices"]
     1138 CALL                             R34 2 1
     1139 MOVE                             R35 R16
     1140 GETTABLEKS                       R36 R15 K35 ["fromAction"]
     1142 LOADK                            R37 K138 ["Export"]
     1143 LOADK                            R38 K140 ["SaveSelectionToFile"]
     1144 CALL                             R36 2 1
     1145 LOADK                            R37 K50 ["All"]
     1146 CALL                             R35 2 1
     1147 MOVE                             R36 R16
     1148 GETTABLEKS                       R37 R15 K35 ["fromAction"]
     1150 LOADK                            R38 K141 ["PluginManagement"]
     1151 LOADK                            R39 K142 ["SaveAsLocalPlugin"]
     1152 CALL                             R37 2 1
     1153 LOADK                            R38 K50 ["All"]
     1154 CALL                             R36 2 1
     1155 MOVE                             R37 R16
     1156 GETTABLEKS                       R38 R15 K35 ["fromAction"]
     1158 LOADK                            R39 K141 ["PluginManagement"]
     1159 LOADK                            R40 K143 ["PublishToRoblox"]
     1160 CALL                             R38 2 1
     1161 LOADK                            R39 K50 ["All"]
     1162 CALL                             R37 2 1
     1163 MOVE                             R38 R16
     1164 GETTABLEKS                       R39 R15 K35 ["fromAction"]
     1166 LOADK                            R40 K138 ["Export"]
     1167 LOADK                            R41 K144 ["ExportSelection"]
     1168 CALL                             R39 2 1
     1169 LOADK                            R40 K50 ["All"]
     1170 CALL                             R38 2 1
     1171 SETLIST                          R33 R34 5 [1]
     1173 SETLIST                          R32 R33 1 [1]
     1175 DUPTABLE                         R31 K146 [{["key"] = "saveAndExport", ["source"]}]
     1176 DUPTABLE                         R33 K59 [{["type"] = "submenu", ["submenuCategories"]}]
     1177 SETTABLEKS                       R32 R33 K58 ["submenuCategories"]
     1179 SETTABLEKS                       R33 R31 K54 ["source"]
     1181 SETLIST                          R27 R28 4 [1]
     1183 CALL                             R26 1 -1
     1184 FASTCALL                         TABLE_INSERT ; [+2]
     1185 GETIMPORT                        R24 K44 [table.insert]
     1187 CALL                             R24 -1 0
     1188 JUMP                             ; [+93]
     1189 MOVE                             R25 R19
     1190 MOVE                             R26 R4
     1191 NEWTABLE                         R27 0 4
     1193 MOVE                             R28 R16
     1194 GETTABLEKS                       R29 R15 K35 ["fromAction"]
     1196 LOADK                            R30 K135 ["LocalizationTools"]
     1197 LOADK                            R31 K136 ["SaveCsv"]
     1198 CALL                             R29 2 1
     1199 LOADK                            R30 K38 ["NonServices"]
     1200 CALL                             R28 2 1
     1201 MOVE                             R29 R16
     1202 GETTABLEKS                       R30 R15 K35 ["fromAction"]
     1204 LOADK                            R31 K135 ["LocalizationTools"]
     1205 LOADK                            R32 K137 ["LoadCsv"]
     1206 CALL                             R30 2 1
     1207 LOADK                            R31 K38 ["NonServices"]
     1208 CALL                             R29 2 1
     1209 MOVE                             R30 R16
     1210 MOVE                             R31 R23
     1211 LOADK                            R32 K38 ["NonServices"]
     1212 CALL                             R30 2 1
     1213 NEWTABLE                         R32 0 1
     1215 NEWTABLE                         R33 0 6
     1217 MOVE                             R34 R16
     1218 GETTABLEKS                       R35 R15 K35 ["fromAction"]
     1220 LOADK                            R36 K138 ["Export"]
     1221 LOADK                            R37 K139 ["PublishSelectionToRoblox"]
     1222 CALL                             R35 2 1
     1223 LOADK                            R36 K38 ["NonServices"]
     1224 CALL                             R34 2 1
     1225 MOVE                             R35 R16
     1226 GETTABLEKS                       R36 R15 K35 ["fromAction"]
     1228 LOADK                            R37 K138 ["Export"]
     1229 LOADK                            R38 K140 ["SaveSelectionToFile"]
     1230 CALL                             R36 2 1
     1231 LOADK                            R37 K50 ["All"]
     1232 CALL                             R35 2 1
     1233 MOVE                             R36 R16
     1234 GETTABLEKS                       R37 R15 K35 ["fromAction"]
     1236 LOADK                            R38 K141 ["PluginManagement"]
     1237 LOADK                            R39 K142 ["SaveAsLocalPlugin"]
     1238 CALL                             R37 2 1
     1239 LOADK                            R38 K50 ["All"]
     1240 CALL                             R36 2 1
     1241 MOVE                             R37 R16
     1242 GETTABLEKS                       R38 R15 K35 ["fromAction"]
     1244 LOADK                            R39 K141 ["PluginManagement"]
     1245 LOADK                            R40 K143 ["PublishToRoblox"]
     1246 CALL                             R38 2 1
     1247 LOADK                            R39 K50 ["All"]
     1248 CALL                             R37 2 1
     1249 MOVE                             R38 R16
     1250 GETTABLEKS                       R39 R15 K35 ["fromAction"]
     1252 LOADK                            R40 K138 ["Export"]
     1253 LOADK                            R41 K144 ["ExportSelection"]
     1254 CALL                             R39 2 1
     1255 LOADK                            R40 K50 ["All"]
     1256 CALL                             R38 2 1
     1257 MOVE                             R39 R16
     1258 GETTABLEKS                       R40 R15 K35 ["fromAction"]
     1260 LOADK                            R41 K138 ["Export"]
     1261 LOADK                            R42 K147 ["ExportAsGltf"]
     1262 CALL                             R40 2 1
     1263 LOADK                            R41 K50 ["All"]
     1264 CALL                             R39 2 1
     1265 SETLIST                          R33 R34 6 [1]
     1267 SETLIST                          R32 R33 1 [1]
     1269 DUPTABLE                         R31 K146 [{["key"] = "saveAndExport", ["source"]}]
     1270 DUPTABLE                         R33 K59 [{["type"] = "submenu", ["submenuCategories"]}]
     1271 SETTABLEKS                       R32 R33 K58 ["submenuCategories"]
     1273 SETTABLEKS                       R33 R31 K54 ["source"]
     1275 SETLIST                          R27 R28 4 [1]
     1277 CALL                             R26 1 -1
     1278 FASTCALL                         TABLE_INSERT ; [+2]
     1279 GETIMPORT                        R24 K44 [table.insert]
     1281 CALL                             R24 -1 0
     1282 NEWTABLE                         R26 0 2
     1284 MOVE                             R27 R16
     1285 GETTABLEKS                       R28 R15 K35 ["fromAction"]
     1287 LOADK                            R29 K148 ["InsertService"]
     1288 LOADK                            R30 K149 ["ShowServices"]
     1289 CALL                             R28 2 1
     1290 LOADK                            R29 K150 ["ServicesAndBlank"]
     1291 CALL                             R27 2 1
     1292 MOVE                             R28 R16
     1293 GETTABLEKS                       R29 R15 K35 ["fromAction"]
     1295 LOADK                            R30 K148 ["InsertService"]
     1296 LOADK                            R31 K151 ["HideService"]
     1297 CALL                             R29 2 1
     1298 LOADK                            R30 K152 ["Services"]
     1299 CALL                             R28 2 1
     1300 SETLIST                          R26 R27 2 [1]
     1302 FASTCALL2                        TABLE_INSERT R19 R26 ; [+4]
     1304 MOVE                             R25 R19
     1305 GETIMPORT                        R24 K44 [table.insert]
     1307 CALL                             R24 2 0
     1308 NEWTABLE                         R26 0 1
     1310 MOVE                             R27 R16
     1311 GETTABLEKS                       R28 R15 K35 ["fromAction"]
     1313 LOADK                            R29 K45 ["Common"]
     1314 LOADK                            R30 K153 ["Help"]
     1315 CALL                             R28 2 1
     1316 LOADK                            R29 K50 ["All"]
     1317 CALL                             R27 2 1
     1318 SETLIST                          R26 R27 1 [1]
     1320 FASTCALL2                        TABLE_INSERT R19 R26 ; [+4]
     1322 MOVE                             R25 R19
     1323 GETIMPORT                        R24 K44 [table.insert]
     1325 CALL                             R24 2 0
     1326 RETURN                           R19 1
