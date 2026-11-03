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
      125 GETTABLEKS                       R16 R3 K13 ["Util"]
      127 GETTABLEKS                       R16 R16 K30 ["StudioUri"]
      129 DUPCLOSURE                       R17 K31 [PROTO_0]
      130 CAPTURE                          VAL R16
      131 DUPCLOSURE                       R18 K32 [PROTO_1]
      132 DUPCLOSURE                       R19 K33 [PROTO_2]
      133 CAPTURE                          VAL R16
      134 NEWTABLE                         R20 0 0
      136 DUPCLOSURE                       R21 K34 [PROTO_3]
      137 DUPCLOSURE                       R22 K35 [PROTO_4]
      138 MOVE                             R23 R7
      139 CALL                             R23 0 1
      140 JUMPIFNOT                        R23 ; [+35]
      141 NEWTABLE                         R25 0 3
      143 MOVE                             R26 R17
      144 GETTABLEKS                       R27 R16 K36 ["fromAction"]
      146 LOADK                            R28 K37 ["ScriptTools"]
      147 LOADK                            R29 K38 ["Open"]
      148 CALL                             R27 2 1
      149 LOADK                            R28 K39 ["NonServices"]
      150 CALL                             R26 2 1
      151 MOVE                             R27 R17
      152 GETTABLEKS                       R28 R16 K36 ["fromAction"]
      154 LOADK                            R29 K40 ["FileSync"]
      155 LOADK                            R30 K41 ["OpenInExternalEditor"]
      156 CALL                             R28 2 1
      157 LOADK                            R29 K39 ["NonServices"]
      158 CALL                             R27 2 1
      159 MOVE                             R28 R17
      160 GETTABLEKS                       R29 R16 K36 ["fromAction"]
      162 LOADK                            R30 K37 ["ScriptTools"]
      163 LOADK                            R31 K42 ["OpenScriptHistory"]
      164 CALL                             R29 2 1
      165 LOADK                            R30 K39 ["NonServices"]
      166 CALL                             R28 2 1
      167 SETLIST                          R25 R26 3 [1]
      169 FASTCALL2                        TABLE_INSERT R20 R25 ; [+4]
      171 MOVE                             R24 R20
      172 GETIMPORT                        R23 K45 [table.insert]
      174 CALL                             R23 2 0
      175 JUMP                             ; [+26]
      176 NEWTABLE                         R25 0 2
      178 MOVE                             R26 R17
      179 GETTABLEKS                       R27 R16 K36 ["fromAction"]
      181 LOADK                            R28 K37 ["ScriptTools"]
      182 LOADK                            R29 K38 ["Open"]
      183 CALL                             R27 2 1
      184 LOADK                            R28 K39 ["NonServices"]
      185 CALL                             R26 2 1
      186 MOVE                             R27 R17
      187 GETTABLEKS                       R28 R16 K36 ["fromAction"]
      189 LOADK                            R29 K37 ["ScriptTools"]
      190 LOADK                            R30 K42 ["OpenScriptHistory"]
      191 CALL                             R28 2 1
      192 LOADK                            R29 K39 ["NonServices"]
      193 CALL                             R27 2 1
      194 SETLIST                          R25 R26 2 [1]
      196 FASTCALL2                        TABLE_INSERT R20 R25 ; [+4]
      198 MOVE                             R24 R20
      199 GETIMPORT                        R23 K45 [table.insert]
      201 CALL                             R23 2 0
      202 MOVE                             R24 R20
      203 MOVE                             R25 R4
      204 NEWTABLE                         R26 0 8
      206 MOVE                             R27 R17
      207 GETTABLEKS                       R28 R16 K36 ["fromAction"]
      209 LOADK                            R29 K46 ["Common"]
      210 LOADK                            R30 K47 ["Cut"]
      211 CALL                             R28 2 1
      212 LOADK                            R29 K39 ["NonServices"]
      213 CALL                             R27 2 1
      214 MOVE                             R28 R17
      215 GETTABLEKS                       R29 R16 K36 ["fromAction"]
      217 LOADK                            R30 K46 ["Common"]
      218 LOADK                            R31 K48 ["Copy"]
      219 CALL                             R29 2 1
      220 LOADK                            R30 K39 ["NonServices"]
      221 CALL                             R28 2 1
      222 JUMPIF                           R11 ; [+2]
      223 JUMPIF                           R12 ; [+1]
      224 JUMPIFNOT                        R13 ; [+50]
      225 NEWTABLE                         R30 0 1
      227 MOVE                             R31 R4
      228 NEWTABLE                         R32 0 3
      230 JUMPIFNOT                        R11 ; [+9]
      231 MOVE                             R33 R17
      232 GETTABLEKS                       R34 R16 K36 ["fromAction"]
      234 LOADK                            R35 K49 ["BuilderTools"]
      235 LOADK                            R36 K50 ["CopyPath"]
      236 CALL                             R34 2 1
      237 LOADK                            R35 K51 ["All"]
      238 CALL                             R33 2 1
      239 JUMP                             ; [+1]
      240 LOADNIL                          R33
      241 JUMPIFNOT                        R12 ; [+9]
      242 MOVE                             R34 R17
      243 GETTABLEKS                       R35 R16 K36 ["fromAction"]
      245 LOADK                            R36 K49 ["BuilderTools"]
      246 LOADK                            R37 K52 ["CopyUniqueId"]
      247 CALL                             R35 2 1
      248 LOADK                            R36 K51 ["All"]
      249 CALL                             R34 2 1
      250 JUMP                             ; [+1]
      251 LOADNIL                          R34
      252 JUMPIFNOT                        R13 ; [+9]
      253 MOVE                             R35 R17
      254 GETTABLEKS                       R36 R16 K36 ["fromAction"]
      256 LOADK                            R37 K49 ["BuilderTools"]
      257 LOADK                            R38 K53 ["CopyAsJson"]
      258 CALL                             R36 2 1
      259 LOADK                            R37 K51 ["All"]
      260 CALL                             R35 2 1
      261 JUMP                             ; [+1]
      262 LOADNIL                          R35
      263 SETLIST                          R32 R33 3 [1]
      265 CALL                             R31 1 -1
      266 SETLIST                          R30 R31 -1 [1]
      268 DUPTABLE                         R29 K57 [{["key"] = "CopyAs", ["source"]}]
      269 DUPTABLE                         R31 K61 [{["type"] = "submenu", ["submenuCategories"]}]
      270 SETTABLEKS                       R30 R31 K60 ["submenuCategories"]
      272 SETTABLEKS                       R31 R29 K56 ["source"]
      274 JUMP                             ; [+1]
      275 LOADNIL                          R29
      276 MOVE                             R30 R17
      277 GETTABLEKS                       R31 R16 K36 ["fromAction"]
      279 LOADK                            R32 K46 ["Common"]
      280 LOADK                            R33 K62 ["PasteInto"]
      281 CALL                             R31 2 1
      282 LOADK                            R32 K51 ["All"]
      283 CALL                             R30 2 1
      284 MOVE                             R31 R17
      285 GETTABLEKS                       R32 R16 K36 ["fromAction"]
      287 LOADK                            R33 K49 ["BuilderTools"]
      288 LOADK                            R34 K63 ["PasteIntoAtOriginalLocation"]
      289 CALL                             R32 2 1
      290 LOADK                            R33 K51 ["All"]
      291 CALL                             R31 2 1
      292 MOVE                             R32 R17
      293 GETTABLEKS                       R33 R16 K36 ["fromAction"]
      295 LOADK                            R34 K46 ["Common"]
      296 LOADK                            R35 K64 ["Duplicate"]
      297 CALL                             R33 2 1
      298 LOADK                            R34 K39 ["NonServices"]
      299 CALL                             R32 2 1
      300 MOVE                             R33 R17
      301 GETTABLEKS                       R34 R16 K36 ["fromAction"]
      303 LOADK                            R35 K46 ["Common"]
      304 LOADK                            R36 K65 ["Delete"]
      305 CALL                             R34 2 1
      306 LOADK                            R35 K39 ["NonServices"]
      307 CALL                             R33 2 1
      308 MOVE                             R34 R17
      309 GETTABLEKS                       R35 R16 K36 ["fromAction"]
      311 LOADK                            R36 K11 ["Explorer"]
      312 LOADK                            R37 K66 ["Rename"]
      313 CALL                             R35 2 1
      314 LOADK                            R36 K51 ["All"]
      315 LOADNIL                          R37
      316 GETTABLEKS                       R38 R2 K67 ["Data"]
      318 GETTABLEKS                       R38 R38 K8 ["ContextMenu"]
      320 GETTABLEKS                       R38 R38 K68 ["coreItems"]
      322 GETTABLEKS                       R38 R38 K69 ["rename"]
      324 CALL                             R34 4 1
      325 SETLIST                          R26 R27 8 [1]
      327 CALL                             R25 1 -1
      328 FASTCALL                         TABLE_INSERT ; [+2]
      329 GETIMPORT                        R23 K45 [table.insert]
      331 CALL                             R23 -1 0
      332 NEWTABLE                         R25 0 4
      334 MOVE                             R26 R17
      335 GETTABLEKS                       R27 R16 K36 ["fromAction"]
      337 LOADK                            R28 K49 ["BuilderTools"]
      338 LOADK                            R29 K70 ["GroupAsModel"]
      339 CALL                             R27 2 1
      340 LOADK                            R28 K39 ["NonServices"]
      341 CALL                             R26 2 1
      342 MOVE                             R27 R17
      343 GETTABLEKS                       R28 R16 K36 ["fromAction"]
      345 LOADK                            R29 K49 ["BuilderTools"]
      346 LOADK                            R30 K71 ["GroupAsFolder"]
      347 CALL                             R28 2 1
      348 LOADK                            R29 K39 ["NonServices"]
      349 CALL                             R27 2 1
      350 MOVE                             R28 R17
      351 GETTABLEKS                       R29 R16 K36 ["fromAction"]
      353 LOADK                            R30 K49 ["BuilderTools"]
      354 LOADK                            R31 K72 ["Ungroup"]
      355 CALL                             R29 2 1
      356 LOADK                            R30 K39 ["NonServices"]
      357 CALL                             R28 2 1
      358 NEWTABLE                         R30 0 1
      360 NEWTABLE                         R31 0 4
      362 MOVE                             R32 R17
      363 GETTABLEKS                       R33 R16 K36 ["fromAction"]
      365 LOADK                            R34 K49 ["BuilderTools"]
      366 LOADK                            R35 K73 ["UnionSelection"]
      367 CALL                             R33 2 1
      368 LOADK                            R34 K39 ["NonServices"]
      369 CALL                             R32 2 1
      370 MOVE                             R33 R17
      371 GETTABLEKS                       R34 R16 K36 ["fromAction"]
      373 LOADK                            R35 K49 ["BuilderTools"]
      374 LOADK                            R36 K74 ["IntersectSelection"]
      375 CALL                             R34 2 1
      376 LOADK                            R35 K39 ["NonServices"]
      377 CALL                             R33 2 1
      378 MOVE                             R34 R17
      379 GETTABLEKS                       R35 R16 K36 ["fromAction"]
      381 LOADK                            R36 K49 ["BuilderTools"]
      382 LOADK                            R37 K75 ["NegateSelection"]
      383 CALL                             R35 2 1
      384 LOADK                            R36 K39 ["NonServices"]
      385 CALL                             R34 2 1
      386 MOVE                             R35 R17
      387 GETTABLEKS                       R36 R16 K36 ["fromAction"]
      389 LOADK                            R37 K49 ["BuilderTools"]
      390 LOADK                            R38 K76 ["SeparateSelection"]
      391 CALL                             R36 2 1
      392 LOADK                            R37 K39 ["NonServices"]
      393 CALL                             R35 2 1
      394 SETLIST                          R31 R32 4 [1]
      396 SETLIST                          R30 R31 1 [1]
      398 DUPTABLE                         R29 K78 [{["key"] = "solidModeling", ["source"]}]
      399 DUPTABLE                         R31 K61 [{["type"] = "submenu", ["submenuCategories"]}]
      400 SETTABLEKS                       R30 R31 K60 ["submenuCategories"]
      402 SETTABLEKS                       R31 R29 K56 ["source"]
      404 SETLIST                          R25 R26 4 [1]
      406 FASTCALL2                        TABLE_INSERT R20 R25 ; [+4]
      408 MOVE                             R24 R20
      409 GETIMPORT                        R23 K45 [table.insert]
      411 CALL                             R23 2 0
      412 MOVE                             R24 R20
      413 MOVE                             R25 R4
      414 NEWTABLE                         R26 0 5
      416 NEWTABLE                         R28 0 1
      418 NEWTABLE                         R29 0 3
      420 MOVE                             R30 R17
      421 GETTABLEKS                       R31 R16 K36 ["fromAction"]
      423 LOADK                            R32 K49 ["BuilderTools"]
      424 LOADK                            R33 K79 ["InsertPartIntoSelection"]
      425 CALL                             R31 2 1
      426 LOADK                            R32 K51 ["All"]
      427 CALL                             R30 2 1
      428 MOVE                             R31 R17
      429 GETTABLEKS                       R32 R16 K36 ["fromAction"]
      431 LOADK                            R33 K49 ["BuilderTools"]
      432 LOADK                            R34 K80 ["InsertObject"]
      433 CALL                             R32 2 1
      434 LOADK                            R33 K51 ["All"]
      435 CALL                             R31 2 1
      436 MOVE                             R32 R17
      437 GETTABLEKS                       R33 R16 K36 ["fromAction"]
      439 LOADK                            R34 K49 ["BuilderTools"]
      440 LOADK                            R35 K81 ["InsertFromFile"]
      441 CALL                             R33 2 1
      442 LOADK                            R34 K51 ["All"]
      443 CALL                             R32 2 1
      444 SETLIST                          R29 R30 3 [1]
      446 SETLIST                          R28 R29 1 [1]
      448 DUPTABLE                         R27 K82 [{["key"] = "insert", ["source"]}]
      449 DUPTABLE                         R29 K61 [{["type"] = "submenu", ["submenuCategories"]}]
      450 SETTABLEKS                       R28 R29 K60 ["submenuCategories"]
      452 SETTABLEKS                       R29 R27 K56 ["source"]
      454 MOVE                             R29 R4
      455 NEWTABLE                         R30 0 1
      457 NEWTABLE                         R31 0 4
      459 MOVE                             R32 R17
      460 GETTABLEKS                       R33 R16 K36 ["fromAction"]
      462 LOADK                            R34 K46 ["Common"]
      463 LOADK                            R35 K83 ["SelectParents"]
      464 CALL                             R33 2 1
      465 LOADK                            R34 K39 ["NonServices"]
      466 LOADNIL                          R35
      467 CALL                             R32 3 1
      468 MOVE                             R33 R17
      469 GETTABLEKS                       R34 R16 K36 ["fromAction"]
      471 LOADK                            R35 K46 ["Common"]
      472 LOADK                            R36 K84 ["SelectChildren"]
      473 CALL                             R34 2 1
      474 LOADK                            R35 K51 ["All"]
      475 LOADNIL                          R36
      476 CALL                             R33 3 1
      477 MOVE                             R34 R17
      478 GETTABLEKS                       R35 R16 K36 ["fromAction"]
      480 LOADK                            R36 K11 ["Explorer"]
      481 LOADK                            R37 K85 ["ExpandAll"]
      482 CALL                             R35 2 1
      483 LOADK                            R36 K51 ["All"]
      484 LOADNIL                          R37
      485 GETTABLEKS                       R38 R2 K67 ["Data"]
      487 GETTABLEKS                       R38 R38 K8 ["ContextMenu"]
      489 GETTABLEKS                       R38 R38 K68 ["coreItems"]
      491 GETTABLEKS                       R38 R38 K86 ["expandAll"]
      493 CALL                             R34 4 1
      494 MOVE                             R35 R17
      495 GETTABLEKS                       R36 R16 K36 ["fromAction"]
      497 LOADK                            R37 K11 ["Explorer"]
      498 LOADK                            R38 K87 ["CollapseAll"]
      499 CALL                             R36 2 1
      500 LOADK                            R37 K51 ["All"]
      501 LOADNIL                          R38
      502 GETTABLEKS                       R39 R2 K67 ["Data"]
      504 GETTABLEKS                       R39 R39 K8 ["ContextMenu"]
      506 GETTABLEKS                       R39 R39 K68 ["coreItems"]
      508 GETTABLEKS                       R39 R39 K88 ["collapseAll"]
      510 CALL                             R35 4 1
      511 SETLIST                          R31 R32 4 [1]
      513 SETLIST                          R30 R31 1 [1]
      515 CALL                             R29 1 1
      516 DUPTABLE                         R28 K90 [{["key"] = "hierarchy", ["source"]}]
      517 DUPTABLE                         R30 K61 [{["type"] = "submenu", ["submenuCategories"]}]
      518 SETTABLEKS                       R29 R30 K60 ["submenuCategories"]
      520 SETTABLEKS                       R30 R28 K56 ["source"]
      522 MOVE                             R29 R17
      523 GETTABLEKS                       R30 R16 K36 ["fromAction"]
      525 LOADK                            R31 K49 ["BuilderTools"]
      526 LOADK                            R32 K91 ["ZoomExtents"]
      527 CALL                             R30 2 1
      528 LOADK                            R31 K39 ["NonServices"]
      529 MOVE                             R32 R21
      530 CALL                             R29 3 1
      531 MOVE                             R30 R17
      532 GETTABLEKS                       R31 R16 K36 ["fromAction"]
      534 LOADK                            R32 K49 ["BuilderTools"]
      535 LOADK                            R33 K92 ["ShowOrientationIndicator"]
      536 CALL                             R31 2 1
      537 LOADK                            R32 K39 ["NonServices"]
      538 CALL                             R30 2 1
      539 MOVE                             R31 R17
      540 GETTABLEKS                       R32 R16 K36 ["fromAction"]
      542 LOADK                            R33 K37 ["ScriptTools"]
      543 LOADK                            R34 K93 ["ToggleScripts"]
      544 CALL                             R32 2 1
      545 LOADK                            R33 K39 ["NonServices"]
      546 CALL                             R31 2 1
      547 SETLIST                          R26 R27 5 [1]
      549 CALL                             R25 1 -1
      550 FASTCALL                         TABLE_INSERT ; [+2]
      551 GETIMPORT                        R23 K45 [table.insert]
      553 CALL                             R23 -1 0
      554 NEWTABLE                         R25 0 4
      556 MOVE                             R26 R17
      557 GETTABLEKS                       R27 R16 K36 ["fromAction"]
      559 LOADK                            R28 K94 ["PluginDebugging"]
      560 LOADK                            R29 K95 ["SaveAndReloadDebuggablePlugin"]
      561 CALL                             R27 2 1
      562 LOADK                            R28 K51 ["All"]
      563 CALL                             R26 2 1
      564 MOVE                             R27 R17
      565 GETTABLEKS                       R28 R16 K36 ["fromAction"]
      567 LOADK                            R29 K94 ["PluginDebugging"]
      568 LOADK                            R30 K96 ["ReloadDebuggablePlugin"]
      569 CALL                             R28 2 1
      570 LOADK                            R29 K51 ["All"]
      571 CALL                             R27 2 1
      572 MOVE                             R28 R17
      573 GETTABLEKS                       R29 R16 K36 ["fromAction"]
      575 LOADK                            R30 K94 ["PluginDebugging"]
      576 LOADK                            R31 K97 ["SaveAndReloadAllDebuggablePlugins"]
      577 CALL                             R29 2 1
      578 LOADK                            R30 K51 ["All"]
      579 MOVE                             R31 R22
      580 CALL                             R28 3 1
      581 MOVE                             R29 R17
      582 GETTABLEKS                       R30 R16 K36 ["fromAction"]
      584 LOADK                            R31 K94 ["PluginDebugging"]
      585 LOADK                            R32 K98 ["SaveBuildAndReloadDebuggablePlugin"]
      586 CALL                             R30 2 1
      587 LOADK                            R31 K51 ["All"]
      588 CALL                             R29 2 1
      589 SETLIST                          R25 R26 4 [1]
      591 FASTCALL2                        TABLE_INSERT R20 R25 ; [+4]
      593 MOVE                             R24 R20
      594 GETIMPORT                        R23 K45 [table.insert]
      596 CALL                             R23 2 0
      597 MOVE                             R23 R7
      598 CALL                             R23 0 1
      599 JUMPIFNOT                        R23 ; [+154]
      600 JUMPIFNOT                        R14 ; [+65]
      601 NEWTABLE                         R25 0 1
      603 NEWTABLE                         R27 0 1
      605 NEWTABLE                         R28 0 5
      607 MOVE                             R29 R17
      608 GETTABLEKS                       R30 R16 K36 ["fromAction"]
      610 LOADK                            R31 K40 ["FileSync"]
      611 LOADK                            R32 K99 ["StopScriptSync"]
      612 CALL                             R30 2 1
      613 LOADK                            R31 K51 ["All"]
      614 CALL                             R29 2 1
      615 MOVE                             R30 R17
      616 GETTABLEKS                       R31 R16 K36 ["fromAction"]
      618 LOADK                            R32 K40 ["FileSync"]
      619 LOADK                            R33 K100 ["StartSync"]
      620 CALL                             R31 2 1
      621 LOADK                            R32 K51 ["All"]
      622 CALL                             R30 2 1
      623 MOVE                             R31 R17
      624 GETTABLEKS                       R32 R16 K36 ["fromAction"]
      626 LOADK                            R33 K40 ["FileSync"]
      627 LOADK                            R34 K101 ["ResumeScriptSync"]
      628 CALL                             R32 2 1
      629 LOADK                            R33 K51 ["All"]
      630 CALL                             R31 2 1
      631 MOVE                             R32 R17
      632 GETTABLEKS                       R33 R16 K36 ["fromAction"]
      634 LOADK                            R34 K40 ["FileSync"]
      635 LOADK                            R35 K102 ["ShowInFolder"]
      636 CALL                             R33 2 1
      637 LOADK                            R34 K51 ["All"]
      638 CALL                             R32 2 1
      639 MOVE                             R33 R17
      640 GETTABLEKS                       R34 R16 K36 ["fromAction"]
      642 LOADK                            R35 K40 ["FileSync"]
      643 LOADK                            R36 K103 ["SelectSyncingRoot"]
      644 CALL                             R34 2 1
      645 LOADK                            R35 K51 ["All"]
      646 CALL                             R33 2 1
      647 SETLIST                          R28 R29 5 [1]
      649 SETLIST                          R27 R28 1 [1]
      651 DUPTABLE                         R26 K105 [{["key"] = "scriptSync", ["source"]}]
      652 DUPTABLE                         R28 K61 [{["type"] = "submenu", ["submenuCategories"]}]
      653 SETTABLEKS                       R27 R28 K60 ["submenuCategories"]
      655 SETTABLEKS                       R28 R26 K56 ["source"]
      657 SETLIST                          R25 R26 1 [1]
      659 FASTCALL2                        TABLE_INSERT R20 R25 ; [+4]
      661 MOVE                             R24 R20
      662 GETIMPORT                        R23 K45 [table.insert]
      664 CALL                             R23 2 0
      665 JUMP                             ; [+88]
      666 NEWTABLE                         R25 0 1
      668 NEWTABLE                         R27 0 1
      670 NEWTABLE                         R28 0 8
      672 MOVE                             R29 R17
      673 GETTABLEKS                       R30 R16 K36 ["fromAction"]
      675 LOADK                            R31 K40 ["FileSync"]
      676 LOADK                            R32 K99 ["StopScriptSync"]
      677 CALL                             R30 2 1
      678 LOADK                            R31 K51 ["All"]
      679 CALL                             R29 2 1
      680 MOVE                             R30 R17
      681 GETTABLEKS                       R31 R16 K36 ["fromAction"]
      683 LOADK                            R32 K40 ["FileSync"]
      684 LOADK                            R33 K106 ["StartSyncToNewFile"]
      685 CALL                             R31 2 1
      686 LOADK                            R32 K39 ["NonServices"]
      687 CALL                             R30 2 1
      688 MOVE                             R31 R17
      689 GETTABLEKS                       R32 R16 K36 ["fromAction"]
      691 LOADK                            R33 K40 ["FileSync"]
      692 LOADK                            R34 K107 ["StartSyncToExistingFile"]
      693 CALL                             R32 2 1
      694 LOADK                            R33 K39 ["NonServices"]
      695 CALL                             R31 2 1
      696 MOVE                             R32 R17
      697 GETTABLEKS                       R33 R16 K36 ["fromAction"]
      699 LOADK                            R34 K40 ["FileSync"]
      700 LOADK                            R35 K108 ["StartSyncSelectedInstancesTo"]
      701 CALL                             R33 2 1
      702 LOADK                            R34 K51 ["All"]
      703 CALL                             R32 2 1
      704 MOVE                             R33 R17
      705 GETTABLEKS                       R34 R16 K36 ["fromAction"]
      707 LOADK                            R35 K40 ["FileSync"]
      708 LOADK                            R36 K109 ["StartSyncToDirectory"]
      709 CALL                             R34 2 1
      710 LOADK                            R35 K51 ["All"]
      711 CALL                             R33 2 1
      712 MOVE                             R34 R17
      713 GETTABLEKS                       R35 R16 K36 ["fromAction"]
      715 LOADK                            R36 K40 ["FileSync"]
      716 LOADK                            R37 K101 ["ResumeScriptSync"]
      717 CALL                             R35 2 1
      718 LOADK                            R36 K51 ["All"]
      719 CALL                             R34 2 1
      720 MOVE                             R35 R17
      721 GETTABLEKS                       R36 R16 K36 ["fromAction"]
      723 LOADK                            R37 K40 ["FileSync"]
      724 LOADK                            R38 K102 ["ShowInFolder"]
      725 CALL                             R36 2 1
      726 LOADK                            R37 K51 ["All"]
      727 CALL                             R35 2 1
      728 MOVE                             R36 R17
      729 GETTABLEKS                       R37 R16 K36 ["fromAction"]
      731 LOADK                            R38 K40 ["FileSync"]
      732 LOADK                            R39 K103 ["SelectSyncingRoot"]
      733 CALL                             R37 2 1
      734 LOADK                            R38 K51 ["All"]
      735 CALL                             R36 2 1
      736 SETLIST                          R28 R29 8 [1]
      738 SETLIST                          R27 R28 1 [1]
      740 DUPTABLE                         R26 K105 [{["key"] = "scriptSync", ["source"]}]
      741 DUPTABLE                         R28 K61 [{["type"] = "submenu", ["submenuCategories"]}]
      742 SETTABLEKS                       R27 R28 K60 ["submenuCategories"]
      744 SETTABLEKS                       R28 R26 K56 ["source"]
      746 SETLIST                          R25 R26 1 [1]
      748 FASTCALL2                        TABLE_INSERT R20 R25 ; [+4]
      750 MOVE                             R24 R20
      751 GETIMPORT                        R23 K45 [table.insert]
      753 CALL                             R23 2 0
      754 MOVE                             R23 R8
      755 CALL                             R23 0 1
      756 JUMPIFNOT                        R23 ; [+194]
      757 MOVE                             R23 R9
      758 CALL                             R23 0 1
      759 JUMPIFNOT                        R23 ; [+98]
      760 NEWTABLE                         R25 0 1
      762 NEWTABLE                         R27 0 4
      764 NEWTABLE                         R28 0 2
      766 MOVE                             R29 R17
      767 GETTABLEKS                       R30 R16 K36 ["fromAction"]
      769 LOADK                            R31 K110 ["PackageTools"]
      770 LOADK                            R32 K111 ["PublishPackage"]
      771 CALL                             R30 2 1
      772 LOADK                            R31 K39 ["NonServices"]
      773 CALL                             R29 2 1
      774 MOVE                             R30 R17
      775 GETTABLEKS                       R31 R16 K36 ["fromAction"]
      777 LOADK                            R32 K110 ["PackageTools"]
      778 LOADK                            R33 K112 ["GetLatestPackage"]
      779 CALL                             R31 2 1
      780 LOADK                            R32 K39 ["NonServices"]
      781 CALL                             R30 2 1
      782 SETLIST                          R28 R29 2 [1]
      784 NEWTABLE                         R29 0 2
      786 MOVE                             R30 R17
      787 GETTABLEKS                       R31 R16 K36 ["fromAction"]
      789 LOADK                            R32 K110 ["PackageTools"]
      790 LOADK                            R33 K113 ["ShowPackagesDiff"]
      791 CALL                             R31 2 1
      792 LOADK                            R32 K39 ["NonServices"]
      793 CALL                             R30 2 1
      794 MOVE                             R31 R17
      795 GETTABLEKS                       R32 R16 K36 ["fromAction"]
      797 LOADK                            R33 K110 ["PackageTools"]
      798 LOADK                            R34 K114 ["PackageDetails"]
      799 CALL                             R32 2 1
      800 LOADK                            R33 K39 ["NonServices"]
      801 CALL                             R31 2 1
      802 SETLIST                          R29 R30 2 [1]
      804 NEWTABLE                         R30 0 1
      806 MOVE                             R31 R17
      807 GETTABLEKS                       R32 R16 K36 ["fromAction"]
      809 LOADK                            R33 K110 ["PackageTools"]
      810 LOADK                            R34 K115 ["MassUpdate"]
      811 CALL                             R32 2 1
      812 LOADK                            R33 K39 ["NonServices"]
      813 CALL                             R31 2 1
      814 SETLIST                          R30 R31 1 [1]
      816 MOVE                             R31 R4
      817 NEWTABLE                         R32 0 2
      819 MOVE                             R33 R17
      820 GETTABLEKS                       R34 R16 K36 ["fromAction"]
      822 LOADK                            R35 K110 ["PackageTools"]
      823 LOADK                            R36 K116 ["UndoPackageChanges"]
      824 CALL                             R34 2 1
      825 LOADK                            R35 K39 ["NonServices"]
      826 CALL                             R33 2 1
      827 JUMPIFNOT                        R15 ; [+9]
      828 MOVE                             R34 R17
      829 GETTABLEKS                       R35 R16 K36 ["fromAction"]
      831 LOADK                            R36 K110 ["PackageTools"]
      832 LOADK                            R37 K117 ["RevertInstanceOverrides"]
      833 CALL                             R35 2 1
      834 LOADK                            R36 K39 ["NonServices"]
      835 CALL                             R34 2 1
      836 JUMP                             ; [+1]
      837 LOADNIL                          R34
      838 SETLIST                          R32 R33 2 [1]
      840 CALL                             R31 1 -1
      841 SETLIST                          R27 R28 -1 [1]
      843 DUPTABLE                         R26 K119 [{["key"] = "package", ["source"]}]
      844 DUPTABLE                         R28 K61 [{["type"] = "submenu", ["submenuCategories"]}]
      845 SETTABLEKS                       R27 R28 K60 ["submenuCategories"]
      847 SETTABLEKS                       R28 R26 K56 ["source"]
      849 SETLIST                          R25 R26 1 [1]
      851 FASTCALL2                        TABLE_INSERT R20 R25 ; [+4]
      853 MOVE                             R24 R20
      854 GETIMPORT                        R23 K45 [table.insert]
      856 CALL                             R23 2 0
      857 JUMP                             ; [+149]
      858 MOVE                             R24 R20
      859 MOVE                             R25 R4
      860 NEWTABLE                         R26 0 5
      862 MOVE                             R27 R17
      863 GETTABLEKS                       R28 R16 K36 ["fromAction"]
      865 LOADK                            R29 K110 ["PackageTools"]
      866 LOADK                            R30 K111 ["PublishPackage"]
      867 CALL                             R28 2 1
      868 LOADK                            R29 K39 ["NonServices"]
      869 CALL                             R27 2 1
      870 MOVE                             R28 R17
      871 GETTABLEKS                       R29 R16 K36 ["fromAction"]
      873 LOADK                            R30 K110 ["PackageTools"]
      874 LOADK                            R31 K116 ["UndoPackageChanges"]
      875 CALL                             R29 2 1
      876 LOADK                            R30 K39 ["NonServices"]
      877 CALL                             R28 2 1
      878 JUMPIFNOT                        R15 ; [+9]
      879 MOVE                             R29 R17
      880 GETTABLEKS                       R30 R16 K36 ["fromAction"]
      882 LOADK                            R31 K110 ["PackageTools"]
      883 LOADK                            R32 K117 ["RevertInstanceOverrides"]
      884 CALL                             R30 2 1
      885 LOADK                            R31 K39 ["NonServices"]
      886 CALL                             R29 2 1
      887 JUMP                             ; [+1]
      888 LOADNIL                          R29
      889 MOVE                             R30 R17
      890 GETTABLEKS                       R31 R16 K36 ["fromAction"]
      892 LOADK                            R32 K110 ["PackageTools"]
      893 LOADK                            R33 K112 ["GetLatestPackage"]
      894 CALL                             R31 2 1
      895 LOADK                            R32 K39 ["NonServices"]
      896 CALL                             R30 2 1
      897 NEWTABLE                         R32 0 1
      899 NEWTABLE                         R33 0 4
      901 MOVE                             R34 R17
      902 GETTABLEKS                       R35 R16 K36 ["fromAction"]
      904 LOADK                            R36 K110 ["PackageTools"]
      905 LOADK                            R37 K120 ["DiffPackageAgainstLatest"]
      906 CALL                             R35 2 1
      907 LOADK                            R36 K39 ["NonServices"]
      908 CALL                             R34 2 1
      909 MOVE                             R35 R17
      910 GETTABLEKS                       R36 R16 K36 ["fromAction"]
      912 LOADK                            R37 K110 ["PackageTools"]
      913 LOADK                            R38 K115 ["MassUpdate"]
      914 CALL                             R36 2 1
      915 LOADK                            R37 K39 ["NonServices"]
      916 CALL                             R35 2 1
      917 MOVE                             R36 R17
      918 GETTABLEKS                       R37 R16 K36 ["fromAction"]
      920 LOADK                            R38 K110 ["PackageTools"]
      921 LOADK                            R39 K113 ["ShowPackagesDiff"]
      922 CALL                             R37 2 1
      923 LOADK                            R38 K39 ["NonServices"]
      924 CALL                             R36 2 1
      925 MOVE                             R37 R17
      926 GETTABLEKS                       R38 R16 K36 ["fromAction"]
      928 LOADK                            R39 K110 ["PackageTools"]
      929 LOADK                            R40 K114 ["PackageDetails"]
      930 CALL                             R38 2 1
      931 LOADK                            R39 K39 ["NonServices"]
      932 CALL                             R37 2 1
      933 SETLIST                          R33 R34 4 [1]
      935 SETLIST                          R32 R33 1 [1]
      937 DUPTABLE                         R31 K122 [{["key"] = "morePackageOptions", ["source"]}]
      938 DUPTABLE                         R33 K61 [{["type"] = "submenu", ["submenuCategories"]}]
      939 SETTABLEKS                       R32 R33 K60 ["submenuCategories"]
      941 SETTABLEKS                       R33 R31 K56 ["source"]
      943 SETLIST                          R26 R27 5 [1]
      945 CALL                             R25 1 -1
      946 FASTCALL                         TABLE_INSERT ; [+2]
      947 GETIMPORT                        R23 K45 [table.insert]
      949 CALL                             R23 -1 0
      950 JUMP                             ; [+56]
      951 NEWTABLE                         R25 0 2
      953 MOVE                             R26 R17
      954 GETTABLEKS                       R27 R16 K36 ["fromAction"]
      956 LOADK                            R28 K110 ["PackageTools"]
      957 LOADK                            R29 K111 ["PublishPackage"]
      958 CALL                             R27 2 1
      959 LOADK                            R28 K39 ["NonServices"]
      960 CALL                             R26 2 1
      961 NEWTABLE                         R28 0 1
      963 NEWTABLE                         R29 0 3
      965 MOVE                             R30 R17
      966 GETTABLEKS                       R31 R16 K36 ["fromAction"]
      968 LOADK                            R32 K110 ["PackageTools"]
      969 LOADK                            R33 K115 ["MassUpdate"]
      970 CALL                             R31 2 1
      971 LOADK                            R32 K39 ["NonServices"]
      972 CALL                             R30 2 1
      973 MOVE                             R31 R17
      974 GETTABLEKS                       R32 R16 K36 ["fromAction"]
      976 LOADK                            R33 K110 ["PackageTools"]
      977 LOADK                            R34 K113 ["ShowPackagesDiff"]
      978 CALL                             R32 2 1
      979 LOADK                            R33 K39 ["NonServices"]
      980 CALL                             R31 2 1
      981 MOVE                             R32 R17
      982 GETTABLEKS                       R33 R16 K36 ["fromAction"]
      984 LOADK                            R34 K110 ["PackageTools"]
      985 LOADK                            R35 K114 ["PackageDetails"]
      986 CALL                             R33 2 1
      987 LOADK                            R34 K39 ["NonServices"]
      988 CALL                             R32 2 1
      989 SETLIST                          R29 R30 3 [1]
      991 SETLIST                          R28 R29 1 [1]
      993 DUPTABLE                         R27 K122 [{["key"] = "morePackageOptions", ["source"]}]
      994 DUPTABLE                         R29 K61 [{["type"] = "submenu", ["submenuCategories"]}]
      995 SETTABLEKS                       R28 R29 K60 ["submenuCategories"]
      997 SETTABLEKS                       R29 R27 K56 ["source"]
      999 SETLIST                          R25 R26 2 [1]
     1001 FASTCALL2                        TABLE_INSERT R20 R25 ; [+4]
     1003 MOVE                             R24 R20
     1004 GETIMPORT                        R23 K45 [table.insert]
     1006 CALL                             R23 2 0
     1007 GETIMPORT                        R23 K124 [xpcall]
     1009 DUPCLOSURE                       R24 K125 [PROTO_5]
     1010 CAPTURE                          VAL R19
     1011 DUPCLOSURE                       R25 K126 [PROTO_6]
     1012 CAPTURE                          VAL R19
     1013 CALL                             R23 2 2
     1014 MOVE                             R25 R6
     1015 CALL                             R25 0 1
     1016 JUMPIFNOT                        R25 ; [+101]
     1017 GETIMPORT                        R25 K5 [require]
     1019 GETTABLEKS                       R26 R0 K10 ["Packages"]
     1021 GETTABLEKS                       R26 R26 K127 ["SharedPluginConstants"]
     1023 CALL                             R25 1 1
     1024 GETTABLEKS                       R26 R25 K128 ["REIMPORT"]
     1026 GETTABLEKS                       R26 R26 K129 ["ACTION_ID"]
     1028 GETTABLEKS                       R27 R25 K128 ["REIMPORT"]
     1030 GETTABLEKS                       R27 R27 K130 ["ACTION_EVENTS"]
     1032 NEWTABLE                         R30 0 1
     1034 NEWTABLE                         R32 0 1
     1036 MOVE                             R33 R4
     1037 NEWTABLE                         R34 0 5
     1039 MOVE                             R35 R17
     1040 GETTABLEKS                       R37 R27 K128 ["REIMPORT"]
     1042 GETTABLEKS                       R38 R16 K36 ["fromAction"]
     1044 MOVE                             R39 R26
     1045 MOVE                             R40 R37
     1046 CALL                             R38 2 1
     1047 MOVE                             R36 R38
     1048 LOADK                            R37 K39 ["NonServices"]
     1049 CALL                             R35 2 1
     1050 MOVE                             R36 R17
     1051 GETTABLEKS                       R38 R27 K131 ["REIMPORT_RELATIVE_TO_THIS"]
     1053 GETTABLEKS                       R39 R16 K36 ["fromAction"]
     1055 MOVE                             R40 R26
     1056 MOVE                             R41 R38
     1057 CALL                             R39 2 1
     1058 MOVE                             R37 R39
     1059 LOADK                            R38 K39 ["NonServices"]
     1060 CALL                             R36 2 1
     1061 MOVE                             R37 R17
     1062 GETTABLEKS                       R39 R27 K132 ["CONFIGURE"]
     1064 GETTABLEKS                       R40 R16 K36 ["fromAction"]
     1066 MOVE                             R41 R26
     1067 MOVE                             R42 R39
     1068 CALL                             R40 2 1
     1069 MOVE                             R38 R40
     1070 LOADK                            R39 K39 ["NonServices"]
     1071 CALL                             R37 2 1
     1072 MOVE                             R38 R17
     1073 GETTABLEKS                       R40 R27 K133 ["CLEAR_REIMPORT_CONFIG"]
     1075 GETTABLEKS                       R41 R16 K36 ["fromAction"]
     1077 MOVE                             R42 R26
     1078 MOVE                             R43 R40
     1079 CALL                             R41 2 1
     1080 MOVE                             R39 R41
     1081 LOADK                            R40 K39 ["NonServices"]
     1082 CALL                             R38 2 1
     1083 MOVE                             R40 R10
     1084 CALL                             R40 0 1
     1085 JUMPIFNOT                        R40 ; [+12]
     1086 MOVE                             R39 R17
     1087 GETTABLEKS                       R41 R27 K134 ["WATCH_INSTANCE_FILE"]
     1089 GETTABLEKS                       R42 R16 K36 ["fromAction"]
     1091 MOVE                             R43 R26
     1092 MOVE                             R44 R41
     1093 CALL                             R42 2 1
     1094 MOVE                             R40 R42
     1095 LOADK                            R41 K39 ["NonServices"]
     1096 CALL                             R39 2 1
     1097 JUMP                             ; [+1]
     1098 LOADNIL                          R39
     1099 SETLIST                          R34 R35 5 [1]
     1101 CALL                             R33 1 -1
     1102 SETLIST                          R32 R33 -1 [1]
     1104 DUPTABLE                         R31 K136 [{["key"] = "Reimport", ["source"]}]
     1105 DUPTABLE                         R33 K61 [{["type"] = "submenu", ["submenuCategories"]}]
     1106 SETTABLEKS                       R32 R33 K60 ["submenuCategories"]
     1108 SETTABLEKS                       R33 R31 K56 ["source"]
     1110 SETLIST                          R30 R31 1 [1]
     1112 FASTCALL2                        TABLE_INSERT R20 R30 ; [+4]
     1114 MOVE                             R29 R20
     1115 GETIMPORT                        R28 K45 [table.insert]
     1117 CALL                             R28 2 0
     1118 MOVE                             R25 R5
     1119 CALL                             R25 0 1
     1120 JUMPIF                           R25 ; [+86]
     1121 MOVE                             R26 R20
     1122 MOVE                             R27 R4
     1123 NEWTABLE                         R28 0 4
     1125 MOVE                             R29 R17
     1126 GETTABLEKS                       R30 R16 K36 ["fromAction"]
     1128 LOADK                            R31 K137 ["LocalizationTools"]
     1129 LOADK                            R32 K138 ["SaveCsv"]
     1130 CALL                             R30 2 1
     1131 LOADK                            R31 K39 ["NonServices"]
     1132 CALL                             R29 2 1
     1133 MOVE                             R30 R17
     1134 GETTABLEKS                       R31 R16 K36 ["fromAction"]
     1136 LOADK                            R32 K137 ["LocalizationTools"]
     1137 LOADK                            R33 K139 ["LoadCsv"]
     1138 CALL                             R31 2 1
     1139 LOADK                            R32 K39 ["NonServices"]
     1140 CALL                             R30 2 1
     1141 MOVE                             R31 R17
     1142 MOVE                             R32 R24
     1143 LOADK                            R33 K39 ["NonServices"]
     1144 CALL                             R31 2 1
     1145 NEWTABLE                         R33 0 1
     1147 NEWTABLE                         R34 0 5
     1149 MOVE                             R35 R17
     1150 GETTABLEKS                       R36 R16 K36 ["fromAction"]
     1152 LOADK                            R37 K140 ["Export"]
     1153 LOADK                            R38 K141 ["PublishSelectionToRoblox"]
     1154 CALL                             R36 2 1
     1155 LOADK                            R37 K39 ["NonServices"]
     1156 CALL                             R35 2 1
     1157 MOVE                             R36 R17
     1158 GETTABLEKS                       R37 R16 K36 ["fromAction"]
     1160 LOADK                            R38 K140 ["Export"]
     1161 LOADK                            R39 K142 ["SaveSelectionToFile"]
     1162 CALL                             R37 2 1
     1163 LOADK                            R38 K51 ["All"]
     1164 CALL                             R36 2 1
     1165 MOVE                             R37 R17
     1166 GETTABLEKS                       R38 R16 K36 ["fromAction"]
     1168 LOADK                            R39 K143 ["PluginManagement"]
     1169 LOADK                            R40 K144 ["SaveAsLocalPlugin"]
     1170 CALL                             R38 2 1
     1171 LOADK                            R39 K51 ["All"]
     1172 CALL                             R37 2 1
     1173 MOVE                             R38 R17
     1174 GETTABLEKS                       R39 R16 K36 ["fromAction"]
     1176 LOADK                            R40 K143 ["PluginManagement"]
     1177 LOADK                            R41 K145 ["PublishToRoblox"]
     1178 CALL                             R39 2 1
     1179 LOADK                            R40 K51 ["All"]
     1180 CALL                             R38 2 1
     1181 MOVE                             R39 R17
     1182 GETTABLEKS                       R40 R16 K36 ["fromAction"]
     1184 LOADK                            R41 K140 ["Export"]
     1185 LOADK                            R42 K146 ["ExportSelection"]
     1186 CALL                             R40 2 1
     1187 LOADK                            R41 K51 ["All"]
     1188 CALL                             R39 2 1
     1189 SETLIST                          R34 R35 5 [1]
     1191 SETLIST                          R33 R34 1 [1]
     1193 DUPTABLE                         R32 K148 [{["key"] = "saveAndExport", ["source"]}]
     1194 DUPTABLE                         R34 K61 [{["type"] = "submenu", ["submenuCategories"]}]
     1195 SETTABLEKS                       R33 R34 K60 ["submenuCategories"]
     1197 SETTABLEKS                       R34 R32 K56 ["source"]
     1199 SETLIST                          R28 R29 4 [1]
     1201 CALL                             R27 1 -1
     1202 FASTCALL                         TABLE_INSERT ; [+2]
     1203 GETIMPORT                        R25 K45 [table.insert]
     1205 CALL                             R25 -1 0
     1206 JUMP                             ; [+93]
     1207 MOVE                             R26 R20
     1208 MOVE                             R27 R4
     1209 NEWTABLE                         R28 0 4
     1211 MOVE                             R29 R17
     1212 GETTABLEKS                       R30 R16 K36 ["fromAction"]
     1214 LOADK                            R31 K137 ["LocalizationTools"]
     1215 LOADK                            R32 K138 ["SaveCsv"]
     1216 CALL                             R30 2 1
     1217 LOADK                            R31 K39 ["NonServices"]
     1218 CALL                             R29 2 1
     1219 MOVE                             R30 R17
     1220 GETTABLEKS                       R31 R16 K36 ["fromAction"]
     1222 LOADK                            R32 K137 ["LocalizationTools"]
     1223 LOADK                            R33 K139 ["LoadCsv"]
     1224 CALL                             R31 2 1
     1225 LOADK                            R32 K39 ["NonServices"]
     1226 CALL                             R30 2 1
     1227 MOVE                             R31 R17
     1228 MOVE                             R32 R24
     1229 LOADK                            R33 K39 ["NonServices"]
     1230 CALL                             R31 2 1
     1231 NEWTABLE                         R33 0 1
     1233 NEWTABLE                         R34 0 6
     1235 MOVE                             R35 R17
     1236 GETTABLEKS                       R36 R16 K36 ["fromAction"]
     1238 LOADK                            R37 K140 ["Export"]
     1239 LOADK                            R38 K141 ["PublishSelectionToRoblox"]
     1240 CALL                             R36 2 1
     1241 LOADK                            R37 K39 ["NonServices"]
     1242 CALL                             R35 2 1
     1243 MOVE                             R36 R17
     1244 GETTABLEKS                       R37 R16 K36 ["fromAction"]
     1246 LOADK                            R38 K140 ["Export"]
     1247 LOADK                            R39 K142 ["SaveSelectionToFile"]
     1248 CALL                             R37 2 1
     1249 LOADK                            R38 K51 ["All"]
     1250 CALL                             R36 2 1
     1251 MOVE                             R37 R17
     1252 GETTABLEKS                       R38 R16 K36 ["fromAction"]
     1254 LOADK                            R39 K143 ["PluginManagement"]
     1255 LOADK                            R40 K144 ["SaveAsLocalPlugin"]
     1256 CALL                             R38 2 1
     1257 LOADK                            R39 K51 ["All"]
     1258 CALL                             R37 2 1
     1259 MOVE                             R38 R17
     1260 GETTABLEKS                       R39 R16 K36 ["fromAction"]
     1262 LOADK                            R40 K143 ["PluginManagement"]
     1263 LOADK                            R41 K145 ["PublishToRoblox"]
     1264 CALL                             R39 2 1
     1265 LOADK                            R40 K51 ["All"]
     1266 CALL                             R38 2 1
     1267 MOVE                             R39 R17
     1268 GETTABLEKS                       R40 R16 K36 ["fromAction"]
     1270 LOADK                            R41 K140 ["Export"]
     1271 LOADK                            R42 K146 ["ExportSelection"]
     1272 CALL                             R40 2 1
     1273 LOADK                            R41 K51 ["All"]
     1274 CALL                             R39 2 1
     1275 MOVE                             R40 R17
     1276 GETTABLEKS                       R41 R16 K36 ["fromAction"]
     1278 LOADK                            R42 K140 ["Export"]
     1279 LOADK                            R43 K149 ["ExportAsGltf"]
     1280 CALL                             R41 2 1
     1281 LOADK                            R42 K51 ["All"]
     1282 CALL                             R40 2 1
     1283 SETLIST                          R34 R35 6 [1]
     1285 SETLIST                          R33 R34 1 [1]
     1287 DUPTABLE                         R32 K148 [{["key"] = "saveAndExport", ["source"]}]
     1288 DUPTABLE                         R34 K61 [{["type"] = "submenu", ["submenuCategories"]}]
     1289 SETTABLEKS                       R33 R34 K60 ["submenuCategories"]
     1291 SETTABLEKS                       R34 R32 K56 ["source"]
     1293 SETLIST                          R28 R29 4 [1]
     1295 CALL                             R27 1 -1
     1296 FASTCALL                         TABLE_INSERT ; [+2]
     1297 GETIMPORT                        R25 K45 [table.insert]
     1299 CALL                             R25 -1 0
     1300 NEWTABLE                         R27 0 2
     1302 MOVE                             R28 R17
     1303 GETTABLEKS                       R29 R16 K36 ["fromAction"]
     1305 LOADK                            R30 K150 ["InsertService"]
     1306 LOADK                            R31 K151 ["ShowServices"]
     1307 CALL                             R29 2 1
     1308 LOADK                            R30 K152 ["ServicesAndBlank"]
     1309 CALL                             R28 2 1
     1310 MOVE                             R29 R17
     1311 GETTABLEKS                       R30 R16 K36 ["fromAction"]
     1313 LOADK                            R31 K150 ["InsertService"]
     1314 LOADK                            R32 K153 ["HideService"]
     1315 CALL                             R30 2 1
     1316 LOADK                            R31 K154 ["Services"]
     1317 CALL                             R29 2 1
     1318 SETLIST                          R27 R28 2 [1]
     1320 FASTCALL2                        TABLE_INSERT R20 R27 ; [+4]
     1322 MOVE                             R26 R20
     1323 GETIMPORT                        R25 K45 [table.insert]
     1325 CALL                             R25 2 0
     1326 NEWTABLE                         R27 0 1
     1328 MOVE                             R28 R17
     1329 GETTABLEKS                       R29 R16 K36 ["fromAction"]
     1331 LOADK                            R30 K46 ["Common"]
     1332 LOADK                            R31 K155 ["Help"]
     1333 CALL                             R29 2 1
     1334 LOADK                            R30 K51 ["All"]
     1335 CALL                             R28 2 1
     1336 SETLIST                          R27 R28 1 [1]
     1338 FASTCALL2                        TABLE_INSERT R20 R27 ; [+4]
     1340 MOVE                             R26 R20
     1341 GETIMPORT                        R25 K45 [table.insert]
     1343 CALL                             R25 2 0
     1344 RETURN                           R20 1
