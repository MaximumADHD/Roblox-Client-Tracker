PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R1 R0 K0 ["instances"]
        2 GETTABLEKS                       R2 R0 K1 ["assetTypeEnum"]
        4 GETTABLEKS                       R3 R0 K2 ["isServer"]
        6 GETTABLEKS                       R4 R0 K3 ["allowUnreviewedAssets"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["isLayeredClothingAllowed"]
       11 MOVE                             R6 R2
       12 CALL                             R5 1 1
       13 JUMPIF                           R5 ; [+23]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K5 ["reportFailure"]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K6 ["ErrorType"]
       20 GETTABLEKS                       R6 R7 K7 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
       22 LOADNIL                          R7
       23 MOVE                             R8 R0
       24 CALL                             R5 3 0
       25 LOADB                            R5 0
       26 NEWTABLE                         R6 0 1
       28 GETIMPORT                        R7 K10 [string.format]
       30 LOADK                            R8 K11 ["Asset type '%s' is not a layered clothing category. It can only be used with rigid accessories."]
       31 GETTABLEKS                       R9 R2 K12 ["Name"]
       33 CALL                             R7 2 -1
       34 SETLIST                          R6 R7 -1 [1]
       36 RETURN                           R5 2
       37 GETUPVAL                         R7 2
       38 GETTABLEKS                       R6 R7 K13 ["ASSET_TYPE_INFO"]
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
       54 GETUPVAL                         R10 4
       55 CALL                             R10 0 1
       56 JUMPIFNOT                        R10 ; [+12]
       57 LOADB                            R9 1
       58 GETIMPORT                        R10 K17 [Enum.AssetType.EyebrowAccessory]
       60 JUMPIFEQ                         R2 R10 ; [+9]
       62 GETIMPORT                        R10 K19 [Enum.AssetType.EyelashAccessory]
       64 JUMPIFEQ                         R2 R10 ; [+2]
       66 LOADB                            R9 0 +1
       67 LOADB                            R9 1
       68 JUMP                             ; [+1]
       69 LOADB                            R9 0
       70 JUMPIFNOT                        R9 ; [+5]
       71 GETUPVAL                         R10 5
       72 GETTABLEKS                       R11 R5 K20 ["attachmentNames"]
       74 CALL                             R10 1 1
       75 JUMP                             ; [+4]
       76 GETUPVAL                         R10 6
       77 GETTABLEKS                       R11 R5 K20 ["attachmentNames"]
       79 CALL                             R10 1 1
       80 GETUPVAL                         R11 7
       81 MOVE                             R12 R10
       82 MOVE                             R13 R8
       83 MOVE                             R14 R0
       84 CALL                             R11 3 2
       85 MOVE                             R6 R11
       86 MOVE                             R7 R12
       87 JUMPIF                           R6 ; [+3]
       88 LOADB                            R11 0
       89 MOVE                             R12 R7
       90 RETURN                           R11 2
       91 GETUPVAL                         R11 8
       92 CALL                             R11 0 1
       93 JUMPIFNOT                        R11 ; [+12]
       94 GETUPVAL                         R12 9
       95 GETTABLEKS                       R11 R12 K21 ["validate"]
       97 MOVE                             R12 R8
       98 MOVE                             R13 R0
       99 CALL                             R11 2 2
      100 MOVE                             R6 R11
      101 MOVE                             R7 R12
      102 JUMPIF                           R6 ; [+3]
      103 LOADB                            R11 0
      104 MOVE                             R12 R7
      105 RETURN                           R11 2
      106 GETUPVAL                         R11 10
      107 MOVE                             R12 R8
      108 MOVE                             R13 R0
      109 CALL                             R11 2 2
      110 MOVE                             R6 R11
      111 MOVE                             R7 R12
      112 JUMPIF                           R6 ; [+3]
      113 LOADB                            R11 0
      114 MOVE                             R12 R7
      115 RETURN                           R11 2
      116 LOADB                            R11 1
      117 NEWTABLE                         R7 0 0
      119 LOADK                            R14 K22 ["Handle"]
      120 NAMECALL                         R12 R8 K23 ["FindFirstChild"]
      122 CALL                             R12 2 1
      123 DUPTABLE                         R13 K28 [{"fullName", "fieldName", "contentId", "context"}]
      124 NAMECALL                         R14 R12 K29 ["GetFullName"]
      126 CALL                             R14 1 1
      127 SETTABLEKS                       R14 R13 K24 ["fullName"]
      129 LOADK                            R14 K30 ["MeshId"]
      130 SETTABLEKS                       R14 R13 K25 ["fieldName"]
      132 GETTABLEKS                       R14 R12 K30 ["MeshId"]
      134 SETTABLEKS                       R14 R13 K26 ["contentId"]
      136 GETTABLEKS                       R14 R8 K12 ["Name"]
      138 SETTABLEKS                       R14 R13 K27 ["context"]
      140 LOADB                            R14 0
      141 GETTABLEKS                       R15 R13 K26 ["contentId"]
      143 JUMPIFEQKNIL                     R15 ; [+7]
      145 GETTABLEKS                       R15 R13 K26 ["contentId"]
      147 JUMPIFNOTEQKS                    R15 K31 [""] ; [+2]
      149 LOADB                            R14 0 +1
      150 LOADB                            R14 1
      151 GETUPVAL                         R15 11
      152 MOVE                             R16 R12
      153 LOADK                            R17 K30 ["MeshId"]
      154 MOVE                             R18 R0
      155 CALL                             R15 3 2
      156 JUMPIF                           R15 ; [+56]
      157 GETTABLEKS                       R17 R13 K26 ["contentId"]
      159 JUMPIF                           R17 ; [+30]
      160 LOADB                            R14 0
      161 GETUPVAL                         R18 1
      162 GETTABLEKS                       R17 R18 K5 ["reportFailure"]
      164 GETUPVAL                         R20 1
      165 GETTABLEKS                       R19 R20 K6 ["ErrorType"]
      167 GETTABLEKS                       R18 R19 K32 ["validateLayeredClothingAccessory_NoMeshId"]
      169 LOADNIL                          R19
      170 MOVE                             R20 R0
      171 CALL                             R17 3 0
      172 LOADB                            R11 0
      173 NEWTABLE                         R19 0 1
      175 GETIMPORT                        R20 K10 [string.format]
      177 LOADK                            R21 K33 ["Missing meshId on layered clothing accessory '%s'. Make sure you are using a valid meshId and try again.\n"]
      178 GETTABLEKS                       R22 R8 K12 ["Name"]
      180 CALL                             R20 2 -1
      181 SETLIST                          R19 R20 -1 [1]
      183 FASTCALL2                        TABLE_INSERT R7 R19 ; [+4]
      185 MOVE                             R18 R7
      186 GETIMPORT                        R17 K36 [table.insert]
      188 CALL                             R17 2 0
      189 JUMP                             ; [+23]
      190 GETUPVAL                         R18 1
      191 GETTABLEKS                       R17 R18 K5 ["reportFailure"]
      193 GETUPVAL                         R20 1
      194 GETTABLEKS                       R19 R20 K6 ["ErrorType"]
      196 GETTABLEKS                       R18 R19 K37 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      198 LOADNIL                          R19
      199 MOVE                             R20 R0
      200 CALL                             R17 3 0
      201 LOADB                            R17 0
      202 NEWTABLE                         R18 0 1
      204 GETIMPORT                        R19 K10 [string.format]
      206 LOADK                            R20 K38 ["Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again."]
      207 GETTABLEKS                       R21 R8 K12 ["Name"]
      209 CALL                             R19 2 -1
      210 SETLIST                          R18 R19 -1 [1]
      212 RETURN                           R17 2
      213 SETTABLEKS                       R16 R13 K39 ["editableMesh"]
      215 LOADB                            R14 1
      216 GETTABLEKS                       R17 R12 K40 ["TextureID"]
      218 DUPTABLE                         R18 K41 [{"fullName", "fieldName", "contentId"}]
      219 NAMECALL                         R19 R12 K29 ["GetFullName"]
      221 CALL                             R19 1 1
      222 SETTABLEKS                       R19 R18 K24 ["fullName"]
      224 LOADK                            R19 K40 ["TextureID"]
      225 SETTABLEKS                       R19 R18 K25 ["fieldName"]
      227 SETTABLEKS                       R17 R18 K26 ["contentId"]
      229 LOADNIL                          R19
      230 LOADNIL                          R20
      231 JUMPIFEQKS                       R17 K31 [""] ; [+23]
      233 GETUPVAL                         R21 12
      234 MOVE                             R22 R12
      235 LOADK                            R23 K40 ["TextureID"]
      236 MOVE                             R24 R0
      237 CALL                             R21 3 2
      238 MOVE                             R19 R21
      239 MOVE                             R20 R22
      240 JUMPIF                           R19 ; [+12]
      241 LOADB                            R21 0
      242 NEWTABLE                         R22 0 1
      244 GETIMPORT                        R23 K10 [string.format]
      246 LOADK                            R24 K42 ["Failed to load texture for layered clothing accessory '%s'. Make sure texture exists and try again."]
      247 GETTABLEKS                       R25 R8 K12 ["Name"]
      249 CALL                             R23 2 -1
      250 SETLIST                          R22 R23 -1 [1]
      252 RETURN                           R21 2
      253 SETTABLEKS                       R20 R18 K43 ["editableImage"]
      255 GETUPVAL                         R21 13
      256 NEWCLOSURE                       R22 P0
      257 CAPTURE                          UPVAL U14
      258 CAPTURE                          VAL R13
      259 MOVE                             R23 R0
      260 CALL                             R21 2 2
      261 JUMPIF                           R21 ; [+23]
      262 GETUPVAL                         R24 1
      263 GETTABLEKS                       R23 R24 K5 ["reportFailure"]
      265 GETUPVAL                         R26 1
      266 GETTABLEKS                       R25 R26 K6 ["ErrorType"]
      268 GETTABLEKS                       R24 R25 K37 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      270 LOADNIL                          R25
      271 MOVE                             R26 R0
      272 CALL                             R23 3 0
      273 LOADB                            R23 0
      274 NEWTABLE                         R24 0 1
      276 GETIMPORT                        R25 K10 [string.format]
      278 LOADK                            R26 K38 ["Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again."]
      279 GETTABLEKS                       R27 R8 K12 ["Name"]
      281 CALL                             R25 2 -1
      282 SETLIST                          R24 R25 -1 [1]
      284 RETURN                           R23 2
      285 GETUPVAL                         R24 15
      286 MOVE                             R25 R12
      287 MOVE                             R26 R0
      288 CALL                             R24 2 1
      289 DIV                              R23 R24 R22
      290 LOADK                            R26 K44 [{1, 1, 1}]
      291 GETUPVAL                         R28 16
      292 CALL                             R28 0 1
      293 DIVK                             R27 R28 K45 [1000]
      294 NAMECALL                         R24 R23 K46 ["FuzzyEq"]
      296 CALL                             R24 3 1
      297 JUMPIF                           R24 ; [+23]
      298 GETUPVAL                         R25 1
      299 GETTABLEKS                       R24 R25 K5 ["reportFailure"]
      301 GETUPVAL                         R27 1
      302 GETTABLEKS                       R26 R27 K6 ["ErrorType"]
      304 GETTABLEKS                       R25 R26 K47 ["validateLayeredClothingAccessory_HandleIsScaled"]
      306 LOADNIL                          R26
      307 MOVE                             R27 R0
      308 CALL                             R24 3 0
      309 MOVE                             R25 R7
      310 GETIMPORT                        R26 K10 [string.format]
      312 LOADK                            R27 K48 ["%s has been scaled, but mesh parts with wrap layers do not support scaling. You need to change the Size property to match the MeshSize property."]
      313 GETTABLEKS                       R28 R12 K12 ["Name"]
      315 CALL                             R26 2 -1
      316 FASTCALL                         TABLE_INSERT ; [+2]
      317 GETIMPORT                        R24 K36 [table.insert]
      319 CALL                             R24 -1 0
      320 LOADB                            R11 0
      321 GETUPVAL                         R24 17
      322 MOVE                             R25 R12
      323 GETTABLEKS                       R26 R5 K20 ["attachmentNames"]
      325 CALL                             R24 2 1
      326 GETTABLEKS                       R26 R5 K49 ["bounds"]
      328 GETTABLEKS                       R27 R24 K12 ["Name"]
      330 GETTABLE                         R25 R26 R27
      331 NEWTABLE                         R26 0 0
      333 GETUPVAL                         R27 18
      334 MOVE                             R28 R8
      335 MOVE                             R29 R0
      336 CALL                             R27 2 2
      337 MOVE                             R6 R27
      338 MOVE                             R26 R28
      339 JUMPIF                           R6 ; [+11]
      340 MOVE                             R28 R7
      341 GETIMPORT                        R29 K51 [table.concat]
      343 MOVE                             R30 R26
      344 LOADK                            R31 K52 ["\n"]
      345 CALL                             R29 2 -1
      346 FASTCALL                         TABLE_INSERT ; [+2]
      347 GETIMPORT                        R27 K36 [table.insert]
      349 CALL                             R27 -1 0
      350 LOADB                            R11 0
      351 GETUPVAL                         R27 19
      352 MOVE                             R28 R8
      353 LOADNIL                          R29
      354 MOVE                             R30 R0
      355 CALL                             R27 3 2
      356 MOVE                             R6 R27
      357 MOVE                             R26 R28
      358 JUMPIF                           R6 ; [+11]
      359 MOVE                             R28 R7
      360 GETIMPORT                        R29 K51 [table.concat]
      362 MOVE                             R30 R26
      363 LOADK                            R31 K52 ["\n"]
      364 CALL                             R29 2 -1
      365 FASTCALL                         TABLE_INSERT ; [+2]
      366 GETIMPORT                        R27 K36 [table.insert]
      368 CALL                             R27 -1 0
      369 LOADB                            R11 0
      370 GETUPVAL                         R27 20
      371 MOVE                             R28 R8
      372 MOVE                             R29 R0
      373 CALL                             R27 2 2
      374 MOVE                             R6 R27
      375 MOVE                             R26 R28
      376 JUMPIF                           R6 ; [+11]
      377 MOVE                             R28 R7
      378 GETIMPORT                        R29 K51 [table.concat]
      380 MOVE                             R30 R26
      381 LOADK                            R31 K52 ["\n"]
      382 CALL                             R29 2 -1
      383 FASTCALL                         TABLE_INSERT ; [+2]
      384 GETIMPORT                        R27 K36 [table.insert]
      386 CALL                             R27 -1 0
      387 LOADB                            R11 0
      388 GETUPVAL                         R27 21
      389 MOVE                             R28 R8
      390 MOVE                             R29 R0
      391 CALL                             R27 2 2
      392 MOVE                             R6 R27
      393 MOVE                             R26 R28
      394 JUMPIF                           R6 ; [+11]
      395 MOVE                             R28 R7
      396 GETIMPORT                        R29 K51 [table.concat]
      398 MOVE                             R30 R26
      399 LOADK                            R31 K52 ["\n"]
      400 CALL                             R29 2 -1
      401 FASTCALL                         TABLE_INSERT ; [+2]
      402 GETIMPORT                        R27 K36 [table.insert]
      404 CALL                             R27 -1 0
      405 LOADB                            R11 0
      406 LOADNIL                          R27
      407 GETUPVAL                         R28 22
      408 CALL                             R28 0 1
      409 JUMPIFNOT                        R28 ; [+9]
      410 GETUPVAL                         R29 23
      411 GETTABLEKS                       R28 R29 K53 ["getTextureLimit"]
      413 MOVE                             R29 R2
      414 MOVE                             R30 R12
      415 GETTABLEKS                       R31 R18 K25 ["fieldName"]
      417 CALL                             R28 3 1
      418 MOVE                             R27 R28
      419 GETUPVAL                         R28 24
      420 MOVE                             R29 R18
      421 LOADB                            R30 1
      422 MOVE                             R31 R0
      423 MOVE                             R32 R27
      424 CALL                             R28 4 2
      425 MOVE                             R6 R28
      426 MOVE                             R26 R29
      427 JUMPIF                           R6 ; [+11]
      428 MOVE                             R29 R7
      429 GETIMPORT                        R30 K51 [table.concat]
      431 MOVE                             R31 R26
      432 LOADK                            R32 K52 ["\n"]
      433 CALL                             R30 2 -1
      434 FASTCALL                         TABLE_INSERT ; [+2]
      435 GETIMPORT                        R28 K36 [table.insert]
      437 CALL                             R28 -1 0
      438 LOADB                            R11 0
      439 GETUPVAL                         R28 25
      440 CALL                             R28 0 1
      441 JUMPIFNOT                        R28 ; [+18]
      442 GETUPVAL                         R28 26
      443 MOVE                             R29 R8
      444 MOVE                             R30 R0
      445 CALL                             R28 2 2
      446 MOVE                             R6 R28
      447 MOVE                             R26 R29
      448 JUMPIF                           R6 ; [+11]
      449 MOVE                             R29 R7
      450 GETIMPORT                        R30 K51 [table.concat]
      452 MOVE                             R31 R26
      453 LOADK                            R32 K52 ["\n"]
      454 CALL                             R30 2 -1
      455 FASTCALL                         TABLE_INSERT ; [+2]
      456 GETIMPORT                        R28 K36 [table.insert]
      458 CALL                             R28 -1 0
      459 LOADB                            R11 0
      460 LOADK                            R30 K54 ["AvatarPartScaleType"]
      461 NAMECALL                         R28 R12 K23 ["FindFirstChild"]
      463 CALL                             R28 2 1
      464 JUMPIFNOT                        R28 ; [+23]
      465 LOADK                            R31 K55 ["StringValue"]
      466 NAMECALL                         R29 R28 K56 ["IsA"]
      468 CALL                             R29 2 1
      469 JUMPIFNOT                        R29 ; [+18]
      470 GETUPVAL                         R29 27
      471 MOVE                             R30 R28
      472 MOVE                             R31 R0
      473 CALL                             R29 2 2
      474 MOVE                             R6 R29
      475 MOVE                             R26 R30
      476 JUMPIF                           R6 ; [+11]
      477 MOVE                             R30 R7
      478 GETIMPORT                        R31 K51 [table.concat]
      480 MOVE                             R32 R26
      481 LOADK                            R33 K52 ["\n"]
      482 CALL                             R31 2 -1
      483 FASTCALL                         TABLE_INSERT ; [+2]
      484 GETIMPORT                        R29 K36 [table.insert]
      486 CALL                             R29 -1 0
      487 LOADB                            R11 0
      488 JUMPIF                           R9 ; [+21]
      489 GETUPVAL                         R29 28
      490 MOVE                             R30 R8
      491 MOVE                             R31 R12
      492 MOVE                             R32 R13
      493 MOVE                             R33 R23
      494 MOVE                             R34 R0
      495 CALL                             R29 5 2
      496 MOVE                             R6 R29
      497 MOVE                             R26 R30
      498 JUMPIF                           R6 ; [+11]
      499 MOVE                             R30 R7
      500 GETIMPORT                        R31 K51 [table.concat]
      502 MOVE                             R32 R26
      503 LOADK                            R33 K52 ["\n"]
      504 CALL                             R31 2 -1
      505 FASTCALL                         TABLE_INSERT ; [+2]
      506 GETIMPORT                        R29 K36 [table.insert]
      508 CALL                             R29 -1 0
      509 LOADB                            R11 0
      510 LOADK                            R31 K57 ["WrapLayer"]
      511 NAMECALL                         R29 R12 K58 ["FindFirstChildOfClass"]
      513 CALL                             R29 2 1
      514 JUMPIFNOTEQKNIL                  R29 ; [+25]
      516 GETUPVAL                         R31 1
      517 GETTABLEKS                       R30 R31 K5 ["reportFailure"]
      519 GETUPVAL                         R33 1
      520 GETTABLEKS                       R32 R33 K6 ["ErrorType"]
      522 GETTABLEKS                       R31 R32 K59 ["validateLayeredClothingAccessory_NoWrapLayer"]
      524 LOADNIL                          R32
      525 MOVE                             R33 R0
      526 CALL                             R30 3 0
      527 MOVE                             R31 R7
      528 GETIMPORT                        R32 K10 [string.format]
      530 LOADK                            R33 K60 ["Missing WrapLayer on layered clothing accessory %s. You need to create a child WrapLayer and try again."]
      531 GETTABLEKS                       R34 R8 K12 ["Name"]
      533 CALL                             R32 2 -1
      534 FASTCALL                         TABLE_INSERT ; [+2]
      535 GETIMPORT                        R30 K36 [table.insert]
      537 CALL                             R30 -1 0
      538 LOADB                            R11 0
      539 JUMP                             ; [+41]
      540 GETUPVAL                         R30 29
      541 MOVE                             R31 R29
      542 MOVE                             R32 R0
      543 CALL                             R30 2 2
      544 MOVE                             R6 R30
      545 MOVE                             R26 R31
      546 JUMPIF                           R6 ; [+11]
      547 MOVE                             R31 R7
      548 GETIMPORT                        R32 K51 [table.concat]
      550 MOVE                             R33 R26
      551 LOADK                            R34 K52 ["\n"]
      552 CALL                             R32 2 -1
      553 FASTCALL                         TABLE_INSERT ; [+2]
      554 GETIMPORT                        R30 K36 [table.insert]
      556 CALL                             R30 -1 0
      557 LOADB                            R11 0
      558 GETTABLEKS                       R30 R0 K61 ["allowEditableInstances"]
      560 JUMPIF                           R30 ; [+20]
      561 GETUPVAL                         R32 30
      562 GETTABLEKS                       R31 R32 K21 ["validate"]
      564 MOVE                             R32 R29
      565 MOVE                             R33 R0
      566 CALL                             R31 2 2
      567 MOVE                             R6 R31
      568 MOVE                             R26 R32
      569 JUMPIF                           R6 ; [+11]
      570 MOVE                             R32 R7
      571 GETIMPORT                        R33 K51 [table.concat]
      573 MOVE                             R34 R26
      574 LOADK                            R35 K52 ["\n"]
      575 CALL                             R33 2 -1
      576 FASTCALL                         TABLE_INSERT ; [+2]
      577 GETIMPORT                        R31 K36 [table.insert]
      579 CALL                             R31 -1 0
      580 LOADB                            R11 0
      581 NOT                              R29 R3
      582 JUMPIFNOT                        R4 ; [+1]
      583 LOADB                            R29 0
      584 JUMPIFNOT                        R29 ; [+20]
      585 GETUPVAL                         R30 31
      586 MOVE                             R31 R8
      587 NEWTABLE                         R32 0 0
      589 MOVE                             R33 R0
      590 CALL                             R30 3 2
      591 MOVE                             R6 R30
      592 MOVE                             R26 R31
      593 JUMPIF                           R6 ; [+11]
      594 MOVE                             R31 R7
      595 GETIMPORT                        R32 K51 [table.concat]
      597 MOVE                             R33 R26
      598 LOADK                            R34 K52 ["\n"]
      599 CALL                             R32 2 -1
      600 FASTCALL                         TABLE_INSERT ; [+2]
      601 GETIMPORT                        R30 K36 [table.insert]
      603 CALL                             R30 -1 0
      604 LOADB                            R11 0
      605 JUMPIFNOT                        R14 ; [+120]
      606 GETUPVAL                         R30 32
      607 MOVE                             R31 R13
      608 MOVE                             R32 R23
      609 MOVE                             R33 R0
      610 CALL                             R30 3 2
      611 MOVE                             R6 R30
      612 MOVE                             R26 R31
      613 JUMPIF                           R6 ; [+11]
      614 MOVE                             R31 R7
      615 GETIMPORT                        R32 K51 [table.concat]
      617 MOVE                             R33 R26
      618 LOADK                            R34 K52 ["\n"]
      619 CALL                             R32 2 -1
      620 FASTCALL                         TABLE_INSERT ; [+2]
      621 GETIMPORT                        R30 K36 [table.insert]
      623 CALL                             R30 -1 0
      624 LOADB                            R11 0
      625 GETUPVAL                         R31 33
      626 GETTABLEKS                       R30 R31 K62 ["validateSingleMeshPart"]
      628 MOVE                             R31 R12
      629 MOVE                             R32 R0
      630 CALL                             R30 2 2
      631 MOVE                             R6 R30
      632 MOVE                             R26 R31
      633 JUMPIF                           R6 ; [+11]
      634 MOVE                             R31 R7
      635 GETIMPORT                        R32 K51 [table.concat]
      637 MOVE                             R33 R26
      638 LOADK                            R34 K52 ["\n"]
      639 CALL                             R32 2 -1
      640 FASTCALL                         TABLE_INSERT ; [+2]
      641 GETIMPORT                        R30 K36 [table.insert]
      643 CALL                             R30 -1 0
      644 LOADB                            R11 0
      645 GETUPVAL                         R30 34
      646 MOVE                             R31 R12
      647 MOVE                             R32 R24
      648 MOVE                             R33 R13
      649 MOVE                             R34 R23
      650 MOVE                             R35 R25
      651 GETTABLEKS                       R36 R2 K12 ["Name"]
      653 MOVE                             R37 R0
      654 CALL                             R30 7 2
      655 MOVE                             R6 R30
      656 MOVE                             R26 R31
      657 JUMPIF                           R6 ; [+11]
      658 MOVE                             R31 R7
      659 GETIMPORT                        R32 K51 [table.concat]
      661 MOVE                             R33 R26
      662 LOADK                            R34 K52 ["\n"]
      663 CALL                             R32 2 -1
      664 FASTCALL                         TABLE_INSERT ; [+2]
      665 GETIMPORT                        R30 K36 [table.insert]
      667 CALL                             R30 -1 0
      668 LOADB                            R11 0
      669 GETUPVAL                         R30 35
      670 MOVE                             R31 R13
      671 LOADNIL                          R32
      672 MOVE                             R33 R0
      673 CALL                             R30 3 2
      674 MOVE                             R6 R30
      675 MOVE                             R26 R31
      676 JUMPIF                           R6 ; [+11]
      677 MOVE                             R31 R7
      678 GETIMPORT                        R32 K51 [table.concat]
      680 MOVE                             R33 R26
      681 LOADK                            R34 K52 ["\n"]
      682 CALL                             R32 2 -1
      683 FASTCALL                         TABLE_INSERT ; [+2]
      684 GETIMPORT                        R30 K36 [table.insert]
      686 CALL                             R30 -1 0
      687 LOADB                            R11 0
      688 GETUPVAL                         R30 36
      689 MOVE                             R31 R13
      690 LOADB                            R32 0
      691 MOVE                             R33 R0
      692 CALL                             R30 3 2
      693 MOVE                             R6 R30
      694 MOVE                             R26 R31
      695 JUMPIF                           R6 ; [+11]
      696 MOVE                             R31 R7
      697 GETIMPORT                        R32 K51 [table.concat]
      699 MOVE                             R33 R26
      700 LOADK                            R34 K52 ["\n"]
      701 CALL                             R32 2 -1
      702 FASTCALL                         TABLE_INSERT ; [+2]
      703 GETIMPORT                        R30 K36 [table.insert]
      705 CALL                             R30 -1 0
      706 LOADB                            R11 0
      707 GETUPVAL                         R30 37
      708 MOVE                             R31 R13
      709 MOVE                             R32 R23
      710 MOVE                             R33 R0
      711 CALL                             R30 3 2
      712 MOVE                             R6 R30
      713 MOVE                             R26 R31
      714 JUMPIF                           R6 ; [+11]
      715 MOVE                             R31 R7
      716 GETIMPORT                        R32 K51 [table.concat]
      718 MOVE                             R33 R26
      719 LOADK                            R34 K52 ["\n"]
      720 CALL                             R32 2 -1
      721 FASTCALL                         TABLE_INSERT ; [+2]
      722 GETIMPORT                        R30 K36 [table.insert]
      724 CALL                             R30 -1 0
      725 LOADB                            R11 0
      726 GETUPVAL                         R30 38
      727 MOVE                             R31 R13
      728 MOVE                             R32 R0
      729 MOVE                             R33 R23
      730 CALL                             R30 3 2
      731 MOVE                             R6 R30
      732 MOVE                             R26 R31
      733 JUMPIF                           R6 ; [+11]
      734 MOVE                             R31 R7
      735 GETIMPORT                        R32 K51 [table.concat]
      737 MOVE                             R33 R26
      738 LOADK                            R34 K52 ["\n"]
      739 CALL                             R32 2 -1
      740 FASTCALL                         TABLE_INSERT ; [+2]
      741 GETIMPORT                        R30 K36 [table.insert]
      743 CALL                             R30 -1 0
      744 LOADB                            R11 0
      745 GETUPVAL                         R30 39
      746 MOVE                             R31 R8
      747 MOVE                             R32 R13
      748 MOVE                             R33 R0
      749 CALL                             R30 3 2
      750 MOVE                             R6 R30
      751 MOVE                             R26 R31
      752 JUMPIF                           R6 ; [+14]
      753 MOVE                             R30 R26
      754 LOADNIL                          R31
      755 LOADNIL                          R32
      756 FORGPREP                         R30
      757 FASTCALL2                        TABLE_INSERT R7 R34 ; [+5]
      759 MOVE                             R36 R7
      760 MOVE                             R37 R34
      761 GETIMPORT                        R35 K36 [table.insert]
      763 CALL                             R35 2 0
      764 FORGLOOP                         R30 2 ; [-8]
      766 LOADB                            R11 0
      767 GETUPVAL                         R30 40
      768 MOVE                             R31 R8
      769 MOVE                             R32 R0
      770 CALL                             R30 2 2
      771 MOVE                             R6 R30
      772 MOVE                             R26 R31
      773 JUMPIF                           R6 ; [+11]
      774 MOVE                             R31 R7
      775 GETIMPORT                        R32 K51 [table.concat]
      777 MOVE                             R33 R26
      778 LOADK                            R34 K52 ["\n"]
      779 CALL                             R32 2 -1
      780 FASTCALL                         TABLE_INSERT ; [+2]
      781 GETIMPORT                        R30 K36 [table.insert]
      783 CALL                             R30 -1 0
      784 LOADB                            R11 0
      785 GETUPVAL                         R30 41
      786 CALL                             R30 0 1
      787 JUMPIFNOT                        R30 ; [+21]
      788 GETUPVAL                         R31 42
      789 GETTABLEKS                       R30 R31 K21 ["validate"]
      791 MOVE                             R31 R8
      792 LOADB                            R32 0
      793 MOVE                             R33 R0
      794 CALL                             R30 3 2
      795 MOVE                             R6 R30
      796 MOVE                             R26 R31
      797 JUMPIF                           R6 ; [+11]
      798 MOVE                             R31 R7
      799 GETIMPORT                        R32 K51 [table.concat]
      801 MOVE                             R33 R26
      802 LOADK                            R34 K52 ["\n"]
      803 CALL                             R32 2 -1
      804 FASTCALL                         TABLE_INSERT ; [+2]
      805 GETIMPORT                        R30 K36 [table.insert]
      807 CALL                             R30 -1 0
      808 LOADB                            R11 0
      809 GETUPVAL                         R30 43
      810 CALL                             R30 0 1
      811 JUMPIF                           R30 ; [+46]
      812 GETUPVAL                         R30 44
      813 CALL                             R30 0 1
      814 JUMPIFNOT                        R30 ; [+18]
      815 GETUPVAL                         R30 45
      816 MOVE                             R31 R12
      817 MOVE                             R32 R0
      818 CALL                             R30 2 2
      819 MOVE                             R6 R30
      820 MOVE                             R26 R31
      821 JUMPIF                           R6 ; [+11]
      822 MOVE                             R31 R7
      823 GETIMPORT                        R32 K51 [table.concat]
      825 MOVE                             R33 R26
      826 LOADK                            R34 K52 ["\n"]
      827 CALL                             R32 2 -1
      828 FASTCALL                         TABLE_INSERT ; [+2]
      829 GETIMPORT                        R30 K36 [table.insert]
      831 CALL                             R30 -1 0
      832 LOADB                            R11 0
      833 GETUPVAL                         R32 2
      834 GETTABLEKS                       R31 R32 K63 ["SkinningTransferRequiredTypes"]
      836 GETTABLE                         R30 R31 R2
      837 JUMPIF                           R30 ; [+20]
      838 GETUPVAL                         R31 46
      839 GETTABLEKS                       R30 R31 K64 ["validateMeshPart"]
      841 MOVE                             R31 R12
      842 MOVE                             R32 R0
      843 CALL                             R30 2 2
      844 MOVE                             R6 R30
      845 MOVE                             R26 R31
      846 JUMPIF                           R6 ; [+11]
      847 MOVE                             R31 R7
      848 GETIMPORT                        R32 K51 [table.concat]
      850 MOVE                             R33 R26
      851 LOADK                            R34 K52 ["\n"]
      852 CALL                             R32 2 -1
      853 FASTCALL                         TABLE_INSERT ; [+2]
      854 GETIMPORT                        R30 K36 [table.insert]
      856 CALL                             R30 -1 0
      857 LOADB                            R11 0
      858 MOVE                             R30 R11
      859 MOVE                             R31 R7
      860 RETURN                           R30 2

MAIN:
        0 PREPVARARGS                      0
        1 GETIMPORT                        R2 K1 [script]
        3 GETTABLEKS                       R1 R2 K2 ["Parent"]
        5 GETTABLEKS                       R0 R1 K2 ["Parent"]
        7 GETIMPORT                        R1 K4 [require]
        9 GETTABLEKS                       R3 R0 K5 ["util"]
       11 GETTABLEKS                       R2 R3 K6 ["Types"]
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
       31 GETTABLEKS                       R7 R0 K10 ["validation"]
       33 GETTABLEKS                       R6 R7 K11 ["validateLCCageQuality"]
       35 CALL                             R5 1 1
       36 GETIMPORT                        R6 K4 [require]
       38 GETTABLEKS                       R8 R0 K10 ["validation"]
       40 GETTABLEKS                       R7 R8 K12 ["validateInstanceTree"]
       42 CALL                             R6 1 1
       43 GETIMPORT                        R7 K4 [require]
       45 GETTABLEKS                       R9 R0 K10 ["validation"]
       47 GETTABLEKS                       R8 R9 K13 ["validateMeshTriangles"]
       49 CALL                             R7 1 1
       50 GETIMPORT                        R8 K4 [require]
       52 GETTABLEKS                       R10 R0 K10 ["validation"]
       54 GETTABLEKS                       R9 R10 K14 ["validateModeration"]
       56 CALL                             R8 1 1
       57 GETIMPORT                        R9 K4 [require]
       59 GETTABLEKS                       R11 R0 K10 ["validation"]
       61 GETTABLEKS                       R10 R11 K15 ["validateMaterials"]
       63 CALL                             R9 1 1
       64 GETIMPORT                        R10 K4 [require]
       66 GETTABLEKS                       R12 R0 K10 ["validation"]
       68 GETTABLEKS                       R11 R12 K16 ["validateTags"]
       70 CALL                             R10 1 1
       71 GETIMPORT                        R11 K4 [require]
       73 GETTABLEKS                       R13 R0 K10 ["validation"]
       75 GETTABLEKS                       R12 R13 K17 ["validateMeshBounds"]
       77 CALL                             R11 1 1
       78 GETIMPORT                        R12 K4 [require]
       80 GETTABLEKS                       R14 R0 K10 ["validation"]
       82 GETTABLEKS                       R13 R14 K18 ["validateTextureSize"]
       84 CALL                             R12 1 1
       85 GETIMPORT                        R13 K4 [require]
       87 GETTABLEKS                       R15 R0 K10 ["validation"]
       89 GETTABLEKS                       R14 R15 K19 ["validatePropertyRequirements"]
       91 CALL                             R13 1 1
       92 GETIMPORT                        R14 K4 [require]
       94 GETTABLEKS                       R16 R0 K10 ["validation"]
       96 GETTABLEKS                       R15 R16 K20 ["validateAttributes"]
       98 CALL                             R14 1 1
       99 GETIMPORT                        R15 K4 [require]
      101 GETTABLEKS                       R17 R0 K10 ["validation"]
      103 GETTABLEKS                       R16 R17 K21 ["validateMeshVertColors"]
      105 CALL                             R15 1 1
      106 GETIMPORT                        R16 K4 [require]
      108 GETTABLEKS                       R18 R0 K10 ["validation"]
      110 GETTABLEKS                       R17 R18 K22 ["validateSingleInstance"]
      112 CALL                             R16 1 1
      113 GETIMPORT                        R17 K4 [require]
      115 GETTABLEKS                       R19 R0 K10 ["validation"]
      117 GETTABLEKS                       R18 R19 K23 ["validateHSR"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K4 [require]
      122 GETTABLEKS                       R20 R0 K10 ["validation"]
      124 GETTABLEKS                       R19 R20 K24 ["validateThumbnailConfiguration"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K4 [require]
      129 GETTABLEKS                       R21 R0 K10 ["validation"]
      131 GETTABLEKS                       R20 R21 K25 ["validateScaleType"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K4 [require]
      136 GETTABLEKS                       R22 R0 K10 ["validation"]
      138 GETTABLEKS                       R21 R22 K26 ["validateLayeredClothingInRenderBounds"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K4 [require]
      143 GETTABLEKS                       R23 R0 K10 ["validation"]
      145 GETTABLEKS                       R22 R23 K27 ["ValidateMeshSizeProperty"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K4 [require]
      150 GETTABLEKS                       R24 R0 K10 ["validation"]
      152 GETTABLEKS                       R23 R24 K28 ["ValidatePropertiesSensible"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K4 [require]
      157 GETTABLEKS                       R25 R0 K10 ["validation"]
      159 GETTABLEKS                       R24 R25 K29 ["validateDependencies"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K4 [require]
      164 GETTABLEKS                       R26 R0 K10 ["validation"]
      166 GETTABLEKS                       R25 R26 K30 ["validateSkinningTransfer"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K4 [require]
      171 GETTABLEKS                       R27 R0 K10 ["validation"]
      173 GETTABLEKS                       R26 R27 K31 ["validateTotalSurfaceArea"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K4 [require]
      178 GETTABLEKS                       R28 R0 K10 ["validation"]
      180 GETTABLEKS                       R27 R28 K32 ["validateCoplanarIntersection"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K4 [require]
      185 GETTABLEKS                       R29 R0 K10 ["validation"]
      187 GETTABLEKS                       R28 R29 K33 ["validateMaxCubeDensity"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K4 [require]
      192 GETTABLEKS                       R30 R0 K10 ["validation"]
      194 GETTABLEKS                       R29 R30 K34 ["ValidateHSRData"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K4 [require]
      199 GETTABLEKS                       R31 R0 K10 ["validation"]
      201 GETTABLEKS                       R30 R31 K35 ["validateSurfaceAppearanceTextureSize"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K4 [require]
      206 GETTABLEKS                       R32 R0 K10 ["validation"]
      208 GETTABLEKS                       R31 R32 K36 ["ValidateTexturePack"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K4 [require]
      213 GETTABLEKS                       R33 R0 K5 ["util"]
      215 GETTABLEKS                       R32 R33 K37 ["RigidOrLayeredAllowed"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K4 [require]
      220 GETTABLEKS                       R34 R0 K5 ["util"]
      222 GETTABLEKS                       R33 R34 K38 ["createLayeredClothingSchema"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K4 [require]
      227 GETTABLEKS                       R35 R0 K5 ["util"]
      229 GETTABLEKS                       R34 R35 K39 ["createEyebrowEyelashSchema"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K4 [require]
      234 GETTABLEKS                       R36 R0 K5 ["util"]
      236 GETTABLEKS                       R35 R36 K40 ["getAttachment"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K4 [require]
      241 GETTABLEKS                       R37 R0 K5 ["util"]
      243 GETTABLEKS                       R36 R37 K41 ["getMeshSize"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K4 [require]
      248 GETTABLEKS                       R38 R0 K5 ["util"]
      250 GETTABLEKS                       R37 R38 K42 ["getEditableMeshFromContext"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K4 [require]
      255 GETTABLEKS                       R39 R0 K5 ["util"]
      257 GETTABLEKS                       R38 R39 K43 ["getEditableImageFromContext"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K4 [require]
      262 GETTABLEKS                       R40 R0 K5 ["util"]
      264 GETTABLEKS                       R39 R40 K44 ["getExpectedPartSize"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K4 [require]
      269 GETTABLEKS                       R41 R0 K5 ["util"]
      271 GETTABLEKS                       R40 R41 K45 ["pcallDeferred"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K4 [require]
      276 GETTABLEKS                       R42 R0 K46 ["flags"]
      278 GETTABLEKS                       R41 R42 K47 ["getFIntUGCValidationLCHandleScaleOffsetMaximum"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K4 [require]
      283 GETTABLEKS                       R43 R0 K46 ["flags"]
      285 GETTABLEKS                       R42 R43 K48 ["getEngineUGCValidateRelativeSkinningTransfer"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K4 [require]
      290 GETTABLEKS                       R44 R0 K46 ["flags"]
      292 GETTABLEKS                       R43 R44 K49 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      294 CALL                             R42 1 1
      295 GETIMPORT                        R43 K4 [require]
      297 GETTABLEKS                       R45 R0 K46 ["flags"]
      299 GETTABLEKS                       R44 R45 K50 ["getFFlagUGCValidateAccessoryAssetTextureLimit"]
      301 CALL                             R43 1 1
      302 GETIMPORT                        R44 K4 [require]
      304 GETTABLEKS                       R46 R0 K46 ["flags"]
      306 GETTABLEKS                       R45 R46 K51 ["getFFlagUGCValidateLayeredClothingAssetSurfaceAppearanceTextureLimits"]
      308 CALL                             R44 1 1
      309 GETIMPORT                        R45 K4 [require]
      311 GETTABLEKS                       R47 R0 K46 ["flags"]
      313 GETTABLEKS                       R46 R47 K52 ["getFFlagUGCValidateTexturePack"]
      315 CALL                             R45 1 1
      316 GETIMPORT                        R46 K4 [require]
      318 GETTABLEKS                       R48 R0 K46 ["flags"]
      320 GETTABLEKS                       R47 R48 K53 ["getFFlagUGCValidateEyebrowEyelashThumbnailSchema"]
      322 CALL                             R46 1 1
      323 GETIMPORT                        R47 K4 [require]
      325 GETTABLEKS                       R49 R0 K10 ["validation"]
      327 GETTABLEKS                       R48 R49 K54 ["ValidateMeshPartOnlySkinnedToR15"]
      329 CALL                             R47 1 1
      330 GETIMPORT                        R48 K4 [require]
      332 GETTABLEKS                       R50 R0 K46 ["flags"]
      334 GETTABLEKS                       R49 R50 K55 ["getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning"]
      336 CALL                             R48 1 1
      337 DUPCLOSURE                       R49 K56 [PROTO_1]
      338 CAPTURE                          VAL R31
      339 CAPTURE                          VAL R2
      340 CAPTURE                          VAL R3
      341 CAPTURE                          VAL R16
      342 CAPTURE                          VAL R46
      343 CAPTURE                          VAL R33
      344 CAPTURE                          VAL R32
      345 CAPTURE                          VAL R6
      346 CAPTURE                          VAL R42
      347 CAPTURE                          VAL R22
      348 CAPTURE                          VAL R23
      349 CAPTURE                          VAL R36
      350 CAPTURE                          VAL R37
      351 CAPTURE                          VAL R39
      352 CAPTURE                          VAL R35
      353 CAPTURE                          VAL R38
      354 CAPTURE                          VAL R40
      355 CAPTURE                          VAL R34
      356 CAPTURE                          VAL R9
      357 CAPTURE                          VAL R13
      358 CAPTURE                          VAL R10
      359 CAPTURE                          VAL R14
      360 CAPTURE                          VAL R43
      361 CAPTURE                          VAL R4
      362 CAPTURE                          VAL R12
      363 CAPTURE                          VAL R44
      364 CAPTURE                          VAL R29
      365 CAPTURE                          VAL R19
      366 CAPTURE                          VAL R18
      367 CAPTURE                          VAL R17
      368 CAPTURE                          VAL R28
      369 CAPTURE                          VAL R8
      370 CAPTURE                          VAL R25
      371 CAPTURE                          VAL R21
      372 CAPTURE                          VAL R11
      373 CAPTURE                          VAL R7
      374 CAPTURE                          VAL R15
      375 CAPTURE                          VAL R26
      376 CAPTURE                          VAL R27
      377 CAPTURE                          VAL R5
      378 CAPTURE                          VAL R20
      379 CAPTURE                          VAL R45
      380 CAPTURE                          VAL R30
      381 CAPTURE                          VAL R48
      382 CAPTURE                          VAL R41
      383 CAPTURE                          VAL R24
      384 CAPTURE                          VAL R47
      385 RETURN                           R49 1
