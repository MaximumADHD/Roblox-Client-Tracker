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
      109 LOADK                            R15 K27 ["CopyAsJsonAction"]
      110 NAMECALL                         R13 R13 K25 ["GetEngineFeature"]
      112 CALL                             R13 2 1
      113 GETIMPORT                        R14 K23 [game]
      115 LOADK                            R16 K28 ["UnifiedSyncActions"]
      116 NAMECALL                         R14 R14 K25 ["GetEngineFeature"]
      118 CALL                             R14 2 1
      119 GETIMPORT                        R15 K23 [game]
      121 LOADK                            R17 K29 ["RevertInstanceOverridesAction"]
      122 NAMECALL                         R15 R15 K25 ["GetEngineFeature"]
      124 CALL                             R15 2 1
      125 GETIMPORT                        R16 K23 [game]
      127 LOADK                            R18 K30 ["StudioTextDocumentUploadAsset"]
      128 NAMECALL                         R16 R16 K25 ["GetEngineFeature"]
      130 CALL                             R16 2 1
      131 GETTABLEKS                       R17 R3 K13 ["Util"]
      133 GETTABLEKS                       R17 R17 K31 ["StudioUri"]
      135 DUPCLOSURE                       R18 K32 [PROTO_0]
      136 CAPTURE                          VAL R17
      137 DUPCLOSURE                       R19 K33 [PROTO_1]
      138 DUPCLOSURE                       R20 K34 [PROTO_2]
      139 CAPTURE                          VAL R17
      140 NEWTABLE                         R21 0 0
      142 DUPCLOSURE                       R22 K35 [PROTO_3]
      143 DUPCLOSURE                       R23 K36 [PROTO_4]
      144 MOVE                             R24 R7
      145 CALL                             R24 0 1
      146 JUMPIFNOT                        R24 ; [+35]
      147 NEWTABLE                         R26 0 3
      149 MOVE                             R27 R18
      150 GETTABLEKS                       R28 R17 K37 ["fromAction"]
      152 LOADK                            R29 K38 ["ScriptTools"]
      153 LOADK                            R30 K39 ["Open"]
      154 CALL                             R28 2 1
      155 LOADK                            R29 K40 ["NonServices"]
      156 CALL                             R27 2 1
      157 MOVE                             R28 R18
      158 GETTABLEKS                       R29 R17 K37 ["fromAction"]
      160 LOADK                            R30 K41 ["FileSync"]
      161 LOADK                            R31 K42 ["OpenInExternalEditor"]
      162 CALL                             R29 2 1
      163 LOADK                            R30 K40 ["NonServices"]
      164 CALL                             R28 2 1
      165 MOVE                             R29 R18
      166 GETTABLEKS                       R30 R17 K37 ["fromAction"]
      168 LOADK                            R31 K38 ["ScriptTools"]
      169 LOADK                            R32 K43 ["OpenScriptHistory"]
      170 CALL                             R30 2 1
      171 LOADK                            R31 K40 ["NonServices"]
      172 CALL                             R29 2 1
      173 SETLIST                          R26 R27 3 [1]
      175 FASTCALL2                        TABLE_INSERT R21 R26 ; [+4]
      177 MOVE                             R25 R21
      178 GETIMPORT                        R24 K46 [table.insert]
      180 CALL                             R24 2 0
      181 JUMP                             ; [+26]
      182 NEWTABLE                         R26 0 2
      184 MOVE                             R27 R18
      185 GETTABLEKS                       R28 R17 K37 ["fromAction"]
      187 LOADK                            R29 K38 ["ScriptTools"]
      188 LOADK                            R30 K39 ["Open"]
      189 CALL                             R28 2 1
      190 LOADK                            R29 K40 ["NonServices"]
      191 CALL                             R27 2 1
      192 MOVE                             R28 R18
      193 GETTABLEKS                       R29 R17 K37 ["fromAction"]
      195 LOADK                            R30 K38 ["ScriptTools"]
      196 LOADK                            R31 K43 ["OpenScriptHistory"]
      197 CALL                             R29 2 1
      198 LOADK                            R30 K40 ["NonServices"]
      199 CALL                             R28 2 1
      200 SETLIST                          R26 R27 2 [1]
      202 FASTCALL2                        TABLE_INSERT R21 R26 ; [+4]
      204 MOVE                             R25 R21
      205 GETIMPORT                        R24 K46 [table.insert]
      207 CALL                             R24 2 0
      208 MOVE                             R25 R21
      209 MOVE                             R26 R4
      210 NEWTABLE                         R27 0 8
      212 MOVE                             R28 R18
      213 GETTABLEKS                       R29 R17 K37 ["fromAction"]
      215 LOADK                            R30 K47 ["Common"]
      216 LOADK                            R31 K48 ["Cut"]
      217 CALL                             R29 2 1
      218 LOADK                            R30 K40 ["NonServices"]
      219 CALL                             R28 2 1
      220 MOVE                             R29 R18
      221 GETTABLEKS                       R30 R17 K37 ["fromAction"]
      223 LOADK                            R31 K47 ["Common"]
      224 LOADK                            R32 K49 ["Copy"]
      225 CALL                             R30 2 1
      226 LOADK                            R31 K40 ["NonServices"]
      227 CALL                             R29 2 1
      228 JUMPIF                           R11 ; [+2]
      229 JUMPIF                           R12 ; [+1]
      230 JUMPIFNOT                        R13 ; [+50]
      231 NEWTABLE                         R31 0 1
      233 MOVE                             R32 R4
      234 NEWTABLE                         R33 0 3
      236 JUMPIFNOT                        R11 ; [+9]
      237 MOVE                             R34 R18
      238 GETTABLEKS                       R35 R17 K37 ["fromAction"]
      240 LOADK                            R36 K50 ["BuilderTools"]
      241 LOADK                            R37 K51 ["CopyPath"]
      242 CALL                             R35 2 1
      243 LOADK                            R36 K52 ["All"]
      244 CALL                             R34 2 1
      245 JUMP                             ; [+1]
      246 LOADNIL                          R34
      247 JUMPIFNOT                        R12 ; [+9]
      248 MOVE                             R35 R18
      249 GETTABLEKS                       R36 R17 K37 ["fromAction"]
      251 LOADK                            R37 K50 ["BuilderTools"]
      252 LOADK                            R38 K53 ["CopyUniqueId"]
      253 CALL                             R36 2 1
      254 LOADK                            R37 K52 ["All"]
      255 CALL                             R35 2 1
      256 JUMP                             ; [+1]
      257 LOADNIL                          R35
      258 JUMPIFNOT                        R13 ; [+9]
      259 MOVE                             R36 R18
      260 GETTABLEKS                       R37 R17 K37 ["fromAction"]
      262 LOADK                            R38 K50 ["BuilderTools"]
      263 LOADK                            R39 K54 ["CopyAsJson"]
      264 CALL                             R37 2 1
      265 LOADK                            R38 K52 ["All"]
      266 CALL                             R36 2 1
      267 JUMP                             ; [+1]
      268 LOADNIL                          R36
      269 SETLIST                          R33 R34 3 [1]
      271 CALL                             R32 1 -1
      272 SETLIST                          R31 R32 -1 [1]
      274 DUPTABLE                         R30 K58 [{["key"] = "CopyAs", ["source"]}]
      275 DUPTABLE                         R32 K62 [{["type"] = "submenu", ["submenuCategories"]}]
      276 SETTABLEKS                       R31 R32 K61 ["submenuCategories"]
      278 SETTABLEKS                       R32 R30 K57 ["source"]
      280 JUMP                             ; [+1]
      281 LOADNIL                          R30
      282 MOVE                             R31 R18
      283 GETTABLEKS                       R32 R17 K37 ["fromAction"]
      285 LOADK                            R33 K47 ["Common"]
      286 LOADK                            R34 K63 ["PasteInto"]
      287 CALL                             R32 2 1
      288 LOADK                            R33 K52 ["All"]
      289 CALL                             R31 2 1
      290 MOVE                             R32 R18
      291 GETTABLEKS                       R33 R17 K37 ["fromAction"]
      293 LOADK                            R34 K50 ["BuilderTools"]
      294 LOADK                            R35 K64 ["PasteIntoAtOriginalLocation"]
      295 CALL                             R33 2 1
      296 LOADK                            R34 K52 ["All"]
      297 CALL                             R32 2 1
      298 MOVE                             R33 R18
      299 GETTABLEKS                       R34 R17 K37 ["fromAction"]
      301 LOADK                            R35 K47 ["Common"]
      302 LOADK                            R36 K65 ["Duplicate"]
      303 CALL                             R34 2 1
      304 LOADK                            R35 K40 ["NonServices"]
      305 CALL                             R33 2 1
      306 MOVE                             R34 R18
      307 GETTABLEKS                       R35 R17 K37 ["fromAction"]
      309 LOADK                            R36 K47 ["Common"]
      310 LOADK                            R37 K66 ["Delete"]
      311 CALL                             R35 2 1
      312 LOADK                            R36 K40 ["NonServices"]
      313 CALL                             R34 2 1
      314 MOVE                             R35 R18
      315 GETTABLEKS                       R36 R17 K37 ["fromAction"]
      317 LOADK                            R37 K11 ["Explorer"]
      318 LOADK                            R38 K67 ["Rename"]
      319 CALL                             R36 2 1
      320 LOADK                            R37 K52 ["All"]
      321 LOADNIL                          R38
      322 GETTABLEKS                       R39 R2 K68 ["Data"]
      324 GETTABLEKS                       R39 R39 K8 ["ContextMenu"]
      326 GETTABLEKS                       R39 R39 K69 ["coreItems"]
      328 GETTABLEKS                       R39 R39 K70 ["rename"]
      330 CALL                             R35 4 1
      331 SETLIST                          R27 R28 8 [1]
      333 CALL                             R26 1 -1
      334 FASTCALL                         TABLE_INSERT ; [+2]
      335 GETIMPORT                        R24 K46 [table.insert]
      337 CALL                             R24 -1 0
      338 NEWTABLE                         R26 0 4
      340 MOVE                             R27 R18
      341 GETTABLEKS                       R28 R17 K37 ["fromAction"]
      343 LOADK                            R29 K50 ["BuilderTools"]
      344 LOADK                            R30 K71 ["GroupAsModel"]
      345 CALL                             R28 2 1
      346 LOADK                            R29 K40 ["NonServices"]
      347 CALL                             R27 2 1
      348 MOVE                             R28 R18
      349 GETTABLEKS                       R29 R17 K37 ["fromAction"]
      351 LOADK                            R30 K50 ["BuilderTools"]
      352 LOADK                            R31 K72 ["GroupAsFolder"]
      353 CALL                             R29 2 1
      354 LOADK                            R30 K40 ["NonServices"]
      355 CALL                             R28 2 1
      356 MOVE                             R29 R18
      357 GETTABLEKS                       R30 R17 K37 ["fromAction"]
      359 LOADK                            R31 K50 ["BuilderTools"]
      360 LOADK                            R32 K73 ["Ungroup"]
      361 CALL                             R30 2 1
      362 LOADK                            R31 K40 ["NonServices"]
      363 CALL                             R29 2 1
      364 NEWTABLE                         R31 0 1
      366 NEWTABLE                         R32 0 4
      368 MOVE                             R33 R18
      369 GETTABLEKS                       R34 R17 K37 ["fromAction"]
      371 LOADK                            R35 K50 ["BuilderTools"]
      372 LOADK                            R36 K74 ["UnionSelection"]
      373 CALL                             R34 2 1
      374 LOADK                            R35 K40 ["NonServices"]
      375 CALL                             R33 2 1
      376 MOVE                             R34 R18
      377 GETTABLEKS                       R35 R17 K37 ["fromAction"]
      379 LOADK                            R36 K50 ["BuilderTools"]
      380 LOADK                            R37 K75 ["IntersectSelection"]
      381 CALL                             R35 2 1
      382 LOADK                            R36 K40 ["NonServices"]
      383 CALL                             R34 2 1
      384 MOVE                             R35 R18
      385 GETTABLEKS                       R36 R17 K37 ["fromAction"]
      387 LOADK                            R37 K50 ["BuilderTools"]
      388 LOADK                            R38 K76 ["NegateSelection"]
      389 CALL                             R36 2 1
      390 LOADK                            R37 K40 ["NonServices"]
      391 CALL                             R35 2 1
      392 MOVE                             R36 R18
      393 GETTABLEKS                       R37 R17 K37 ["fromAction"]
      395 LOADK                            R38 K50 ["BuilderTools"]
      396 LOADK                            R39 K77 ["SeparateSelection"]
      397 CALL                             R37 2 1
      398 LOADK                            R38 K40 ["NonServices"]
      399 CALL                             R36 2 1
      400 SETLIST                          R32 R33 4 [1]
      402 SETLIST                          R31 R32 1 [1]
      404 DUPTABLE                         R30 K79 [{["key"] = "solidModeling", ["source"]}]
      405 DUPTABLE                         R32 K62 [{["type"] = "submenu", ["submenuCategories"]}]
      406 SETTABLEKS                       R31 R32 K61 ["submenuCategories"]
      408 SETTABLEKS                       R32 R30 K57 ["source"]
      410 SETLIST                          R26 R27 4 [1]
      412 FASTCALL2                        TABLE_INSERT R21 R26 ; [+4]
      414 MOVE                             R25 R21
      415 GETIMPORT                        R24 K46 [table.insert]
      417 CALL                             R24 2 0
      418 MOVE                             R25 R21
      419 MOVE                             R26 R4
      420 NEWTABLE                         R27 0 5
      422 NEWTABLE                         R29 0 1
      424 NEWTABLE                         R30 0 3
      426 MOVE                             R31 R18
      427 GETTABLEKS                       R32 R17 K37 ["fromAction"]
      429 LOADK                            R33 K50 ["BuilderTools"]
      430 LOADK                            R34 K80 ["InsertPartIntoSelection"]
      431 CALL                             R32 2 1
      432 LOADK                            R33 K52 ["All"]
      433 CALL                             R31 2 1
      434 MOVE                             R32 R18
      435 GETTABLEKS                       R33 R17 K37 ["fromAction"]
      437 LOADK                            R34 K50 ["BuilderTools"]
      438 LOADK                            R35 K81 ["InsertObject"]
      439 CALL                             R33 2 1
      440 LOADK                            R34 K52 ["All"]
      441 CALL                             R32 2 1
      442 MOVE                             R33 R18
      443 GETTABLEKS                       R34 R17 K37 ["fromAction"]
      445 LOADK                            R35 K50 ["BuilderTools"]
      446 LOADK                            R36 K82 ["InsertFromFile"]
      447 CALL                             R34 2 1
      448 LOADK                            R35 K52 ["All"]
      449 CALL                             R33 2 1
      450 SETLIST                          R30 R31 3 [1]
      452 SETLIST                          R29 R30 1 [1]
      454 DUPTABLE                         R28 K83 [{["key"] = "insert", ["source"]}]
      455 DUPTABLE                         R30 K62 [{["type"] = "submenu", ["submenuCategories"]}]
      456 SETTABLEKS                       R29 R30 K61 ["submenuCategories"]
      458 SETTABLEKS                       R30 R28 K57 ["source"]
      460 MOVE                             R30 R4
      461 NEWTABLE                         R31 0 1
      463 NEWTABLE                         R32 0 4
      465 MOVE                             R33 R18
      466 GETTABLEKS                       R34 R17 K37 ["fromAction"]
      468 LOADK                            R35 K47 ["Common"]
      469 LOADK                            R36 K84 ["SelectParents"]
      470 CALL                             R34 2 1
      471 LOADK                            R35 K40 ["NonServices"]
      472 LOADNIL                          R36
      473 CALL                             R33 3 1
      474 MOVE                             R34 R18
      475 GETTABLEKS                       R35 R17 K37 ["fromAction"]
      477 LOADK                            R36 K47 ["Common"]
      478 LOADK                            R37 K85 ["SelectChildren"]
      479 CALL                             R35 2 1
      480 LOADK                            R36 K52 ["All"]
      481 LOADNIL                          R37
      482 CALL                             R34 3 1
      483 MOVE                             R35 R18
      484 GETTABLEKS                       R36 R17 K37 ["fromAction"]
      486 LOADK                            R37 K11 ["Explorer"]
      487 LOADK                            R38 K86 ["ExpandAll"]
      488 CALL                             R36 2 1
      489 LOADK                            R37 K52 ["All"]
      490 LOADNIL                          R38
      491 GETTABLEKS                       R39 R2 K68 ["Data"]
      493 GETTABLEKS                       R39 R39 K8 ["ContextMenu"]
      495 GETTABLEKS                       R39 R39 K69 ["coreItems"]
      497 GETTABLEKS                       R39 R39 K87 ["expandAll"]
      499 CALL                             R35 4 1
      500 MOVE                             R36 R18
      501 GETTABLEKS                       R37 R17 K37 ["fromAction"]
      503 LOADK                            R38 K11 ["Explorer"]
      504 LOADK                            R39 K88 ["CollapseAll"]
      505 CALL                             R37 2 1
      506 LOADK                            R38 K52 ["All"]
      507 LOADNIL                          R39
      508 GETTABLEKS                       R40 R2 K68 ["Data"]
      510 GETTABLEKS                       R40 R40 K8 ["ContextMenu"]
      512 GETTABLEKS                       R40 R40 K69 ["coreItems"]
      514 GETTABLEKS                       R40 R40 K89 ["collapseAll"]
      516 CALL                             R36 4 1
      517 SETLIST                          R32 R33 4 [1]
      519 SETLIST                          R31 R32 1 [1]
      521 CALL                             R30 1 1
      522 DUPTABLE                         R29 K91 [{["key"] = "hierarchy", ["source"]}]
      523 DUPTABLE                         R31 K62 [{["type"] = "submenu", ["submenuCategories"]}]
      524 SETTABLEKS                       R30 R31 K61 ["submenuCategories"]
      526 SETTABLEKS                       R31 R29 K57 ["source"]
      528 MOVE                             R30 R18
      529 GETTABLEKS                       R31 R17 K37 ["fromAction"]
      531 LOADK                            R32 K50 ["BuilderTools"]
      532 LOADK                            R33 K92 ["ZoomExtents"]
      533 CALL                             R31 2 1
      534 LOADK                            R32 K40 ["NonServices"]
      535 MOVE                             R33 R22
      536 CALL                             R30 3 1
      537 MOVE                             R31 R18
      538 GETTABLEKS                       R32 R17 K37 ["fromAction"]
      540 LOADK                            R33 K50 ["BuilderTools"]
      541 LOADK                            R34 K93 ["ShowOrientationIndicator"]
      542 CALL                             R32 2 1
      543 LOADK                            R33 K40 ["NonServices"]
      544 CALL                             R31 2 1
      545 MOVE                             R32 R18
      546 GETTABLEKS                       R33 R17 K37 ["fromAction"]
      548 LOADK                            R34 K38 ["ScriptTools"]
      549 LOADK                            R35 K94 ["ToggleScripts"]
      550 CALL                             R33 2 1
      551 LOADK                            R34 K40 ["NonServices"]
      552 CALL                             R32 2 1
      553 SETLIST                          R27 R28 5 [1]
      555 CALL                             R26 1 -1
      556 FASTCALL                         TABLE_INSERT ; [+2]
      557 GETIMPORT                        R24 K46 [table.insert]
      559 CALL                             R24 -1 0
      560 NEWTABLE                         R26 0 4
      562 MOVE                             R27 R18
      563 GETTABLEKS                       R28 R17 K37 ["fromAction"]
      565 LOADK                            R29 K95 ["PluginDebugging"]
      566 LOADK                            R30 K96 ["SaveAndReloadDebuggablePlugin"]
      567 CALL                             R28 2 1
      568 LOADK                            R29 K52 ["All"]
      569 CALL                             R27 2 1
      570 MOVE                             R28 R18
      571 GETTABLEKS                       R29 R17 K37 ["fromAction"]
      573 LOADK                            R30 K95 ["PluginDebugging"]
      574 LOADK                            R31 K97 ["ReloadDebuggablePlugin"]
      575 CALL                             R29 2 1
      576 LOADK                            R30 K52 ["All"]
      577 CALL                             R28 2 1
      578 MOVE                             R29 R18
      579 GETTABLEKS                       R30 R17 K37 ["fromAction"]
      581 LOADK                            R31 K95 ["PluginDebugging"]
      582 LOADK                            R32 K98 ["SaveAndReloadAllDebuggablePlugins"]
      583 CALL                             R30 2 1
      584 LOADK                            R31 K52 ["All"]
      585 MOVE                             R32 R23
      586 CALL                             R29 3 1
      587 MOVE                             R30 R18
      588 GETTABLEKS                       R31 R17 K37 ["fromAction"]
      590 LOADK                            R32 K95 ["PluginDebugging"]
      591 LOADK                            R33 K99 ["SaveBuildAndReloadDebuggablePlugin"]
      592 CALL                             R31 2 1
      593 LOADK                            R32 K52 ["All"]
      594 CALL                             R30 2 1
      595 SETLIST                          R26 R27 4 [1]
      597 FASTCALL2                        TABLE_INSERT R21 R26 ; [+4]
      599 MOVE                             R25 R21
      600 GETIMPORT                        R24 K46 [table.insert]
      602 CALL                             R24 2 0
      603 MOVE                             R24 R7
      604 CALL                             R24 0 1
      605 JUMPIFNOT                        R24 ; [+154]
      606 JUMPIFNOT                        R14 ; [+65]
      607 NEWTABLE                         R26 0 1
      609 NEWTABLE                         R28 0 1
      611 NEWTABLE                         R29 0 5
      613 MOVE                             R30 R18
      614 GETTABLEKS                       R31 R17 K37 ["fromAction"]
      616 LOADK                            R32 K41 ["FileSync"]
      617 LOADK                            R33 K100 ["StopScriptSync"]
      618 CALL                             R31 2 1
      619 LOADK                            R32 K52 ["All"]
      620 CALL                             R30 2 1
      621 MOVE                             R31 R18
      622 GETTABLEKS                       R32 R17 K37 ["fromAction"]
      624 LOADK                            R33 K41 ["FileSync"]
      625 LOADK                            R34 K101 ["StartSync"]
      626 CALL                             R32 2 1
      627 LOADK                            R33 K52 ["All"]
      628 CALL                             R31 2 1
      629 MOVE                             R32 R18
      630 GETTABLEKS                       R33 R17 K37 ["fromAction"]
      632 LOADK                            R34 K41 ["FileSync"]
      633 LOADK                            R35 K102 ["ResumeScriptSync"]
      634 CALL                             R33 2 1
      635 LOADK                            R34 K52 ["All"]
      636 CALL                             R32 2 1
      637 MOVE                             R33 R18
      638 GETTABLEKS                       R34 R17 K37 ["fromAction"]
      640 LOADK                            R35 K41 ["FileSync"]
      641 LOADK                            R36 K103 ["ShowInFolder"]
      642 CALL                             R34 2 1
      643 LOADK                            R35 K52 ["All"]
      644 CALL                             R33 2 1
      645 MOVE                             R34 R18
      646 GETTABLEKS                       R35 R17 K37 ["fromAction"]
      648 LOADK                            R36 K41 ["FileSync"]
      649 LOADK                            R37 K104 ["SelectSyncingRoot"]
      650 CALL                             R35 2 1
      651 LOADK                            R36 K52 ["All"]
      652 CALL                             R34 2 1
      653 SETLIST                          R29 R30 5 [1]
      655 SETLIST                          R28 R29 1 [1]
      657 DUPTABLE                         R27 K106 [{["key"] = "scriptSync", ["source"]}]
      658 DUPTABLE                         R29 K62 [{["type"] = "submenu", ["submenuCategories"]}]
      659 SETTABLEKS                       R28 R29 K61 ["submenuCategories"]
      661 SETTABLEKS                       R29 R27 K57 ["source"]
      663 SETLIST                          R26 R27 1 [1]
      665 FASTCALL2                        TABLE_INSERT R21 R26 ; [+4]
      667 MOVE                             R25 R21
      668 GETIMPORT                        R24 K46 [table.insert]
      670 CALL                             R24 2 0
      671 JUMP                             ; [+88]
      672 NEWTABLE                         R26 0 1
      674 NEWTABLE                         R28 0 1
      676 NEWTABLE                         R29 0 8
      678 MOVE                             R30 R18
      679 GETTABLEKS                       R31 R17 K37 ["fromAction"]
      681 LOADK                            R32 K41 ["FileSync"]
      682 LOADK                            R33 K100 ["StopScriptSync"]
      683 CALL                             R31 2 1
      684 LOADK                            R32 K52 ["All"]
      685 CALL                             R30 2 1
      686 MOVE                             R31 R18
      687 GETTABLEKS                       R32 R17 K37 ["fromAction"]
      689 LOADK                            R33 K41 ["FileSync"]
      690 LOADK                            R34 K107 ["StartSyncToNewFile"]
      691 CALL                             R32 2 1
      692 LOADK                            R33 K40 ["NonServices"]
      693 CALL                             R31 2 1
      694 MOVE                             R32 R18
      695 GETTABLEKS                       R33 R17 K37 ["fromAction"]
      697 LOADK                            R34 K41 ["FileSync"]
      698 LOADK                            R35 K108 ["StartSyncToExistingFile"]
      699 CALL                             R33 2 1
      700 LOADK                            R34 K40 ["NonServices"]
      701 CALL                             R32 2 1
      702 MOVE                             R33 R18
      703 GETTABLEKS                       R34 R17 K37 ["fromAction"]
      705 LOADK                            R35 K41 ["FileSync"]
      706 LOADK                            R36 K109 ["StartSyncSelectedInstancesTo"]
      707 CALL                             R34 2 1
      708 LOADK                            R35 K52 ["All"]
      709 CALL                             R33 2 1
      710 MOVE                             R34 R18
      711 GETTABLEKS                       R35 R17 K37 ["fromAction"]
      713 LOADK                            R36 K41 ["FileSync"]
      714 LOADK                            R37 K110 ["StartSyncToDirectory"]
      715 CALL                             R35 2 1
      716 LOADK                            R36 K52 ["All"]
      717 CALL                             R34 2 1
      718 MOVE                             R35 R18
      719 GETTABLEKS                       R36 R17 K37 ["fromAction"]
      721 LOADK                            R37 K41 ["FileSync"]
      722 LOADK                            R38 K102 ["ResumeScriptSync"]
      723 CALL                             R36 2 1
      724 LOADK                            R37 K52 ["All"]
      725 CALL                             R35 2 1
      726 MOVE                             R36 R18
      727 GETTABLEKS                       R37 R17 K37 ["fromAction"]
      729 LOADK                            R38 K41 ["FileSync"]
      730 LOADK                            R39 K103 ["ShowInFolder"]
      731 CALL                             R37 2 1
      732 LOADK                            R38 K52 ["All"]
      733 CALL                             R36 2 1
      734 MOVE                             R37 R18
      735 GETTABLEKS                       R38 R17 K37 ["fromAction"]
      737 LOADK                            R39 K41 ["FileSync"]
      738 LOADK                            R40 K104 ["SelectSyncingRoot"]
      739 CALL                             R38 2 1
      740 LOADK                            R39 K52 ["All"]
      741 CALL                             R37 2 1
      742 SETLIST                          R29 R30 8 [1]
      744 SETLIST                          R28 R29 1 [1]
      746 DUPTABLE                         R27 K106 [{["key"] = "scriptSync", ["source"]}]
      747 DUPTABLE                         R29 K62 [{["type"] = "submenu", ["submenuCategories"]}]
      748 SETTABLEKS                       R28 R29 K61 ["submenuCategories"]
      750 SETTABLEKS                       R29 R27 K57 ["source"]
      752 SETLIST                          R26 R27 1 [1]
      754 FASTCALL2                        TABLE_INSERT R21 R26 ; [+4]
      756 MOVE                             R25 R21
      757 GETIMPORT                        R24 K46 [table.insert]
      759 CALL                             R24 2 0
      760 MOVE                             R24 R8
      761 CALL                             R24 0 1
      762 JUMPIFNOT                        R24 ; [+194]
      763 MOVE                             R24 R9
      764 CALL                             R24 0 1
      765 JUMPIFNOT                        R24 ; [+98]
      766 NEWTABLE                         R26 0 1
      768 NEWTABLE                         R28 0 4
      770 NEWTABLE                         R29 0 2
      772 MOVE                             R30 R18
      773 GETTABLEKS                       R31 R17 K37 ["fromAction"]
      775 LOADK                            R32 K111 ["PackageTools"]
      776 LOADK                            R33 K112 ["PublishPackage"]
      777 CALL                             R31 2 1
      778 LOADK                            R32 K40 ["NonServices"]
      779 CALL                             R30 2 1
      780 MOVE                             R31 R18
      781 GETTABLEKS                       R32 R17 K37 ["fromAction"]
      783 LOADK                            R33 K111 ["PackageTools"]
      784 LOADK                            R34 K113 ["GetLatestPackage"]
      785 CALL                             R32 2 1
      786 LOADK                            R33 K40 ["NonServices"]
      787 CALL                             R31 2 1
      788 SETLIST                          R29 R30 2 [1]
      790 NEWTABLE                         R30 0 2
      792 MOVE                             R31 R18
      793 GETTABLEKS                       R32 R17 K37 ["fromAction"]
      795 LOADK                            R33 K111 ["PackageTools"]
      796 LOADK                            R34 K114 ["ShowPackagesDiff"]
      797 CALL                             R32 2 1
      798 LOADK                            R33 K40 ["NonServices"]
      799 CALL                             R31 2 1
      800 MOVE                             R32 R18
      801 GETTABLEKS                       R33 R17 K37 ["fromAction"]
      803 LOADK                            R34 K111 ["PackageTools"]
      804 LOADK                            R35 K115 ["PackageDetails"]
      805 CALL                             R33 2 1
      806 LOADK                            R34 K40 ["NonServices"]
      807 CALL                             R32 2 1
      808 SETLIST                          R30 R31 2 [1]
      810 NEWTABLE                         R31 0 1
      812 MOVE                             R32 R18
      813 GETTABLEKS                       R33 R17 K37 ["fromAction"]
      815 LOADK                            R34 K111 ["PackageTools"]
      816 LOADK                            R35 K116 ["MassUpdate"]
      817 CALL                             R33 2 1
      818 LOADK                            R34 K40 ["NonServices"]
      819 CALL                             R32 2 1
      820 SETLIST                          R31 R32 1 [1]
      822 MOVE                             R32 R4
      823 NEWTABLE                         R33 0 2
      825 MOVE                             R34 R18
      826 GETTABLEKS                       R35 R17 K37 ["fromAction"]
      828 LOADK                            R36 K111 ["PackageTools"]
      829 LOADK                            R37 K117 ["UndoPackageChanges"]
      830 CALL                             R35 2 1
      831 LOADK                            R36 K40 ["NonServices"]
      832 CALL                             R34 2 1
      833 JUMPIFNOT                        R15 ; [+9]
      834 MOVE                             R35 R18
      835 GETTABLEKS                       R36 R17 K37 ["fromAction"]
      837 LOADK                            R37 K111 ["PackageTools"]
      838 LOADK                            R38 K118 ["RevertInstanceOverrides"]
      839 CALL                             R36 2 1
      840 LOADK                            R37 K40 ["NonServices"]
      841 CALL                             R35 2 1
      842 JUMP                             ; [+1]
      843 LOADNIL                          R35
      844 SETLIST                          R33 R34 2 [1]
      846 CALL                             R32 1 -1
      847 SETLIST                          R28 R29 -1 [1]
      849 DUPTABLE                         R27 K120 [{["key"] = "package", ["source"]}]
      850 DUPTABLE                         R29 K62 [{["type"] = "submenu", ["submenuCategories"]}]
      851 SETTABLEKS                       R28 R29 K61 ["submenuCategories"]
      853 SETTABLEKS                       R29 R27 K57 ["source"]
      855 SETLIST                          R26 R27 1 [1]
      857 FASTCALL2                        TABLE_INSERT R21 R26 ; [+4]
      859 MOVE                             R25 R21
      860 GETIMPORT                        R24 K46 [table.insert]
      862 CALL                             R24 2 0
      863 JUMP                             ; [+149]
      864 MOVE                             R25 R21
      865 MOVE                             R26 R4
      866 NEWTABLE                         R27 0 5
      868 MOVE                             R28 R18
      869 GETTABLEKS                       R29 R17 K37 ["fromAction"]
      871 LOADK                            R30 K111 ["PackageTools"]
      872 LOADK                            R31 K112 ["PublishPackage"]
      873 CALL                             R29 2 1
      874 LOADK                            R30 K40 ["NonServices"]
      875 CALL                             R28 2 1
      876 MOVE                             R29 R18
      877 GETTABLEKS                       R30 R17 K37 ["fromAction"]
      879 LOADK                            R31 K111 ["PackageTools"]
      880 LOADK                            R32 K117 ["UndoPackageChanges"]
      881 CALL                             R30 2 1
      882 LOADK                            R31 K40 ["NonServices"]
      883 CALL                             R29 2 1
      884 JUMPIFNOT                        R15 ; [+9]
      885 MOVE                             R30 R18
      886 GETTABLEKS                       R31 R17 K37 ["fromAction"]
      888 LOADK                            R32 K111 ["PackageTools"]
      889 LOADK                            R33 K118 ["RevertInstanceOverrides"]
      890 CALL                             R31 2 1
      891 LOADK                            R32 K40 ["NonServices"]
      892 CALL                             R30 2 1
      893 JUMP                             ; [+1]
      894 LOADNIL                          R30
      895 MOVE                             R31 R18
      896 GETTABLEKS                       R32 R17 K37 ["fromAction"]
      898 LOADK                            R33 K111 ["PackageTools"]
      899 LOADK                            R34 K113 ["GetLatestPackage"]
      900 CALL                             R32 2 1
      901 LOADK                            R33 K40 ["NonServices"]
      902 CALL                             R31 2 1
      903 NEWTABLE                         R33 0 1
      905 NEWTABLE                         R34 0 4
      907 MOVE                             R35 R18
      908 GETTABLEKS                       R36 R17 K37 ["fromAction"]
      910 LOADK                            R37 K111 ["PackageTools"]
      911 LOADK                            R38 K121 ["DiffPackageAgainstLatest"]
      912 CALL                             R36 2 1
      913 LOADK                            R37 K40 ["NonServices"]
      914 CALL                             R35 2 1
      915 MOVE                             R36 R18
      916 GETTABLEKS                       R37 R17 K37 ["fromAction"]
      918 LOADK                            R38 K111 ["PackageTools"]
      919 LOADK                            R39 K116 ["MassUpdate"]
      920 CALL                             R37 2 1
      921 LOADK                            R38 K40 ["NonServices"]
      922 CALL                             R36 2 1
      923 MOVE                             R37 R18
      924 GETTABLEKS                       R38 R17 K37 ["fromAction"]
      926 LOADK                            R39 K111 ["PackageTools"]
      927 LOADK                            R40 K114 ["ShowPackagesDiff"]
      928 CALL                             R38 2 1
      929 LOADK                            R39 K40 ["NonServices"]
      930 CALL                             R37 2 1
      931 MOVE                             R38 R18
      932 GETTABLEKS                       R39 R17 K37 ["fromAction"]
      934 LOADK                            R40 K111 ["PackageTools"]
      935 LOADK                            R41 K115 ["PackageDetails"]
      936 CALL                             R39 2 1
      937 LOADK                            R40 K40 ["NonServices"]
      938 CALL                             R38 2 1
      939 SETLIST                          R34 R35 4 [1]
      941 SETLIST                          R33 R34 1 [1]
      943 DUPTABLE                         R32 K123 [{["key"] = "morePackageOptions", ["source"]}]
      944 DUPTABLE                         R34 K62 [{["type"] = "submenu", ["submenuCategories"]}]
      945 SETTABLEKS                       R33 R34 K61 ["submenuCategories"]
      947 SETTABLEKS                       R34 R32 K57 ["source"]
      949 SETLIST                          R27 R28 5 [1]
      951 CALL                             R26 1 -1
      952 FASTCALL                         TABLE_INSERT ; [+2]
      953 GETIMPORT                        R24 K46 [table.insert]
      955 CALL                             R24 -1 0
      956 JUMP                             ; [+56]
      957 NEWTABLE                         R26 0 2
      959 MOVE                             R27 R18
      960 GETTABLEKS                       R28 R17 K37 ["fromAction"]
      962 LOADK                            R29 K111 ["PackageTools"]
      963 LOADK                            R30 K112 ["PublishPackage"]
      964 CALL                             R28 2 1
      965 LOADK                            R29 K40 ["NonServices"]
      966 CALL                             R27 2 1
      967 NEWTABLE                         R29 0 1
      969 NEWTABLE                         R30 0 3
      971 MOVE                             R31 R18
      972 GETTABLEKS                       R32 R17 K37 ["fromAction"]
      974 LOADK                            R33 K111 ["PackageTools"]
      975 LOADK                            R34 K116 ["MassUpdate"]
      976 CALL                             R32 2 1
      977 LOADK                            R33 K40 ["NonServices"]
      978 CALL                             R31 2 1
      979 MOVE                             R32 R18
      980 GETTABLEKS                       R33 R17 K37 ["fromAction"]
      982 LOADK                            R34 K111 ["PackageTools"]
      983 LOADK                            R35 K114 ["ShowPackagesDiff"]
      984 CALL                             R33 2 1
      985 LOADK                            R34 K40 ["NonServices"]
      986 CALL                             R32 2 1
      987 MOVE                             R33 R18
      988 GETTABLEKS                       R34 R17 K37 ["fromAction"]
      990 LOADK                            R35 K111 ["PackageTools"]
      991 LOADK                            R36 K115 ["PackageDetails"]
      992 CALL                             R34 2 1
      993 LOADK                            R35 K40 ["NonServices"]
      994 CALL                             R33 2 1
      995 SETLIST                          R30 R31 3 [1]
      997 SETLIST                          R29 R30 1 [1]
      999 DUPTABLE                         R28 K123 [{["key"] = "morePackageOptions", ["source"]}]
     1000 DUPTABLE                         R30 K62 [{["type"] = "submenu", ["submenuCategories"]}]
     1001 SETTABLEKS                       R29 R30 K61 ["submenuCategories"]
     1003 SETTABLEKS                       R30 R28 K57 ["source"]
     1005 SETLIST                          R26 R27 2 [1]
     1007 FASTCALL2                        TABLE_INSERT R21 R26 ; [+4]
     1009 MOVE                             R25 R21
     1010 GETIMPORT                        R24 K46 [table.insert]
     1012 CALL                             R24 2 0
     1013 DUPCLOSURE                       R25 K124 [PROTO_5]
     1014 CAPTURE                          VAL R20
     1015 DUPCLOSURE                       R26 K125 [PROTO_6]
     1016 CAPTURE                          VAL R20
     1017 FASTPCALL                        xpcall 2 ; [+2]
     1018 GETIMPORT                        R24 K127 [xpcall]
     1020 CALL                             R24 2 2
     1021 MOVE                             R26 R6
     1022 CALL                             R26 0 1
     1023 JUMPIFNOT                        R26 ; [+101]
     1024 GETIMPORT                        R26 K5 [require]
     1026 GETTABLEKS                       R27 R0 K10 ["Packages"]
     1028 GETTABLEKS                       R27 R27 K128 ["SharedPluginConstants"]
     1030 CALL                             R26 1 1
     1031 GETTABLEKS                       R27 R26 K129 ["REIMPORT"]
     1033 GETTABLEKS                       R27 R27 K130 ["ACTION_ID"]
     1035 GETTABLEKS                       R28 R26 K129 ["REIMPORT"]
     1037 GETTABLEKS                       R28 R28 K131 ["ACTION_EVENTS"]
     1039 NEWTABLE                         R31 0 1
     1041 NEWTABLE                         R33 0 1
     1043 MOVE                             R34 R4
     1044 NEWTABLE                         R35 0 5
     1046 MOVE                             R36 R18
     1047 GETTABLEKS                       R38 R28 K129 ["REIMPORT"]
     1049 GETTABLEKS                       R39 R17 K37 ["fromAction"]
     1051 MOVE                             R40 R27
     1052 MOVE                             R41 R38
     1053 CALL                             R39 2 1
     1054 MOVE                             R37 R39
     1055 LOADK                            R38 K40 ["NonServices"]
     1056 CALL                             R36 2 1
     1057 MOVE                             R37 R18
     1058 GETTABLEKS                       R39 R28 K132 ["REIMPORT_RELATIVE_TO_THIS"]
     1060 GETTABLEKS                       R40 R17 K37 ["fromAction"]
     1062 MOVE                             R41 R27
     1063 MOVE                             R42 R39
     1064 CALL                             R40 2 1
     1065 MOVE                             R38 R40
     1066 LOADK                            R39 K40 ["NonServices"]
     1067 CALL                             R37 2 1
     1068 MOVE                             R38 R18
     1069 GETTABLEKS                       R40 R28 K133 ["CONFIGURE"]
     1071 GETTABLEKS                       R41 R17 K37 ["fromAction"]
     1073 MOVE                             R42 R27
     1074 MOVE                             R43 R40
     1075 CALL                             R41 2 1
     1076 MOVE                             R39 R41
     1077 LOADK                            R40 K40 ["NonServices"]
     1078 CALL                             R38 2 1
     1079 MOVE                             R39 R18
     1080 GETTABLEKS                       R41 R28 K134 ["CLEAR_REIMPORT_CONFIG"]
     1082 GETTABLEKS                       R42 R17 K37 ["fromAction"]
     1084 MOVE                             R43 R27
     1085 MOVE                             R44 R41
     1086 CALL                             R42 2 1
     1087 MOVE                             R40 R42
     1088 LOADK                            R41 K40 ["NonServices"]
     1089 CALL                             R39 2 1
     1090 MOVE                             R41 R10
     1091 CALL                             R41 0 1
     1092 JUMPIFNOT                        R41 ; [+12]
     1093 MOVE                             R40 R18
     1094 GETTABLEKS                       R42 R28 K135 ["WATCH_INSTANCE_FILE"]
     1096 GETTABLEKS                       R43 R17 K37 ["fromAction"]
     1098 MOVE                             R44 R27
     1099 MOVE                             R45 R42
     1100 CALL                             R43 2 1
     1101 MOVE                             R41 R43
     1102 LOADK                            R42 K40 ["NonServices"]
     1103 CALL                             R40 2 1
     1104 JUMP                             ; [+1]
     1105 LOADNIL                          R40
     1106 SETLIST                          R35 R36 5 [1]
     1108 CALL                             R34 1 -1
     1109 SETLIST                          R33 R34 -1 [1]
     1111 DUPTABLE                         R32 K137 [{["key"] = "Reimport", ["source"]}]
     1112 DUPTABLE                         R34 K62 [{["type"] = "submenu", ["submenuCategories"]}]
     1113 SETTABLEKS                       R33 R34 K61 ["submenuCategories"]
     1115 SETTABLEKS                       R34 R32 K57 ["source"]
     1117 SETLIST                          R31 R32 1 [1]
     1119 FASTCALL2                        TABLE_INSERT R21 R31 ; [+4]
     1121 MOVE                             R30 R21
     1122 GETIMPORT                        R29 K46 [table.insert]
     1124 CALL                             R29 2 0
     1125 JUMPIFNOT                        R16 ; [+34]
     1126 GETIMPORT                        R26 K5 [require]
     1128 GETTABLEKS                       R27 R0 K10 ["Packages"]
     1130 GETTABLEKS                       R27 R27 K128 ["SharedPluginConstants"]
     1132 CALL                             R26 1 1
     1133 GETTABLEKS                       R27 R26 K138 ["TEXT_DOCUMENT_ASSET_EDITOR"]
     1135 NEWTABLE                         R30 0 1
     1137 MOVE                             R31 R18
     1138 GETTABLEKS                       R33 R27 K130 ["ACTION_ID"]
     1140 GETTABLEKS                       R34 R27 K131 ["ACTION_EVENTS"]
     1142 GETTABLEKS                       R34 R34 K139 ["UPLOAD_TO_ASSET"]
     1144 GETTABLEKS                       R35 R17 K37 ["fromAction"]
     1146 MOVE                             R36 R33
     1147 MOVE                             R37 R34
     1148 CALL                             R35 2 1
     1149 MOVE                             R32 R35
     1150 LOADK                            R33 K40 ["NonServices"]
     1151 CALL                             R31 2 1
     1152 SETLIST                          R30 R31 1 [1]
     1154 FASTCALL2                        TABLE_INSERT R21 R30 ; [+4]
     1156 MOVE                             R29 R21
     1157 GETIMPORT                        R28 K46 [table.insert]
     1159 CALL                             R28 2 0
     1160 MOVE                             R26 R5
     1161 CALL                             R26 0 1
     1162 JUMPIF                           R26 ; [+86]
     1163 MOVE                             R27 R21
     1164 MOVE                             R28 R4
     1165 NEWTABLE                         R29 0 4
     1167 MOVE                             R30 R18
     1168 GETTABLEKS                       R31 R17 K37 ["fromAction"]
     1170 LOADK                            R32 K140 ["LocalizationTools"]
     1171 LOADK                            R33 K141 ["SaveCsv"]
     1172 CALL                             R31 2 1
     1173 LOADK                            R32 K40 ["NonServices"]
     1174 CALL                             R30 2 1
     1175 MOVE                             R31 R18
     1176 GETTABLEKS                       R32 R17 K37 ["fromAction"]
     1178 LOADK                            R33 K140 ["LocalizationTools"]
     1179 LOADK                            R34 K142 ["LoadCsv"]
     1180 CALL                             R32 2 1
     1181 LOADK                            R33 K40 ["NonServices"]
     1182 CALL                             R31 2 1
     1183 MOVE                             R32 R18
     1184 MOVE                             R33 R25
     1185 LOADK                            R34 K40 ["NonServices"]
     1186 CALL                             R32 2 1
     1187 NEWTABLE                         R34 0 1
     1189 NEWTABLE                         R35 0 5
     1191 MOVE                             R36 R18
     1192 GETTABLEKS                       R37 R17 K37 ["fromAction"]
     1194 LOADK                            R38 K143 ["Export"]
     1195 LOADK                            R39 K144 ["PublishSelectionToRoblox"]
     1196 CALL                             R37 2 1
     1197 LOADK                            R38 K40 ["NonServices"]
     1198 CALL                             R36 2 1
     1199 MOVE                             R37 R18
     1200 GETTABLEKS                       R38 R17 K37 ["fromAction"]
     1202 LOADK                            R39 K143 ["Export"]
     1203 LOADK                            R40 K145 ["SaveSelectionToFile"]
     1204 CALL                             R38 2 1
     1205 LOADK                            R39 K52 ["All"]
     1206 CALL                             R37 2 1
     1207 MOVE                             R38 R18
     1208 GETTABLEKS                       R39 R17 K37 ["fromAction"]
     1210 LOADK                            R40 K146 ["PluginManagement"]
     1211 LOADK                            R41 K147 ["SaveAsLocalPlugin"]
     1212 CALL                             R39 2 1
     1213 LOADK                            R40 K52 ["All"]
     1214 CALL                             R38 2 1
     1215 MOVE                             R39 R18
     1216 GETTABLEKS                       R40 R17 K37 ["fromAction"]
     1218 LOADK                            R41 K146 ["PluginManagement"]
     1219 LOADK                            R42 K148 ["PublishToRoblox"]
     1220 CALL                             R40 2 1
     1221 LOADK                            R41 K52 ["All"]
     1222 CALL                             R39 2 1
     1223 MOVE                             R40 R18
     1224 GETTABLEKS                       R41 R17 K37 ["fromAction"]
     1226 LOADK                            R42 K143 ["Export"]
     1227 LOADK                            R43 K149 ["ExportSelection"]
     1228 CALL                             R41 2 1
     1229 LOADK                            R42 K52 ["All"]
     1230 CALL                             R40 2 1
     1231 SETLIST                          R35 R36 5 [1]
     1233 SETLIST                          R34 R35 1 [1]
     1235 DUPTABLE                         R33 K151 [{["key"] = "saveAndExport", ["source"]}]
     1236 DUPTABLE                         R35 K62 [{["type"] = "submenu", ["submenuCategories"]}]
     1237 SETTABLEKS                       R34 R35 K61 ["submenuCategories"]
     1239 SETTABLEKS                       R35 R33 K57 ["source"]
     1241 SETLIST                          R29 R30 4 [1]
     1243 CALL                             R28 1 -1
     1244 FASTCALL                         TABLE_INSERT ; [+2]
     1245 GETIMPORT                        R26 K46 [table.insert]
     1247 CALL                             R26 -1 0
     1248 JUMP                             ; [+93]
     1249 MOVE                             R27 R21
     1250 MOVE                             R28 R4
     1251 NEWTABLE                         R29 0 4
     1253 MOVE                             R30 R18
     1254 GETTABLEKS                       R31 R17 K37 ["fromAction"]
     1256 LOADK                            R32 K140 ["LocalizationTools"]
     1257 LOADK                            R33 K141 ["SaveCsv"]
     1258 CALL                             R31 2 1
     1259 LOADK                            R32 K40 ["NonServices"]
     1260 CALL                             R30 2 1
     1261 MOVE                             R31 R18
     1262 GETTABLEKS                       R32 R17 K37 ["fromAction"]
     1264 LOADK                            R33 K140 ["LocalizationTools"]
     1265 LOADK                            R34 K142 ["LoadCsv"]
     1266 CALL                             R32 2 1
     1267 LOADK                            R33 K40 ["NonServices"]
     1268 CALL                             R31 2 1
     1269 MOVE                             R32 R18
     1270 MOVE                             R33 R25
     1271 LOADK                            R34 K40 ["NonServices"]
     1272 CALL                             R32 2 1
     1273 NEWTABLE                         R34 0 1
     1275 NEWTABLE                         R35 0 6
     1277 MOVE                             R36 R18
     1278 GETTABLEKS                       R37 R17 K37 ["fromAction"]
     1280 LOADK                            R38 K143 ["Export"]
     1281 LOADK                            R39 K144 ["PublishSelectionToRoblox"]
     1282 CALL                             R37 2 1
     1283 LOADK                            R38 K40 ["NonServices"]
     1284 CALL                             R36 2 1
     1285 MOVE                             R37 R18
     1286 GETTABLEKS                       R38 R17 K37 ["fromAction"]
     1288 LOADK                            R39 K143 ["Export"]
     1289 LOADK                            R40 K145 ["SaveSelectionToFile"]
     1290 CALL                             R38 2 1
     1291 LOADK                            R39 K52 ["All"]
     1292 CALL                             R37 2 1
     1293 MOVE                             R38 R18
     1294 GETTABLEKS                       R39 R17 K37 ["fromAction"]
     1296 LOADK                            R40 K146 ["PluginManagement"]
     1297 LOADK                            R41 K147 ["SaveAsLocalPlugin"]
     1298 CALL                             R39 2 1
     1299 LOADK                            R40 K52 ["All"]
     1300 CALL                             R38 2 1
     1301 MOVE                             R39 R18
     1302 GETTABLEKS                       R40 R17 K37 ["fromAction"]
     1304 LOADK                            R41 K146 ["PluginManagement"]
     1305 LOADK                            R42 K148 ["PublishToRoblox"]
     1306 CALL                             R40 2 1
     1307 LOADK                            R41 K52 ["All"]
     1308 CALL                             R39 2 1
     1309 MOVE                             R40 R18
     1310 GETTABLEKS                       R41 R17 K37 ["fromAction"]
     1312 LOADK                            R42 K143 ["Export"]
     1313 LOADK                            R43 K149 ["ExportSelection"]
     1314 CALL                             R41 2 1
     1315 LOADK                            R42 K52 ["All"]
     1316 CALL                             R40 2 1
     1317 MOVE                             R41 R18
     1318 GETTABLEKS                       R42 R17 K37 ["fromAction"]
     1320 LOADK                            R43 K143 ["Export"]
     1321 LOADK                            R44 K152 ["ExportAsGltf"]
     1322 CALL                             R42 2 1
     1323 LOADK                            R43 K52 ["All"]
     1324 CALL                             R41 2 1
     1325 SETLIST                          R35 R36 6 [1]
     1327 SETLIST                          R34 R35 1 [1]
     1329 DUPTABLE                         R33 K151 [{["key"] = "saveAndExport", ["source"]}]
     1330 DUPTABLE                         R35 K62 [{["type"] = "submenu", ["submenuCategories"]}]
     1331 SETTABLEKS                       R34 R35 K61 ["submenuCategories"]
     1333 SETTABLEKS                       R35 R33 K57 ["source"]
     1335 SETLIST                          R29 R30 4 [1]
     1337 CALL                             R28 1 -1
     1338 FASTCALL                         TABLE_INSERT ; [+2]
     1339 GETIMPORT                        R26 K46 [table.insert]
     1341 CALL                             R26 -1 0
     1342 NEWTABLE                         R28 0 2
     1344 MOVE                             R29 R18
     1345 GETTABLEKS                       R30 R17 K37 ["fromAction"]
     1347 LOADK                            R31 K153 ["InsertService"]
     1348 LOADK                            R32 K154 ["ShowServices"]
     1349 CALL                             R30 2 1
     1350 LOADK                            R31 K155 ["ServicesAndBlank"]
     1351 CALL                             R29 2 1
     1352 MOVE                             R30 R18
     1353 GETTABLEKS                       R31 R17 K37 ["fromAction"]
     1355 LOADK                            R32 K153 ["InsertService"]
     1356 LOADK                            R33 K156 ["HideService"]
     1357 CALL                             R31 2 1
     1358 LOADK                            R32 K157 ["Services"]
     1359 CALL                             R30 2 1
     1360 SETLIST                          R28 R29 2 [1]
     1362 FASTCALL2                        TABLE_INSERT R21 R28 ; [+4]
     1364 MOVE                             R27 R21
     1365 GETIMPORT                        R26 K46 [table.insert]
     1367 CALL                             R26 2 0
     1368 NEWTABLE                         R28 0 1
     1370 MOVE                             R29 R18
     1371 GETTABLEKS                       R30 R17 K37 ["fromAction"]
     1373 LOADK                            R31 K47 ["Common"]
     1374 LOADK                            R32 K158 ["Help"]
     1375 CALL                             R30 2 1
     1376 LOADK                            R31 K52 ["All"]
     1377 CALL                             R29 2 1
     1378 SETLIST                          R28 R29 1 [1]
     1380 FASTCALL2                        TABLE_INSERT R21 R28 ; [+4]
     1382 MOVE                             R27 R21
     1383 GETIMPORT                        R26 K46 [table.insert]
     1385 CALL                             R26 2 0
     1386 RETURN                           R21 1
