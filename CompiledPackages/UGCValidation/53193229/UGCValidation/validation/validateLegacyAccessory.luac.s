PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["instances"]
        2 GETTABLEKS                       R2 R0 K1 ["assetTypeEnum"]
        4 GETTABLEKS                       R3 R0 K2 ["isServer"]
        6 GETTABLEKS                       R4 R0 K3 ["allowUnreviewedAssets"]
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["isRigidAccessoryAllowed"]
       11 MOVE                             R6 R2
       12 CALL                             R5 1 1
       13 JUMPIF                           R5 ; [+23]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K5 ["reportFailure"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K6 ["ErrorType"]
       20 GETTABLEKS                       R6 R6 K7 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
       22 LOADNIL                          R7
       23 MOVE                             R8 R0
       24 CALL                             R5 3 0
       25 LOADB                            R5 0
       26 NEWTABLE                         R6 0 1
       28 GETIMPORT                        R7 K10 [string.format]
       30 LOADK                            R8 K11 ["Asset type '%s' is not a rigid accessory category. It can only be used with layered clothing."]
       31 GETTABLEKS                       R9 R2 K12 ["Name"]
       33 CALL                             R7 2 -1
       34 SETLIST                          R6 R7 -1 [1]
       36 RETURN                           R5 2
       37 GETUPVAL                         R6 2
       38 GETTABLEKS                       R6 R6 K13 ["ASSET_TYPE_INFO"]
       40 GETTABLE                         R5 R6 R2
       41 LOADNIL                          R6
       42 LOADNIL                          R7
       43 GETUPVAL                         R8 3
       44 MOVE                             R9 R1
       45 MOVE                             R10 R0
       46 CALL                             R8 2 2
       47 MOVE                             R6 R8
       48 MOVE                             R7 R9
       49 JUMPIF                           R6 ; [+3]
       50 LOADB                            R8 0
       51 MOVE                             R9 R7
       52 RETURN                           R8 2
       53 GETTABLEN                        R8 R1 1
       54 GETUPVAL                         R9 4
       55 GETTABLEKS                       R10 R5 K14 ["attachmentNames"]
       57 CALL                             R9 1 1
       58 GETUPVAL                         R10 5
       59 MOVE                             R11 R9
       60 MOVE                             R12 R8
       61 MOVE                             R13 R0
       62 CALL                             R10 3 2
       63 MOVE                             R6 R10
       64 MOVE                             R7 R11
       65 JUMPIF                           R6 ; [+3]
       66 LOADB                            R10 0
       67 MOVE                             R11 R7
       68 RETURN                           R10 2
       69 GETUPVAL                         R10 6
       70 CALL                             R10 0 1
       71 JUMPIFNOT                        R10 ; [+12]
       72 GETUPVAL                         R10 7
       73 GETTABLEKS                       R10 R10 K15 ["validate"]
       75 MOVE                             R11 R8
       76 MOVE                             R12 R0
       77 CALL                             R10 2 2
       78 MOVE                             R6 R10
       79 MOVE                             R7 R11
       80 JUMPIF                           R6 ; [+3]
       81 LOADB                            R10 0
       82 MOVE                             R11 R7
       83 RETURN                           R10 2
       84 DUPTABLE                         R10 K18 [{"skipExistenceCheck", "skipOwnershipCheck"}]
       85 GETUPVAL                         R11 8
       86 CALL                             R11 0 1
       87 JUMPIFNOT                        R11 ; [+2]
       88 GETUPVAL                         R11 9
       89 CALL                             R11 0 1
       90 SETTABLEKS                       R11 R10 K16 ["skipExistenceCheck"]
       92 GETUPVAL                         R11 8
       93 CALL                             R11 0 1
       94 JUMPIFNOT                        R11 ; [+2]
       95 GETUPVAL                         R11 9
       96 CALL                             R11 0 1
       97 SETTABLEKS                       R11 R10 K17 ["skipOwnershipCheck"]
       99 GETUPVAL                         R11 10
      100 MOVE                             R12 R8
      101 MOVE                             R13 R0
      102 MOVE                             R14 R10
      103 CALL                             R11 3 2
      104 MOVE                             R6 R11
      105 MOVE                             R7 R12
      106 JUMPIF                           R6 ; [+3]
      107 LOADB                            R11 0
      108 MOVE                             R12 R7
      109 RETURN                           R11 2
      110 LOADK                            R12 K19 ["Handle"]
      111 NAMECALL                         R10 R8 K20 ["FindFirstChild"]
      113 CALL                             R10 2 1
      114 LOADK                            R13 K21 ["SpecialMesh"]
      115 NAMECALL                         R11 R10 K22 ["FindFirstChildOfClass"]
      117 CALL                             R11 2 1
      118 DUPTABLE                         R12 K27 [{"fullName", "fieldName", "contentId", "context"}]
      119 NAMECALL                         R13 R11 K28 ["GetFullName"]
      121 CALL                             R13 1 1
      122 SETTABLEKS                       R13 R12 K23 ["fullName"]
      124 LOADK                            R13 K29 ["MeshId"]
      125 SETTABLEKS                       R13 R12 K24 ["fieldName"]
      127 GETTABLEKS                       R13 R11 K29 ["MeshId"]
      129 SETTABLEKS                       R13 R12 K25 ["contentId"]
      131 GETTABLEKS                       R13 R8 K12 ["Name"]
      133 SETTABLEKS                       R13 R12 K26 ["context"]
      135 GETTABLEKS                       R13 R11 K30 ["Scale"]
      137 GETUPVAL                         R14 11
      138 MOVE                             R15 R10
      139 GETTABLEKS                       R16 R5 K14 ["attachmentNames"]
      141 CALL                             R14 2 1
      142 GETTABLEKS                       R17 R5 K31 ["bounds"]
      144 GETTABLEKS                       R18 R14 K12 ["Name"]
      146 GETTABLE                         R16 R17 R18
      147 LOADK                            R18 K32 ["Could not find bounds for "]
      148 GETTABLEKS                       R19 R14 K12 ["Name"]
      150 CONCAT                           R17 R18 R19
      151 FASTCALL2                        ASSERT R16 R17 ; [+3]
      153 GETIMPORT                        R15 K34 [assert]
      155 CALL                             R15 2 1
      156 LOADB                            R16 1
      157 NEWTABLE                         R7 0 0
      159 LOADB                            R17 0
      160 GETTABLEKS                       R18 R12 K25 ["contentId"]
      162 JUMPIFEQKNIL                     R18 ; [+7]
      164 GETTABLEKS                       R18 R12 K25 ["contentId"]
      166 JUMPIFNOTEQKS                    R18 K35 [""] ; [+2]
      168 LOADB                            R17 0 +1
      169 LOADB                            R17 1
      170 GETUPVAL                         R18 12
      171 MOVE                             R19 R11
      172 LOADK                            R20 K29 ["MeshId"]
      173 MOVE                             R21 R0
      174 CALL                             R18 3 2
      175 JUMPIF                           R18 ; [+34]
      176 GETTABLEKS                       R20 R12 K25 ["contentId"]
      178 JUMPIF                           R20 ; [+19]
      179 LOADB                            R17 0
      180 LOADB                            R16 0
      181 NEWTABLE                         R22 0 1
      183 GETIMPORT                        R23 K10 [string.format]
      185 LOADK                            R24 K36 ["Missing meshId on legacy accessory '%s'. Make sure you are using a valid meshId and try again.\n"]
      186 GETTABLEKS                       R25 R8 K12 ["Name"]
      188 CALL                             R23 2 -1
      189 SETLIST                          R22 R23 -1 [1]
      191 FASTCALL2                        TABLE_INSERT R7 R22 ; [+4]
      193 MOVE                             R21 R7
      194 GETIMPORT                        R20 K39 [table.insert]
      196 CALL                             R20 2 0
      197 JUMP                             ; [+12]
      198 LOADB                            R20 0
      199 NEWTABLE                         R21 0 1
      201 GETIMPORT                        R22 K10 [string.format]
      203 LOADK                            R23 K40 ["Failed to load mesh for legacy accessory '%s'. Make sure mesh exists and try again."]
      204 GETTABLEKS                       R24 R8 K12 ["Name"]
      206 CALL                             R22 2 -1
      207 SETLIST                          R21 R22 -1 [1]
      209 RETURN                           R20 2
      210 SETTABLEKS                       R19 R12 K41 ["editableMesh"]
      212 LOADB                            R17 1
      213 DUPTABLE                         R20 K42 [{"fullName", "fieldName", "contentId"}]
      214 NAMECALL                         R21 R11 K28 ["GetFullName"]
      216 CALL                             R21 1 1
      217 SETTABLEKS                       R21 R20 K23 ["fullName"]
      219 LOADK                            R21 K43 ["TextureId"]
      220 SETTABLEKS                       R21 R20 K24 ["fieldName"]
      222 GETTABLEKS                       R21 R11 K43 ["TextureId"]
      224 SETTABLEKS                       R21 R20 K25 ["contentId"]
      226 GETUPVAL                         R21 13
      227 MOVE                             R22 R11
      228 LOADK                            R23 K43 ["TextureId"]
      229 MOVE                             R24 R0
      230 CALL                             R21 3 2
      231 JUMPIF                           R21 ; [+12]
      232 LOADB                            R23 0
      233 NEWTABLE                         R24 0 1
      235 GETIMPORT                        R25 K10 [string.format]
      237 LOADK                            R26 K44 ["Failed to load texture for legacy accessory '%s'. Make sure texture exists and try again."]
      238 GETTABLEKS                       R27 R8 K12 ["Name"]
      240 CALL                             R25 2 -1
      241 SETLIST                          R24 R25 -1 [1]
      243 RETURN                           R23 2
      244 SETTABLEKS                       R22 R20 K45 ["editableImage"]
      246 NEWTABLE                         R23 0 0
      248 GETUPVAL                         R24 8
      249 CALL                             R24 0 1
      250 JUMPIFNOT                        R24 ; [+3]
      251 GETUPVAL                         R24 9
      252 CALL                             R24 0 1
      253 JUMPIF                           R24 ; [+37]
      254 GETUPVAL                         R24 14
      255 MOVE                             R25 R8
      256 MOVE                             R26 R0
      257 CALL                             R24 2 2
      258 MOVE                             R6 R24
      259 MOVE                             R23 R25
      260 JUMPIF                           R6 ; [+11]
      261 MOVE                             R25 R7
      262 GETIMPORT                        R26 K47 [table.concat]
      264 MOVE                             R27 R23
      265 LOADK                            R28 K48 ["\n"]
      266 CALL                             R26 2 -1
      267 FASTCALL                         TABLE_INSERT ; [+2]
      268 GETIMPORT                        R24 K39 [table.insert]
      270 CALL                             R24 -1 0
      271 LOADB                            R16 0
      272 GETUPVAL                         R24 15
      273 MOVE                             R25 R8
      274 LOADNIL                          R26
      275 MOVE                             R27 R0
      276 CALL                             R24 3 2
      277 MOVE                             R6 R24
      278 MOVE                             R23 R25
      279 JUMPIF                           R6 ; [+11]
      280 MOVE                             R25 R7
      281 GETIMPORT                        R26 K47 [table.concat]
      283 MOVE                             R27 R23
      284 LOADK                            R28 K48 ["\n"]
      285 CALL                             R26 2 -1
      286 FASTCALL                         TABLE_INSERT ; [+2]
      287 GETIMPORT                        R24 K39 [table.insert]
      289 CALL                             R24 -1 0
      290 LOADB                            R16 0
      291 GETUPVAL                         R24 16
      292 MOVE                             R25 R8
      293 MOVE                             R26 R0
      294 CALL                             R24 2 2
      295 MOVE                             R6 R24
      296 MOVE                             R23 R25
      297 JUMPIF                           R6 ; [+11]
      298 MOVE                             R25 R7
      299 GETIMPORT                        R26 K47 [table.concat]
      301 MOVE                             R27 R23
      302 LOADK                            R28 K48 ["\n"]
      303 CALL                             R26 2 -1
      304 FASTCALL                         TABLE_INSERT ; [+2]
      305 GETIMPORT                        R24 K39 [table.insert]
      307 CALL                             R24 -1 0
      308 LOADB                            R16 0
      309 GETUPVAL                         R24 8
      310 CALL                             R24 0 1
      311 JUMPIFNOT                        R24 ; [+3]
      312 GETUPVAL                         R24 9
      313 CALL                             R24 0 1
      314 JUMPIF                           R24 ; [+18]
      315 GETUPVAL                         R24 17
      316 MOVE                             R25 R8
      317 MOVE                             R26 R0
      318 CALL                             R24 2 2
      319 MOVE                             R6 R24
      320 MOVE                             R23 R25
      321 JUMPIF                           R6 ; [+11]
      322 MOVE                             R25 R7
      323 GETIMPORT                        R26 K47 [table.concat]
      325 MOVE                             R27 R23
      326 LOADK                            R28 K48 ["\n"]
      327 CALL                             R26 2 -1
      328 FASTCALL                         TABLE_INSERT ; [+2]
      329 GETIMPORT                        R24 K39 [table.insert]
      331 CALL                             R24 -1 0
      332 LOADB                            R16 0
      333 GETUPVAL                         R24 18
      334 CALL                             R24 0 1
      335 JUMPIF                           R24 ; [+33]
      336 LOADNIL                          R24
      337 GETUPVAL                         R25 19
      338 CALL                             R25 0 1
      339 JUMPIFNOT                        R25 ; [+9]
      340 GETUPVAL                         R25 20
      341 GETTABLEKS                       R25 R25 K49 ["getTextureLimit"]
      343 MOVE                             R26 R2
      344 MOVE                             R27 R11
      345 GETTABLEKS                       R28 R20 K24 ["fieldName"]
      347 CALL                             R25 3 1
      348 MOVE                             R24 R25
      349 GETUPVAL                         R25 21
      350 MOVE                             R26 R20
      351 LOADNIL                          R27
      352 MOVE                             R28 R0
      353 MOVE                             R29 R24
      354 CALL                             R25 4 2
      355 MOVE                             R6 R25
      356 MOVE                             R23 R26
      357 JUMPIF                           R6 ; [+11]
      358 MOVE                             R26 R7
      359 GETIMPORT                        R27 K47 [table.concat]
      361 MOVE                             R28 R23
      362 LOADK                            R29 K48 ["\n"]
      363 CALL                             R27 2 -1
      364 FASTCALL                         TABLE_INSERT ; [+2]
      365 GETIMPORT                        R25 K39 [table.insert]
      367 CALL                             R25 -1 0
      368 LOADB                            R16 0
      369 LOADK                            R26 K50 ["AvatarPartScaleType"]
      370 NAMECALL                         R24 R10 K20 ["FindFirstChild"]
      372 CALL                             R24 2 1
      373 JUMPIFNOT                        R24 ; [+23]
      374 LOADK                            R27 K51 ["StringValue"]
      375 NAMECALL                         R25 R24 K52 ["IsA"]
      377 CALL                             R25 2 1
      378 JUMPIFNOT                        R25 ; [+18]
      379 GETUPVAL                         R25 22
      380 MOVE                             R26 R24
      381 MOVE                             R27 R0
      382 CALL                             R25 2 2
      383 MOVE                             R6 R25
      384 MOVE                             R23 R26
      385 JUMPIF                           R6 ; [+11]
      386 MOVE                             R26 R7
      387 GETIMPORT                        R27 K47 [table.concat]
      389 MOVE                             R28 R23
      390 LOADK                            R29 K48 ["\n"]
      391 CALL                             R27 2 -1
      392 FASTCALL                         TABLE_INSERT ; [+2]
      393 GETIMPORT                        R25 K39 [table.insert]
      395 CALL                             R25 -1 0
      396 LOADB                            R16 0
      397 GETUPVAL                         R25 23
      398 MOVE                             R26 R8
      399 MOVE                             R27 R10
      400 MOVE                             R28 R12
      401 MOVE                             R29 R13
      402 MOVE                             R30 R0
      403 CALL                             R25 5 2
      404 MOVE                             R6 R25
      405 MOVE                             R23 R26
      406 JUMPIF                           R6 ; [+11]
      407 MOVE                             R26 R7
      408 GETIMPORT                        R27 K47 [table.concat]
      410 MOVE                             R28 R23
      411 LOADK                            R29 K48 ["\n"]
      412 CALL                             R27 2 -1
      413 FASTCALL                         TABLE_INSERT ; [+2]
      414 GETIMPORT                        R25 K39 [table.insert]
      416 CALL                             R25 -1 0
      417 LOADB                            R16 0
      418 GETUPVAL                         R25 8
      419 CALL                             R25 0 1
      420 JUMPIFNOT                        R25 ; [+3]
      421 GETUPVAL                         R25 9
      422 CALL                             R25 0 1
      423 JUMPIF                           R25 ; [+24]
      424 NOT                              R25 R3
      425 JUMPIFNOT                        R4 ; [+1]
      426 LOADB                            R25 0
      427 JUMPIFNOT                        R25 ; [+20]
      428 GETUPVAL                         R26 24
      429 MOVE                             R27 R8
      430 NEWTABLE                         R28 0 0
      432 MOVE                             R29 R0
      433 CALL                             R26 3 2
      434 MOVE                             R6 R26
      435 MOVE                             R23 R27
      436 JUMPIF                           R6 ; [+11]
      437 MOVE                             R27 R7
      438 GETIMPORT                        R28 K47 [table.concat]
      440 MOVE                             R29 R23
      441 LOADK                            R30 K48 ["\n"]
      442 CALL                             R28 2 -1
      443 FASTCALL                         TABLE_INSERT ; [+2]
      444 GETIMPORT                        R26 K39 [table.insert]
      446 CALL                             R26 -1 0
      447 LOADB                            R16 0
      448 JUMPIFNOT                        R17 ; [+165]
      449 GETUPVAL                         R25 25
      450 CALL                             R25 0 1
      451 JUMPIF                           R25 ; [+19]
      452 GETUPVAL                         R25 26
      453 MOVE                             R26 R12
      454 MOVE                             R27 R13
      455 MOVE                             R28 R0
      456 CALL                             R25 3 2
      457 MOVE                             R6 R25
      458 MOVE                             R23 R26
      459 JUMPIF                           R6 ; [+11]
      460 MOVE                             R26 R7
      461 GETIMPORT                        R27 K47 [table.concat]
      463 MOVE                             R28 R23
      464 LOADK                            R29 K48 ["\n"]
      465 CALL                             R27 2 -1
      466 FASTCALL                         TABLE_INSERT ; [+2]
      467 GETIMPORT                        R25 K39 [table.insert]
      469 CALL                             R25 -1 0
      470 LOADB                            R16 0
      471 GETUPVAL                         R25 27
      472 JUMPIFNOT                        R25 ; [+26]
      473 LOADK                            R27 K50 ["AvatarPartScaleType"]
      474 NAMECALL                         R25 R10 K20 ["FindFirstChild"]
      476 CALL                             R25 2 1
      477 JUMPIFNOT                        R25 ; [+21]
      478 GETUPVAL                         R25 28
      479 MOVE                             R26 R10
      480 MOVE                             R27 R14
      481 CALL                             R25 2 1
      482 DUPTABLE                         R26 K55 [{"size", "offset"}]
      483 GETTABLEKS                       R28 R15 K53 ["size"]
      485 DIV                              R27 R28 R25
      486 SETTABLEKS                       R27 R26 K53 ["size"]
      488 GETTABLEKS                       R28 R15 K54 ["offset"]
      490 JUMPIFNOT                        R28 ; [+4]
      491 GETTABLEKS                       R28 R15 K54 ["offset"]
      493 DIV                              R27 R28 R25
      494 JUMP                             ; [+1]
      495 LOADNIL                          R27
      496 SETTABLEKS                       R27 R26 K54 ["offset"]
      498 MOVE                             R15 R26
      499 GETUPVAL                         R25 25
      500 CALL                             R25 0 1
      501 JUMPIF                           R25 ; [+24]
      502 GETUPVAL                         R25 29
      503 MOVE                             R26 R10
      504 MOVE                             R27 R14
      505 MOVE                             R28 R12
      506 MOVE                             R29 R13
      507 MOVE                             R30 R15
      508 GETTABLEKS                       R31 R2 K12 ["Name"]
      510 MOVE                             R32 R0
      511 CALL                             R25 7 2
      512 MOVE                             R6 R25
      513 MOVE                             R23 R26
      514 JUMPIF                           R6 ; [+11]
      515 MOVE                             R26 R7
      516 GETIMPORT                        R27 K47 [table.concat]
      518 MOVE                             R28 R23
      519 LOADK                            R29 K48 ["\n"]
      520 CALL                             R27 2 -1
      521 FASTCALL                         TABLE_INSERT ; [+2]
      522 GETIMPORT                        R25 K39 [table.insert]
      524 CALL                             R25 -1 0
      525 LOADB                            R16 0
      526 GETUPVAL                         R25 25
      527 CALL                             R25 0 1
      528 JUMPIF                           R25 ; [+19]
      529 GETUPVAL                         R25 30
      530 MOVE                             R26 R12
      531 LOADNIL                          R27
      532 MOVE                             R28 R0
      533 CALL                             R25 3 2
      534 MOVE                             R6 R25
      535 MOVE                             R23 R26
      536 JUMPIF                           R6 ; [+11]
      537 MOVE                             R26 R7
      538 GETIMPORT                        R27 K47 [table.concat]
      540 MOVE                             R28 R23
      541 LOADK                            R29 K48 ["\n"]
      542 CALL                             R27 2 -1
      543 FASTCALL                         TABLE_INSERT ; [+2]
      544 GETIMPORT                        R25 K39 [table.insert]
      546 CALL                             R25 -1 0
      547 LOADB                            R16 0
      548 GETUPVAL                         R25 31
      549 CALL                             R25 0 1
      550 JUMPIF                           R25 ; [+19]
      551 GETUPVAL                         R25 32
      552 MOVE                             R26 R12
      553 LOADB                            R27 0
      554 MOVE                             R28 R0
      555 CALL                             R25 3 2
      556 MOVE                             R6 R25
      557 MOVE                             R23 R26
      558 JUMPIF                           R6 ; [+11]
      559 MOVE                             R26 R7
      560 GETIMPORT                        R27 K47 [table.concat]
      562 MOVE                             R28 R23
      563 LOADK                            R29 K48 ["\n"]
      564 CALL                             R27 2 -1
      565 FASTCALL                         TABLE_INSERT ; [+2]
      566 GETIMPORT                        R25 K39 [table.insert]
      568 CALL                             R25 -1 0
      569 LOADB                            R16 0
      570 GETUPVAL                         R25 31
      571 CALL                             R25 0 1
      572 JUMPIF                           R25 ; [+19]
      573 GETUPVAL                         R25 33
      574 MOVE                             R26 R12
      575 MOVE                             R27 R13
      576 MOVE                             R28 R0
      577 CALL                             R25 3 2
      578 MOVE                             R6 R25
      579 MOVE                             R23 R26
      580 JUMPIF                           R6 ; [+11]
      581 MOVE                             R26 R7
      582 GETIMPORT                        R27 K47 [table.concat]
      584 MOVE                             R28 R23
      585 LOADK                            R29 K48 ["\n"]
      586 CALL                             R27 2 -1
      587 FASTCALL                         TABLE_INSERT ; [+2]
      588 GETIMPORT                        R25 K39 [table.insert]
      590 CALL                             R25 -1 0
      591 LOADB                            R16 0
      592 GETUPVAL                         R25 34
      593 CALL                             R25 0 1
      594 JUMPIFNOT                        R25 ; [+19]
      595 GETUPVAL                         R25 35
      596 GETTABLEKS                       R26 R12 K25 ["contentId"]
      598 MOVE                             R27 R0
      599 CALL                             R25 2 2
      600 MOVE                             R6 R25
      601 MOVE                             R23 R26
      602 JUMPIF                           R6 ; [+11]
      603 MOVE                             R26 R7
      604 GETIMPORT                        R27 K47 [table.concat]
      606 MOVE                             R28 R23
      607 LOADK                            R29 K48 ["\n"]
      608 CALL                             R27 2 -1
      609 FASTCALL                         TABLE_INSERT ; [+2]
      610 GETIMPORT                        R25 K39 [table.insert]
      612 CALL                             R25 -1 0
      613 LOADB                            R16 0
      614 MOVE                             R25 R16
      615 MOVE                             R26 R7
      616 RETURN                           R25 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R0 K1 [script]
        3 GETTABLEKS                       R0 R0 K2 ["Parent"]
        5 GETTABLEKS                       R0 R0 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R2 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R2 K6 ["Types"]
       13 CALL                             R1 1 1
       14 GETIMPORT                        R2 K4 [require]
       16 GETTABLEKS                       R3 R0 K7 ["Analytics"]
       18 CALL                             R2 1 1
       19 GETIMPORT                        R3 K4 [require]
       21 GETTABLEKS                       R4 R0 K8 ["Constants"]
       23 CALL                             R3 1 1
       24 GETIMPORT                        R4 K4 [require]
       26 GETTABLEKS                       R5 R0 K9 ["ConstantsInterface"]
       28 CALL                             R4 1 1
       29 GETIMPORT                        R5 K4 [require]
       31 GETTABLEKS                       R6 R0 K10 ["validation"]
       33 GETTABLEKS                       R6 R6 K11 ["validateCoplanarIntersection"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R7 R0 K10 ["validation"]
       40 GETTABLEKS                       R7 R7 K12 ["validateInstanceTree"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R8 R0 K10 ["validation"]
       47 GETTABLEKS                       R8 R8 K13 ["validateMeshTriangles"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K4 [require]
       52 GETTABLEKS                       R9 R0 K10 ["validation"]
       54 GETTABLEKS                       R9 R9 K14 ["validateModeration"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K4 [require]
       59 GETTABLEKS                       R10 R0 K10 ["validation"]
       61 GETTABLEKS                       R10 R10 K15 ["validateMaterials"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K4 [require]
       66 GETTABLEKS                       R11 R0 K10 ["validation"]
       68 GETTABLEKS                       R11 R11 K16 ["validateTags"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K4 [require]
       73 GETTABLEKS                       R12 R0 K10 ["validation"]
       75 GETTABLEKS                       R12 R12 K17 ["validateMeshBounds"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETTABLEKS                       R13 R0 K10 ["validation"]
       82 GETTABLEKS                       R13 R13 K18 ["validateTextureSize"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K4 [require]
       87 GETTABLEKS                       R14 R0 K10 ["validation"]
       89 GETTABLEKS                       R14 R14 K19 ["validatePropertyRequirements"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K4 [require]
       94 GETTABLEKS                       R15 R0 K10 ["validation"]
       96 GETTABLEKS                       R15 R15 K20 ["validateAttributes"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K4 [require]
      101 GETTABLEKS                       R16 R0 K10 ["validation"]
      103 GETTABLEKS                       R16 R16 K21 ["validateMeshVertColors"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K4 [require]
      108 GETTABLEKS                       R17 R0 K10 ["validation"]
      110 GETTABLEKS                       R17 R17 K22 ["validateSingleInstance"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K4 [require]
      115 GETTABLEKS                       R18 R0 K10 ["validation"]
      117 GETTABLEKS                       R18 R18 K23 ["validateThumbnailConfiguration"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K4 [require]
      122 GETTABLEKS                       R19 R0 K10 ["validation"]
      124 GETTABLEKS                       R19 R19 K24 ["validateScaleType"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K4 [require]
      129 GETTABLEKS                       R20 R0 K10 ["validation"]
      131 GETTABLEKS                       R20 R20 K25 ["validateTotalSurfaceArea"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K4 [require]
      136 GETTABLEKS                       R21 R0 K10 ["validation"]
      138 GETTABLEKS                       R21 R21 K26 ["validateRigidMeshNotSkinned"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K4 [require]
      143 GETTABLEKS                       R22 R0 K10 ["validation"]
      145 GETTABLEKS                       R22 R22 K27 ["validateDependencies"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K4 [require]
      150 GETTABLEKS                       R23 R0 K10 ["validation"]
      152 GETTABLEKS                       R23 R23 K28 ["ValidatePropertiesSensible"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K4 [require]
      157 GETTABLEKS                       R24 R0 K5 ["util"]
      159 GETTABLEKS                       R24 R24 K29 ["RigidOrLayeredAllowed"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K4 [require]
      164 GETTABLEKS                       R25 R0 K5 ["util"]
      166 GETTABLEKS                       R25 R25 K30 ["createAccessorySchema"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K4 [require]
      171 GETTABLEKS                       R26 R0 K5 ["util"]
      173 GETTABLEKS                       R26 R26 K31 ["getAttachment"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K4 [require]
      178 GETTABLEKS                       R27 R0 K5 ["util"]
      180 GETTABLEKS                       R27 R27 K32 ["getAccessoryScale"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K4 [require]
      185 GETTABLEKS                       R28 R0 K5 ["util"]
      187 GETTABLEKS                       R28 R28 K33 ["getEditableMeshFromContext"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K4 [require]
      192 GETTABLEKS                       R29 R0 K5 ["util"]
      194 GETTABLEKS                       R29 R29 K34 ["getEditableImageFromContext"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K4 [require]
      199 GETTABLEKS                       R30 R0 K35 ["flags"]
      201 GETTABLEKS                       R30 R30 K36 ["getEngineFeatureEngineUGCValidateRigidNonSkinned"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K4 [require]
      206 GETTABLEKS                       R31 R0 K35 ["flags"]
      208 GETTABLEKS                       R31 R31 K37 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K4 [require]
      213 GETTABLEKS                       R32 R0 K35 ["flags"]
      215 GETTABLEKS                       R32 R32 K38 ["getFFlagUGCValidateAccessoryAssetTextureLimit"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K4 [require]
      220 GETTABLEKS                       R33 R0 K35 ["flags"]
      222 GETTABLEKS                       R33 R33 K39 ["getFFlagUGCValidateMigrateSchemaProperties"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K4 [require]
      227 GETTABLEKS                       R34 R0 K35 ["flags"]
      229 GETTABLEKS                       R34 R34 K40 ["getFFlagUGCValidationCombineEntrypointResults"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K4 [require]
      234 GETTABLEKS                       R35 R0 K35 ["flags"]
      236 GETTABLEKS                       R35 R35 K41 ["getFFlagUGCValidateMigrateTextureTransparency"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K4 [require]
      241 GETTABLEKS                       R36 R0 K35 ["flags"]
      243 GETTABLEKS                       R36 R36 K42 ["getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K4 [require]
      248 GETTABLEKS                       R37 R0 K35 ["flags"]
      250 GETTABLEKS                       R37 R37 K43 ["getFFlagUGCValidateMigrateMeshGeometry"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K45 [game]
      255 LOADK                            R39 K46 ["LegacyAccessoryCheckAvatarPartScaleType"]
      256 LOADB                            R40 0
      257 NAMECALL                         R37 R37 K47 ["DefineFastFlag"]
      259 CALL                             R37 3 1
      260 DUPCLOSURE                       R38 K48 [PROTO_0]
      261 CAPTURE                          VAL R23
      262 CAPTURE                          VAL R2
      263 CAPTURE                          VAL R3
      264 CAPTURE                          VAL R16
      265 CAPTURE                          VAL R24
      266 CAPTURE                          VAL R6
      267 CAPTURE                          VAL R30
      268 CAPTURE                          VAL R22
      269 CAPTURE                          VAL R32
      270 CAPTURE                          VAL R33
      271 CAPTURE                          VAL R21
      272 CAPTURE                          VAL R25
      273 CAPTURE                          VAL R27
      274 CAPTURE                          VAL R28
      275 CAPTURE                          VAL R9
      276 CAPTURE                          VAL R13
      277 CAPTURE                          VAL R10
      278 CAPTURE                          VAL R14
      279 CAPTURE                          VAL R34
      280 CAPTURE                          VAL R31
      281 CAPTURE                          VAL R4
      282 CAPTURE                          VAL R12
      283 CAPTURE                          VAL R18
      284 CAPTURE                          VAL R17
      285 CAPTURE                          VAL R8
      286 CAPTURE                          VAL R36
      287 CAPTURE                          VAL R19
      288 CAPTURE                          VAL R37
      289 CAPTURE                          VAL R26
      290 CAPTURE                          VAL R11
      291 CAPTURE                          VAL R7
      292 CAPTURE                          VAL R35
      293 CAPTURE                          VAL R15
      294 CAPTURE                          VAL R5
      295 CAPTURE                          VAL R29
      296 CAPTURE                          VAL R20
      297 RETURN                           R38 1
