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
       72 GETUPVAL                         R11 7
       73 GETTABLEKS                       R10 R11 K15 ["validate"]
       75 MOVE                             R11 R8
       76 MOVE                             R12 R0
       77 CALL                             R10 2 2
       78 MOVE                             R6 R10
       79 MOVE                             R7 R11
       80 JUMPIF                           R6 ; [+3]
       81 LOADB                            R10 0
       82 MOVE                             R11 R7
       83 RETURN                           R10 2
       84 GETUPVAL                         R10 8
       85 CALL                             R10 0 1
       86 JUMPIFNOT                        R10 ; [+10]
       87 GETUPVAL                         R10 9
       88 MOVE                             R11 R8
       89 MOVE                             R12 R0
       90 CALL                             R10 2 2
       91 MOVE                             R6 R10
       92 MOVE                             R7 R11
       93 JUMPIF                           R6 ; [+3]
       94 LOADB                            R10 0
       95 MOVE                             R11 R7
       96 RETURN                           R10 2
       97 LOADB                            R10 1
       98 NEWTABLE                         R7 0 0
      100 LOADK                            R13 K16 ["Handle"]
      101 NAMECALL                         R11 R8 K17 ["FindFirstChild"]
      103 CALL                             R11 2 1
      104 DUPTABLE                         R12 K22 [{"fullName", "fieldName", "contentId", "context"}]
      105 NAMECALL                         R13 R11 K23 ["GetFullName"]
      107 CALL                             R13 1 1
      108 SETTABLEKS                       R13 R12 K18 ["fullName"]
      110 LOADK                            R13 K24 ["MeshId"]
      111 SETTABLEKS                       R13 R12 K19 ["fieldName"]
      113 GETTABLEKS                       R13 R11 K24 ["MeshId"]
      115 SETTABLEKS                       R13 R12 K20 ["contentId"]
      117 GETTABLEKS                       R13 R8 K12 ["Name"]
      119 SETTABLEKS                       R13 R12 K21 ["context"]
      121 LOADB                            R13 0
      122 GETTABLEKS                       R14 R12 K20 ["contentId"]
      124 JUMPIFEQKNIL                     R14 ; [+7]
      126 GETTABLEKS                       R14 R12 K20 ["contentId"]
      128 JUMPIFNOTEQKS                    R14 K25 [""] ; [+2]
      130 LOADB                            R13 0 +1
      131 LOADB                            R13 1
      132 GETUPVAL                         R14 10
      133 MOVE                             R15 R11
      134 LOADK                            R16 K24 ["MeshId"]
      135 MOVE                             R17 R0
      136 CALL                             R14 3 2
      137 JUMPIF                           R14 ; [+56]
      138 GETTABLEKS                       R16 R12 K20 ["contentId"]
      140 JUMPIF                           R16 ; [+30]
      141 LOADB                            R13 0
      142 GETUPVAL                         R17 1
      143 GETTABLEKS                       R16 R17 K5 ["reportFailure"]
      145 GETUPVAL                         R19 1
      146 GETTABLEKS                       R18 R19 K6 ["ErrorType"]
      148 GETTABLEKS                       R17 R18 K26 ["validateLayeredClothingAccessory_NoMeshId"]
      150 LOADNIL                          R18
      151 MOVE                             R19 R0
      152 CALL                             R16 3 0
      153 LOADB                            R10 0
      154 NEWTABLE                         R18 0 1
      156 GETIMPORT                        R19 K10 [string.format]
      158 LOADK                            R20 K27 ["Missing meshId on layered clothing accessory '%s'. Make sure you are using a valid meshId and try again.\n"]
      159 GETTABLEKS                       R21 R8 K12 ["Name"]
      161 CALL                             R19 2 -1
      162 SETLIST                          R18 R19 -1 [1]
      164 FASTCALL2                        TABLE_INSERT R7 R18 ; [+4]
      166 MOVE                             R17 R7
      167 GETIMPORT                        R16 K30 [table.insert]
      169 CALL                             R16 2 0
      170 JUMP                             ; [+23]
      171 GETUPVAL                         R17 1
      172 GETTABLEKS                       R16 R17 K5 ["reportFailure"]
      174 GETUPVAL                         R19 1
      175 GETTABLEKS                       R18 R19 K6 ["ErrorType"]
      177 GETTABLEKS                       R17 R18 K31 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      179 LOADNIL                          R18
      180 MOVE                             R19 R0
      181 CALL                             R16 3 0
      182 LOADB                            R16 0
      183 NEWTABLE                         R17 0 1
      185 GETIMPORT                        R18 K10 [string.format]
      187 LOADK                            R19 K32 ["Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again."]
      188 GETTABLEKS                       R20 R8 K12 ["Name"]
      190 CALL                             R18 2 -1
      191 SETLIST                          R17 R18 -1 [1]
      193 RETURN                           R16 2
      194 SETTABLEKS                       R15 R12 K33 ["editableMesh"]
      196 LOADB                            R13 1
      197 GETTABLEKS                       R16 R11 K34 ["TextureID"]
      199 DUPTABLE                         R17 K35 [{"fullName", "fieldName", "contentId"}]
      200 NAMECALL                         R18 R11 K23 ["GetFullName"]
      202 CALL                             R18 1 1
      203 SETTABLEKS                       R18 R17 K18 ["fullName"]
      205 LOADK                            R18 K34 ["TextureID"]
      206 SETTABLEKS                       R18 R17 K19 ["fieldName"]
      208 SETTABLEKS                       R16 R17 K20 ["contentId"]
      210 LOADNIL                          R18
      211 LOADNIL                          R19
      212 JUMPIFEQKS                       R16 K25 [""] ; [+23]
      214 GETUPVAL                         R20 11
      215 MOVE                             R21 R11
      216 LOADK                            R22 K34 ["TextureID"]
      217 MOVE                             R23 R0
      218 CALL                             R20 3 2
      219 MOVE                             R18 R20
      220 MOVE                             R19 R21
      221 JUMPIF                           R18 ; [+12]
      222 LOADB                            R20 0
      223 NEWTABLE                         R21 0 1
      225 GETIMPORT                        R22 K10 [string.format]
      227 LOADK                            R23 K36 ["Failed to load texture for layered clothing accessory '%s'. Make sure texture exists and try again."]
      228 GETTABLEKS                       R24 R8 K12 ["Name"]
      230 CALL                             R22 2 -1
      231 SETLIST                          R21 R22 -1 [1]
      233 RETURN                           R20 2
      234 SETTABLEKS                       R19 R17 K37 ["editableImage"]
      236 LOADNIL                          R20
      237 LOADNIL                          R21
      238 GETUPVAL                         R22 12
      239 CALL                             R22 0 1
      240 JUMPIFNOT                        R22 ; [+3]
      241 GETTABLEKS                       R21 R11 K38 ["meshSize"]
      243 JUMP                             ; [+32]
      244 GETUPVAL                         R22 13
      245 NEWCLOSURE                       R23 P0
      246 CAPTURE                          UPVAL U14
      247 CAPTURE                          VAL R12
      248 MOVE                             R24 R0
      249 CALL                             R22 2 2
      250 MOVE                             R20 R22
      251 MOVE                             R21 R23
      252 JUMPIF                           R20 ; [+23]
      253 GETUPVAL                         R23 1
      254 GETTABLEKS                       R22 R23 K5 ["reportFailure"]
      256 GETUPVAL                         R25 1
      257 GETTABLEKS                       R24 R25 K6 ["ErrorType"]
      259 GETTABLEKS                       R23 R24 K31 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      261 LOADNIL                          R24
      262 MOVE                             R25 R0
      263 CALL                             R22 3 0
      264 LOADB                            R22 0
      265 NEWTABLE                         R23 0 1
      267 GETIMPORT                        R24 K10 [string.format]
      269 LOADK                            R25 K32 ["Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again."]
      270 GETTABLEKS                       R26 R8 K12 ["Name"]
      272 CALL                             R24 2 -1
      273 SETLIST                          R23 R24 -1 [1]
      275 RETURN                           R22 2
      276 GETUPVAL                         R23 15
      277 MOVE                             R24 R11
      278 MOVE                             R25 R0
      279 CALL                             R23 2 1
      280 DIV                              R22 R23 R21
      281 GETUPVAL                         R23 16
      282 CALL                             R23 0 1
      283 JUMPIFNOT                        R23 ; [+31]
      284 LOADK                            R25 K39 [{1, 1, 1}]
      285 GETUPVAL                         R27 17
      286 CALL                             R27 0 1
      287 DIVK                             R26 R27 K40 [1000]
      288 NAMECALL                         R23 R22 K41 ["FuzzyEq"]
      290 CALL                             R23 3 1
      291 JUMPIF                           R23 ; [+23]
      292 GETUPVAL                         R24 1
      293 GETTABLEKS                       R23 R24 K5 ["reportFailure"]
      295 GETUPVAL                         R26 1
      296 GETTABLEKS                       R25 R26 K6 ["ErrorType"]
      298 GETTABLEKS                       R24 R25 K42 ["validateLayeredClothingAccessory_HandleIsScaled"]
      300 LOADNIL                          R25
      301 MOVE                             R26 R0
      302 CALL                             R23 3 0
      303 MOVE                             R24 R7
      304 GETIMPORT                        R25 K10 [string.format]
      306 LOADK                            R26 K43 ["%s has been scaled, but mesh parts with wrap layers do not support scaling. You need to change the Size property to match the MeshSize property."]
      307 GETTABLEKS                       R27 R11 K12 ["Name"]
      309 CALL                             R25 2 -1
      310 FASTCALL                         TABLE_INSERT ; [+2]
      311 GETIMPORT                        R23 K30 [table.insert]
      313 CALL                             R23 -1 0
      314 LOADB                            R10 0
      315 GETUPVAL                         R23 18
      316 MOVE                             R24 R11
      317 GETTABLEKS                       R25 R5 K14 ["attachmentNames"]
      319 CALL                             R23 2 1
      320 GETTABLEKS                       R25 R5 K44 ["bounds"]
      322 GETTABLEKS                       R26 R23 K12 ["Name"]
      324 GETTABLE                         R24 R25 R26
      325 NEWTABLE                         R25 0 0
      327 GETUPVAL                         R26 19
      328 MOVE                             R27 R8
      329 MOVE                             R28 R0
      330 CALL                             R26 2 2
      331 MOVE                             R6 R26
      332 MOVE                             R25 R27
      333 JUMPIF                           R6 ; [+11]
      334 MOVE                             R27 R7
      335 GETIMPORT                        R28 K46 [table.concat]
      337 MOVE                             R29 R25
      338 LOADK                            R30 K47 ["\n"]
      339 CALL                             R28 2 -1
      340 FASTCALL                         TABLE_INSERT ; [+2]
      341 GETIMPORT                        R26 K30 [table.insert]
      343 CALL                             R26 -1 0
      344 LOADB                            R10 0
      345 GETUPVAL                         R26 20
      346 MOVE                             R27 R8
      347 LOADNIL                          R28
      348 MOVE                             R29 R0
      349 CALL                             R26 3 2
      350 MOVE                             R6 R26
      351 MOVE                             R25 R27
      352 JUMPIF                           R6 ; [+11]
      353 MOVE                             R27 R7
      354 GETIMPORT                        R28 K46 [table.concat]
      356 MOVE                             R29 R25
      357 LOADK                            R30 K47 ["\n"]
      358 CALL                             R28 2 -1
      359 FASTCALL                         TABLE_INSERT ; [+2]
      360 GETIMPORT                        R26 K30 [table.insert]
      362 CALL                             R26 -1 0
      363 LOADB                            R10 0
      364 GETUPVAL                         R26 21
      365 MOVE                             R27 R8
      366 MOVE                             R28 R0
      367 CALL                             R26 2 2
      368 MOVE                             R6 R26
      369 MOVE                             R25 R27
      370 JUMPIF                           R6 ; [+11]
      371 MOVE                             R27 R7
      372 GETIMPORT                        R28 K46 [table.concat]
      374 MOVE                             R29 R25
      375 LOADK                            R30 K47 ["\n"]
      376 CALL                             R28 2 -1
      377 FASTCALL                         TABLE_INSERT ; [+2]
      378 GETIMPORT                        R26 K30 [table.insert]
      380 CALL                             R26 -1 0
      381 LOADB                            R10 0
      382 GETUPVAL                         R26 22
      383 MOVE                             R27 R8
      384 MOVE                             R28 R0
      385 CALL                             R26 2 2
      386 MOVE                             R6 R26
      387 MOVE                             R25 R27
      388 JUMPIF                           R6 ; [+11]
      389 MOVE                             R27 R7
      390 GETIMPORT                        R28 K46 [table.concat]
      392 MOVE                             R29 R25
      393 LOADK                            R30 K47 ["\n"]
      394 CALL                             R28 2 -1
      395 FASTCALL                         TABLE_INSERT ; [+2]
      396 GETIMPORT                        R26 K30 [table.insert]
      398 CALL                             R26 -1 0
      399 LOADB                            R10 0
      400 LOADNIL                          R26
      401 GETUPVAL                         R27 23
      402 CALL                             R27 0 1
      403 JUMPIFNOT                        R27 ; [+9]
      404 GETUPVAL                         R28 24
      405 GETTABLEKS                       R27 R28 K48 ["getTextureLimit"]
      407 MOVE                             R28 R2
      408 MOVE                             R29 R11
      409 GETTABLEKS                       R30 R17 K19 ["fieldName"]
      411 CALL                             R27 3 1
      412 MOVE                             R26 R27
      413 GETUPVAL                         R27 25
      414 MOVE                             R28 R17
      415 LOADB                            R29 1
      416 MOVE                             R30 R0
      417 MOVE                             R31 R26
      418 CALL                             R27 4 2
      419 MOVE                             R6 R27
      420 MOVE                             R25 R28
      421 JUMPIF                           R6 ; [+11]
      422 MOVE                             R28 R7
      423 GETIMPORT                        R29 K46 [table.concat]
      425 MOVE                             R30 R25
      426 LOADK                            R31 K47 ["\n"]
      427 CALL                             R29 2 -1
      428 FASTCALL                         TABLE_INSERT ; [+2]
      429 GETIMPORT                        R27 K30 [table.insert]
      431 CALL                             R27 -1 0
      432 LOADB                            R10 0
      433 GETUPVAL                         R27 26
      434 CALL                             R27 0 1
      435 JUMPIFNOT                        R27 ; [+18]
      436 GETUPVAL                         R27 27
      437 MOVE                             R28 R8
      438 MOVE                             R29 R0
      439 CALL                             R27 2 2
      440 MOVE                             R6 R27
      441 MOVE                             R25 R28
      442 JUMPIF                           R6 ; [+11]
      443 MOVE                             R28 R7
      444 GETIMPORT                        R29 K46 [table.concat]
      446 MOVE                             R30 R25
      447 LOADK                            R31 K47 ["\n"]
      448 CALL                             R29 2 -1
      449 FASTCALL                         TABLE_INSERT ; [+2]
      450 GETIMPORT                        R27 K30 [table.insert]
      452 CALL                             R27 -1 0
      453 LOADB                            R10 0
      454 LOADK                            R29 K49 ["AvatarPartScaleType"]
      455 NAMECALL                         R27 R11 K17 ["FindFirstChild"]
      457 CALL                             R27 2 1
      458 JUMPIFNOT                        R27 ; [+23]
      459 LOADK                            R30 K50 ["StringValue"]
      460 NAMECALL                         R28 R27 K51 ["IsA"]
      462 CALL                             R28 2 1
      463 JUMPIFNOT                        R28 ; [+18]
      464 GETUPVAL                         R28 28
      465 MOVE                             R29 R27
      466 MOVE                             R30 R0
      467 CALL                             R28 2 2
      468 MOVE                             R6 R28
      469 MOVE                             R25 R29
      470 JUMPIF                           R6 ; [+11]
      471 MOVE                             R29 R7
      472 GETIMPORT                        R30 K46 [table.concat]
      474 MOVE                             R31 R25
      475 LOADK                            R32 K47 ["\n"]
      476 CALL                             R30 2 -1
      477 FASTCALL                         TABLE_INSERT ; [+2]
      478 GETIMPORT                        R28 K30 [table.insert]
      480 CALL                             R28 -1 0
      481 LOADB                            R10 0
      482 GETUPVAL                         R28 29
      483 MOVE                             R29 R8
      484 MOVE                             R30 R11
      485 MOVE                             R31 R12
      486 MOVE                             R32 R22
      487 MOVE                             R33 R0
      488 CALL                             R28 5 2
      489 MOVE                             R6 R28
      490 MOVE                             R25 R29
      491 JUMPIF                           R6 ; [+11]
      492 MOVE                             R29 R7
      493 GETIMPORT                        R30 K46 [table.concat]
      495 MOVE                             R31 R25
      496 LOADK                            R32 K47 ["\n"]
      497 CALL                             R30 2 -1
      498 FASTCALL                         TABLE_INSERT ; [+2]
      499 GETIMPORT                        R28 K30 [table.insert]
      501 CALL                             R28 -1 0
      502 LOADB                            R10 0
      503 LOADK                            R30 K52 ["WrapLayer"]
      504 NAMECALL                         R28 R11 K53 ["FindFirstChildOfClass"]
      506 CALL                             R28 2 1
      507 JUMPIFNOTEQKNIL                  R28 ; [+25]
      509 GETUPVAL                         R30 1
      510 GETTABLEKS                       R29 R30 K5 ["reportFailure"]
      512 GETUPVAL                         R32 1
      513 GETTABLEKS                       R31 R32 K6 ["ErrorType"]
      515 GETTABLEKS                       R30 R31 K54 ["validateLayeredClothingAccessory_NoWrapLayer"]
      517 LOADNIL                          R31
      518 MOVE                             R32 R0
      519 CALL                             R29 3 0
      520 MOVE                             R30 R7
      521 GETIMPORT                        R31 K10 [string.format]
      523 LOADK                            R32 K55 ["Missing WrapLayer on layered clothing accessory %s. You need to create a child WrapLayer and try again."]
      524 GETTABLEKS                       R33 R8 K12 ["Name"]
      526 CALL                             R31 2 -1
      527 FASTCALL                         TABLE_INSERT ; [+2]
      528 GETIMPORT                        R29 K30 [table.insert]
      530 CALL                             R29 -1 0
      531 LOADB                            R10 0
      532 JUMP                             ; [+44]
      533 GETUPVAL                         R29 30
      534 MOVE                             R30 R28
      535 MOVE                             R31 R0
      536 CALL                             R29 2 2
      537 MOVE                             R6 R29
      538 MOVE                             R25 R30
      539 JUMPIF                           R6 ; [+11]
      540 MOVE                             R30 R7
      541 GETIMPORT                        R31 K46 [table.concat]
      543 MOVE                             R32 R25
      544 LOADK                            R33 K47 ["\n"]
      545 CALL                             R31 2 -1
      546 FASTCALL                         TABLE_INSERT ; [+2]
      547 GETIMPORT                        R29 K30 [table.insert]
      549 CALL                             R29 -1 0
      550 LOADB                            R10 0
      551 GETUPVAL                         R29 31
      552 CALL                             R29 0 1
      553 JUMPIFNOT                        R29 ; [+23]
      554 GETTABLEKS                       R29 R0 K56 ["allowEditableInstances"]
      556 JUMPIF                           R29 ; [+20]
      557 GETUPVAL                         R31 32
      558 GETTABLEKS                       R30 R31 K15 ["validate"]
      560 MOVE                             R31 R28
      561 MOVE                             R32 R0
      562 CALL                             R30 2 2
      563 MOVE                             R6 R30
      564 MOVE                             R25 R31
      565 JUMPIF                           R6 ; [+11]
      566 MOVE                             R31 R7
      567 GETIMPORT                        R32 K46 [table.concat]
      569 MOVE                             R33 R25
      570 LOADK                            R34 K47 ["\n"]
      571 CALL                             R32 2 -1
      572 FASTCALL                         TABLE_INSERT ; [+2]
      573 GETIMPORT                        R30 K30 [table.insert]
      575 CALL                             R30 -1 0
      576 LOADB                            R10 0
      577 NOT                              R28 R3
      578 JUMPIFNOT                        R4 ; [+1]
      579 LOADB                            R28 0
      580 JUMPIFNOT                        R28 ; [+20]
      581 GETUPVAL                         R29 33
      582 MOVE                             R30 R8
      583 NEWTABLE                         R31 0 0
      585 MOVE                             R32 R0
      586 CALL                             R29 3 2
      587 MOVE                             R6 R29
      588 MOVE                             R25 R30
      589 JUMPIF                           R6 ; [+11]
      590 MOVE                             R30 R7
      591 GETIMPORT                        R31 K46 [table.concat]
      593 MOVE                             R32 R25
      594 LOADK                            R33 K47 ["\n"]
      595 CALL                             R31 2 -1
      596 FASTCALL                         TABLE_INSERT ; [+2]
      597 GETIMPORT                        R29 K30 [table.insert]
      599 CALL                             R29 -1 0
      600 LOADB                            R10 0
      601 JUMPIFNOT                        R13 ; [+123]
      602 GETUPVAL                         R29 34
      603 MOVE                             R30 R12
      604 MOVE                             R31 R22
      605 MOVE                             R32 R0
      606 CALL                             R29 3 2
      607 MOVE                             R6 R29
      608 MOVE                             R25 R30
      609 JUMPIF                           R6 ; [+11]
      610 MOVE                             R30 R7
      611 GETIMPORT                        R31 K46 [table.concat]
      613 MOVE                             R32 R25
      614 LOADK                            R33 K47 ["\n"]
      615 CALL                             R31 2 -1
      616 FASTCALL                         TABLE_INSERT ; [+2]
      617 GETIMPORT                        R29 K30 [table.insert]
      619 CALL                             R29 -1 0
      620 LOADB                            R10 0
      621 GETUPVAL                         R30 35
      622 GETTABLEKS                       R29 R30 K57 ["validateSingleMeshPart"]
      624 MOVE                             R30 R11
      625 MOVE                             R31 R0
      626 CALL                             R29 2 2
      627 MOVE                             R6 R29
      628 MOVE                             R25 R30
      629 JUMPIF                           R6 ; [+11]
      630 MOVE                             R30 R7
      631 GETIMPORT                        R31 K46 [table.concat]
      633 MOVE                             R32 R25
      634 LOADK                            R33 K47 ["\n"]
      635 CALL                             R31 2 -1
      636 FASTCALL                         TABLE_INSERT ; [+2]
      637 GETIMPORT                        R29 K30 [table.insert]
      639 CALL                             R29 -1 0
      640 LOADB                            R10 0
      641 GETUPVAL                         R29 36
      642 MOVE                             R30 R11
      643 MOVE                             R31 R23
      644 MOVE                             R32 R12
      645 MOVE                             R33 R22
      646 MOVE                             R34 R24
      647 GETTABLEKS                       R35 R2 K12 ["Name"]
      649 MOVE                             R36 R0
      650 CALL                             R29 7 2
      651 MOVE                             R6 R29
      652 MOVE                             R25 R30
      653 JUMPIF                           R6 ; [+11]
      654 MOVE                             R30 R7
      655 GETIMPORT                        R31 K46 [table.concat]
      657 MOVE                             R32 R25
      658 LOADK                            R33 K47 ["\n"]
      659 CALL                             R31 2 -1
      660 FASTCALL                         TABLE_INSERT ; [+2]
      661 GETIMPORT                        R29 K30 [table.insert]
      663 CALL                             R29 -1 0
      664 LOADB                            R10 0
      665 GETUPVAL                         R29 37
      666 MOVE                             R30 R12
      667 LOADNIL                          R31
      668 MOVE                             R32 R0
      669 CALL                             R29 3 2
      670 MOVE                             R6 R29
      671 MOVE                             R25 R30
      672 JUMPIF                           R6 ; [+11]
      673 MOVE                             R30 R7
      674 GETIMPORT                        R31 K46 [table.concat]
      676 MOVE                             R32 R25
      677 LOADK                            R33 K47 ["\n"]
      678 CALL                             R31 2 -1
      679 FASTCALL                         TABLE_INSERT ; [+2]
      680 GETIMPORT                        R29 K30 [table.insert]
      682 CALL                             R29 -1 0
      683 LOADB                            R10 0
      684 GETUPVAL                         R29 38
      685 CALL                             R29 0 1
      686 JUMPIFNOT                        R29 ; [+19]
      687 GETUPVAL                         R29 39
      688 MOVE                             R30 R12
      689 LOADB                            R31 0
      690 MOVE                             R32 R0
      691 CALL                             R29 3 2
      692 MOVE                             R6 R29
      693 MOVE                             R25 R30
      694 JUMPIF                           R6 ; [+11]
      695 MOVE                             R30 R7
      696 GETIMPORT                        R31 K46 [table.concat]
      698 MOVE                             R32 R25
      699 LOADK                            R33 K47 ["\n"]
      700 CALL                             R31 2 -1
      701 FASTCALL                         TABLE_INSERT ; [+2]
      702 GETIMPORT                        R29 K30 [table.insert]
      704 CALL                             R29 -1 0
      705 LOADB                            R10 0
      706 GETUPVAL                         R29 40
      707 MOVE                             R30 R12
      708 MOVE                             R31 R22
      709 MOVE                             R32 R0
      710 CALL                             R29 3 2
      711 MOVE                             R6 R29
      712 MOVE                             R25 R30
      713 JUMPIF                           R6 ; [+11]
      714 MOVE                             R30 R7
      715 GETIMPORT                        R31 K46 [table.concat]
      717 MOVE                             R32 R25
      718 LOADK                            R33 K47 ["\n"]
      719 CALL                             R31 2 -1
      720 FASTCALL                         TABLE_INSERT ; [+2]
      721 GETIMPORT                        R29 K30 [table.insert]
      723 CALL                             R29 -1 0
      724 LOADB                            R10 0
      725 GETUPVAL                         R29 41
      726 CALL                             R29 0 1
      727 JUMPIFNOT                        R29 ; [+19]
      728 GETUPVAL                         R29 42
      729 MOVE                             R30 R12
      730 MOVE                             R31 R0
      731 MOVE                             R32 R22
      732 CALL                             R29 3 2
      733 MOVE                             R6 R29
      734 MOVE                             R25 R30
      735 JUMPIF                           R6 ; [+11]
      736 MOVE                             R30 R7
      737 GETIMPORT                        R31 K46 [table.concat]
      739 MOVE                             R32 R25
      740 LOADK                            R33 K47 ["\n"]
      741 CALL                             R31 2 -1
      742 FASTCALL                         TABLE_INSERT ; [+2]
      743 GETIMPORT                        R29 K30 [table.insert]
      745 CALL                             R29 -1 0
      746 LOADB                            R10 0
      747 GETUPVAL                         R29 43
      748 CALL                             R29 0 1
      749 JUMPIFNOT                        R29 ; [+22]
      750 GETUPVAL                         R29 44
      751 MOVE                             R30 R8
      752 MOVE                             R31 R12
      753 MOVE                             R32 R0
      754 CALL                             R29 3 2
      755 MOVE                             R6 R29
      756 MOVE                             R25 R30
      757 JUMPIF                           R6 ; [+14]
      758 MOVE                             R29 R25
      759 LOADNIL                          R30
      760 LOADNIL                          R31
      761 FORGPREP                         R29
      762 FASTCALL2                        TABLE_INSERT R7 R33 ; [+5]
      764 MOVE                             R35 R7
      765 MOVE                             R36 R33
      766 GETIMPORT                        R34 K30 [table.insert]
      768 CALL                             R34 2 0
      769 FORGLOOP                         R29 2 ; [-8]
      771 LOADB                            R10 0
      772 GETUPVAL                         R29 45
      773 CALL                             R29 0 1
      774 JUMPIFNOT                        R29 ; [+18]
      775 GETUPVAL                         R29 46
      776 MOVE                             R30 R8
      777 MOVE                             R31 R0
      778 CALL                             R29 2 2
      779 MOVE                             R6 R29
      780 MOVE                             R25 R30
      781 JUMPIF                           R6 ; [+11]
      782 MOVE                             R30 R7
      783 GETIMPORT                        R31 K46 [table.concat]
      785 MOVE                             R32 R25
      786 LOADK                            R33 K47 ["\n"]
      787 CALL                             R31 2 -1
      788 FASTCALL                         TABLE_INSERT ; [+2]
      789 GETIMPORT                        R29 K30 [table.insert]
      791 CALL                             R29 -1 0
      792 LOADB                            R10 0
      793 GETUPVAL                         R29 47
      794 CALL                             R29 0 1
      795 JUMPIFNOT                        R29 ; [+21]
      796 GETUPVAL                         R30 48
      797 GETTABLEKS                       R29 R30 K15 ["validate"]
      799 MOVE                             R30 R8
      800 LOADB                            R31 0
      801 MOVE                             R32 R0
      802 CALL                             R29 3 2
      803 MOVE                             R6 R29
      804 MOVE                             R25 R30
      805 JUMPIF                           R6 ; [+11]
      806 MOVE                             R30 R7
      807 GETIMPORT                        R31 K46 [table.concat]
      809 MOVE                             R32 R25
      810 LOADK                            R33 K47 ["\n"]
      811 CALL                             R31 2 -1
      812 FASTCALL                         TABLE_INSERT ; [+2]
      813 GETIMPORT                        R29 K30 [table.insert]
      815 CALL                             R29 -1 0
      816 LOADB                            R10 0
      817 GETUPVAL                         R29 49
      818 CALL                             R29 0 1
      819 JUMPIFNOT                        R29 ; [+18]
      820 GETUPVAL                         R29 50
      821 MOVE                             R30 R11
      822 MOVE                             R31 R0
      823 CALL                             R29 2 2
      824 MOVE                             R6 R29
      825 MOVE                             R25 R30
      826 JUMPIF                           R6 ; [+11]
      827 MOVE                             R30 R7
      828 GETIMPORT                        R31 K46 [table.concat]
      830 MOVE                             R32 R25
      831 LOADK                            R33 K47 ["\n"]
      832 CALL                             R31 2 -1
      833 FASTCALL                         TABLE_INSERT ; [+2]
      834 GETIMPORT                        R29 K30 [table.insert]
      836 CALL                             R29 -1 0
      837 LOADB                            R10 0
      838 GETUPVAL                         R29 51
      839 CALL                             R29 0 1
      840 JUMPIFNOT                        R29 ; [+25]
      841 GETUPVAL                         R31 2
      842 GETTABLEKS                       R30 R31 K58 ["SkinningTransferRequiredTypes"]
      844 GETTABLE                         R29 R30 R2
      845 JUMPIF                           R29 ; [+20]
      846 GETUPVAL                         R30 52
      847 GETTABLEKS                       R29 R30 K59 ["validateMeshPart"]
      849 MOVE                             R30 R11
      850 MOVE                             R31 R0
      851 CALL                             R29 2 2
      852 MOVE                             R6 R29
      853 MOVE                             R25 R30
      854 JUMPIF                           R6 ; [+11]
      855 MOVE                             R30 R7
      856 GETIMPORT                        R31 K46 [table.concat]
      858 MOVE                             R32 R25
      859 LOADK                            R33 K47 ["\n"]
      860 CALL                             R31 2 -1
      861 FASTCALL                         TABLE_INSERT ; [+2]
      862 GETIMPORT                        R29 K30 [table.insert]
      864 CALL                             R29 -1 0
      865 LOADB                            R10 0
      866 MOVE                             R29 R10
      867 MOVE                             R30 R7
      868 RETURN                           R29 2

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
      229 GETTABLEKS                       R34 R35 K39 ["getAttachment"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K4 [require]
      234 GETTABLEKS                       R36 R0 K5 ["util"]
      236 GETTABLEKS                       R35 R36 K40 ["getMeshSize"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K4 [require]
      241 GETTABLEKS                       R37 R0 K5 ["util"]
      243 GETTABLEKS                       R36 R37 K41 ["getEditableMeshFromContext"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K4 [require]
      248 GETTABLEKS                       R38 R0 K5 ["util"]
      250 GETTABLEKS                       R37 R38 K42 ["getEditableImageFromContext"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K4 [require]
      255 GETTABLEKS                       R39 R0 K5 ["util"]
      257 GETTABLEKS                       R38 R39 K43 ["getExpectedPartSize"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K4 [require]
      262 GETTABLEKS                       R40 R0 K5 ["util"]
      264 GETTABLEKS                       R39 R40 K44 ["pcallDeferred"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K4 [require]
      269 GETTABLEKS                       R41 R0 K45 ["flags"]
      271 GETTABLEKS                       R40 R41 K46 ["getFFlagUGCValidateMeshVertColors"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K4 [require]
      276 GETTABLEKS                       R42 R0 K45 ["flags"]
      278 GETTABLEKS                       R41 R42 K47 ["getFFlagUGCValidateLCCagesQuality"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K4 [require]
      283 GETTABLEKS                       R43 R0 K45 ["flags"]
      285 GETTABLEKS                       R42 R43 K48 ["getEngineFeatureEngineUGCValidationMaxVerticesCollision"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K4 [require]
      290 GETTABLEKS                       R44 R0 K45 ["flags"]
      292 GETTABLEKS                       R43 R44 K49 ["getFFlagUGCValidateLCHandleScale"]
      294 CALL                             R42 1 1
      295 GETIMPORT                        R43 K4 [require]
      297 GETTABLEKS                       R45 R0 K45 ["flags"]
      299 GETTABLEKS                       R44 R45 K50 ["getFFlagUGCValidationRefactorMeshScale"]
      301 CALL                             R43 1 1
      302 GETIMPORT                        R44 K4 [require]
      304 GETTABLEKS                       R46 R0 K45 ["flags"]
      306 GETTABLEKS                       R45 R46 K51 ["getFIntUGCValidationLCHandleScaleOffsetMaximum"]
      308 CALL                             R44 1 1
      309 GETIMPORT                        R45 K4 [require]
      311 GETTABLEKS                       R47 R0 K45 ["flags"]
      313 GETTABLEKS                       R46 R47 K52 ["getFFlagValidateDeformedLayeredClothingIsInBounds"]
      315 CALL                             R45 1 1
      316 GETIMPORT                        R46 K4 [require]
      318 GETTABLEKS                       R48 R0 K45 ["flags"]
      320 GETTABLEKS                       R47 R48 K53 ["getFFlagUGCValidateAccessoriesRCCOwnership"]
      322 CALL                             R46 1 1
      323 GETIMPORT                        R47 K4 [require]
      325 GETTABLEKS                       R49 R0 K45 ["flags"]
      327 GETTABLEKS                       R48 R49 K54 ["getEngineUGCValidateRelativeSkinningTransfer"]
      329 CALL                             R47 1 1
      330 GETIMPORT                        R48 K4 [require]
      332 GETTABLEKS                       R50 R0 K45 ["flags"]
      334 GETTABLEKS                       R49 R50 K55 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      336 CALL                             R48 1 1
      337 GETIMPORT                        R49 K4 [require]
      339 GETTABLEKS                       R51 R0 K45 ["flags"]
      341 GETTABLEKS                       R50 R51 K56 ["getFFlagUGCValidateCheckHSRFileDataFix"]
      343 CALL                             R49 1 1
      344 GETIMPORT                        R50 K4 [require]
      346 GETTABLEKS                       R52 R0 K45 ["flags"]
      348 GETTABLEKS                       R51 R52 K57 ["getFFlagUGCValidateAccessoryAssetTextureLimit"]
      350 CALL                             R50 1 1
      351 GETIMPORT                        R51 K4 [require]
      353 GETTABLEKS                       R53 R0 K45 ["flags"]
      355 GETTABLEKS                       R52 R53 K58 ["getFFlagUGCValidateLayeredClothingAssetSurfaceAppearanceTextureLimits"]
      357 CALL                             R51 1 1
      358 GETIMPORT                        R52 K4 [require]
      360 GETTABLEKS                       R54 R0 K45 ["flags"]
      362 GETTABLEKS                       R53 R54 K59 ["getFFlagValidateLCsOnlySkinnedToR15"]
      364 CALL                             R52 1 1
      365 GETIMPORT                        R53 K4 [require]
      367 GETTABLEKS                       R55 R0 K45 ["flags"]
      369 GETTABLEKS                       R54 R55 K60 ["getFFlagUGCValidateTexturePack"]
      371 CALL                             R53 1 1
      372 GETIMPORT                        R54 K4 [require]
      374 GETTABLEKS                       R56 R0 K10 ["validation"]
      376 GETTABLEKS                       R55 R56 K61 ["ValidateMeshPartOnlySkinnedToR15"]
      378 CALL                             R54 1 1
      379 DUPCLOSURE                       R55 K62 [PROTO_1]
      380 CAPTURE                          VAL R31
      381 CAPTURE                          VAL R2
      382 CAPTURE                          VAL R3
      383 CAPTURE                          VAL R16
      384 CAPTURE                          VAL R32
      385 CAPTURE                          VAL R6
      386 CAPTURE                          VAL R48
      387 CAPTURE                          VAL R22
      388 CAPTURE                          VAL R46
      389 CAPTURE                          VAL R23
      390 CAPTURE                          VAL R35
      391 CAPTURE                          VAL R36
      392 CAPTURE                          VAL R43
      393 CAPTURE                          VAL R38
      394 CAPTURE                          VAL R34
      395 CAPTURE                          VAL R37
      396 CAPTURE                          VAL R42
      397 CAPTURE                          VAL R44
      398 CAPTURE                          VAL R33
      399 CAPTURE                          VAL R9
      400 CAPTURE                          VAL R13
      401 CAPTURE                          VAL R10
      402 CAPTURE                          VAL R14
      403 CAPTURE                          VAL R50
      404 CAPTURE                          VAL R4
      405 CAPTURE                          VAL R12
      406 CAPTURE                          VAL R51
      407 CAPTURE                          VAL R29
      408 CAPTURE                          VAL R19
      409 CAPTURE                          VAL R18
      410 CAPTURE                          VAL R17
      411 CAPTURE                          VAL R49
      412 CAPTURE                          VAL R28
      413 CAPTURE                          VAL R8
      414 CAPTURE                          VAL R25
      415 CAPTURE                          VAL R21
      416 CAPTURE                          VAL R11
      417 CAPTURE                          VAL R7
      418 CAPTURE                          VAL R39
      419 CAPTURE                          VAL R15
      420 CAPTURE                          VAL R26
      421 CAPTURE                          VAL R41
      422 CAPTURE                          VAL R27
      423 CAPTURE                          VAL R40
      424 CAPTURE                          VAL R5
      425 CAPTURE                          VAL R45
      426 CAPTURE                          VAL R20
      427 CAPTURE                          VAL R53
      428 CAPTURE                          VAL R30
      429 CAPTURE                          VAL R47
      430 CAPTURE                          VAL R24
      431 CAPTURE                          VAL R52
      432 CAPTURE                          VAL R54
      433 RETURN                           R55 1
