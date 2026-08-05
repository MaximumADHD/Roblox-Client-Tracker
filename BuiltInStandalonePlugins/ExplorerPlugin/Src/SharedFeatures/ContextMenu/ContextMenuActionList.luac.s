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
      211 JUMPIFNOT                        R12 ; [+39]
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
      244 DUPTABLE                         R27 K54 [{["key"] = "CopyAs", ["source"]}]
      245 DUPTABLE                         R29 K58 [{["type"] = "submenu", ["submenuCategories"]}]
      246 SETTABLEKS                       R28 R29 K57 ["submenuCategories"]
      248 SETTABLEKS                       R29 R27 K53 ["source"]
      250 JUMP                             ; [+1]
      251 LOADNIL                          R27
      252 MOVE                             R28 R15
      253 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      255 LOADK                            R30 K44 ["Common"]
      256 LOADK                            R31 K59 ["PasteInto"]
      257 CALL                             R29 2 1
      258 LOADK                            R30 K49 ["All"]
      259 CALL                             R28 2 1
      260 MOVE                             R29 R15
      261 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      263 LOADK                            R31 K47 ["BuilderTools"]
      264 LOADK                            R32 K60 ["PasteIntoAtOriginalLocation"]
      265 CALL                             R30 2 1
      266 LOADK                            R31 K49 ["All"]
      267 CALL                             R29 2 1
      268 MOVE                             R30 R15
      269 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      271 LOADK                            R32 K44 ["Common"]
      272 LOADK                            R33 K61 ["Duplicate"]
      273 CALL                             R31 2 1
      274 LOADK                            R32 K37 ["NonServices"]
      275 CALL                             R30 2 1
      276 MOVE                             R31 R15
      277 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      279 LOADK                            R33 K44 ["Common"]
      280 LOADK                            R34 K62 ["Delete"]
      281 CALL                             R32 2 1
      282 LOADK                            R33 K37 ["NonServices"]
      283 CALL                             R31 2 1
      284 MOVE                             R32 R15
      285 GETTABLEKS                       R33 R14 K34 ["fromAction"]
      287 LOADK                            R34 K11 ["Explorer"]
      288 LOADK                            R35 K63 ["Rename"]
      289 CALL                             R33 2 1
      290 LOADK                            R34 K49 ["All"]
      291 LOADNIL                          R35
      292 GETTABLEKS                       R36 R2 K64 ["Data"]
      294 GETTABLEKS                       R36 R36 K8 ["ContextMenu"]
      296 GETTABLEKS                       R36 R36 K65 ["coreItems"]
      298 GETTABLEKS                       R36 R36 K66 ["rename"]
      300 CALL                             R32 4 1
      301 SETLIST                          R24 R25 8 [1]
      303 CALL                             R23 1 -1
      304 FASTCALL                         TABLE_INSERT ; [+2]
      305 GETIMPORT                        R21 K43 [table.insert]
      307 CALL                             R21 -1 0
      308 NEWTABLE                         R23 0 4
      310 MOVE                             R24 R15
      311 GETTABLEKS                       R25 R14 K34 ["fromAction"]
      313 LOADK                            R26 K47 ["BuilderTools"]
      314 LOADK                            R27 K67 ["GroupAsModel"]
      315 CALL                             R25 2 1
      316 LOADK                            R26 K37 ["NonServices"]
      317 CALL                             R24 2 1
      318 MOVE                             R25 R15
      319 GETTABLEKS                       R26 R14 K34 ["fromAction"]
      321 LOADK                            R27 K47 ["BuilderTools"]
      322 LOADK                            R28 K68 ["GroupAsFolder"]
      323 CALL                             R26 2 1
      324 LOADK                            R27 K37 ["NonServices"]
      325 CALL                             R25 2 1
      326 MOVE                             R26 R15
      327 GETTABLEKS                       R27 R14 K34 ["fromAction"]
      329 LOADK                            R28 K47 ["BuilderTools"]
      330 LOADK                            R29 K69 ["Ungroup"]
      331 CALL                             R27 2 1
      332 LOADK                            R28 K37 ["NonServices"]
      333 CALL                             R26 2 1
      334 NEWTABLE                         R28 0 1
      336 NEWTABLE                         R29 0 4
      338 MOVE                             R30 R15
      339 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      341 LOADK                            R32 K47 ["BuilderTools"]
      342 LOADK                            R33 K70 ["UnionSelection"]
      343 CALL                             R31 2 1
      344 LOADK                            R32 K37 ["NonServices"]
      345 CALL                             R30 2 1
      346 MOVE                             R31 R15
      347 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      349 LOADK                            R33 K47 ["BuilderTools"]
      350 LOADK                            R34 K71 ["IntersectSelection"]
      351 CALL                             R32 2 1
      352 LOADK                            R33 K37 ["NonServices"]
      353 CALL                             R31 2 1
      354 MOVE                             R32 R15
      355 GETTABLEKS                       R33 R14 K34 ["fromAction"]
      357 LOADK                            R34 K47 ["BuilderTools"]
      358 LOADK                            R35 K72 ["NegateSelection"]
      359 CALL                             R33 2 1
      360 LOADK                            R34 K37 ["NonServices"]
      361 CALL                             R32 2 1
      362 MOVE                             R33 R15
      363 GETTABLEKS                       R34 R14 K34 ["fromAction"]
      365 LOADK                            R35 K47 ["BuilderTools"]
      366 LOADK                            R36 K73 ["SeparateSelection"]
      367 CALL                             R34 2 1
      368 LOADK                            R35 K37 ["NonServices"]
      369 CALL                             R33 2 1
      370 SETLIST                          R29 R30 4 [1]
      372 SETLIST                          R28 R29 1 [1]
      374 DUPTABLE                         R27 K75 [{["key"] = "solidModeling", ["source"]}]
      375 DUPTABLE                         R29 K58 [{["type"] = "submenu", ["submenuCategories"]}]
      376 SETTABLEKS                       R28 R29 K57 ["submenuCategories"]
      378 SETTABLEKS                       R29 R27 K53 ["source"]
      380 SETLIST                          R23 R24 4 [1]
      382 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      384 MOVE                             R22 R18
      385 GETIMPORT                        R21 K43 [table.insert]
      387 CALL                             R21 2 0
      388 MOVE                             R22 R18
      389 MOVE                             R23 R4
      390 NEWTABLE                         R24 0 5
      392 NEWTABLE                         R26 0 1
      394 NEWTABLE                         R27 0 3
      396 MOVE                             R28 R15
      397 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      399 LOADK                            R30 K47 ["BuilderTools"]
      400 LOADK                            R31 K76 ["InsertPartIntoSelection"]
      401 CALL                             R29 2 1
      402 LOADK                            R30 K49 ["All"]
      403 CALL                             R28 2 1
      404 MOVE                             R29 R15
      405 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      407 LOADK                            R31 K47 ["BuilderTools"]
      408 LOADK                            R32 K77 ["InsertObject"]
      409 CALL                             R30 2 1
      410 LOADK                            R31 K49 ["All"]
      411 CALL                             R29 2 1
      412 MOVE                             R30 R15
      413 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      415 LOADK                            R32 K47 ["BuilderTools"]
      416 LOADK                            R33 K78 ["InsertFromFile"]
      417 CALL                             R31 2 1
      418 LOADK                            R32 K49 ["All"]
      419 CALL                             R30 2 1
      420 SETLIST                          R27 R28 3 [1]
      422 SETLIST                          R26 R27 1 [1]
      424 DUPTABLE                         R25 K79 [{["key"] = "insert", ["source"]}]
      425 DUPTABLE                         R27 K58 [{["type"] = "submenu", ["submenuCategories"]}]
      426 SETTABLEKS                       R26 R27 K57 ["submenuCategories"]
      428 SETTABLEKS                       R27 R25 K53 ["source"]
      430 MOVE                             R27 R4
      431 NEWTABLE                         R28 0 1
      433 NEWTABLE                         R29 0 4
      435 MOVE                             R30 R15
      436 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      438 LOADK                            R32 K44 ["Common"]
      439 LOADK                            R33 K80 ["SelectParents"]
      440 CALL                             R31 2 1
      441 LOADK                            R32 K37 ["NonServices"]
      442 LOADNIL                          R33
      443 CALL                             R30 3 1
      444 MOVE                             R31 R15
      445 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      447 LOADK                            R33 K44 ["Common"]
      448 LOADK                            R34 K81 ["SelectChildren"]
      449 CALL                             R32 2 1
      450 LOADK                            R33 K49 ["All"]
      451 LOADNIL                          R34
      452 CALL                             R31 3 1
      453 MOVE                             R32 R15
      454 GETTABLEKS                       R33 R14 K34 ["fromAction"]
      456 LOADK                            R34 K11 ["Explorer"]
      457 LOADK                            R35 K82 ["ExpandAll"]
      458 CALL                             R33 2 1
      459 LOADK                            R34 K49 ["All"]
      460 LOADNIL                          R35
      461 GETTABLEKS                       R36 R2 K64 ["Data"]
      463 GETTABLEKS                       R36 R36 K8 ["ContextMenu"]
      465 GETTABLEKS                       R36 R36 K65 ["coreItems"]
      467 GETTABLEKS                       R36 R36 K83 ["expandAll"]
      469 CALL                             R32 4 1
      470 MOVE                             R33 R15
      471 GETTABLEKS                       R34 R14 K34 ["fromAction"]
      473 LOADK                            R35 K11 ["Explorer"]
      474 LOADK                            R36 K84 ["CollapseAll"]
      475 CALL                             R34 2 1
      476 LOADK                            R35 K49 ["All"]
      477 LOADNIL                          R36
      478 GETTABLEKS                       R37 R2 K64 ["Data"]
      480 GETTABLEKS                       R37 R37 K8 ["ContextMenu"]
      482 GETTABLEKS                       R37 R37 K65 ["coreItems"]
      484 GETTABLEKS                       R37 R37 K85 ["collapseAll"]
      486 CALL                             R33 4 1
      487 SETLIST                          R29 R30 4 [1]
      489 SETLIST                          R28 R29 1 [1]
      491 CALL                             R27 1 1
      492 DUPTABLE                         R26 K87 [{["key"] = "hierarchy", ["source"]}]
      493 DUPTABLE                         R28 K58 [{["type"] = "submenu", ["submenuCategories"]}]
      494 SETTABLEKS                       R27 R28 K57 ["submenuCategories"]
      496 SETTABLEKS                       R28 R26 K53 ["source"]
      498 MOVE                             R27 R15
      499 GETTABLEKS                       R28 R14 K34 ["fromAction"]
      501 LOADK                            R29 K47 ["BuilderTools"]
      502 LOADK                            R30 K88 ["ZoomExtents"]
      503 CALL                             R28 2 1
      504 LOADK                            R29 K37 ["NonServices"]
      505 MOVE                             R30 R19
      506 CALL                             R27 3 1
      507 MOVE                             R28 R15
      508 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      510 LOADK                            R30 K47 ["BuilderTools"]
      511 LOADK                            R31 K89 ["ShowOrientationIndicator"]
      512 CALL                             R29 2 1
      513 LOADK                            R30 K37 ["NonServices"]
      514 CALL                             R28 2 1
      515 MOVE                             R29 R15
      516 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      518 LOADK                            R31 K35 ["ScriptTools"]
      519 LOADK                            R32 K90 ["ToggleScripts"]
      520 CALL                             R30 2 1
      521 LOADK                            R31 K37 ["NonServices"]
      522 CALL                             R29 2 1
      523 SETLIST                          R24 R25 5 [1]
      525 CALL                             R23 1 -1
      526 FASTCALL                         TABLE_INSERT ; [+2]
      527 GETIMPORT                        R21 K43 [table.insert]
      529 CALL                             R21 -1 0
      530 NEWTABLE                         R23 0 4
      532 MOVE                             R24 R15
      533 GETTABLEKS                       R25 R14 K34 ["fromAction"]
      535 LOADK                            R26 K91 ["PluginDebugging"]
      536 LOADK                            R27 K92 ["SaveAndReloadDebuggablePlugin"]
      537 CALL                             R25 2 1
      538 LOADK                            R26 K49 ["All"]
      539 CALL                             R24 2 1
      540 MOVE                             R25 R15
      541 GETTABLEKS                       R26 R14 K34 ["fromAction"]
      543 LOADK                            R27 K91 ["PluginDebugging"]
      544 LOADK                            R28 K93 ["ReloadDebuggablePlugin"]
      545 CALL                             R26 2 1
      546 LOADK                            R27 K49 ["All"]
      547 CALL                             R25 2 1
      548 MOVE                             R26 R15
      549 GETTABLEKS                       R27 R14 K34 ["fromAction"]
      551 LOADK                            R28 K91 ["PluginDebugging"]
      552 LOADK                            R29 K94 ["SaveAndReloadAllDebuggablePlugins"]
      553 CALL                             R27 2 1
      554 LOADK                            R28 K49 ["All"]
      555 MOVE                             R29 R20
      556 CALL                             R26 3 1
      557 MOVE                             R27 R15
      558 GETTABLEKS                       R28 R14 K34 ["fromAction"]
      560 LOADK                            R29 K91 ["PluginDebugging"]
      561 LOADK                            R30 K95 ["SaveBuildAndReloadDebuggablePlugin"]
      562 CALL                             R28 2 1
      563 LOADK                            R29 K49 ["All"]
      564 CALL                             R27 2 1
      565 SETLIST                          R23 R24 4 [1]
      567 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      569 MOVE                             R22 R18
      570 GETIMPORT                        R21 K43 [table.insert]
      572 CALL                             R21 2 0
      573 MOVE                             R21 R7
      574 CALL                             R21 0 1
      575 JUMPIFNOT                        R21 ; [+154]
      576 JUMPIFNOT                        R13 ; [+65]
      577 NEWTABLE                         R23 0 1
      579 NEWTABLE                         R25 0 1
      581 NEWTABLE                         R26 0 5
      583 MOVE                             R27 R15
      584 GETTABLEKS                       R28 R14 K34 ["fromAction"]
      586 LOADK                            R29 K38 ["FileSync"]
      587 LOADK                            R30 K96 ["StopScriptSync"]
      588 CALL                             R28 2 1
      589 LOADK                            R29 K49 ["All"]
      590 CALL                             R27 2 1
      591 MOVE                             R28 R15
      592 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      594 LOADK                            R30 K38 ["FileSync"]
      595 LOADK                            R31 K97 ["StartSync"]
      596 CALL                             R29 2 1
      597 LOADK                            R30 K49 ["All"]
      598 CALL                             R28 2 1
      599 MOVE                             R29 R15
      600 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      602 LOADK                            R31 K38 ["FileSync"]
      603 LOADK                            R32 K98 ["ResumeScriptSync"]
      604 CALL                             R30 2 1
      605 LOADK                            R31 K49 ["All"]
      606 CALL                             R29 2 1
      607 MOVE                             R30 R15
      608 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      610 LOADK                            R32 K38 ["FileSync"]
      611 LOADK                            R33 K99 ["ShowInFolder"]
      612 CALL                             R31 2 1
      613 LOADK                            R32 K49 ["All"]
      614 CALL                             R30 2 1
      615 MOVE                             R31 R15
      616 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      618 LOADK                            R33 K38 ["FileSync"]
      619 LOADK                            R34 K100 ["SelectSyncingRoot"]
      620 CALL                             R32 2 1
      621 LOADK                            R33 K49 ["All"]
      622 CALL                             R31 2 1
      623 SETLIST                          R26 R27 5 [1]
      625 SETLIST                          R25 R26 1 [1]
      627 DUPTABLE                         R24 K102 [{["key"] = "scriptSync", ["source"]}]
      628 DUPTABLE                         R26 K58 [{["type"] = "submenu", ["submenuCategories"]}]
      629 SETTABLEKS                       R25 R26 K57 ["submenuCategories"]
      631 SETTABLEKS                       R26 R24 K53 ["source"]
      633 SETLIST                          R23 R24 1 [1]
      635 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      637 MOVE                             R22 R18
      638 GETIMPORT                        R21 K43 [table.insert]
      640 CALL                             R21 2 0
      641 JUMP                             ; [+88]
      642 NEWTABLE                         R23 0 1
      644 NEWTABLE                         R25 0 1
      646 NEWTABLE                         R26 0 8
      648 MOVE                             R27 R15
      649 GETTABLEKS                       R28 R14 K34 ["fromAction"]
      651 LOADK                            R29 K38 ["FileSync"]
      652 LOADK                            R30 K96 ["StopScriptSync"]
      653 CALL                             R28 2 1
      654 LOADK                            R29 K49 ["All"]
      655 CALL                             R27 2 1
      656 MOVE                             R28 R15
      657 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      659 LOADK                            R30 K38 ["FileSync"]
      660 LOADK                            R31 K103 ["StartSyncToNewFile"]
      661 CALL                             R29 2 1
      662 LOADK                            R30 K37 ["NonServices"]
      663 CALL                             R28 2 1
      664 MOVE                             R29 R15
      665 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      667 LOADK                            R31 K38 ["FileSync"]
      668 LOADK                            R32 K104 ["StartSyncToExistingFile"]
      669 CALL                             R30 2 1
      670 LOADK                            R31 K37 ["NonServices"]
      671 CALL                             R29 2 1
      672 MOVE                             R30 R15
      673 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      675 LOADK                            R32 K38 ["FileSync"]
      676 LOADK                            R33 K105 ["StartSyncSelectedInstancesTo"]
      677 CALL                             R31 2 1
      678 LOADK                            R32 K49 ["All"]
      679 CALL                             R30 2 1
      680 MOVE                             R31 R15
      681 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      683 LOADK                            R33 K38 ["FileSync"]
      684 LOADK                            R34 K106 ["StartSyncToDirectory"]
      685 CALL                             R32 2 1
      686 LOADK                            R33 K49 ["All"]
      687 CALL                             R31 2 1
      688 MOVE                             R32 R15
      689 GETTABLEKS                       R33 R14 K34 ["fromAction"]
      691 LOADK                            R34 K38 ["FileSync"]
      692 LOADK                            R35 K98 ["ResumeScriptSync"]
      693 CALL                             R33 2 1
      694 LOADK                            R34 K49 ["All"]
      695 CALL                             R32 2 1
      696 MOVE                             R33 R15
      697 GETTABLEKS                       R34 R14 K34 ["fromAction"]
      699 LOADK                            R35 K38 ["FileSync"]
      700 LOADK                            R36 K99 ["ShowInFolder"]
      701 CALL                             R34 2 1
      702 LOADK                            R35 K49 ["All"]
      703 CALL                             R33 2 1
      704 MOVE                             R34 R15
      705 GETTABLEKS                       R35 R14 K34 ["fromAction"]
      707 LOADK                            R36 K38 ["FileSync"]
      708 LOADK                            R37 K100 ["SelectSyncingRoot"]
      709 CALL                             R35 2 1
      710 LOADK                            R36 K49 ["All"]
      711 CALL                             R34 2 1
      712 SETLIST                          R26 R27 8 [1]
      714 SETLIST                          R25 R26 1 [1]
      716 DUPTABLE                         R24 K102 [{["key"] = "scriptSync", ["source"]}]
      717 DUPTABLE                         R26 K58 [{["type"] = "submenu", ["submenuCategories"]}]
      718 SETTABLEKS                       R25 R26 K57 ["submenuCategories"]
      720 SETTABLEKS                       R26 R24 K53 ["source"]
      722 SETLIST                          R23 R24 1 [1]
      724 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      726 MOVE                             R22 R18
      727 GETIMPORT                        R21 K43 [table.insert]
      729 CALL                             R21 2 0
      730 MOVE                             R21 R8
      731 CALL                             R21 0 1
      732 JUMPIFNOT                        R21 ; [+169]
      733 MOVE                             R21 R9
      734 CALL                             R21 0 1
      735 JUMPIFNOT                        R21 ; [+85]
      736 NEWTABLE                         R23 0 1
      738 NEWTABLE                         R25 0 4
      740 NEWTABLE                         R26 0 2
      742 MOVE                             R27 R15
      743 GETTABLEKS                       R28 R14 K34 ["fromAction"]
      745 LOADK                            R29 K107 ["PackageTools"]
      746 LOADK                            R30 K108 ["PublishPackage"]
      747 CALL                             R28 2 1
      748 LOADK                            R29 K37 ["NonServices"]
      749 CALL                             R27 2 1
      750 MOVE                             R28 R15
      751 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      753 LOADK                            R30 K107 ["PackageTools"]
      754 LOADK                            R31 K109 ["GetLatestPackage"]
      755 CALL                             R29 2 1
      756 LOADK                            R30 K37 ["NonServices"]
      757 CALL                             R28 2 1
      758 SETLIST                          R26 R27 2 [1]
      760 NEWTABLE                         R27 0 2
      762 MOVE                             R28 R15
      763 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      765 LOADK                            R30 K107 ["PackageTools"]
      766 LOADK                            R31 K110 ["ShowPackagesDiff"]
      767 CALL                             R29 2 1
      768 LOADK                            R30 K37 ["NonServices"]
      769 CALL                             R28 2 1
      770 MOVE                             R29 R15
      771 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      773 LOADK                            R31 K107 ["PackageTools"]
      774 LOADK                            R32 K111 ["PackageDetails"]
      775 CALL                             R30 2 1
      776 LOADK                            R31 K37 ["NonServices"]
      777 CALL                             R29 2 1
      778 SETLIST                          R27 R28 2 [1]
      780 NEWTABLE                         R28 0 1
      782 MOVE                             R29 R15
      783 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      785 LOADK                            R31 K107 ["PackageTools"]
      786 LOADK                            R32 K112 ["MassUpdate"]
      787 CALL                             R30 2 1
      788 LOADK                            R31 K37 ["NonServices"]
      789 CALL                             R29 2 1
      790 SETLIST                          R28 R29 1 [1]
      792 NEWTABLE                         R29 0 1
      794 MOVE                             R30 R15
      795 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      797 LOADK                            R32 K107 ["PackageTools"]
      798 LOADK                            R33 K113 ["UndoPackageChanges"]
      799 CALL                             R31 2 1
      800 LOADK                            R32 K37 ["NonServices"]
      801 CALL                             R30 2 1
      802 SETLIST                          R29 R30 1 [1]
      804 SETLIST                          R25 R26 4 [1]
      806 DUPTABLE                         R24 K115 [{["key"] = "package", ["source"]}]
      807 DUPTABLE                         R26 K58 [{["type"] = "submenu", ["submenuCategories"]}]
      808 SETTABLEKS                       R25 R26 K57 ["submenuCategories"]
      810 SETTABLEKS                       R26 R24 K53 ["source"]
      812 SETLIST                          R23 R24 1 [1]
      814 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      816 MOVE                             R22 R18
      817 GETIMPORT                        R21 K43 [table.insert]
      819 CALL                             R21 2 0
      820 JUMP                             ; [+137]
      821 NEWTABLE                         R23 0 4
      823 MOVE                             R24 R15
      824 GETTABLEKS                       R25 R14 K34 ["fromAction"]
      826 LOADK                            R26 K107 ["PackageTools"]
      827 LOADK                            R27 K108 ["PublishPackage"]
      828 CALL                             R25 2 1
      829 LOADK                            R26 K37 ["NonServices"]
      830 CALL                             R24 2 1
      831 MOVE                             R25 R15
      832 GETTABLEKS                       R26 R14 K34 ["fromAction"]
      834 LOADK                            R27 K107 ["PackageTools"]
      835 LOADK                            R28 K113 ["UndoPackageChanges"]
      836 CALL                             R26 2 1
      837 LOADK                            R27 K37 ["NonServices"]
      838 CALL                             R25 2 1
      839 MOVE                             R26 R15
      840 GETTABLEKS                       R27 R14 K34 ["fromAction"]
      842 LOADK                            R28 K107 ["PackageTools"]
      843 LOADK                            R29 K109 ["GetLatestPackage"]
      844 CALL                             R27 2 1
      845 LOADK                            R28 K37 ["NonServices"]
      846 CALL                             R26 2 1
      847 NEWTABLE                         R28 0 1
      849 NEWTABLE                         R29 0 4
      851 MOVE                             R30 R15
      852 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      854 LOADK                            R32 K107 ["PackageTools"]
      855 LOADK                            R33 K116 ["DiffPackageAgainstLatest"]
      856 CALL                             R31 2 1
      857 LOADK                            R32 K37 ["NonServices"]
      858 CALL                             R30 2 1
      859 MOVE                             R31 R15
      860 GETTABLEKS                       R32 R14 K34 ["fromAction"]
      862 LOADK                            R33 K107 ["PackageTools"]
      863 LOADK                            R34 K112 ["MassUpdate"]
      864 CALL                             R32 2 1
      865 LOADK                            R33 K37 ["NonServices"]
      866 CALL                             R31 2 1
      867 MOVE                             R32 R15
      868 GETTABLEKS                       R33 R14 K34 ["fromAction"]
      870 LOADK                            R34 K107 ["PackageTools"]
      871 LOADK                            R35 K110 ["ShowPackagesDiff"]
      872 CALL                             R33 2 1
      873 LOADK                            R34 K37 ["NonServices"]
      874 CALL                             R32 2 1
      875 MOVE                             R33 R15
      876 GETTABLEKS                       R34 R14 K34 ["fromAction"]
      878 LOADK                            R35 K107 ["PackageTools"]
      879 LOADK                            R36 K111 ["PackageDetails"]
      880 CALL                             R34 2 1
      881 LOADK                            R35 K37 ["NonServices"]
      882 CALL                             R33 2 1
      883 SETLIST                          R29 R30 4 [1]
      885 SETLIST                          R28 R29 1 [1]
      887 DUPTABLE                         R27 K118 [{["key"] = "morePackageOptions", ["source"]}]
      888 DUPTABLE                         R29 K58 [{["type"] = "submenu", ["submenuCategories"]}]
      889 SETTABLEKS                       R28 R29 K57 ["submenuCategories"]
      891 SETTABLEKS                       R29 R27 K53 ["source"]
      893 SETLIST                          R23 R24 4 [1]
      895 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      897 MOVE                             R22 R18
      898 GETIMPORT                        R21 K43 [table.insert]
      900 CALL                             R21 2 0
      901 JUMP                             ; [+56]
      902 NEWTABLE                         R23 0 2
      904 MOVE                             R24 R15
      905 GETTABLEKS                       R25 R14 K34 ["fromAction"]
      907 LOADK                            R26 K107 ["PackageTools"]
      908 LOADK                            R27 K108 ["PublishPackage"]
      909 CALL                             R25 2 1
      910 LOADK                            R26 K37 ["NonServices"]
      911 CALL                             R24 2 1
      912 NEWTABLE                         R26 0 1
      914 NEWTABLE                         R27 0 3
      916 MOVE                             R28 R15
      917 GETTABLEKS                       R29 R14 K34 ["fromAction"]
      919 LOADK                            R30 K107 ["PackageTools"]
      920 LOADK                            R31 K112 ["MassUpdate"]
      921 CALL                             R29 2 1
      922 LOADK                            R30 K37 ["NonServices"]
      923 CALL                             R28 2 1
      924 MOVE                             R29 R15
      925 GETTABLEKS                       R30 R14 K34 ["fromAction"]
      927 LOADK                            R31 K107 ["PackageTools"]
      928 LOADK                            R32 K110 ["ShowPackagesDiff"]
      929 CALL                             R30 2 1
      930 LOADK                            R31 K37 ["NonServices"]
      931 CALL                             R29 2 1
      932 MOVE                             R30 R15
      933 GETTABLEKS                       R31 R14 K34 ["fromAction"]
      935 LOADK                            R32 K107 ["PackageTools"]
      936 LOADK                            R33 K111 ["PackageDetails"]
      937 CALL                             R31 2 1
      938 LOADK                            R32 K37 ["NonServices"]
      939 CALL                             R30 2 1
      940 SETLIST                          R27 R28 3 [1]
      942 SETLIST                          R26 R27 1 [1]
      944 DUPTABLE                         R25 K118 [{["key"] = "morePackageOptions", ["source"]}]
      945 DUPTABLE                         R27 K58 [{["type"] = "submenu", ["submenuCategories"]}]
      946 SETTABLEKS                       R26 R27 K57 ["submenuCategories"]
      948 SETTABLEKS                       R27 R25 K53 ["source"]
      950 SETLIST                          R23 R24 2 [1]
      952 FASTCALL2                        TABLE_INSERT R18 R23 ; [+4]
      954 MOVE                             R22 R18
      955 GETIMPORT                        R21 K43 [table.insert]
      957 CALL                             R21 2 0
      958 GETIMPORT                        R21 K120 [xpcall]
      960 DUPCLOSURE                       R22 K121 [PROTO_5]
      961 CAPTURE                          VAL R17
      962 DUPCLOSURE                       R23 K122 [PROTO_6]
      963 CAPTURE                          VAL R17
      964 CALL                             R21 2 2
      965 MOVE                             R23 R6
      966 CALL                             R23 0 1
      967 JUMPIFNOT                        R23 ; [+101]
      968 GETIMPORT                        R23 K5 [require]
      970 GETTABLEKS                       R24 R0 K10 ["Packages"]
      972 GETTABLEKS                       R24 R24 K123 ["SharedPluginConstants"]
      974 CALL                             R23 1 1
      975 GETTABLEKS                       R24 R23 K124 ["REIMPORT"]
      977 GETTABLEKS                       R24 R24 K125 ["ACTION_ID"]
      979 GETTABLEKS                       R25 R23 K124 ["REIMPORT"]
      981 GETTABLEKS                       R25 R25 K126 ["ACTION_EVENTS"]
      983 NEWTABLE                         R28 0 1
      985 NEWTABLE                         R30 0 1
      987 MOVE                             R31 R4
      988 NEWTABLE                         R32 0 5
      990 MOVE                             R33 R15
      991 GETTABLEKS                       R35 R25 K124 ["REIMPORT"]
      993 GETTABLEKS                       R36 R14 K34 ["fromAction"]
      995 MOVE                             R37 R24
      996 MOVE                             R38 R35
      997 CALL                             R36 2 1
      998 MOVE                             R34 R36
      999 LOADK                            R35 K37 ["NonServices"]
     1000 CALL                             R33 2 1
     1001 MOVE                             R34 R15
     1002 GETTABLEKS                       R36 R25 K127 ["REIMPORT_RELATIVE_TO_THIS"]
     1004 GETTABLEKS                       R37 R14 K34 ["fromAction"]
     1006 MOVE                             R38 R24
     1007 MOVE                             R39 R36
     1008 CALL                             R37 2 1
     1009 MOVE                             R35 R37
     1010 LOADK                            R36 K37 ["NonServices"]
     1011 CALL                             R34 2 1
     1012 MOVE                             R35 R15
     1013 GETTABLEKS                       R37 R25 K128 ["CONFIGURE"]
     1015 GETTABLEKS                       R38 R14 K34 ["fromAction"]
     1017 MOVE                             R39 R24
     1018 MOVE                             R40 R37
     1019 CALL                             R38 2 1
     1020 MOVE                             R36 R38
     1021 LOADK                            R37 K37 ["NonServices"]
     1022 CALL                             R35 2 1
     1023 MOVE                             R36 R15
     1024 GETTABLEKS                       R38 R25 K129 ["CLEAR_REIMPORT_CONFIG"]
     1026 GETTABLEKS                       R39 R14 K34 ["fromAction"]
     1028 MOVE                             R40 R24
     1029 MOVE                             R41 R38
     1030 CALL                             R39 2 1
     1031 MOVE                             R37 R39
     1032 LOADK                            R38 K37 ["NonServices"]
     1033 CALL                             R36 2 1
     1034 MOVE                             R38 R10
     1035 CALL                             R38 0 1
     1036 JUMPIFNOT                        R38 ; [+12]
     1037 MOVE                             R37 R15
     1038 GETTABLEKS                       R39 R25 K130 ["WATCH_INSTANCE_FILE"]
     1040 GETTABLEKS                       R40 R14 K34 ["fromAction"]
     1042 MOVE                             R41 R24
     1043 MOVE                             R42 R39
     1044 CALL                             R40 2 1
     1045 MOVE                             R38 R40
     1046 LOADK                            R39 K37 ["NonServices"]
     1047 CALL                             R37 2 1
     1048 JUMP                             ; [+1]
     1049 LOADNIL                          R37
     1050 SETLIST                          R32 R33 5 [1]
     1052 CALL                             R31 1 -1
     1053 SETLIST                          R30 R31 -1 [1]
     1055 DUPTABLE                         R29 K132 [{["key"] = "Reimport", ["source"]}]
     1056 DUPTABLE                         R31 K58 [{["type"] = "submenu", ["submenuCategories"]}]
     1057 SETTABLEKS                       R30 R31 K57 ["submenuCategories"]
     1059 SETTABLEKS                       R31 R29 K53 ["source"]
     1061 SETLIST                          R28 R29 1 [1]
     1063 FASTCALL2                        TABLE_INSERT R18 R28 ; [+4]
     1065 MOVE                             R27 R18
     1066 GETIMPORT                        R26 K43 [table.insert]
     1068 CALL                             R26 2 0
     1069 MOVE                             R23 R5
     1070 CALL                             R23 0 1
     1071 JUMPIF                           R23 ; [+86]
     1072 MOVE                             R24 R18
     1073 MOVE                             R25 R4
     1074 NEWTABLE                         R26 0 4
     1076 MOVE                             R27 R15
     1077 GETTABLEKS                       R28 R14 K34 ["fromAction"]
     1079 LOADK                            R29 K133 ["LocalizationTools"]
     1080 LOADK                            R30 K134 ["SaveCsv"]
     1081 CALL                             R28 2 1
     1082 LOADK                            R29 K37 ["NonServices"]
     1083 CALL                             R27 2 1
     1084 MOVE                             R28 R15
     1085 GETTABLEKS                       R29 R14 K34 ["fromAction"]
     1087 LOADK                            R30 K133 ["LocalizationTools"]
     1088 LOADK                            R31 K135 ["LoadCsv"]
     1089 CALL                             R29 2 1
     1090 LOADK                            R30 K37 ["NonServices"]
     1091 CALL                             R28 2 1
     1092 MOVE                             R29 R15
     1093 MOVE                             R30 R22
     1094 LOADK                            R31 K37 ["NonServices"]
     1095 CALL                             R29 2 1
     1096 NEWTABLE                         R31 0 1
     1098 NEWTABLE                         R32 0 5
     1100 MOVE                             R33 R15
     1101 GETTABLEKS                       R34 R14 K34 ["fromAction"]
     1103 LOADK                            R35 K136 ["Export"]
     1104 LOADK                            R36 K137 ["PublishSelectionToRoblox"]
     1105 CALL                             R34 2 1
     1106 LOADK                            R35 K37 ["NonServices"]
     1107 CALL                             R33 2 1
     1108 MOVE                             R34 R15
     1109 GETTABLEKS                       R35 R14 K34 ["fromAction"]
     1111 LOADK                            R36 K136 ["Export"]
     1112 LOADK                            R37 K138 ["SaveSelectionToFile"]
     1113 CALL                             R35 2 1
     1114 LOADK                            R36 K49 ["All"]
     1115 CALL                             R34 2 1
     1116 MOVE                             R35 R15
     1117 GETTABLEKS                       R36 R14 K34 ["fromAction"]
     1119 LOADK                            R37 K139 ["PluginManagement"]
     1120 LOADK                            R38 K140 ["SaveAsLocalPlugin"]
     1121 CALL                             R36 2 1
     1122 LOADK                            R37 K49 ["All"]
     1123 CALL                             R35 2 1
     1124 MOVE                             R36 R15
     1125 GETTABLEKS                       R37 R14 K34 ["fromAction"]
     1127 LOADK                            R38 K139 ["PluginManagement"]
     1128 LOADK                            R39 K141 ["PublishToRoblox"]
     1129 CALL                             R37 2 1
     1130 LOADK                            R38 K49 ["All"]
     1131 CALL                             R36 2 1
     1132 MOVE                             R37 R15
     1133 GETTABLEKS                       R38 R14 K34 ["fromAction"]
     1135 LOADK                            R39 K136 ["Export"]
     1136 LOADK                            R40 K142 ["ExportSelection"]
     1137 CALL                             R38 2 1
     1138 LOADK                            R39 K49 ["All"]
     1139 CALL                             R37 2 1
     1140 SETLIST                          R32 R33 5 [1]
     1142 SETLIST                          R31 R32 1 [1]
     1144 DUPTABLE                         R30 K144 [{["key"] = "saveAndExport", ["source"]}]
     1145 DUPTABLE                         R32 K58 [{["type"] = "submenu", ["submenuCategories"]}]
     1146 SETTABLEKS                       R31 R32 K57 ["submenuCategories"]
     1148 SETTABLEKS                       R32 R30 K53 ["source"]
     1150 SETLIST                          R26 R27 4 [1]
     1152 CALL                             R25 1 -1
     1153 FASTCALL                         TABLE_INSERT ; [+2]
     1154 GETIMPORT                        R23 K43 [table.insert]
     1156 CALL                             R23 -1 0
     1157 JUMP                             ; [+93]
     1158 MOVE                             R24 R18
     1159 MOVE                             R25 R4
     1160 NEWTABLE                         R26 0 4
     1162 MOVE                             R27 R15
     1163 GETTABLEKS                       R28 R14 K34 ["fromAction"]
     1165 LOADK                            R29 K133 ["LocalizationTools"]
     1166 LOADK                            R30 K134 ["SaveCsv"]
     1167 CALL                             R28 2 1
     1168 LOADK                            R29 K37 ["NonServices"]
     1169 CALL                             R27 2 1
     1170 MOVE                             R28 R15
     1171 GETTABLEKS                       R29 R14 K34 ["fromAction"]
     1173 LOADK                            R30 K133 ["LocalizationTools"]
     1174 LOADK                            R31 K135 ["LoadCsv"]
     1175 CALL                             R29 2 1
     1176 LOADK                            R30 K37 ["NonServices"]
     1177 CALL                             R28 2 1
     1178 MOVE                             R29 R15
     1179 MOVE                             R30 R22
     1180 LOADK                            R31 K37 ["NonServices"]
     1181 CALL                             R29 2 1
     1182 NEWTABLE                         R31 0 1
     1184 NEWTABLE                         R32 0 6
     1186 MOVE                             R33 R15
     1187 GETTABLEKS                       R34 R14 K34 ["fromAction"]
     1189 LOADK                            R35 K136 ["Export"]
     1190 LOADK                            R36 K137 ["PublishSelectionToRoblox"]
     1191 CALL                             R34 2 1
     1192 LOADK                            R35 K37 ["NonServices"]
     1193 CALL                             R33 2 1
     1194 MOVE                             R34 R15
     1195 GETTABLEKS                       R35 R14 K34 ["fromAction"]
     1197 LOADK                            R36 K136 ["Export"]
     1198 LOADK                            R37 K138 ["SaveSelectionToFile"]
     1199 CALL                             R35 2 1
     1200 LOADK                            R36 K49 ["All"]
     1201 CALL                             R34 2 1
     1202 MOVE                             R35 R15
     1203 GETTABLEKS                       R36 R14 K34 ["fromAction"]
     1205 LOADK                            R37 K139 ["PluginManagement"]
     1206 LOADK                            R38 K140 ["SaveAsLocalPlugin"]
     1207 CALL                             R36 2 1
     1208 LOADK                            R37 K49 ["All"]
     1209 CALL                             R35 2 1
     1210 MOVE                             R36 R15
     1211 GETTABLEKS                       R37 R14 K34 ["fromAction"]
     1213 LOADK                            R38 K139 ["PluginManagement"]
     1214 LOADK                            R39 K141 ["PublishToRoblox"]
     1215 CALL                             R37 2 1
     1216 LOADK                            R38 K49 ["All"]
     1217 CALL                             R36 2 1
     1218 MOVE                             R37 R15
     1219 GETTABLEKS                       R38 R14 K34 ["fromAction"]
     1221 LOADK                            R39 K136 ["Export"]
     1222 LOADK                            R40 K142 ["ExportSelection"]
     1223 CALL                             R38 2 1
     1224 LOADK                            R39 K49 ["All"]
     1225 CALL                             R37 2 1
     1226 MOVE                             R38 R15
     1227 GETTABLEKS                       R39 R14 K34 ["fromAction"]
     1229 LOADK                            R40 K136 ["Export"]
     1230 LOADK                            R41 K145 ["ExportAsGltf"]
     1231 CALL                             R39 2 1
     1232 LOADK                            R40 K49 ["All"]
     1233 CALL                             R38 2 1
     1234 SETLIST                          R32 R33 6 [1]
     1236 SETLIST                          R31 R32 1 [1]
     1238 DUPTABLE                         R30 K144 [{["key"] = "saveAndExport", ["source"]}]
     1239 DUPTABLE                         R32 K58 [{["type"] = "submenu", ["submenuCategories"]}]
     1240 SETTABLEKS                       R31 R32 K57 ["submenuCategories"]
     1242 SETTABLEKS                       R32 R30 K53 ["source"]
     1244 SETLIST                          R26 R27 4 [1]
     1246 CALL                             R25 1 -1
     1247 FASTCALL                         TABLE_INSERT ; [+2]
     1248 GETIMPORT                        R23 K43 [table.insert]
     1250 CALL                             R23 -1 0
     1251 NEWTABLE                         R25 0 2
     1253 MOVE                             R26 R15
     1254 GETTABLEKS                       R27 R14 K34 ["fromAction"]
     1256 LOADK                            R28 K146 ["InsertService"]
     1257 LOADK                            R29 K147 ["ShowServices"]
     1258 CALL                             R27 2 1
     1259 LOADK                            R28 K148 ["ServicesAndBlank"]
     1260 CALL                             R26 2 1
     1261 MOVE                             R27 R15
     1262 GETTABLEKS                       R28 R14 K34 ["fromAction"]
     1264 LOADK                            R29 K146 ["InsertService"]
     1265 LOADK                            R30 K149 ["HideService"]
     1266 CALL                             R28 2 1
     1267 LOADK                            R29 K150 ["Services"]
     1268 CALL                             R27 2 1
     1269 SETLIST                          R25 R26 2 [1]
     1271 FASTCALL2                        TABLE_INSERT R18 R25 ; [+4]
     1273 MOVE                             R24 R18
     1274 GETIMPORT                        R23 K43 [table.insert]
     1276 CALL                             R23 2 0
     1277 NEWTABLE                         R25 0 1
     1279 MOVE                             R26 R15
     1280 GETTABLEKS                       R27 R14 K34 ["fromAction"]
     1282 LOADK                            R28 K44 ["Common"]
     1283 LOADK                            R29 K151 ["Help"]
     1284 CALL                             R27 2 1
     1285 LOADK                            R28 K49 ["All"]
     1286 CALL                             R26 2 1
     1287 SETLIST                          R25 R26 1 [1]
     1289 FASTCALL2                        TABLE_INSERT R18 R25 ; [+4]
     1291 MOVE                             R24 R18
     1292 GETIMPORT                        R23 K43 [table.insert]
     1294 CALL                             R23 2 0
     1295 RETURN                           R18 1
