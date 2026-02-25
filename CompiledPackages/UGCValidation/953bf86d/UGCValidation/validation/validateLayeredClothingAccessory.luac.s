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
      107 CALL                             R11 0 1
      108 JUMPIFNOT                        R11 ; [+10]
      109 GETUPVAL                         R11 11
      110 MOVE                             R12 R8
      111 MOVE                             R13 R0
      112 CALL                             R11 2 2
      113 MOVE                             R6 R11
      114 MOVE                             R7 R12
      115 JUMPIF                           R6 ; [+3]
      116 LOADB                            R11 0
      117 MOVE                             R12 R7
      118 RETURN                           R11 2
      119 LOADB                            R11 1
      120 NEWTABLE                         R7 0 0
      122 LOADK                            R14 K22 ["Handle"]
      123 NAMECALL                         R12 R8 K23 ["FindFirstChild"]
      125 CALL                             R12 2 1
      126 DUPTABLE                         R13 K28 [{"fullName", "fieldName", "contentId", "context"}]
      127 NAMECALL                         R14 R12 K29 ["GetFullName"]
      129 CALL                             R14 1 1
      130 SETTABLEKS                       R14 R13 K24 ["fullName"]
      132 LOADK                            R14 K30 ["MeshId"]
      133 SETTABLEKS                       R14 R13 K25 ["fieldName"]
      135 GETTABLEKS                       R14 R12 K30 ["MeshId"]
      137 SETTABLEKS                       R14 R13 K26 ["contentId"]
      139 GETTABLEKS                       R14 R8 K12 ["Name"]
      141 SETTABLEKS                       R14 R13 K27 ["context"]
      143 LOADB                            R14 0
      144 GETTABLEKS                       R15 R13 K26 ["contentId"]
      146 JUMPIFEQKNIL                     R15 ; [+7]
      148 GETTABLEKS                       R15 R13 K26 ["contentId"]
      150 JUMPIFNOTEQKS                    R15 K31 [""] ; [+2]
      152 LOADB                            R14 0 +1
      153 LOADB                            R14 1
      154 GETUPVAL                         R15 12
      155 MOVE                             R16 R12
      156 LOADK                            R17 K30 ["MeshId"]
      157 MOVE                             R18 R0
      158 CALL                             R15 3 2
      159 JUMPIF                           R15 ; [+56]
      160 GETTABLEKS                       R17 R13 K26 ["contentId"]
      162 JUMPIF                           R17 ; [+30]
      163 LOADB                            R14 0
      164 GETUPVAL                         R18 1
      165 GETTABLEKS                       R17 R18 K5 ["reportFailure"]
      167 GETUPVAL                         R20 1
      168 GETTABLEKS                       R19 R20 K6 ["ErrorType"]
      170 GETTABLEKS                       R18 R19 K32 ["validateLayeredClothingAccessory_NoMeshId"]
      172 LOADNIL                          R19
      173 MOVE                             R20 R0
      174 CALL                             R17 3 0
      175 LOADB                            R11 0
      176 NEWTABLE                         R19 0 1
      178 GETIMPORT                        R20 K10 [string.format]
      180 LOADK                            R21 K33 ["Missing meshId on layered clothing accessory '%s'. Make sure you are using a valid meshId and try again.\n"]
      181 GETTABLEKS                       R22 R8 K12 ["Name"]
      183 CALL                             R20 2 -1
      184 SETLIST                          R19 R20 -1 [1]
      186 FASTCALL2                        TABLE_INSERT R7 R19 ; [+4]
      188 MOVE                             R18 R7
      189 GETIMPORT                        R17 K36 [table.insert]
      191 CALL                             R17 2 0
      192 JUMP                             ; [+23]
      193 GETUPVAL                         R18 1
      194 GETTABLEKS                       R17 R18 K5 ["reportFailure"]
      196 GETUPVAL                         R20 1
      197 GETTABLEKS                       R19 R20 K6 ["ErrorType"]
      199 GETTABLEKS                       R18 R19 K37 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      201 LOADNIL                          R19
      202 MOVE                             R20 R0
      203 CALL                             R17 3 0
      204 LOADB                            R17 0
      205 NEWTABLE                         R18 0 1
      207 GETIMPORT                        R19 K10 [string.format]
      209 LOADK                            R20 K38 ["Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again."]
      210 GETTABLEKS                       R21 R8 K12 ["Name"]
      212 CALL                             R19 2 -1
      213 SETLIST                          R18 R19 -1 [1]
      215 RETURN                           R17 2
      216 SETTABLEKS                       R16 R13 K39 ["editableMesh"]
      218 LOADB                            R14 1
      219 GETTABLEKS                       R17 R12 K40 ["TextureID"]
      221 DUPTABLE                         R18 K41 [{"fullName", "fieldName", "contentId"}]
      222 NAMECALL                         R19 R12 K29 ["GetFullName"]
      224 CALL                             R19 1 1
      225 SETTABLEKS                       R19 R18 K24 ["fullName"]
      227 LOADK                            R19 K40 ["TextureID"]
      228 SETTABLEKS                       R19 R18 K25 ["fieldName"]
      230 SETTABLEKS                       R17 R18 K26 ["contentId"]
      232 LOADNIL                          R19
      233 LOADNIL                          R20
      234 JUMPIFEQKS                       R17 K31 [""] ; [+23]
      236 GETUPVAL                         R21 13
      237 MOVE                             R22 R12
      238 LOADK                            R23 K40 ["TextureID"]
      239 MOVE                             R24 R0
      240 CALL                             R21 3 2
      241 MOVE                             R19 R21
      242 MOVE                             R20 R22
      243 JUMPIF                           R19 ; [+12]
      244 LOADB                            R21 0
      245 NEWTABLE                         R22 0 1
      247 GETIMPORT                        R23 K10 [string.format]
      249 LOADK                            R24 K42 ["Failed to load texture for layered clothing accessory '%s'. Make sure texture exists and try again."]
      250 GETTABLEKS                       R25 R8 K12 ["Name"]
      252 CALL                             R23 2 -1
      253 SETLIST                          R22 R23 -1 [1]
      255 RETURN                           R21 2
      256 SETTABLEKS                       R20 R18 K43 ["editableImage"]
      258 LOADNIL                          R21
      259 LOADNIL                          R22
      260 GETUPVAL                         R23 14
      261 CALL                             R23 0 1
      262 JUMPIFNOT                        R23 ; [+3]
      263 GETTABLEKS                       R22 R12 K44 ["meshSize"]
      265 JUMP                             ; [+32]
      266 GETUPVAL                         R23 15
      267 NEWCLOSURE                       R24 P0
      268 CAPTURE                          UPVAL U16
      269 CAPTURE                          VAL R13
      270 MOVE                             R25 R0
      271 CALL                             R23 2 2
      272 MOVE                             R21 R23
      273 MOVE                             R22 R24
      274 JUMPIF                           R21 ; [+23]
      275 GETUPVAL                         R24 1
      276 GETTABLEKS                       R23 R24 K5 ["reportFailure"]
      278 GETUPVAL                         R26 1
      279 GETTABLEKS                       R25 R26 K6 ["ErrorType"]
      281 GETTABLEKS                       R24 R25 K37 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      283 LOADNIL                          R25
      284 MOVE                             R26 R0
      285 CALL                             R23 3 0
      286 LOADB                            R23 0
      287 NEWTABLE                         R24 0 1
      289 GETIMPORT                        R25 K10 [string.format]
      291 LOADK                            R26 K38 ["Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again."]
      292 GETTABLEKS                       R27 R8 K12 ["Name"]
      294 CALL                             R25 2 -1
      295 SETLIST                          R24 R25 -1 [1]
      297 RETURN                           R23 2
      298 GETUPVAL                         R24 17
      299 MOVE                             R25 R12
      300 MOVE                             R26 R0
      301 CALL                             R24 2 1
      302 DIV                              R23 R24 R22
      303 GETUPVAL                         R24 18
      304 CALL                             R24 0 1
      305 JUMPIFNOT                        R24 ; [+31]
      306 LOADK                            R26 K45 [{1, 1, 1}]
      307 GETUPVAL                         R28 19
      308 CALL                             R28 0 1
      309 DIVK                             R27 R28 K46 [1000]
      310 NAMECALL                         R24 R23 K47 ["FuzzyEq"]
      312 CALL                             R24 3 1
      313 JUMPIF                           R24 ; [+23]
      314 GETUPVAL                         R25 1
      315 GETTABLEKS                       R24 R25 K5 ["reportFailure"]
      317 GETUPVAL                         R27 1
      318 GETTABLEKS                       R26 R27 K6 ["ErrorType"]
      320 GETTABLEKS                       R25 R26 K48 ["validateLayeredClothingAccessory_HandleIsScaled"]
      322 LOADNIL                          R26
      323 MOVE                             R27 R0
      324 CALL                             R24 3 0
      325 MOVE                             R25 R7
      326 GETIMPORT                        R26 K10 [string.format]
      328 LOADK                            R27 K49 ["%s has been scaled, but mesh parts with wrap layers do not support scaling. You need to change the Size property to match the MeshSize property."]
      329 GETTABLEKS                       R28 R12 K12 ["Name"]
      331 CALL                             R26 2 -1
      332 FASTCALL                         TABLE_INSERT ; [+2]
      333 GETIMPORT                        R24 K36 [table.insert]
      335 CALL                             R24 -1 0
      336 LOADB                            R11 0
      337 GETUPVAL                         R24 20
      338 MOVE                             R25 R12
      339 GETTABLEKS                       R26 R5 K20 ["attachmentNames"]
      341 CALL                             R24 2 1
      342 GETTABLEKS                       R26 R5 K50 ["bounds"]
      344 GETTABLEKS                       R27 R24 K12 ["Name"]
      346 GETTABLE                         R25 R26 R27
      347 NEWTABLE                         R26 0 0
      349 GETUPVAL                         R27 21
      350 MOVE                             R28 R8
      351 MOVE                             R29 R0
      352 CALL                             R27 2 2
      353 MOVE                             R6 R27
      354 MOVE                             R26 R28
      355 JUMPIF                           R6 ; [+11]
      356 MOVE                             R28 R7
      357 GETIMPORT                        R29 K52 [table.concat]
      359 MOVE                             R30 R26
      360 LOADK                            R31 K53 ["\n"]
      361 CALL                             R29 2 -1
      362 FASTCALL                         TABLE_INSERT ; [+2]
      363 GETIMPORT                        R27 K36 [table.insert]
      365 CALL                             R27 -1 0
      366 LOADB                            R11 0
      367 GETUPVAL                         R27 22
      368 MOVE                             R28 R8
      369 LOADNIL                          R29
      370 MOVE                             R30 R0
      371 CALL                             R27 3 2
      372 MOVE                             R6 R27
      373 MOVE                             R26 R28
      374 JUMPIF                           R6 ; [+11]
      375 MOVE                             R28 R7
      376 GETIMPORT                        R29 K52 [table.concat]
      378 MOVE                             R30 R26
      379 LOADK                            R31 K53 ["\n"]
      380 CALL                             R29 2 -1
      381 FASTCALL                         TABLE_INSERT ; [+2]
      382 GETIMPORT                        R27 K36 [table.insert]
      384 CALL                             R27 -1 0
      385 LOADB                            R11 0
      386 GETUPVAL                         R27 23
      387 MOVE                             R28 R8
      388 MOVE                             R29 R0
      389 CALL                             R27 2 2
      390 MOVE                             R6 R27
      391 MOVE                             R26 R28
      392 JUMPIF                           R6 ; [+11]
      393 MOVE                             R28 R7
      394 GETIMPORT                        R29 K52 [table.concat]
      396 MOVE                             R30 R26
      397 LOADK                            R31 K53 ["\n"]
      398 CALL                             R29 2 -1
      399 FASTCALL                         TABLE_INSERT ; [+2]
      400 GETIMPORT                        R27 K36 [table.insert]
      402 CALL                             R27 -1 0
      403 LOADB                            R11 0
      404 GETUPVAL                         R27 24
      405 MOVE                             R28 R8
      406 MOVE                             R29 R0
      407 CALL                             R27 2 2
      408 MOVE                             R6 R27
      409 MOVE                             R26 R28
      410 JUMPIF                           R6 ; [+11]
      411 MOVE                             R28 R7
      412 GETIMPORT                        R29 K52 [table.concat]
      414 MOVE                             R30 R26
      415 LOADK                            R31 K53 ["\n"]
      416 CALL                             R29 2 -1
      417 FASTCALL                         TABLE_INSERT ; [+2]
      418 GETIMPORT                        R27 K36 [table.insert]
      420 CALL                             R27 -1 0
      421 LOADB                            R11 0
      422 LOADNIL                          R27
      423 GETUPVAL                         R28 25
      424 CALL                             R28 0 1
      425 JUMPIFNOT                        R28 ; [+9]
      426 GETUPVAL                         R29 26
      427 GETTABLEKS                       R28 R29 K54 ["getTextureLimit"]
      429 MOVE                             R29 R2
      430 MOVE                             R30 R12
      431 GETTABLEKS                       R31 R18 K25 ["fieldName"]
      433 CALL                             R28 3 1
      434 MOVE                             R27 R28
      435 GETUPVAL                         R28 27
      436 MOVE                             R29 R18
      437 LOADB                            R30 1
      438 MOVE                             R31 R0
      439 MOVE                             R32 R27
      440 CALL                             R28 4 2
      441 MOVE                             R6 R28
      442 MOVE                             R26 R29
      443 JUMPIF                           R6 ; [+11]
      444 MOVE                             R29 R7
      445 GETIMPORT                        R30 K52 [table.concat]
      447 MOVE                             R31 R26
      448 LOADK                            R32 K53 ["\n"]
      449 CALL                             R30 2 -1
      450 FASTCALL                         TABLE_INSERT ; [+2]
      451 GETIMPORT                        R28 K36 [table.insert]
      453 CALL                             R28 -1 0
      454 LOADB                            R11 0
      455 GETUPVAL                         R28 28
      456 CALL                             R28 0 1
      457 JUMPIFNOT                        R28 ; [+18]
      458 GETUPVAL                         R28 29
      459 MOVE                             R29 R8
      460 MOVE                             R30 R0
      461 CALL                             R28 2 2
      462 MOVE                             R6 R28
      463 MOVE                             R26 R29
      464 JUMPIF                           R6 ; [+11]
      465 MOVE                             R29 R7
      466 GETIMPORT                        R30 K52 [table.concat]
      468 MOVE                             R31 R26
      469 LOADK                            R32 K53 ["\n"]
      470 CALL                             R30 2 -1
      471 FASTCALL                         TABLE_INSERT ; [+2]
      472 GETIMPORT                        R28 K36 [table.insert]
      474 CALL                             R28 -1 0
      475 LOADB                            R11 0
      476 LOADK                            R30 K55 ["AvatarPartScaleType"]
      477 NAMECALL                         R28 R12 K23 ["FindFirstChild"]
      479 CALL                             R28 2 1
      480 JUMPIFNOT                        R28 ; [+23]
      481 LOADK                            R31 K56 ["StringValue"]
      482 NAMECALL                         R29 R28 K57 ["IsA"]
      484 CALL                             R29 2 1
      485 JUMPIFNOT                        R29 ; [+18]
      486 GETUPVAL                         R29 30
      487 MOVE                             R30 R28
      488 MOVE                             R31 R0
      489 CALL                             R29 2 2
      490 MOVE                             R6 R29
      491 MOVE                             R26 R30
      492 JUMPIF                           R6 ; [+11]
      493 MOVE                             R30 R7
      494 GETIMPORT                        R31 K52 [table.concat]
      496 MOVE                             R32 R26
      497 LOADK                            R33 K53 ["\n"]
      498 CALL                             R31 2 -1
      499 FASTCALL                         TABLE_INSERT ; [+2]
      500 GETIMPORT                        R29 K36 [table.insert]
      502 CALL                             R29 -1 0
      503 LOADB                            R11 0
      504 JUMPIF                           R9 ; [+21]
      505 GETUPVAL                         R29 31
      506 MOVE                             R30 R8
      507 MOVE                             R31 R12
      508 MOVE                             R32 R13
      509 MOVE                             R33 R23
      510 MOVE                             R34 R0
      511 CALL                             R29 5 2
      512 MOVE                             R6 R29
      513 MOVE                             R26 R30
      514 JUMPIF                           R6 ; [+11]
      515 MOVE                             R30 R7
      516 GETIMPORT                        R31 K52 [table.concat]
      518 MOVE                             R32 R26
      519 LOADK                            R33 K53 ["\n"]
      520 CALL                             R31 2 -1
      521 FASTCALL                         TABLE_INSERT ; [+2]
      522 GETIMPORT                        R29 K36 [table.insert]
      524 CALL                             R29 -1 0
      525 LOADB                            R11 0
      526 LOADK                            R31 K58 ["WrapLayer"]
      527 NAMECALL                         R29 R12 K59 ["FindFirstChildOfClass"]
      529 CALL                             R29 2 1
      530 JUMPIFNOTEQKNIL                  R29 ; [+25]
      532 GETUPVAL                         R31 1
      533 GETTABLEKS                       R30 R31 K5 ["reportFailure"]
      535 GETUPVAL                         R33 1
      536 GETTABLEKS                       R32 R33 K6 ["ErrorType"]
      538 GETTABLEKS                       R31 R32 K60 ["validateLayeredClothingAccessory_NoWrapLayer"]
      540 LOADNIL                          R32
      541 MOVE                             R33 R0
      542 CALL                             R30 3 0
      543 MOVE                             R31 R7
      544 GETIMPORT                        R32 K10 [string.format]
      546 LOADK                            R33 K61 ["Missing WrapLayer on layered clothing accessory %s. You need to create a child WrapLayer and try again."]
      547 GETTABLEKS                       R34 R8 K12 ["Name"]
      549 CALL                             R32 2 -1
      550 FASTCALL                         TABLE_INSERT ; [+2]
      551 GETIMPORT                        R30 K36 [table.insert]
      553 CALL                             R30 -1 0
      554 LOADB                            R11 0
      555 JUMP                             ; [+44]
      556 GETUPVAL                         R30 32
      557 MOVE                             R31 R29
      558 MOVE                             R32 R0
      559 CALL                             R30 2 2
      560 MOVE                             R6 R30
      561 MOVE                             R26 R31
      562 JUMPIF                           R6 ; [+11]
      563 MOVE                             R31 R7
      564 GETIMPORT                        R32 K52 [table.concat]
      566 MOVE                             R33 R26
      567 LOADK                            R34 K53 ["\n"]
      568 CALL                             R32 2 -1
      569 FASTCALL                         TABLE_INSERT ; [+2]
      570 GETIMPORT                        R30 K36 [table.insert]
      572 CALL                             R30 -1 0
      573 LOADB                            R11 0
      574 GETUPVAL                         R30 33
      575 CALL                             R30 0 1
      576 JUMPIFNOT                        R30 ; [+23]
      577 GETTABLEKS                       R30 R0 K62 ["allowEditableInstances"]
      579 JUMPIF                           R30 ; [+20]
      580 GETUPVAL                         R32 34
      581 GETTABLEKS                       R31 R32 K21 ["validate"]
      583 MOVE                             R32 R29
      584 MOVE                             R33 R0
      585 CALL                             R31 2 2
      586 MOVE                             R6 R31
      587 MOVE                             R26 R32
      588 JUMPIF                           R6 ; [+11]
      589 MOVE                             R32 R7
      590 GETIMPORT                        R33 K52 [table.concat]
      592 MOVE                             R34 R26
      593 LOADK                            R35 K53 ["\n"]
      594 CALL                             R33 2 -1
      595 FASTCALL                         TABLE_INSERT ; [+2]
      596 GETIMPORT                        R31 K36 [table.insert]
      598 CALL                             R31 -1 0
      599 LOADB                            R11 0
      600 NOT                              R29 R3
      601 JUMPIFNOT                        R4 ; [+1]
      602 LOADB                            R29 0
      603 JUMPIFNOT                        R29 ; [+20]
      604 GETUPVAL                         R30 35
      605 MOVE                             R31 R8
      606 NEWTABLE                         R32 0 0
      608 MOVE                             R33 R0
      609 CALL                             R30 3 2
      610 MOVE                             R6 R30
      611 MOVE                             R26 R31
      612 JUMPIF                           R6 ; [+11]
      613 MOVE                             R31 R7
      614 GETIMPORT                        R32 K52 [table.concat]
      616 MOVE                             R33 R26
      617 LOADK                            R34 K53 ["\n"]
      618 CALL                             R32 2 -1
      619 FASTCALL                         TABLE_INSERT ; [+2]
      620 GETIMPORT                        R30 K36 [table.insert]
      622 CALL                             R30 -1 0
      623 LOADB                            R11 0
      624 JUMPIFNOT                        R14 ; [+123]
      625 GETUPVAL                         R30 36
      626 MOVE                             R31 R13
      627 MOVE                             R32 R23
      628 MOVE                             R33 R0
      629 CALL                             R30 3 2
      630 MOVE                             R6 R30
      631 MOVE                             R26 R31
      632 JUMPIF                           R6 ; [+11]
      633 MOVE                             R31 R7
      634 GETIMPORT                        R32 K52 [table.concat]
      636 MOVE                             R33 R26
      637 LOADK                            R34 K53 ["\n"]
      638 CALL                             R32 2 -1
      639 FASTCALL                         TABLE_INSERT ; [+2]
      640 GETIMPORT                        R30 K36 [table.insert]
      642 CALL                             R30 -1 0
      643 LOADB                            R11 0
      644 GETUPVAL                         R31 37
      645 GETTABLEKS                       R30 R31 K63 ["validateSingleMeshPart"]
      647 MOVE                             R31 R12
      648 MOVE                             R32 R0
      649 CALL                             R30 2 2
      650 MOVE                             R6 R30
      651 MOVE                             R26 R31
      652 JUMPIF                           R6 ; [+11]
      653 MOVE                             R31 R7
      654 GETIMPORT                        R32 K52 [table.concat]
      656 MOVE                             R33 R26
      657 LOADK                            R34 K53 ["\n"]
      658 CALL                             R32 2 -1
      659 FASTCALL                         TABLE_INSERT ; [+2]
      660 GETIMPORT                        R30 K36 [table.insert]
      662 CALL                             R30 -1 0
      663 LOADB                            R11 0
      664 GETUPVAL                         R30 38
      665 MOVE                             R31 R12
      666 MOVE                             R32 R24
      667 MOVE                             R33 R13
      668 MOVE                             R34 R23
      669 MOVE                             R35 R25
      670 GETTABLEKS                       R36 R2 K12 ["Name"]
      672 MOVE                             R37 R0
      673 CALL                             R30 7 2
      674 MOVE                             R6 R30
      675 MOVE                             R26 R31
      676 JUMPIF                           R6 ; [+11]
      677 MOVE                             R31 R7
      678 GETIMPORT                        R32 K52 [table.concat]
      680 MOVE                             R33 R26
      681 LOADK                            R34 K53 ["\n"]
      682 CALL                             R32 2 -1
      683 FASTCALL                         TABLE_INSERT ; [+2]
      684 GETIMPORT                        R30 K36 [table.insert]
      686 CALL                             R30 -1 0
      687 LOADB                            R11 0
      688 GETUPVAL                         R30 39
      689 MOVE                             R31 R13
      690 LOADNIL                          R32
      691 MOVE                             R33 R0
      692 CALL                             R30 3 2
      693 MOVE                             R6 R30
      694 MOVE                             R26 R31
      695 JUMPIF                           R6 ; [+11]
      696 MOVE                             R31 R7
      697 GETIMPORT                        R32 K52 [table.concat]
      699 MOVE                             R33 R26
      700 LOADK                            R34 K53 ["\n"]
      701 CALL                             R32 2 -1
      702 FASTCALL                         TABLE_INSERT ; [+2]
      703 GETIMPORT                        R30 K36 [table.insert]
      705 CALL                             R30 -1 0
      706 LOADB                            R11 0
      707 GETUPVAL                         R30 40
      708 CALL                             R30 0 1
      709 JUMPIFNOT                        R30 ; [+19]
      710 GETUPVAL                         R30 41
      711 MOVE                             R31 R13
      712 LOADB                            R32 0
      713 MOVE                             R33 R0
      714 CALL                             R30 3 2
      715 MOVE                             R6 R30
      716 MOVE                             R26 R31
      717 JUMPIF                           R6 ; [+11]
      718 MOVE                             R31 R7
      719 GETIMPORT                        R32 K52 [table.concat]
      721 MOVE                             R33 R26
      722 LOADK                            R34 K53 ["\n"]
      723 CALL                             R32 2 -1
      724 FASTCALL                         TABLE_INSERT ; [+2]
      725 GETIMPORT                        R30 K36 [table.insert]
      727 CALL                             R30 -1 0
      728 LOADB                            R11 0
      729 GETUPVAL                         R30 42
      730 MOVE                             R31 R13
      731 MOVE                             R32 R23
      732 MOVE                             R33 R0
      733 CALL                             R30 3 2
      734 MOVE                             R6 R30
      735 MOVE                             R26 R31
      736 JUMPIF                           R6 ; [+11]
      737 MOVE                             R31 R7
      738 GETIMPORT                        R32 K52 [table.concat]
      740 MOVE                             R33 R26
      741 LOADK                            R34 K53 ["\n"]
      742 CALL                             R32 2 -1
      743 FASTCALL                         TABLE_INSERT ; [+2]
      744 GETIMPORT                        R30 K36 [table.insert]
      746 CALL                             R30 -1 0
      747 LOADB                            R11 0
      748 GETUPVAL                         R30 43
      749 CALL                             R30 0 1
      750 JUMPIFNOT                        R30 ; [+19]
      751 GETUPVAL                         R30 44
      752 MOVE                             R31 R13
      753 MOVE                             R32 R0
      754 MOVE                             R33 R23
      755 CALL                             R30 3 2
      756 MOVE                             R6 R30
      757 MOVE                             R26 R31
      758 JUMPIF                           R6 ; [+11]
      759 MOVE                             R31 R7
      760 GETIMPORT                        R32 K52 [table.concat]
      762 MOVE                             R33 R26
      763 LOADK                            R34 K53 ["\n"]
      764 CALL                             R32 2 -1
      765 FASTCALL                         TABLE_INSERT ; [+2]
      766 GETIMPORT                        R30 K36 [table.insert]
      768 CALL                             R30 -1 0
      769 LOADB                            R11 0
      770 GETUPVAL                         R30 45
      771 CALL                             R30 0 1
      772 JUMPIFNOT                        R30 ; [+22]
      773 GETUPVAL                         R30 46
      774 MOVE                             R31 R8
      775 MOVE                             R32 R13
      776 MOVE                             R33 R0
      777 CALL                             R30 3 2
      778 MOVE                             R6 R30
      779 MOVE                             R26 R31
      780 JUMPIF                           R6 ; [+14]
      781 MOVE                             R30 R26
      782 LOADNIL                          R31
      783 LOADNIL                          R32
      784 FORGPREP                         R30
      785 FASTCALL2                        TABLE_INSERT R7 R34 ; [+5]
      787 MOVE                             R36 R7
      788 MOVE                             R37 R34
      789 GETIMPORT                        R35 K36 [table.insert]
      791 CALL                             R35 2 0
      792 FORGLOOP                         R30 2 ; [-8]
      794 LOADB                            R11 0
      795 GETUPVAL                         R30 47
      796 CALL                             R30 0 1
      797 JUMPIFNOT                        R30 ; [+18]
      798 GETUPVAL                         R30 48
      799 MOVE                             R31 R8
      800 MOVE                             R32 R0
      801 CALL                             R30 2 2
      802 MOVE                             R6 R30
      803 MOVE                             R26 R31
      804 JUMPIF                           R6 ; [+11]
      805 MOVE                             R31 R7
      806 GETIMPORT                        R32 K52 [table.concat]
      808 MOVE                             R33 R26
      809 LOADK                            R34 K53 ["\n"]
      810 CALL                             R32 2 -1
      811 FASTCALL                         TABLE_INSERT ; [+2]
      812 GETIMPORT                        R30 K36 [table.insert]
      814 CALL                             R30 -1 0
      815 LOADB                            R11 0
      816 GETUPVAL                         R30 49
      817 CALL                             R30 0 1
      818 JUMPIFNOT                        R30 ; [+21]
      819 GETUPVAL                         R31 50
      820 GETTABLEKS                       R30 R31 K21 ["validate"]
      822 MOVE                             R31 R8
      823 LOADB                            R32 0
      824 MOVE                             R33 R0
      825 CALL                             R30 3 2
      826 MOVE                             R6 R30
      827 MOVE                             R26 R31
      828 JUMPIF                           R6 ; [+11]
      829 MOVE                             R31 R7
      830 GETIMPORT                        R32 K52 [table.concat]
      832 MOVE                             R33 R26
      833 LOADK                            R34 K53 ["\n"]
      834 CALL                             R32 2 -1
      835 FASTCALL                         TABLE_INSERT ; [+2]
      836 GETIMPORT                        R30 K36 [table.insert]
      838 CALL                             R30 -1 0
      839 LOADB                            R11 0
      840 GETUPVAL                         R30 51
      841 CALL                             R30 0 1
      842 JUMPIFNOT                        R30 ; [+18]
      843 GETUPVAL                         R30 52
      844 MOVE                             R31 R12
      845 MOVE                             R32 R0
      846 CALL                             R30 2 2
      847 MOVE                             R6 R30
      848 MOVE                             R26 R31
      849 JUMPIF                           R6 ; [+11]
      850 MOVE                             R31 R7
      851 GETIMPORT                        R32 K52 [table.concat]
      853 MOVE                             R33 R26
      854 LOADK                            R34 K53 ["\n"]
      855 CALL                             R32 2 -1
      856 FASTCALL                         TABLE_INSERT ; [+2]
      857 GETIMPORT                        R30 K36 [table.insert]
      859 CALL                             R30 -1 0
      860 LOADB                            R11 0
      861 GETUPVAL                         R30 53
      862 CALL                             R30 0 1
      863 JUMPIFNOT                        R30 ; [+25]
      864 GETUPVAL                         R32 2
      865 GETTABLEKS                       R31 R32 K64 ["SkinningTransferRequiredTypes"]
      867 GETTABLE                         R30 R31 R2
      868 JUMPIF                           R30 ; [+20]
      869 GETUPVAL                         R31 54
      870 GETTABLEKS                       R30 R31 K65 ["validateMeshPart"]
      872 MOVE                             R31 R12
      873 MOVE                             R32 R0
      874 CALL                             R30 2 2
      875 MOVE                             R6 R30
      876 MOVE                             R26 R31
      877 JUMPIF                           R6 ; [+11]
      878 MOVE                             R31 R7
      879 GETIMPORT                        R32 K52 [table.concat]
      881 MOVE                             R33 R26
      882 LOADK                            R34 K53 ["\n"]
      883 CALL                             R32 2 -1
      884 FASTCALL                         TABLE_INSERT ; [+2]
      885 GETIMPORT                        R30 K36 [table.insert]
      887 CALL                             R30 -1 0
      888 LOADB                            R11 0
      889 MOVE                             R30 R11
      890 MOVE                             R31 R7
      891 RETURN                           R30 2

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
      278 GETTABLEKS                       R41 R42 K47 ["getFFlagUGCValidateMeshVertColors"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K4 [require]
      283 GETTABLEKS                       R43 R0 K46 ["flags"]
      285 GETTABLEKS                       R42 R43 K48 ["getFFlagUGCValidateLCCagesQuality"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K4 [require]
      290 GETTABLEKS                       R44 R0 K46 ["flags"]
      292 GETTABLEKS                       R43 R44 K49 ["getEngineFeatureEngineUGCValidationMaxVerticesCollision"]
      294 CALL                             R42 1 1
      295 GETIMPORT                        R43 K4 [require]
      297 GETTABLEKS                       R45 R0 K46 ["flags"]
      299 GETTABLEKS                       R44 R45 K50 ["getFFlagUGCValidateLCHandleScale"]
      301 CALL                             R43 1 1
      302 GETIMPORT                        R44 K4 [require]
      304 GETTABLEKS                       R46 R0 K46 ["flags"]
      306 GETTABLEKS                       R45 R46 K51 ["getFFlagUGCValidationRefactorMeshScale"]
      308 CALL                             R44 1 1
      309 GETIMPORT                        R45 K4 [require]
      311 GETTABLEKS                       R47 R0 K46 ["flags"]
      313 GETTABLEKS                       R46 R47 K52 ["getFIntUGCValidationLCHandleScaleOffsetMaximum"]
      315 CALL                             R45 1 1
      316 GETIMPORT                        R46 K4 [require]
      318 GETTABLEKS                       R48 R0 K46 ["flags"]
      320 GETTABLEKS                       R47 R48 K53 ["getFFlagValidateDeformedLayeredClothingIsInBounds"]
      322 CALL                             R46 1 1
      323 GETIMPORT                        R47 K4 [require]
      325 GETTABLEKS                       R49 R0 K46 ["flags"]
      327 GETTABLEKS                       R48 R49 K54 ["getFFlagUGCValidateAccessoriesRCCOwnership"]
      329 CALL                             R47 1 1
      330 GETIMPORT                        R48 K4 [require]
      332 GETTABLEKS                       R50 R0 K46 ["flags"]
      334 GETTABLEKS                       R49 R50 K55 ["getEngineUGCValidateRelativeSkinningTransfer"]
      336 CALL                             R48 1 1
      337 GETIMPORT                        R49 K4 [require]
      339 GETTABLEKS                       R51 R0 K46 ["flags"]
      341 GETTABLEKS                       R50 R51 K56 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      343 CALL                             R49 1 1
      344 GETIMPORT                        R50 K4 [require]
      346 GETTABLEKS                       R52 R0 K46 ["flags"]
      348 GETTABLEKS                       R51 R52 K57 ["getFFlagUGCValidateCheckHSRFileDataFix"]
      350 CALL                             R50 1 1
      351 GETIMPORT                        R51 K4 [require]
      353 GETTABLEKS                       R53 R0 K46 ["flags"]
      355 GETTABLEKS                       R52 R53 K58 ["getFFlagUGCValidateAccessoryAssetTextureLimit"]
      357 CALL                             R51 1 1
      358 GETIMPORT                        R52 K4 [require]
      360 GETTABLEKS                       R54 R0 K46 ["flags"]
      362 GETTABLEKS                       R53 R54 K59 ["getFFlagUGCValidateLayeredClothingAssetSurfaceAppearanceTextureLimits"]
      364 CALL                             R52 1 1
      365 GETIMPORT                        R53 K4 [require]
      367 GETTABLEKS                       R55 R0 K46 ["flags"]
      369 GETTABLEKS                       R54 R55 K60 ["getFFlagValidateLCsOnlySkinnedToR15"]
      371 CALL                             R53 1 1
      372 GETIMPORT                        R54 K4 [require]
      374 GETTABLEKS                       R56 R0 K46 ["flags"]
      376 GETTABLEKS                       R55 R56 K61 ["getFFlagUGCValidateTexturePack"]
      378 CALL                             R54 1 1
      379 GETIMPORT                        R55 K4 [require]
      381 GETTABLEKS                       R57 R0 K46 ["flags"]
      383 GETTABLEKS                       R56 R57 K62 ["getFFlagUGCValidateEyebrowEyelashThumbnailSchema"]
      385 CALL                             R55 1 1
      386 GETIMPORT                        R56 K4 [require]
      388 GETTABLEKS                       R58 R0 K10 ["validation"]
      390 GETTABLEKS                       R57 R58 K63 ["ValidateMeshPartOnlySkinnedToR15"]
      392 CALL                             R56 1 1
      393 DUPCLOSURE                       R57 K64 [PROTO_1]
      394 CAPTURE                          VAL R31
      395 CAPTURE                          VAL R2
      396 CAPTURE                          VAL R3
      397 CAPTURE                          VAL R16
      398 CAPTURE                          VAL R55
      399 CAPTURE                          VAL R33
      400 CAPTURE                          VAL R32
      401 CAPTURE                          VAL R6
      402 CAPTURE                          VAL R49
      403 CAPTURE                          VAL R22
      404 CAPTURE                          VAL R47
      405 CAPTURE                          VAL R23
      406 CAPTURE                          VAL R36
      407 CAPTURE                          VAL R37
      408 CAPTURE                          VAL R44
      409 CAPTURE                          VAL R39
      410 CAPTURE                          VAL R35
      411 CAPTURE                          VAL R38
      412 CAPTURE                          VAL R43
      413 CAPTURE                          VAL R45
      414 CAPTURE                          VAL R34
      415 CAPTURE                          VAL R9
      416 CAPTURE                          VAL R13
      417 CAPTURE                          VAL R10
      418 CAPTURE                          VAL R14
      419 CAPTURE                          VAL R51
      420 CAPTURE                          VAL R4
      421 CAPTURE                          VAL R12
      422 CAPTURE                          VAL R52
      423 CAPTURE                          VAL R29
      424 CAPTURE                          VAL R19
      425 CAPTURE                          VAL R18
      426 CAPTURE                          VAL R17
      427 CAPTURE                          VAL R50
      428 CAPTURE                          VAL R28
      429 CAPTURE                          VAL R8
      430 CAPTURE                          VAL R25
      431 CAPTURE                          VAL R21
      432 CAPTURE                          VAL R11
      433 CAPTURE                          VAL R7
      434 CAPTURE                          VAL R40
      435 CAPTURE                          VAL R15
      436 CAPTURE                          VAL R26
      437 CAPTURE                          VAL R42
      438 CAPTURE                          VAL R27
      439 CAPTURE                          VAL R41
      440 CAPTURE                          VAL R5
      441 CAPTURE                          VAL R46
      442 CAPTURE                          VAL R20
      443 CAPTURE                          VAL R54
      444 CAPTURE                          VAL R30
      445 CAPTURE                          VAL R48
      446 CAPTURE                          VAL R24
      447 CAPTURE                          VAL R53
      448 CAPTURE                          VAL R56
      449 RETURN                           R57 1
