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
       83 GETTABLEKS                       R10 R10 K20 ["getFFlagReimportClearAction"]
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
      113 GETTABLEKS                       R14 R3 K13 ["Util"]
      115 GETTABLEKS                       R14 R14 K28 ["StudioUri"]
      117 DUPCLOSURE                       R15 K29 [PROTO_0]
      118 CAPTURE                          VAL R14
      119 DUPCLOSURE                       R16 K30 [PROTO_1]
      120 DUPCLOSURE                       R17 K31 [PROTO_2]
      121 CAPTURE                          VAL R14
      122 NEWTABLE                         R18 0 0
      124 DUPCLOSURE                       R19 K32 [PROTO_3]
      125 DUPCLOSURE                       R20 K33 [PROTO_4]
      126 MOVE                             R21 R7
      127 CALL                             R21 0 1
      128 JUMPIFNOT                        R21 ; [+35]
      129 NEWTABLE                         R23 0 3
      131 MOVE                             R24 R15
      132 GETTABLEKS                       R25 R14 K34 ["fromAction"]
      134 LOADK                            R26 K35 ["ScriptTools"]
      135 LOADK                            R27 K36 ["Open"]
      136 CALL                             R25 2 1
      137 LOADK                            R26 K37 ["NonServices"]
      138 CALL                             R24 2 1
      139 MOVE                             R25 R15
      140 GETTABLEKS                       R26 R14 K34 ["fromAction"]
      142 LOADK                            R27 K38 ["FileSync"]
      143 LOADK                            R28 K39 ["OpenInExternalEditor"]
      144 CALL                             R26 2 1
      145 LOADK                            R27 K37 ["NonServices"]
      146 CALL                             R25 2 1
      147 MOVE                             R26 R15
      148 GETTABLEKS                       R27 R14 K34 ["fromAction"]
      150 LOADK                            R28 K35 ["ScriptTools"]
      151 LOADK                            R29 K40 ["OpenScriptHistory"]
      152 CALL                             R27 2 1
      153 LOADK                            R28 K37 ["NonServices"]
      154 CALL                             R26 2 1
      155 SETLIST                          R23 R24 3 [1]
      157 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      159 MOVE                             R22 R18
      160 GETIMPORT                        R21 K43 [table.insert]
      162 CALL                             R21 2 0
      163 JUMP                             ; [+26]
      164 NEWTABLE                         R23 0 2
      166 MOVE                             R24 R15
      167 GETTABLEKS                       R25 R14 K34 ["fromAction"]
      169 LOADK                            R26 K35 ["ScriptTools"]
      170 LOADK                            R27 K36 ["Open"]
      171 CALL                             R25 2 1
      172 LOADK                            R26 K37 ["NonServices"]
      173 CALL                             R24 2 1
      174 MOVE                             R25 R15
      175 GETTABLEKS                       R26 R14 K34 ["fromAction"]
      177 LOADK                            R27 K35 ["ScriptTools"]
      178 LOADK                            R28 K40 ["OpenScriptHistory"]
      179 CALL                             R26 2 1
      180 LOADK                            R27 K37 ["NonServices"]
      181 CALL                             R25 2 1
      182 SETLIST                          R23 R24 2 [1]
      184 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      186 MOVE                             R22 R18
      187 GETIMPORT                        R21 K43 [table.insert]
      189 CALL                             R21 2 0
      190 MOVE                             R22 R18
      191 MOVE                             R23 R4
      192 NEWTABLE                         R24 0 8
      194 MOVE                             R25 R15
      195 GETTABLEKS                       R26 R14 K34 ["fromAction"]
      197 LOADK                            R27 K44 ["Common"]
      198 LOADK                            R28 K45 ["Cut"]
      199 CALL                             R26 2 1
      200 LOADK                            R27 K37 ["NonServices"]
      201 CALL                             R25 2 1
      202 MOVE                             R26 R15
      203 GETTABLEKS                       R27 R14 K34 ["fromAction"]
      205 LOADK                            R28 K44 ["Common"]
      206 LOADK                            R29 K46 ["Copy"]
      207 CALL                             R27 2 1
      208 LOADK                            R28 K37 ["NonServices"]
      209 CALL                             R26 2 1
      210 JUMPIF                           R11 ; [+1]
      211 JUMPIFNOT                        R12 ; [+45]
      212 NEWTABLE                         R28 0 1
      214 MOVE                             R29 R4
      215 NEWTABLE                         R30 0 2
      217 JUMPIFNOT                        R11 ; [+9]
      218 MOVE                             R31 R15
      219 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      221 LOADK                            R33 K47 ["BuilderTools"]
      222 LOADK                            R34 K48 ["CopyPath"]
      223 CALL                             R32 2 1
      224 LOADK                            R33 K49 ["All"]
      225 CALL                             R31 2 1
      226 JUMP                             ; [+1]
      227 LOADNIL                          R31
      228 JUMPIFNOT                        R12 ; [+9]
      229 MOVE                             R32 R15
      230 GETTABLEKS                       R33 R14 K34 ["fromAction"]
      232 LOADK                            R34 K47 ["BuilderTools"]
      233 LOADK                            R35 K50 ["CopyUniqueId"]
      234 CALL                             R33 2 1
      235 LOADK                            R34 K49 ["All"]
      236 CALL                             R32 2 1
      237 JUMP                             ; [+1]
      238 LOADNIL                          R32
      239 SETLIST                          R30 R31 2 [1]
      241 CALL                             R29 1 -1
      242 SETLIST                          R28 R29 -1 [1]
      244 DUPTABLE                         R27 K53 [{"key", "source"}]
      245 LOADK                            R29 K54 ["CopyAs"]
      246 SETTABLEKS                       R29 R27 K51 ["key"]
      248 DUPTABLE                         R29 K57 [{"type", "submenuCategories"}]
      249 LOADK                            R30 K58 ["submenu"]
      250 SETTABLEKS                       R30 R29 K55 ["type"]
      252 SETTABLEKS                       R28 R29 K56 ["submenuCategories"]
      254 SETTABLEKS                       R29 R27 K52 ["source"]
      256 JUMP                             ; [+1]
      257 LOADNIL                          R27
      258 MOVE                             R28 R15
      259 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      261 LOADK                            R30 K44 ["Common"]
      262 LOADK                            R31 K59 ["PasteInto"]
      263 CALL                             R29 2 1
      264 LOADK                            R30 K49 ["All"]
      265 CALL                             R28 2 1
      266 MOVE                             R29 R15
      267 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      269 LOADK                            R31 K47 ["BuilderTools"]
      270 LOADK                            R32 K60 ["PasteIntoAtOriginalLocation"]
      271 CALL                             R30 2 1
      272 LOADK                            R31 K49 ["All"]
      273 CALL                             R29 2 1
      274 MOVE                             R30 R15
      275 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      277 LOADK                            R32 K44 ["Common"]
      278 LOADK                            R33 K61 ["Duplicate"]
      279 CALL                             R31 2 1
      280 LOADK                            R32 K37 ["NonServices"]
      281 CALL                             R30 2 1
      282 MOVE                             R31 R15
      283 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      285 LOADK                            R33 K44 ["Common"]
      286 LOADK                            R34 K62 ["Delete"]
      287 CALL                             R32 2 1
      288 LOADK                            R33 K37 ["NonServices"]
      289 CALL                             R31 2 1
      290 MOVE                             R32 R15
      291 GETTABLEKS                       R33 R14 K34 ["fromAction"]
      293 LOADK                            R34 K11 ["Explorer"]
      294 LOADK                            R35 K63 ["Rename"]
      295 CALL                             R33 2 1
      296 LOADK                            R34 K49 ["All"]
      297 LOADNIL                          R35
      298 GETTABLEKS                       R36 R2 K64 ["Data"]
      300 GETTABLEKS                       R36 R36 K8 ["ContextMenu"]
      302 GETTABLEKS                       R36 R36 K65 ["coreItems"]
      304 GETTABLEKS                       R36 R36 K66 ["rename"]
      306 CALL                             R32 4 1
      307 SETLIST                          R24 R25 8 [1]
      309 CALL                             R23 1 -1
      310 FASTCALL                         TABLE_INSERT ; [+2]
      311 GETIMPORT                        R21 K43 [table.insert]
      313 CALL                             R21 -1 0
      314 NEWTABLE                         R23 0 4
      316 MOVE                             R24 R15
      317 GETTABLEKS                       R25 R14 K34 ["fromAction"]
      319 LOADK                            R26 K47 ["BuilderTools"]
      320 LOADK                            R27 K67 ["GroupAsModel"]
      321 CALL                             R25 2 1
      322 LOADK                            R26 K37 ["NonServices"]
      323 CALL                             R24 2 1
      324 MOVE                             R25 R15
      325 GETTABLEKS                       R26 R14 K34 ["fromAction"]
      327 LOADK                            R27 K47 ["BuilderTools"]
      328 LOADK                            R28 K68 ["GroupAsFolder"]
      329 CALL                             R26 2 1
      330 LOADK                            R27 K37 ["NonServices"]
      331 CALL                             R25 2 1
      332 MOVE                             R26 R15
      333 GETTABLEKS                       R27 R14 K34 ["fromAction"]
      335 LOADK                            R28 K47 ["BuilderTools"]
      336 LOADK                            R29 K69 ["Ungroup"]
      337 CALL                             R27 2 1
      338 LOADK                            R28 K37 ["NonServices"]
      339 CALL                             R26 2 1
      340 NEWTABLE                         R28 0 1
      342 NEWTABLE                         R29 0 4
      344 MOVE                             R30 R15
      345 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      347 LOADK                            R32 K47 ["BuilderTools"]
      348 LOADK                            R33 K70 ["UnionSelection"]
      349 CALL                             R31 2 1
      350 LOADK                            R32 K37 ["NonServices"]
      351 CALL                             R30 2 1
      352 MOVE                             R31 R15
      353 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      355 LOADK                            R33 K47 ["BuilderTools"]
      356 LOADK                            R34 K71 ["IntersectSelection"]
      357 CALL                             R32 2 1
      358 LOADK                            R33 K37 ["NonServices"]
      359 CALL                             R31 2 1
      360 MOVE                             R32 R15
      361 GETTABLEKS                       R33 R14 K34 ["fromAction"]
      363 LOADK                            R34 K47 ["BuilderTools"]
      364 LOADK                            R35 K72 ["NegateSelection"]
      365 CALL                             R33 2 1
      366 LOADK                            R34 K37 ["NonServices"]
      367 CALL                             R32 2 1
      368 MOVE                             R33 R15
      369 GETTABLEKS                       R34 R14 K34 ["fromAction"]
      371 LOADK                            R35 K47 ["BuilderTools"]
      372 LOADK                            R36 K73 ["SeparateSelection"]
      373 CALL                             R34 2 1
      374 LOADK                            R35 K37 ["NonServices"]
      375 CALL                             R33 2 1
      376 SETLIST                          R29 R30 4 [1]
      378 SETLIST                          R28 R29 1 [1]
      380 DUPTABLE                         R27 K53 [{"key", "source"}]
      381 LOADK                            R29 K74 ["solidModeling"]
      382 SETTABLEKS                       R29 R27 K51 ["key"]
      384 DUPTABLE                         R29 K57 [{"type", "submenuCategories"}]
      385 LOADK                            R30 K58 ["submenu"]
      386 SETTABLEKS                       R30 R29 K55 ["type"]
      388 SETTABLEKS                       R28 R29 K56 ["submenuCategories"]
      390 SETTABLEKS                       R29 R27 K52 ["source"]
      392 SETLIST                          R23 R24 4 [1]
      394 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      396 MOVE                             R22 R18
      397 GETIMPORT                        R21 K43 [table.insert]
      399 CALL                             R21 2 0
      400 MOVE                             R22 R18
      401 MOVE                             R23 R4
      402 NEWTABLE                         R24 0 5
      404 NEWTABLE                         R26 0 1
      406 NEWTABLE                         R27 0 3
      408 MOVE                             R28 R15
      409 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      411 LOADK                            R30 K47 ["BuilderTools"]
      412 LOADK                            R31 K75 ["InsertPartIntoSelection"]
      413 CALL                             R29 2 1
      414 LOADK                            R30 K49 ["All"]
      415 CALL                             R28 2 1
      416 MOVE                             R29 R15
      417 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      419 LOADK                            R31 K47 ["BuilderTools"]
      420 LOADK                            R32 K76 ["InsertObject"]
      421 CALL                             R30 2 1
      422 LOADK                            R31 K49 ["All"]
      423 CALL                             R29 2 1
      424 MOVE                             R30 R15
      425 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      427 LOADK                            R32 K47 ["BuilderTools"]
      428 LOADK                            R33 K77 ["InsertFromFile"]
      429 CALL                             R31 2 1
      430 LOADK                            R32 K49 ["All"]
      431 CALL                             R30 2 1
      432 SETLIST                          R27 R28 3 [1]
      434 SETLIST                          R26 R27 1 [1]
      436 DUPTABLE                         R25 K53 [{"key", "source"}]
      437 LOADK                            R27 K42 ["insert"]
      438 SETTABLEKS                       R27 R25 K51 ["key"]
      440 DUPTABLE                         R27 K57 [{"type", "submenuCategories"}]
      441 LOADK                            R28 K58 ["submenu"]
      442 SETTABLEKS                       R28 R27 K55 ["type"]
      444 SETTABLEKS                       R26 R27 K56 ["submenuCategories"]
      446 SETTABLEKS                       R27 R25 K52 ["source"]
      448 MOVE                             R27 R4
      449 NEWTABLE                         R28 0 1
      451 NEWTABLE                         R29 0 4
      453 MOVE                             R30 R15
      454 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      456 LOADK                            R32 K44 ["Common"]
      457 LOADK                            R33 K78 ["SelectParents"]
      458 CALL                             R31 2 1
      459 LOADK                            R32 K37 ["NonServices"]
      460 LOADNIL                          R33
      461 CALL                             R30 3 1
      462 MOVE                             R31 R15
      463 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      465 LOADK                            R33 K44 ["Common"]
      466 LOADK                            R34 K79 ["SelectChildren"]
      467 CALL                             R32 2 1
      468 LOADK                            R33 K49 ["All"]
      469 LOADNIL                          R34
      470 CALL                             R31 3 1
      471 MOVE                             R32 R15
      472 GETTABLEKS                       R33 R14 K34 ["fromAction"]
      474 LOADK                            R34 K11 ["Explorer"]
      475 LOADK                            R35 K80 ["ExpandAll"]
      476 CALL                             R33 2 1
      477 LOADK                            R34 K49 ["All"]
      478 LOADNIL                          R35
      479 GETTABLEKS                       R36 R2 K64 ["Data"]
      481 GETTABLEKS                       R36 R36 K8 ["ContextMenu"]
      483 GETTABLEKS                       R36 R36 K65 ["coreItems"]
      485 GETTABLEKS                       R36 R36 K81 ["expandAll"]
      487 CALL                             R32 4 1
      488 MOVE                             R33 R15
      489 GETTABLEKS                       R34 R14 K34 ["fromAction"]
      491 LOADK                            R35 K11 ["Explorer"]
      492 LOADK                            R36 K82 ["CollapseAll"]
      493 CALL                             R34 2 1
      494 LOADK                            R35 K49 ["All"]
      495 LOADNIL                          R36
      496 GETTABLEKS                       R37 R2 K64 ["Data"]
      498 GETTABLEKS                       R37 R37 K8 ["ContextMenu"]
      500 GETTABLEKS                       R37 R37 K65 ["coreItems"]
      502 GETTABLEKS                       R37 R37 K83 ["collapseAll"]
      504 CALL                             R33 4 1
      505 SETLIST                          R29 R30 4 [1]
      507 SETLIST                          R28 R29 1 [1]
      509 CALL                             R27 1 1
      510 DUPTABLE                         R26 K53 [{"key", "source"}]
      511 LOADK                            R28 K84 ["hierarchy"]
      512 SETTABLEKS                       R28 R26 K51 ["key"]
      514 DUPTABLE                         R28 K57 [{"type", "submenuCategories"}]
      515 LOADK                            R29 K58 ["submenu"]
      516 SETTABLEKS                       R29 R28 K55 ["type"]
      518 SETTABLEKS                       R27 R28 K56 ["submenuCategories"]
      520 SETTABLEKS                       R28 R26 K52 ["source"]
      522 MOVE                             R27 R15
      523 GETTABLEKS                       R28 R14 K34 ["fromAction"]
      525 LOADK                            R29 K47 ["BuilderTools"]
      526 LOADK                            R30 K85 ["ZoomExtents"]
      527 CALL                             R28 2 1
      528 LOADK                            R29 K37 ["NonServices"]
      529 MOVE                             R30 R19
      530 CALL                             R27 3 1
      531 MOVE                             R28 R15
      532 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      534 LOADK                            R30 K47 ["BuilderTools"]
      535 LOADK                            R31 K86 ["ShowOrientationIndicator"]
      536 CALL                             R29 2 1
      537 LOADK                            R30 K37 ["NonServices"]
      538 CALL                             R28 2 1
      539 MOVE                             R29 R15
      540 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      542 LOADK                            R31 K35 ["ScriptTools"]
      543 LOADK                            R32 K87 ["ToggleScripts"]
      544 CALL                             R30 2 1
      545 LOADK                            R31 K37 ["NonServices"]
      546 CALL                             R29 2 1
      547 SETLIST                          R24 R25 5 [1]
      549 CALL                             R23 1 -1
      550 FASTCALL                         TABLE_INSERT ; [+2]
      551 GETIMPORT                        R21 K43 [table.insert]
      553 CALL                             R21 -1 0
      554 NEWTABLE                         R23 0 4
      556 MOVE                             R24 R15
      557 GETTABLEKS                       R25 R14 K34 ["fromAction"]
      559 LOADK                            R26 K88 ["PluginDebugging"]
      560 LOADK                            R27 K89 ["SaveAndReloadDebuggablePlugin"]
      561 CALL                             R25 2 1
      562 LOADK                            R26 K49 ["All"]
      563 CALL                             R24 2 1
      564 MOVE                             R25 R15
      565 GETTABLEKS                       R26 R14 K34 ["fromAction"]
      567 LOADK                            R27 K88 ["PluginDebugging"]
      568 LOADK                            R28 K90 ["ReloadDebuggablePlugin"]
      569 CALL                             R26 2 1
      570 LOADK                            R27 K49 ["All"]
      571 CALL                             R25 2 1
      572 MOVE                             R26 R15
      573 GETTABLEKS                       R27 R14 K34 ["fromAction"]
      575 LOADK                            R28 K88 ["PluginDebugging"]
      576 LOADK                            R29 K91 ["SaveAndReloadAllDebuggablePlugins"]
      577 CALL                             R27 2 1
      578 LOADK                            R28 K49 ["All"]
      579 MOVE                             R29 R20
      580 CALL                             R26 3 1
      581 MOVE                             R27 R15
      582 GETTABLEKS                       R28 R14 K34 ["fromAction"]
      584 LOADK                            R29 K88 ["PluginDebugging"]
      585 LOADK                            R30 K92 ["SaveBuildAndReloadDebuggablePlugin"]
      586 CALL                             R28 2 1
      587 LOADK                            R29 K49 ["All"]
      588 CALL                             R27 2 1
      589 SETLIST                          R23 R24 4 [1]
      591 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      593 MOVE                             R22 R18
      594 GETIMPORT                        R21 K43 [table.insert]
      596 CALL                             R21 2 0
      597 MOVE                             R21 R7
      598 CALL                             R21 0 1
      599 JUMPIFNOT                        R21 ; [+166]
      600 JUMPIFNOT                        R13 ; [+71]
      601 NEWTABLE                         R23 0 1
      603 NEWTABLE                         R25 0 1
      605 NEWTABLE                         R26 0 5
      607 MOVE                             R27 R15
      608 GETTABLEKS                       R28 R14 K34 ["fromAction"]
      610 LOADK                            R29 K38 ["FileSync"]
      611 LOADK                            R30 K93 ["StopScriptSync"]
      612 CALL                             R28 2 1
      613 LOADK                            R29 K49 ["All"]
      614 CALL                             R27 2 1
      615 MOVE                             R28 R15
      616 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      618 LOADK                            R30 K38 ["FileSync"]
      619 LOADK                            R31 K94 ["StartSync"]
      620 CALL                             R29 2 1
      621 LOADK                            R30 K49 ["All"]
      622 CALL                             R28 2 1
      623 MOVE                             R29 R15
      624 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      626 LOADK                            R31 K38 ["FileSync"]
      627 LOADK                            R32 K95 ["ResumeScriptSync"]
      628 CALL                             R30 2 1
      629 LOADK                            R31 K49 ["All"]
      630 CALL                             R29 2 1
      631 MOVE                             R30 R15
      632 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      634 LOADK                            R32 K38 ["FileSync"]
      635 LOADK                            R33 K96 ["ShowInFolder"]
      636 CALL                             R31 2 1
      637 LOADK                            R32 K49 ["All"]
      638 CALL                             R30 2 1
      639 MOVE                             R31 R15
      640 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      642 LOADK                            R33 K38 ["FileSync"]
      643 LOADK                            R34 K97 ["SelectSyncingRoot"]
      644 CALL                             R32 2 1
      645 LOADK                            R33 K49 ["All"]
      646 CALL                             R31 2 1
      647 SETLIST                          R26 R27 5 [1]
      649 SETLIST                          R25 R26 1 [1]
      651 DUPTABLE                         R24 K53 [{"key", "source"}]
      652 LOADK                            R26 K98 ["scriptSync"]
      653 SETTABLEKS                       R26 R24 K51 ["key"]
      655 DUPTABLE                         R26 K57 [{"type", "submenuCategories"}]
      656 LOADK                            R27 K58 ["submenu"]
      657 SETTABLEKS                       R27 R26 K55 ["type"]
      659 SETTABLEKS                       R25 R26 K56 ["submenuCategories"]
      661 SETTABLEKS                       R26 R24 K52 ["source"]
      663 SETLIST                          R23 R24 1 [1]
      665 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      667 MOVE                             R22 R18
      668 GETIMPORT                        R21 K43 [table.insert]
      670 CALL                             R21 2 0
      671 JUMP                             ; [+94]
      672 NEWTABLE                         R23 0 1
      674 NEWTABLE                         R25 0 1
      676 NEWTABLE                         R26 0 8
      678 MOVE                             R27 R15
      679 GETTABLEKS                       R28 R14 K34 ["fromAction"]
      681 LOADK                            R29 K38 ["FileSync"]
      682 LOADK                            R30 K93 ["StopScriptSync"]
      683 CALL                             R28 2 1
      684 LOADK                            R29 K49 ["All"]
      685 CALL                             R27 2 1
      686 MOVE                             R28 R15
      687 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      689 LOADK                            R30 K38 ["FileSync"]
      690 LOADK                            R31 K99 ["StartSyncToNewFile"]
      691 CALL                             R29 2 1
      692 LOADK                            R30 K37 ["NonServices"]
      693 CALL                             R28 2 1
      694 MOVE                             R29 R15
      695 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      697 LOADK                            R31 K38 ["FileSync"]
      698 LOADK                            R32 K100 ["StartSyncToExistingFile"]
      699 CALL                             R30 2 1
      700 LOADK                            R31 K37 ["NonServices"]
      701 CALL                             R29 2 1
      702 MOVE                             R30 R15
      703 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      705 LOADK                            R32 K38 ["FileSync"]
      706 LOADK                            R33 K101 ["StartSyncSelectedInstancesTo"]
      707 CALL                             R31 2 1
      708 LOADK                            R32 K49 ["All"]
      709 CALL                             R30 2 1
      710 MOVE                             R31 R15
      711 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      713 LOADK                            R33 K38 ["FileSync"]
      714 LOADK                            R34 K102 ["StartSyncToDirectory"]
      715 CALL                             R32 2 1
      716 LOADK                            R33 K49 ["All"]
      717 CALL                             R31 2 1
      718 MOVE                             R32 R15
      719 GETTABLEKS                       R33 R14 K34 ["fromAction"]
      721 LOADK                            R34 K38 ["FileSync"]
      722 LOADK                            R35 K95 ["ResumeScriptSync"]
      723 CALL                             R33 2 1
      724 LOADK                            R34 K49 ["All"]
      725 CALL                             R32 2 1
      726 MOVE                             R33 R15
      727 GETTABLEKS                       R34 R14 K34 ["fromAction"]
      729 LOADK                            R35 K38 ["FileSync"]
      730 LOADK                            R36 K96 ["ShowInFolder"]
      731 CALL                             R34 2 1
      732 LOADK                            R35 K49 ["All"]
      733 CALL                             R33 2 1
      734 MOVE                             R34 R15
      735 GETTABLEKS                       R35 R14 K34 ["fromAction"]
      737 LOADK                            R36 K38 ["FileSync"]
      738 LOADK                            R37 K97 ["SelectSyncingRoot"]
      739 CALL                             R35 2 1
      740 LOADK                            R36 K49 ["All"]
      741 CALL                             R34 2 1
      742 SETLIST                          R26 R27 8 [1]
      744 SETLIST                          R25 R26 1 [1]
      746 DUPTABLE                         R24 K53 [{"key", "source"}]
      747 LOADK                            R26 K98 ["scriptSync"]
      748 SETTABLEKS                       R26 R24 K51 ["key"]
      750 DUPTABLE                         R26 K57 [{"type", "submenuCategories"}]
      751 LOADK                            R27 K58 ["submenu"]
      752 SETTABLEKS                       R27 R26 K55 ["type"]
      754 SETTABLEKS                       R25 R26 K56 ["submenuCategories"]
      756 SETTABLEKS                       R26 R24 K52 ["source"]
      758 SETLIST                          R23 R24 1 [1]
      760 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      762 MOVE                             R22 R18
      763 GETIMPORT                        R21 K43 [table.insert]
      765 CALL                             R21 2 0
      766 MOVE                             R21 R8
      767 CALL                             R21 0 1
      768 JUMPIFNOT                        R21 ; [+87]
      769 NEWTABLE                         R23 0 4
      771 MOVE                             R24 R15
      772 GETTABLEKS                       R25 R14 K34 ["fromAction"]
      774 LOADK                            R26 K103 ["PackageTools"]
      775 LOADK                            R27 K104 ["PublishPackage"]
      776 CALL                             R25 2 1
      777 LOADK                            R26 K37 ["NonServices"]
      778 CALL                             R24 2 1
      779 MOVE                             R25 R15
      780 GETTABLEKS                       R26 R14 K34 ["fromAction"]
      782 LOADK                            R27 K103 ["PackageTools"]
      783 LOADK                            R28 K105 ["UndoPackageChanges"]
      784 CALL                             R26 2 1
      785 LOADK                            R27 K37 ["NonServices"]
      786 CALL                             R25 2 1
      787 MOVE                             R26 R15
      788 GETTABLEKS                       R27 R14 K34 ["fromAction"]
      790 LOADK                            R28 K103 ["PackageTools"]
      791 LOADK                            R29 K106 ["GetLatestPackage"]
      792 CALL                             R27 2 1
      793 LOADK                            R28 K37 ["NonServices"]
      794 CALL                             R26 2 1
      795 NEWTABLE                         R28 0 1
      797 NEWTABLE                         R29 0 4
      799 MOVE                             R30 R15
      800 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      802 LOADK                            R32 K103 ["PackageTools"]
      803 LOADK                            R33 K107 ["DiffPackageAgainstLatest"]
      804 CALL                             R31 2 1
      805 LOADK                            R32 K37 ["NonServices"]
      806 CALL                             R30 2 1
      807 MOVE                             R31 R15
      808 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      810 LOADK                            R33 K103 ["PackageTools"]
      811 LOADK                            R34 K108 ["MassUpdate"]
      812 CALL                             R32 2 1
      813 LOADK                            R33 K37 ["NonServices"]
      814 CALL                             R31 2 1
      815 MOVE                             R32 R15
      816 GETTABLEKS                       R33 R14 K34 ["fromAction"]
      818 LOADK                            R34 K103 ["PackageTools"]
      819 LOADK                            R35 K109 ["ShowPackagesDiff"]
      820 CALL                             R33 2 1
      821 LOADK                            R34 K37 ["NonServices"]
      822 CALL                             R32 2 1
      823 MOVE                             R33 R15
      824 GETTABLEKS                       R34 R14 K34 ["fromAction"]
      826 LOADK                            R35 K103 ["PackageTools"]
      827 LOADK                            R36 K110 ["PackageDetails"]
      828 CALL                             R34 2 1
      829 LOADK                            R35 K37 ["NonServices"]
      830 CALL                             R33 2 1
      831 SETLIST                          R29 R30 4 [1]
      833 SETLIST                          R28 R29 1 [1]
      835 DUPTABLE                         R27 K53 [{"key", "source"}]
      836 LOADK                            R29 K111 ["morePackageOptions"]
      837 SETTABLEKS                       R29 R27 K51 ["key"]
      839 DUPTABLE                         R29 K57 [{"type", "submenuCategories"}]
      840 LOADK                            R30 K58 ["submenu"]
      841 SETTABLEKS                       R30 R29 K55 ["type"]
      843 SETTABLEKS                       R28 R29 K56 ["submenuCategories"]
      845 SETTABLEKS                       R29 R27 K52 ["source"]
      847 SETLIST                          R23 R24 4 [1]
      849 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      851 MOVE                             R22 R18
      852 GETIMPORT                        R21 K43 [table.insert]
      854 CALL                             R21 2 0
      855 JUMP                             ; [+62]
      856 NEWTABLE                         R23 0 2
      858 MOVE                             R24 R15
      859 GETTABLEKS                       R25 R14 K34 ["fromAction"]
      861 LOADK                            R26 K103 ["PackageTools"]
      862 LOADK                            R27 K104 ["PublishPackage"]
      863 CALL                             R25 2 1
      864 LOADK                            R26 K37 ["NonServices"]
      865 CALL                             R24 2 1
      866 NEWTABLE                         R26 0 1
      868 NEWTABLE                         R27 0 3
      870 MOVE                             R28 R15
      871 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      873 LOADK                            R30 K103 ["PackageTools"]
      874 LOADK                            R31 K108 ["MassUpdate"]
      875 CALL                             R29 2 1
      876 LOADK                            R30 K37 ["NonServices"]
      877 CALL                             R28 2 1
      878 MOVE                             R29 R15
      879 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      881 LOADK                            R31 K103 ["PackageTools"]
      882 LOADK                            R32 K109 ["ShowPackagesDiff"]
      883 CALL                             R30 2 1
      884 LOADK                            R31 K37 ["NonServices"]
      885 CALL                             R29 2 1
      886 MOVE                             R30 R15
      887 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      889 LOADK                            R32 K103 ["PackageTools"]
      890 LOADK                            R33 K110 ["PackageDetails"]
      891 CALL                             R31 2 1
      892 LOADK                            R32 K37 ["NonServices"]
      893 CALL                             R30 2 1
      894 SETLIST                          R27 R28 3 [1]
      896 SETLIST                          R26 R27 1 [1]
      898 DUPTABLE                         R25 K53 [{"key", "source"}]
      899 LOADK                            R27 K111 ["morePackageOptions"]
      900 SETTABLEKS                       R27 R25 K51 ["key"]
      902 DUPTABLE                         R27 K57 [{"type", "submenuCategories"}]
      903 LOADK                            R28 K58 ["submenu"]
      904 SETTABLEKS                       R28 R27 K55 ["type"]
      906 SETTABLEKS                       R26 R27 K56 ["submenuCategories"]
      908 SETTABLEKS                       R27 R25 K52 ["source"]
      910 SETLIST                          R23 R24 2 [1]
      912 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      914 MOVE                             R22 R18
      915 GETIMPORT                        R21 K43 [table.insert]
      917 CALL                             R21 2 0
      918 GETIMPORT                        R21 K113 [xpcall]
      920 DUPCLOSURE                       R22 K114 [PROTO_5]
      921 CAPTURE                          VAL R17
      922 DUPCLOSURE                       R23 K115 [PROTO_6]
      923 CAPTURE                          VAL R17
      924 CALL                             R21 2 2
      925 MOVE                             R23 R6
      926 CALL                             R23 0 1
      927 JUMPIFNOT                        R23 ; [+112]
      928 GETIMPORT                        R23 K5 [require]
      930 GETTABLEKS                       R24 R0 K10 ["Packages"]
      932 GETTABLEKS                       R24 R24 K116 ["SharedPluginConstants"]
      934 CALL                             R23 1 1
      935 GETTABLEKS                       R24 R23 K117 ["REIMPORT"]
      937 GETTABLEKS                       R24 R24 K118 ["ACTION_ID"]
      939 GETTABLEKS                       R25 R23 K117 ["REIMPORT"]
      941 GETTABLEKS                       R25 R25 K119 ["ACTION_EVENTS"]
      943 NEWTABLE                         R28 0 1
      945 NEWTABLE                         R30 0 1
      947 MOVE                             R31 R4
      948 NEWTABLE                         R32 0 5
      950 MOVE                             R33 R15
      951 GETTABLEKS                       R35 R25 K117 ["REIMPORT"]
      953 GETTABLEKS                       R36 R14 K34 ["fromAction"]
      955 MOVE                             R37 R24
      956 MOVE                             R38 R35
      957 CALL                             R36 2 1
      958 MOVE                             R34 R36
      959 LOADK                            R35 K37 ["NonServices"]
      960 CALL                             R33 2 1
      961 MOVE                             R34 R15
      962 GETTABLEKS                       R36 R25 K120 ["REIMPORT_RELATIVE_TO_THIS"]
      964 GETTABLEKS                       R37 R14 K34 ["fromAction"]
      966 MOVE                             R38 R24
      967 MOVE                             R39 R36
      968 CALL                             R37 2 1
      969 MOVE                             R35 R37
      970 LOADK                            R36 K37 ["NonServices"]
      971 CALL                             R34 2 1
      972 MOVE                             R35 R15
      973 GETTABLEKS                       R37 R25 K121 ["CONFIGURE"]
      975 GETTABLEKS                       R38 R14 K34 ["fromAction"]
      977 MOVE                             R39 R24
      978 MOVE                             R40 R37
      979 CALL                             R38 2 1
      980 MOVE                             R36 R38
      981 LOADK                            R37 K37 ["NonServices"]
      982 CALL                             R35 2 1
      983 MOVE                             R37 R9
      984 CALL                             R37 0 1
      985 JUMPIFNOT                        R37 ; [+12]
      986 MOVE                             R36 R15
      987 GETTABLEKS                       R38 R25 K122 ["CLEAR_REIMPORT_CONFIG"]
      989 GETTABLEKS                       R39 R14 K34 ["fromAction"]
      991 MOVE                             R40 R24
      992 MOVE                             R41 R38
      993 CALL                             R39 2 1
      994 MOVE                             R37 R39
      995 LOADK                            R38 K37 ["NonServices"]
      996 CALL                             R36 2 1
      997 JUMP                             ; [+1]
      998 LOADNIL                          R36
      999 MOVE                             R38 R10
     1000 CALL                             R38 0 1
     1001 JUMPIFNOT                        R38 ; [+12]
     1002 MOVE                             R37 R15
     1003 GETTABLEKS                       R39 R25 K123 ["WATCH_INSTANCE_FILE"]
     1005 GETTABLEKS                       R40 R14 K34 ["fromAction"]
     1007 MOVE                             R41 R24
     1008 MOVE                             R42 R39
     1009 CALL                             R40 2 1
     1010 MOVE                             R38 R40
     1011 LOADK                            R39 K37 ["NonServices"]
     1012 CALL                             R37 2 1
     1013 JUMP                             ; [+1]
     1014 LOADNIL                          R37
     1015 SETLIST                          R32 R33 5 [1]
     1017 CALL                             R31 1 -1
     1018 SETLIST                          R30 R31 -1 [1]
     1020 DUPTABLE                         R29 K53 [{"key", "source"}]
     1021 LOADK                            R31 K124 ["Reimport"]
     1022 SETTABLEKS                       R31 R29 K51 ["key"]
     1024 DUPTABLE                         R31 K57 [{"type", "submenuCategories"}]
     1025 LOADK                            R32 K58 ["submenu"]
     1026 SETTABLEKS                       R32 R31 K55 ["type"]
     1028 SETTABLEKS                       R30 R31 K56 ["submenuCategories"]
     1030 SETTABLEKS                       R31 R29 K52 ["source"]
     1032 SETLIST                          R28 R29 1 [1]
     1034 FASTCALL2                        TABLE_INSERT R18 R28 ; [+4]
     1036 MOVE                             R27 R18
     1037 GETIMPORT                        R26 K43 [table.insert]
     1039 CALL                             R26 2 0
     1040 MOVE                             R23 R5
     1041 CALL                             R23 0 1
     1042 JUMPIF                           R23 ; [+92]
     1043 MOVE                             R24 R18
     1044 MOVE                             R25 R4
     1045 NEWTABLE                         R26 0 4
     1047 MOVE                             R27 R15
     1048 GETTABLEKS                       R28 R14 K34 ["fromAction"]
     1050 LOADK                            R29 K125 ["LocalizationTools"]
     1051 LOADK                            R30 K126 ["SaveCsv"]
     1052 CALL                             R28 2 1
     1053 LOADK                            R29 K37 ["NonServices"]
     1054 CALL                             R27 2 1
     1055 MOVE                             R28 R15
     1056 GETTABLEKS                       R29 R14 K34 ["fromAction"]
     1058 LOADK                            R30 K125 ["LocalizationTools"]
     1059 LOADK                            R31 K127 ["LoadCsv"]
     1060 CALL                             R29 2 1
     1061 LOADK                            R30 K37 ["NonServices"]
     1062 CALL                             R28 2 1
     1063 MOVE                             R29 R15
     1064 MOVE                             R30 R22
     1065 LOADK                            R31 K37 ["NonServices"]
     1066 CALL                             R29 2 1
     1067 NEWTABLE                         R31 0 1
     1069 NEWTABLE                         R32 0 5
     1071 MOVE                             R33 R15
     1072 GETTABLEKS                       R34 R14 K34 ["fromAction"]
     1074 LOADK                            R35 K128 ["Export"]
     1075 LOADK                            R36 K129 ["PublishSelectionToRoblox"]
     1076 CALL                             R34 2 1
     1077 LOADK                            R35 K37 ["NonServices"]
     1078 CALL                             R33 2 1
     1079 MOVE                             R34 R15
     1080 GETTABLEKS                       R35 R14 K34 ["fromAction"]
     1082 LOADK                            R36 K128 ["Export"]
     1083 LOADK                            R37 K130 ["SaveSelectionToFile"]
     1084 CALL                             R35 2 1
     1085 LOADK                            R36 K49 ["All"]
     1086 CALL                             R34 2 1
     1087 MOVE                             R35 R15
     1088 GETTABLEKS                       R36 R14 K34 ["fromAction"]
     1090 LOADK                            R37 K131 ["PluginManagement"]
     1091 LOADK                            R38 K132 ["SaveAsLocalPlugin"]
     1092 CALL                             R36 2 1
     1093 LOADK                            R37 K49 ["All"]
     1094 CALL                             R35 2 1
     1095 MOVE                             R36 R15
     1096 GETTABLEKS                       R37 R14 K34 ["fromAction"]
     1098 LOADK                            R38 K131 ["PluginManagement"]
     1099 LOADK                            R39 K133 ["PublishToRoblox"]
     1100 CALL                             R37 2 1
     1101 LOADK                            R38 K49 ["All"]
     1102 CALL                             R36 2 1
     1103 MOVE                             R37 R15
     1104 GETTABLEKS                       R38 R14 K34 ["fromAction"]
     1106 LOADK                            R39 K128 ["Export"]
     1107 LOADK                            R40 K134 ["ExportSelection"]
     1108 CALL                             R38 2 1
     1109 LOADK                            R39 K49 ["All"]
     1110 CALL                             R37 2 1
     1111 SETLIST                          R32 R33 5 [1]
     1113 SETLIST                          R31 R32 1 [1]
     1115 DUPTABLE                         R30 K53 [{"key", "source"}]
     1116 LOADK                            R32 K135 ["saveAndExport"]
     1117 SETTABLEKS                       R32 R30 K51 ["key"]
     1119 DUPTABLE                         R32 K57 [{"type", "submenuCategories"}]
     1120 LOADK                            R33 K58 ["submenu"]
     1121 SETTABLEKS                       R33 R32 K55 ["type"]
     1123 SETTABLEKS                       R31 R32 K56 ["submenuCategories"]
     1125 SETTABLEKS                       R32 R30 K52 ["source"]
     1127 SETLIST                          R26 R27 4 [1]
     1129 CALL                             R25 1 -1
     1130 FASTCALL                         TABLE_INSERT ; [+2]
     1131 GETIMPORT                        R23 K43 [table.insert]
     1133 CALL                             R23 -1 0
     1134 JUMP                             ; [+99]
     1135 MOVE                             R24 R18
     1136 MOVE                             R25 R4
     1137 NEWTABLE                         R26 0 4
     1139 MOVE                             R27 R15
     1140 GETTABLEKS                       R28 R14 K34 ["fromAction"]
     1142 LOADK                            R29 K125 ["LocalizationTools"]
     1143 LOADK                            R30 K126 ["SaveCsv"]
     1144 CALL                             R28 2 1
     1145 LOADK                            R29 K37 ["NonServices"]
     1146 CALL                             R27 2 1
     1147 MOVE                             R28 R15
     1148 GETTABLEKS                       R29 R14 K34 ["fromAction"]
     1150 LOADK                            R30 K125 ["LocalizationTools"]
     1151 LOADK                            R31 K127 ["LoadCsv"]
     1152 CALL                             R29 2 1
     1153 LOADK                            R30 K37 ["NonServices"]
     1154 CALL                             R28 2 1
     1155 MOVE                             R29 R15
     1156 MOVE                             R30 R22
     1157 LOADK                            R31 K37 ["NonServices"]
     1158 CALL                             R29 2 1
     1159 NEWTABLE                         R31 0 1
     1161 NEWTABLE                         R32 0 6
     1163 MOVE                             R33 R15
     1164 GETTABLEKS                       R34 R14 K34 ["fromAction"]
     1166 LOADK                            R35 K128 ["Export"]
     1167 LOADK                            R36 K129 ["PublishSelectionToRoblox"]
     1168 CALL                             R34 2 1
     1169 LOADK                            R35 K37 ["NonServices"]
     1170 CALL                             R33 2 1
     1171 MOVE                             R34 R15
     1172 GETTABLEKS                       R35 R14 K34 ["fromAction"]
     1174 LOADK                            R36 K128 ["Export"]
     1175 LOADK                            R37 K130 ["SaveSelectionToFile"]
     1176 CALL                             R35 2 1
     1177 LOADK                            R36 K49 ["All"]
     1178 CALL                             R34 2 1
     1179 MOVE                             R35 R15
     1180 GETTABLEKS                       R36 R14 K34 ["fromAction"]
     1182 LOADK                            R37 K131 ["PluginManagement"]
     1183 LOADK                            R38 K132 ["SaveAsLocalPlugin"]
     1184 CALL                             R36 2 1
     1185 LOADK                            R37 K49 ["All"]
     1186 CALL                             R35 2 1
     1187 MOVE                             R36 R15
     1188 GETTABLEKS                       R37 R14 K34 ["fromAction"]
     1190 LOADK                            R38 K131 ["PluginManagement"]
     1191 LOADK                            R39 K133 ["PublishToRoblox"]
     1192 CALL                             R37 2 1
     1193 LOADK                            R38 K49 ["All"]
     1194 CALL                             R36 2 1
     1195 MOVE                             R37 R15
     1196 GETTABLEKS                       R38 R14 K34 ["fromAction"]
     1198 LOADK                            R39 K128 ["Export"]
     1199 LOADK                            R40 K134 ["ExportSelection"]
     1200 CALL                             R38 2 1
     1201 LOADK                            R39 K49 ["All"]
     1202 CALL                             R37 2 1
     1203 MOVE                             R38 R15
     1204 GETTABLEKS                       R39 R14 K34 ["fromAction"]
     1206 LOADK                            R40 K128 ["Export"]
     1207 LOADK                            R41 K136 ["ExportAsGltf"]
     1208 CALL                             R39 2 1
     1209 LOADK                            R40 K49 ["All"]
     1210 CALL                             R38 2 1
     1211 SETLIST                          R32 R33 6 [1]
     1213 SETLIST                          R31 R32 1 [1]
     1215 DUPTABLE                         R30 K53 [{"key", "source"}]
     1216 LOADK                            R32 K135 ["saveAndExport"]
     1217 SETTABLEKS                       R32 R30 K51 ["key"]
     1219 DUPTABLE                         R32 K57 [{"type", "submenuCategories"}]
     1220 LOADK                            R33 K58 ["submenu"]
     1221 SETTABLEKS                       R33 R32 K55 ["type"]
     1223 SETTABLEKS                       R31 R32 K56 ["submenuCategories"]
     1225 SETTABLEKS                       R32 R30 K52 ["source"]
     1227 SETLIST                          R26 R27 4 [1]
     1229 CALL                             R25 1 -1
     1230 FASTCALL                         TABLE_INSERT ; [+2]
     1231 GETIMPORT                        R23 K43 [table.insert]
     1233 CALL                             R23 -1 0
     1234 NEWTABLE                         R25 0 2
     1236 MOVE                             R26 R15
     1237 GETTABLEKS                       R27 R14 K34 ["fromAction"]
     1239 LOADK                            R28 K137 ["InsertService"]
     1240 LOADK                            R29 K138 ["ShowServices"]
     1241 CALL                             R27 2 1
     1242 LOADK                            R28 K139 ["ServicesAndBlank"]
     1243 CALL                             R26 2 1
     1244 MOVE                             R27 R15
     1245 GETTABLEKS                       R28 R14 K34 ["fromAction"]
     1247 LOADK                            R29 K137 ["InsertService"]
     1248 LOADK                            R30 K140 ["HideService"]
     1249 CALL                             R28 2 1
     1250 LOADK                            R29 K141 ["Services"]
     1251 CALL                             R27 2 1
     1252 SETLIST                          R25 R26 2 [1]
     1254 FASTCALL2                        TABLE_INSERT R18 R25 ; [+4]
     1256 MOVE                             R24 R18
     1257 GETIMPORT                        R23 K43 [table.insert]
     1259 CALL                             R23 2 0
     1260 NEWTABLE                         R25 0 1
     1262 MOVE                             R26 R15
     1263 GETTABLEKS                       R27 R14 K34 ["fromAction"]
     1265 LOADK                            R28 K44 ["Common"]
     1266 LOADK                            R29 K142 ["Help"]
     1267 CALL                             R27 2 1
     1268 LOADK                            R28 K49 ["All"]
     1269 CALL                             R26 2 1
     1270 SETLIST                          R25 R26 1 [1]
     1272 FASTCALL2                        TABLE_INSERT R18 R25 ; [+4]
     1274 MOVE                             R24 R18
     1275 GETIMPORT                        R23 K43 [table.insert]
     1277 CALL                             R23 2 0
     1278 RETURN                           R18 1
