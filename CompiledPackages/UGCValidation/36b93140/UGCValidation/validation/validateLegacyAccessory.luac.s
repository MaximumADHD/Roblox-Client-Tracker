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
      118 DUPTABLE                         R12 K28 [{["fullName"], ["fieldName"] = "MeshId", ["contentId"], ["context"]}]
      119 NAMECALL                         R13 R11 K29 ["GetFullName"]
      121 CALL                             R13 1 1
      122 SETTABLEKS                       R13 R12 K23 ["fullName"]
      124 GETTABLEKS                       R13 R11 K25 ["MeshId"]
      126 SETTABLEKS                       R13 R12 K26 ["contentId"]
      128 GETTABLEKS                       R13 R8 K12 ["Name"]
      130 SETTABLEKS                       R13 R12 K27 ["context"]
      132 GETTABLEKS                       R13 R11 K30 ["Scale"]
      134 GETUPVAL                         R14 11
      135 MOVE                             R15 R10
      136 GETTABLEKS                       R16 R5 K14 ["attachmentNames"]
      138 CALL                             R14 2 1
      139 GETTABLEKS                       R17 R5 K31 ["bounds"]
      141 GETTABLEKS                       R18 R14 K12 ["Name"]
      143 GETTABLE                         R16 R17 R18
      144 LOADK                            R18 K32 ["Could not find bounds for "]
      145 GETTABLEKS                       R19 R14 K12 ["Name"]
      147 CONCAT                           R17 R18 R19
      148 FASTCALL2                        ASSERT R16 R17 ; [+3]
      150 GETIMPORT                        R15 K34 [assert]
      152 CALL                             R15 2 1
      153 LOADB                            R16 1
      154 NEWTABLE                         R7 0 0
      156 LOADB                            R17 0
      157 GETTABLEKS                       R18 R12 K26 ["contentId"]
      159 JUMPIFEQKNIL                     R18 ; [+7]
      161 GETTABLEKS                       R18 R12 K26 ["contentId"]
      163 JUMPIFNOTEQKS                    R18 K35 [""] ; [+2]
      165 LOADB                            R17 0 +1
      166 LOADB                            R17 1
      167 GETUPVAL                         R18 12
      168 MOVE                             R19 R11
      169 LOADK                            R20 K25 ["MeshId"]
      170 MOVE                             R21 R0
      171 CALL                             R18 3 2
      172 JUMPIF                           R18 ; [+34]
      173 GETTABLEKS                       R20 R12 K26 ["contentId"]
      175 JUMPIF                           R20 ; [+19]
      176 LOADB                            R17 0
      177 LOADB                            R16 0
      178 NEWTABLE                         R22 0 1
      180 GETIMPORT                        R23 K10 [string.format]
      182 LOADK                            R24 K36 ["Missing meshId on legacy accessory '%s'. Make sure you are using a valid meshId and try again.\n"]
      183 GETTABLEKS                       R25 R8 K12 ["Name"]
      185 CALL                             R23 2 -1
      186 SETLIST                          R22 R23 -1 [1]
      188 FASTCALL2                        TABLE_INSERT R7 R22 ; [+4]
      190 MOVE                             R21 R7
      191 GETIMPORT                        R20 K39 [table.insert]
      193 CALL                             R20 2 0
      194 JUMP                             ; [+12]
      195 LOADB                            R20 0
      196 NEWTABLE                         R21 0 1
      198 GETIMPORT                        R22 K10 [string.format]
      200 LOADK                            R23 K40 ["Failed to load mesh for legacy accessory '%s'. Make sure mesh exists and try again."]
      201 GETTABLEKS                       R24 R8 K12 ["Name"]
      203 CALL                             R22 2 -1
      204 SETLIST                          R21 R22 -1 [1]
      206 RETURN                           R20 2
      207 SETTABLEKS                       R19 R12 K41 ["editableMesh"]
      209 LOADB                            R17 1
      210 DUPTABLE                         R20 K43 [{["fullName"], ["fieldName"] = "TextureId", ["contentId"]}]
      211 NAMECALL                         R21 R11 K29 ["GetFullName"]
      213 CALL                             R21 1 1
      214 SETTABLEKS                       R21 R20 K23 ["fullName"]
      216 GETTABLEKS                       R21 R11 K42 ["TextureId"]
      218 SETTABLEKS                       R21 R20 K26 ["contentId"]
      220 GETUPVAL                         R21 13
      221 MOVE                             R22 R11
      222 LOADK                            R23 K42 ["TextureId"]
      223 MOVE                             R24 R0
      224 CALL                             R21 3 2
      225 JUMPIF                           R21 ; [+12]
      226 LOADB                            R23 0
      227 NEWTABLE                         R24 0 1
      229 GETIMPORT                        R25 K10 [string.format]
      231 LOADK                            R26 K44 ["Failed to load texture for legacy accessory '%s'. Make sure texture exists and try again."]
      232 GETTABLEKS                       R27 R8 K12 ["Name"]
      234 CALL                             R25 2 -1
      235 SETLIST                          R24 R25 -1 [1]
      237 RETURN                           R23 2
      238 SETTABLEKS                       R22 R20 K45 ["editableImage"]
      240 NEWTABLE                         R23 0 0
      242 GETUPVAL                         R24 8
      243 CALL                             R24 0 1
      244 JUMPIFNOT                        R24 ; [+3]
      245 GETUPVAL                         R24 9
      246 CALL                             R24 0 1
      247 JUMPIF                           R24 ; [+37]
      248 GETUPVAL                         R24 14
      249 MOVE                             R25 R8
      250 MOVE                             R26 R0
      251 CALL                             R24 2 2
      252 MOVE                             R6 R24
      253 MOVE                             R23 R25
      254 JUMPIF                           R6 ; [+11]
      255 MOVE                             R25 R7
      256 GETIMPORT                        R26 K47 [table.concat]
      258 MOVE                             R27 R23
      259 LOADK                            R28 K48 ["\n"]
      260 CALL                             R26 2 -1
      261 FASTCALL                         TABLE_INSERT ; [+2]
      262 GETIMPORT                        R24 K39 [table.insert]
      264 CALL                             R24 -1 0
      265 LOADB                            R16 0
      266 GETUPVAL                         R24 15
      267 MOVE                             R25 R8
      268 LOADNIL                          R26
      269 MOVE                             R27 R0
      270 CALL                             R24 3 2
      271 MOVE                             R6 R24
      272 MOVE                             R23 R25
      273 JUMPIF                           R6 ; [+11]
      274 MOVE                             R25 R7
      275 GETIMPORT                        R26 K47 [table.concat]
      277 MOVE                             R27 R23
      278 LOADK                            R28 K48 ["\n"]
      279 CALL                             R26 2 -1
      280 FASTCALL                         TABLE_INSERT ; [+2]
      281 GETIMPORT                        R24 K39 [table.insert]
      283 CALL                             R24 -1 0
      284 LOADB                            R16 0
      285 GETUPVAL                         R24 16
      286 MOVE                             R25 R8
      287 MOVE                             R26 R0
      288 CALL                             R24 2 2
      289 MOVE                             R6 R24
      290 MOVE                             R23 R25
      291 JUMPIF                           R6 ; [+11]
      292 MOVE                             R25 R7
      293 GETIMPORT                        R26 K47 [table.concat]
      295 MOVE                             R27 R23
      296 LOADK                            R28 K48 ["\n"]
      297 CALL                             R26 2 -1
      298 FASTCALL                         TABLE_INSERT ; [+2]
      299 GETIMPORT                        R24 K39 [table.insert]
      301 CALL                             R24 -1 0
      302 LOADB                            R16 0
      303 GETUPVAL                         R24 8
      304 CALL                             R24 0 1
      305 JUMPIFNOT                        R24 ; [+3]
      306 GETUPVAL                         R24 9
      307 CALL                             R24 0 1
      308 JUMPIF                           R24 ; [+18]
      309 GETUPVAL                         R24 17
      310 MOVE                             R25 R8
      311 MOVE                             R26 R0
      312 CALL                             R24 2 2
      313 MOVE                             R6 R24
      314 MOVE                             R23 R25
      315 JUMPIF                           R6 ; [+11]
      316 MOVE                             R25 R7
      317 GETIMPORT                        R26 K47 [table.concat]
      319 MOVE                             R27 R23
      320 LOADK                            R28 K48 ["\n"]
      321 CALL                             R26 2 -1
      322 FASTCALL                         TABLE_INSERT ; [+2]
      323 GETIMPORT                        R24 K39 [table.insert]
      325 CALL                             R24 -1 0
      326 LOADB                            R16 0
      327 GETUPVAL                         R24 18
      328 CALL                             R24 0 1
      329 JUMPIF                           R24 ; [+33]
      330 LOADNIL                          R24
      331 GETUPVAL                         R25 19
      332 CALL                             R25 0 1
      333 JUMPIFNOT                        R25 ; [+9]
      334 GETUPVAL                         R25 20
      335 GETTABLEKS                       R25 R25 K49 ["getTextureLimit"]
      337 MOVE                             R26 R2
      338 MOVE                             R27 R11
      339 GETTABLEKS                       R28 R20 K24 ["fieldName"]
      341 CALL                             R25 3 1
      342 MOVE                             R24 R25
      343 GETUPVAL                         R25 21
      344 MOVE                             R26 R20
      345 LOADNIL                          R27
      346 MOVE                             R28 R0
      347 MOVE                             R29 R24
      348 CALL                             R25 4 2
      349 MOVE                             R6 R25
      350 MOVE                             R23 R26
      351 JUMPIF                           R6 ; [+11]
      352 MOVE                             R26 R7
      353 GETIMPORT                        R27 K47 [table.concat]
      355 MOVE                             R28 R23
      356 LOADK                            R29 K48 ["\n"]
      357 CALL                             R27 2 -1
      358 FASTCALL                         TABLE_INSERT ; [+2]
      359 GETIMPORT                        R25 K39 [table.insert]
      361 CALL                             R25 -1 0
      362 LOADB                            R16 0
      363 LOADK                            R26 K50 ["AvatarPartScaleType"]
      364 NAMECALL                         R24 R10 K20 ["FindFirstChild"]
      366 CALL                             R24 2 1
      367 JUMPIFNOT                        R24 ; [+23]
      368 LOADK                            R27 K51 ["StringValue"]
      369 NAMECALL                         R25 R24 K52 ["IsA"]
      371 CALL                             R25 2 1
      372 JUMPIFNOT                        R25 ; [+18]
      373 GETUPVAL                         R25 22
      374 MOVE                             R26 R24
      375 MOVE                             R27 R0
      376 CALL                             R25 2 2
      377 MOVE                             R6 R25
      378 MOVE                             R23 R26
      379 JUMPIF                           R6 ; [+11]
      380 MOVE                             R26 R7
      381 GETIMPORT                        R27 K47 [table.concat]
      383 MOVE                             R28 R23
      384 LOADK                            R29 K48 ["\n"]
      385 CALL                             R27 2 -1
      386 FASTCALL                         TABLE_INSERT ; [+2]
      387 GETIMPORT                        R25 K39 [table.insert]
      389 CALL                             R25 -1 0
      390 LOADB                            R16 0
      391 GETUPVAL                         R25 23
      392 MOVE                             R26 R8
      393 MOVE                             R27 R10
      394 MOVE                             R28 R12
      395 MOVE                             R29 R13
      396 MOVE                             R30 R0
      397 CALL                             R25 5 2
      398 MOVE                             R6 R25
      399 MOVE                             R23 R26
      400 JUMPIF                           R6 ; [+11]
      401 MOVE                             R26 R7
      402 GETIMPORT                        R27 K47 [table.concat]
      404 MOVE                             R28 R23
      405 LOADK                            R29 K48 ["\n"]
      406 CALL                             R27 2 -1
      407 FASTCALL                         TABLE_INSERT ; [+2]
      408 GETIMPORT                        R25 K39 [table.insert]
      410 CALL                             R25 -1 0
      411 LOADB                            R16 0
      412 GETUPVAL                         R25 8
      413 CALL                             R25 0 1
      414 JUMPIFNOT                        R25 ; [+3]
      415 GETUPVAL                         R25 9
      416 CALL                             R25 0 1
      417 JUMPIF                           R25 ; [+24]
      418 NOT                              R25 R3
      419 JUMPIFNOT                        R4 ; [+1]
      420 LOADB                            R25 0
      421 JUMPIFNOT                        R25 ; [+20]
      422 GETUPVAL                         R26 24
      423 MOVE                             R27 R8
      424 NEWTABLE                         R28 0 0
      426 MOVE                             R29 R0
      427 CALL                             R26 3 2
      428 MOVE                             R6 R26
      429 MOVE                             R23 R27
      430 JUMPIF                           R6 ; [+11]
      431 MOVE                             R27 R7
      432 GETIMPORT                        R28 K47 [table.concat]
      434 MOVE                             R29 R23
      435 LOADK                            R30 K48 ["\n"]
      436 CALL                             R28 2 -1
      437 FASTCALL                         TABLE_INSERT ; [+2]
      438 GETIMPORT                        R26 K39 [table.insert]
      440 CALL                             R26 -1 0
      441 LOADB                            R16 0
      442 JUMPIFNOT                        R17 ; [+165]
      443 GETUPVAL                         R25 25
      444 CALL                             R25 0 1
      445 JUMPIF                           R25 ; [+19]
      446 GETUPVAL                         R25 26
      447 MOVE                             R26 R12
      448 MOVE                             R27 R13
      449 MOVE                             R28 R0
      450 CALL                             R25 3 2
      451 MOVE                             R6 R25
      452 MOVE                             R23 R26
      453 JUMPIF                           R6 ; [+11]
      454 MOVE                             R26 R7
      455 GETIMPORT                        R27 K47 [table.concat]
      457 MOVE                             R28 R23
      458 LOADK                            R29 K48 ["\n"]
      459 CALL                             R27 2 -1
      460 FASTCALL                         TABLE_INSERT ; [+2]
      461 GETIMPORT                        R25 K39 [table.insert]
      463 CALL                             R25 -1 0
      464 LOADB                            R16 0
      465 GETUPVAL                         R25 27
      466 JUMPIFNOT                        R25 ; [+26]
      467 LOADK                            R27 K50 ["AvatarPartScaleType"]
      468 NAMECALL                         R25 R10 K20 ["FindFirstChild"]
      470 CALL                             R25 2 1
      471 JUMPIFNOT                        R25 ; [+21]
      472 GETUPVAL                         R25 28
      473 MOVE                             R26 R10
      474 MOVE                             R27 R14
      475 CALL                             R25 2 1
      476 DUPTABLE                         R26 K55 [{"size", "offset"}]
      477 GETTABLEKS                       R28 R15 K53 ["size"]
      479 DIV                              R27 R28 R25
      480 SETTABLEKS                       R27 R26 K53 ["size"]
      482 GETTABLEKS                       R28 R15 K54 ["offset"]
      484 JUMPIFNOT                        R28 ; [+4]
      485 GETTABLEKS                       R28 R15 K54 ["offset"]
      487 DIV                              R27 R28 R25
      488 JUMP                             ; [+1]
      489 LOADNIL                          R27
      490 SETTABLEKS                       R27 R26 K54 ["offset"]
      492 MOVE                             R15 R26
      493 GETUPVAL                         R25 25
      494 CALL                             R25 0 1
      495 JUMPIF                           R25 ; [+24]
      496 GETUPVAL                         R25 29
      497 MOVE                             R26 R10
      498 MOVE                             R27 R14
      499 MOVE                             R28 R12
      500 MOVE                             R29 R13
      501 MOVE                             R30 R15
      502 GETTABLEKS                       R31 R2 K12 ["Name"]
      504 MOVE                             R32 R0
      505 CALL                             R25 7 2
      506 MOVE                             R6 R25
      507 MOVE                             R23 R26
      508 JUMPIF                           R6 ; [+11]
      509 MOVE                             R26 R7
      510 GETIMPORT                        R27 K47 [table.concat]
      512 MOVE                             R28 R23
      513 LOADK                            R29 K48 ["\n"]
      514 CALL                             R27 2 -1
      515 FASTCALL                         TABLE_INSERT ; [+2]
      516 GETIMPORT                        R25 K39 [table.insert]
      518 CALL                             R25 -1 0
      519 LOADB                            R16 0
      520 GETUPVAL                         R25 25
      521 CALL                             R25 0 1
      522 JUMPIF                           R25 ; [+19]
      523 GETUPVAL                         R25 30
      524 MOVE                             R26 R12
      525 LOADNIL                          R27
      526 MOVE                             R28 R0
      527 CALL                             R25 3 2
      528 MOVE                             R6 R25
      529 MOVE                             R23 R26
      530 JUMPIF                           R6 ; [+11]
      531 MOVE                             R26 R7
      532 GETIMPORT                        R27 K47 [table.concat]
      534 MOVE                             R28 R23
      535 LOADK                            R29 K48 ["\n"]
      536 CALL                             R27 2 -1
      537 FASTCALL                         TABLE_INSERT ; [+2]
      538 GETIMPORT                        R25 K39 [table.insert]
      540 CALL                             R25 -1 0
      541 LOADB                            R16 0
      542 GETUPVAL                         R25 31
      543 CALL                             R25 0 1
      544 JUMPIF                           R25 ; [+19]
      545 GETUPVAL                         R25 32
      546 MOVE                             R26 R12
      547 LOADB                            R27 0
      548 MOVE                             R28 R0
      549 CALL                             R25 3 2
      550 MOVE                             R6 R25
      551 MOVE                             R23 R26
      552 JUMPIF                           R6 ; [+11]
      553 MOVE                             R26 R7
      554 GETIMPORT                        R27 K47 [table.concat]
      556 MOVE                             R28 R23
      557 LOADK                            R29 K48 ["\n"]
      558 CALL                             R27 2 -1
      559 FASTCALL                         TABLE_INSERT ; [+2]
      560 GETIMPORT                        R25 K39 [table.insert]
      562 CALL                             R25 -1 0
      563 LOADB                            R16 0
      564 GETUPVAL                         R25 31
      565 CALL                             R25 0 1
      566 JUMPIF                           R25 ; [+19]
      567 GETUPVAL                         R25 33
      568 MOVE                             R26 R12
      569 MOVE                             R27 R13
      570 MOVE                             R28 R0
      571 CALL                             R25 3 2
      572 MOVE                             R6 R25
      573 MOVE                             R23 R26
      574 JUMPIF                           R6 ; [+11]
      575 MOVE                             R26 R7
      576 GETIMPORT                        R27 K47 [table.concat]
      578 MOVE                             R28 R23
      579 LOADK                            R29 K48 ["\n"]
      580 CALL                             R27 2 -1
      581 FASTCALL                         TABLE_INSERT ; [+2]
      582 GETIMPORT                        R25 K39 [table.insert]
      584 CALL                             R25 -1 0
      585 LOADB                            R16 0
      586 GETUPVAL                         R25 34
      587 CALL                             R25 0 1
      588 JUMPIFNOT                        R25 ; [+19]
      589 GETUPVAL                         R25 35
      590 GETTABLEKS                       R26 R12 K26 ["contentId"]
      592 MOVE                             R27 R0
      593 CALL                             R25 2 2
      594 MOVE                             R6 R25
      595 MOVE                             R23 R26
      596 JUMPIF                           R6 ; [+11]
      597 MOVE                             R26 R7
      598 GETIMPORT                        R27 K47 [table.concat]
      600 MOVE                             R28 R23
      601 LOADK                            R29 K48 ["\n"]
      602 CALL                             R27 2 -1
      603 FASTCALL                         TABLE_INSERT ; [+2]
      604 GETIMPORT                        R25 K39 [table.insert]
      606 CALL                             R25 -1 0
      607 LOADB                            R16 0
      608 MOVE                             R25 R16
      609 MOVE                             R26 R7
      610 RETURN                           R25 2

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
