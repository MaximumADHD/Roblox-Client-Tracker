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
        8 GETUPVAL                         R5 0
        9 GETTABLEKS                       R5 R5 K4 ["isLayeredClothingAllowed"]
       11 MOVE                             R6 R2
       12 CALL                             R5 1 1
       13 JUMPIF                           R5 ; [+23]
       14 GETUPVAL                         R5 1
       15 GETTABLEKS                       R5 R5 K5 ["reportFailure"]
       17 GETUPVAL                         R6 1
       18 GETTABLEKS                       R6 R6 K6 ["ErrorType"]
       20 GETTABLEKS                       R6 R6 K7 ["validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing"]
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
       94 GETUPVAL                         R11 9
       95 GETTABLEKS                       R11 R11 K21 ["validate"]
       97 MOVE                             R12 R8
       98 MOVE                             R13 R0
       99 CALL                             R11 2 2
      100 MOVE                             R6 R11
      101 MOVE                             R7 R12
      102 JUMPIF                           R6 ; [+3]
      103 LOADB                            R11 0
      104 MOVE                             R12 R7
      105 RETURN                           R11 2
      106 DUPTABLE                         R11 K24 [{"skipExistenceCheck", "skipOwnershipCheck"}]
      107 GETUPVAL                         R12 10
      108 CALL                             R12 0 1
      109 JUMPIFNOT                        R12 ; [+2]
      110 GETUPVAL                         R12 11
      111 CALL                             R12 0 1
      112 SETTABLEKS                       R12 R11 K22 ["skipExistenceCheck"]
      114 GETUPVAL                         R12 10
      115 CALL                             R12 0 1
      116 JUMPIFNOT                        R12 ; [+2]
      117 GETUPVAL                         R12 11
      118 CALL                             R12 0 1
      119 SETTABLEKS                       R12 R11 K23 ["skipOwnershipCheck"]
      121 GETUPVAL                         R12 12
      122 MOVE                             R13 R8
      123 MOVE                             R14 R0
      124 MOVE                             R15 R11
      125 CALL                             R12 3 2
      126 MOVE                             R6 R12
      127 MOVE                             R7 R13
      128 JUMPIF                           R6 ; [+3]
      129 LOADB                            R12 0
      130 MOVE                             R13 R7
      131 RETURN                           R12 2
      132 LOADB                            R11 1
      133 NEWTABLE                         R7 0 0
      135 LOADK                            R14 K25 ["Handle"]
      136 NAMECALL                         R12 R8 K26 ["FindFirstChild"]
      138 CALL                             R12 2 1
      139 DUPTABLE                         R13 K32 [{["fullName"], ["fieldName"] = "MeshId", ["contentId"], ["context"]}]
      140 NAMECALL                         R14 R12 K33 ["GetFullName"]
      142 CALL                             R14 1 1
      143 SETTABLEKS                       R14 R13 K27 ["fullName"]
      145 GETTABLEKS                       R14 R12 K29 ["MeshId"]
      147 SETTABLEKS                       R14 R13 K30 ["contentId"]
      149 GETTABLEKS                       R14 R8 K12 ["Name"]
      151 SETTABLEKS                       R14 R13 K31 ["context"]
      153 LOADB                            R14 0
      154 GETTABLEKS                       R15 R13 K30 ["contentId"]
      156 JUMPIFEQKNIL                     R15 ; [+7]
      158 GETTABLEKS                       R15 R13 K30 ["contentId"]
      160 JUMPIFNOTEQKS                    R15 K34 [""] ; [+2]
      162 LOADB                            R14 0 +1
      163 LOADB                            R14 1
      164 GETUPVAL                         R15 13
      165 MOVE                             R16 R12
      166 LOADK                            R17 K29 ["MeshId"]
      167 MOVE                             R18 R0
      168 CALL                             R15 3 2
      169 JUMPIF                           R15 ; [+56]
      170 GETTABLEKS                       R17 R13 K30 ["contentId"]
      172 JUMPIF                           R17 ; [+30]
      173 LOADB                            R14 0
      174 GETUPVAL                         R17 1
      175 GETTABLEKS                       R17 R17 K5 ["reportFailure"]
      177 GETUPVAL                         R18 1
      178 GETTABLEKS                       R18 R18 K6 ["ErrorType"]
      180 GETTABLEKS                       R18 R18 K35 ["validateLayeredClothingAccessory_NoMeshId"]
      182 LOADNIL                          R19
      183 MOVE                             R20 R0
      184 CALL                             R17 3 0
      185 LOADB                            R11 0
      186 NEWTABLE                         R19 0 1
      188 GETIMPORT                        R20 K10 [string.format]
      190 LOADK                            R21 K36 ["Missing meshId on layered clothing accessory '%s'. Make sure you are using a valid meshId and try again.\n"]
      191 GETTABLEKS                       R22 R8 K12 ["Name"]
      193 CALL                             R20 2 -1
      194 SETLIST                          R19 R20 -1 [1]
      196 FASTCALL2                        TABLE_INSERT R7 R19 ; [+4]
      198 MOVE                             R18 R7
      199 GETIMPORT                        R17 K39 [table.insert]
      201 CALL                             R17 2 0
      202 JUMP                             ; [+23]
      203 GETUPVAL                         R17 1
      204 GETTABLEKS                       R17 R17 K5 ["reportFailure"]
      206 GETUPVAL                         R18 1
      207 GETTABLEKS                       R18 R18 K6 ["ErrorType"]
      209 GETTABLEKS                       R18 R18 K40 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      211 LOADNIL                          R19
      212 MOVE                             R20 R0
      213 CALL                             R17 3 0
      214 LOADB                            R17 0
      215 NEWTABLE                         R18 0 1
      217 GETIMPORT                        R19 K10 [string.format]
      219 LOADK                            R20 K41 ["Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again."]
      220 GETTABLEKS                       R21 R8 K12 ["Name"]
      222 CALL                             R19 2 -1
      223 SETLIST                          R18 R19 -1 [1]
      225 RETURN                           R17 2
      226 SETTABLEKS                       R16 R13 K42 ["editableMesh"]
      228 LOADB                            R14 1
      229 GETTABLEKS                       R17 R12 K43 ["TextureID"]
      231 DUPTABLE                         R18 K44 [{["fullName"], ["fieldName"] = "TextureID", ["contentId"]}]
      232 NAMECALL                         R19 R12 K33 ["GetFullName"]
      234 CALL                             R19 1 1
      235 SETTABLEKS                       R19 R18 K27 ["fullName"]
      237 SETTABLEKS                       R17 R18 K30 ["contentId"]
      239 LOADNIL                          R19
      240 LOADNIL                          R20
      241 JUMPIFEQKS                       R17 K34 [""] ; [+23]
      243 GETUPVAL                         R21 14
      244 MOVE                             R22 R12
      245 LOADK                            R23 K43 ["TextureID"]
      246 MOVE                             R24 R0
      247 CALL                             R21 3 2
      248 MOVE                             R19 R21
      249 MOVE                             R20 R22
      250 JUMPIF                           R19 ; [+12]
      251 LOADB                            R21 0
      252 NEWTABLE                         R22 0 1
      254 GETIMPORT                        R23 K10 [string.format]
      256 LOADK                            R24 K45 ["Failed to load texture for layered clothing accessory '%s'. Make sure texture exists and try again."]
      257 GETTABLEKS                       R25 R8 K12 ["Name"]
      259 CALL                             R23 2 -1
      260 SETLIST                          R22 R23 -1 [1]
      262 RETURN                           R21 2
      263 SETTABLEKS                       R20 R18 K46 ["editableImage"]
      265 GETUPVAL                         R21 15
      266 NEWCLOSURE                       R22 P0
      267 CAPTURE                          UPVAL U16
      268 CAPTURE                          VAL R13
      269 MOVE                             R23 R0
      270 CALL                             R21 2 2
      271 JUMPIF                           R21 ; [+23]
      272 GETUPVAL                         R23 1
      273 GETTABLEKS                       R23 R23 K5 ["reportFailure"]
      275 GETUPVAL                         R24 1
      276 GETTABLEKS                       R24 R24 K6 ["ErrorType"]
      278 GETTABLEKS                       R24 R24 K40 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      280 LOADNIL                          R25
      281 MOVE                             R26 R0
      282 CALL                             R23 3 0
      283 LOADB                            R23 0
      284 NEWTABLE                         R24 0 1
      286 GETIMPORT                        R25 K10 [string.format]
      288 LOADK                            R26 K41 ["Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again."]
      289 GETTABLEKS                       R27 R8 K12 ["Name"]
      291 CALL                             R25 2 -1
      292 SETLIST                          R24 R25 -1 [1]
      294 RETURN                           R23 2
      295 GETUPVAL                         R24 17
      296 MOVE                             R25 R12
      297 MOVE                             R26 R0
      298 CALL                             R24 2 1
      299 DIV                              R23 R24 R22
      300 LOADK                            R26 K47 [{1, 1, 1}]
      301 GETUPVAL                         R28 18
      302 CALL                             R28 0 1
      303 DIVK                             R27 R28 K48 [1000]
      304 NAMECALL                         R24 R23 K49 ["FuzzyEq"]
      306 CALL                             R24 3 1
      307 JUMPIF                           R24 ; [+23]
      308 GETUPVAL                         R24 1
      309 GETTABLEKS                       R24 R24 K5 ["reportFailure"]
      311 GETUPVAL                         R25 1
      312 GETTABLEKS                       R25 R25 K6 ["ErrorType"]
      314 GETTABLEKS                       R25 R25 K50 ["validateLayeredClothingAccessory_HandleIsScaled"]
      316 LOADNIL                          R26
      317 MOVE                             R27 R0
      318 CALL                             R24 3 0
      319 MOVE                             R25 R7
      320 GETIMPORT                        R26 K10 [string.format]
      322 LOADK                            R27 K51 ["%s has been scaled, but mesh parts with wrap layers do not support scaling. You need to change the Size property to match the MeshSize property."]
      323 GETTABLEKS                       R28 R12 K12 ["Name"]
      325 CALL                             R26 2 -1
      326 FASTCALL                         TABLE_INSERT ; [+2]
      327 GETIMPORT                        R24 K39 [table.insert]
      329 CALL                             R24 -1 0
      330 LOADB                            R11 0
      331 GETUPVAL                         R24 19
      332 MOVE                             R25 R12
      333 GETTABLEKS                       R26 R5 K20 ["attachmentNames"]
      335 CALL                             R24 2 1
      336 GETTABLEKS                       R26 R5 K52 ["bounds"]
      338 GETTABLEKS                       R27 R24 K12 ["Name"]
      340 GETTABLE                         R25 R26 R27
      341 NEWTABLE                         R26 0 0
      343 GETUPVAL                         R27 10
      344 CALL                             R27 0 1
      345 JUMPIFNOT                        R27 ; [+3]
      346 GETUPVAL                         R27 11
      347 CALL                             R27 0 1
      348 JUMPIF                           R27 ; [+37]
      349 GETUPVAL                         R27 20
      350 MOVE                             R28 R8
      351 MOVE                             R29 R0
      352 CALL                             R27 2 2
      353 MOVE                             R6 R27
      354 MOVE                             R26 R28
      355 JUMPIF                           R6 ; [+11]
      356 MOVE                             R28 R7
      357 GETIMPORT                        R29 K54 [table.concat]
      359 MOVE                             R30 R26
      360 LOADK                            R31 K55 ["\n"]
      361 CALL                             R29 2 -1
      362 FASTCALL                         TABLE_INSERT ; [+2]
      363 GETIMPORT                        R27 K39 [table.insert]
      365 CALL                             R27 -1 0
      366 LOADB                            R11 0
      367 GETUPVAL                         R27 21
      368 MOVE                             R28 R8
      369 LOADNIL                          R29
      370 MOVE                             R30 R0
      371 CALL                             R27 3 2
      372 MOVE                             R6 R27
      373 MOVE                             R26 R28
      374 JUMPIF                           R6 ; [+11]
      375 MOVE                             R28 R7
      376 GETIMPORT                        R29 K54 [table.concat]
      378 MOVE                             R30 R26
      379 LOADK                            R31 K55 ["\n"]
      380 CALL                             R29 2 -1
      381 FASTCALL                         TABLE_INSERT ; [+2]
      382 GETIMPORT                        R27 K39 [table.insert]
      384 CALL                             R27 -1 0
      385 LOADB                            R11 0
      386 GETUPVAL                         R27 22
      387 MOVE                             R28 R8
      388 MOVE                             R29 R0
      389 CALL                             R27 2 2
      390 MOVE                             R6 R27
      391 MOVE                             R26 R28
      392 JUMPIF                           R6 ; [+11]
      393 MOVE                             R28 R7
      394 GETIMPORT                        R29 K54 [table.concat]
      396 MOVE                             R30 R26
      397 LOADK                            R31 K55 ["\n"]
      398 CALL                             R29 2 -1
      399 FASTCALL                         TABLE_INSERT ; [+2]
      400 GETIMPORT                        R27 K39 [table.insert]
      402 CALL                             R27 -1 0
      403 LOADB                            R11 0
      404 GETUPVAL                         R27 10
      405 CALL                             R27 0 1
      406 JUMPIFNOT                        R27 ; [+3]
      407 GETUPVAL                         R27 11
      408 CALL                             R27 0 1
      409 JUMPIF                           R27 ; [+18]
      410 GETUPVAL                         R27 23
      411 MOVE                             R28 R8
      412 MOVE                             R29 R0
      413 CALL                             R27 2 2
      414 MOVE                             R6 R27
      415 MOVE                             R26 R28
      416 JUMPIF                           R6 ; [+11]
      417 MOVE                             R28 R7
      418 GETIMPORT                        R29 K54 [table.concat]
      420 MOVE                             R30 R26
      421 LOADK                            R31 K55 ["\n"]
      422 CALL                             R29 2 -1
      423 FASTCALL                         TABLE_INSERT ; [+2]
      424 GETIMPORT                        R27 K39 [table.insert]
      426 CALL                             R27 -1 0
      427 LOADB                            R11 0
      428 GETUPVAL                         R27 24
      429 CALL                             R27 0 1
      430 JUMPIF                           R27 ; [+54]
      431 LOADNIL                          R27
      432 GETUPVAL                         R28 25
      433 CALL                             R28 0 1
      434 JUMPIFNOT                        R28 ; [+9]
      435 GETUPVAL                         R28 26
      436 GETTABLEKS                       R28 R28 K56 ["getTextureLimit"]
      438 MOVE                             R29 R2
      439 MOVE                             R30 R12
      440 GETTABLEKS                       R31 R18 K28 ["fieldName"]
      442 CALL                             R28 3 1
      443 MOVE                             R27 R28
      444 GETUPVAL                         R28 27
      445 MOVE                             R29 R18
      446 LOADB                            R30 1
      447 MOVE                             R31 R0
      448 MOVE                             R32 R27
      449 CALL                             R28 4 2
      450 MOVE                             R6 R28
      451 MOVE                             R26 R29
      452 JUMPIF                           R6 ; [+11]
      453 MOVE                             R29 R7
      454 GETIMPORT                        R30 K54 [table.concat]
      456 MOVE                             R31 R26
      457 LOADK                            R32 K55 ["\n"]
      458 CALL                             R30 2 -1
      459 FASTCALL                         TABLE_INSERT ; [+2]
      460 GETIMPORT                        R28 K39 [table.insert]
      462 CALL                             R28 -1 0
      463 LOADB                            R11 0
      464 GETUPVAL                         R28 28
      465 CALL                             R28 0 1
      466 JUMPIFNOT                        R28 ; [+18]
      467 GETUPVAL                         R28 29
      468 MOVE                             R29 R8
      469 MOVE                             R30 R0
      470 CALL                             R28 2 2
      471 MOVE                             R6 R28
      472 MOVE                             R26 R29
      473 JUMPIF                           R6 ; [+11]
      474 MOVE                             R29 R7
      475 GETIMPORT                        R30 K54 [table.concat]
      477 MOVE                             R31 R26
      478 LOADK                            R32 K55 ["\n"]
      479 CALL                             R30 2 -1
      480 FASTCALL                         TABLE_INSERT ; [+2]
      481 GETIMPORT                        R28 K39 [table.insert]
      483 CALL                             R28 -1 0
      484 LOADB                            R11 0
      485 GETUPVAL                         R27 10
      486 CALL                             R27 0 1
      487 JUMPIFNOT                        R27 ; [+3]
      488 GETUPVAL                         R27 11
      489 CALL                             R27 0 1
      490 JUMPIF                           R27 ; [+28]
      491 LOADK                            R29 K57 ["AvatarPartScaleType"]
      492 NAMECALL                         R27 R12 K26 ["FindFirstChild"]
      494 CALL                             R27 2 1
      495 JUMPIFNOT                        R27 ; [+23]
      496 LOADK                            R30 K58 ["StringValue"]
      497 NAMECALL                         R28 R27 K59 ["IsA"]
      499 CALL                             R28 2 1
      500 JUMPIFNOT                        R28 ; [+18]
      501 GETUPVAL                         R28 30
      502 MOVE                             R29 R27
      503 MOVE                             R30 R0
      504 CALL                             R28 2 2
      505 MOVE                             R6 R28
      506 MOVE                             R26 R29
      507 JUMPIF                           R6 ; [+11]
      508 MOVE                             R29 R7
      509 GETIMPORT                        R30 K54 [table.concat]
      511 MOVE                             R31 R26
      512 LOADK                            R32 K55 ["\n"]
      513 CALL                             R30 2 -1
      514 FASTCALL                         TABLE_INSERT ; [+2]
      515 GETIMPORT                        R28 K39 [table.insert]
      517 CALL                             R28 -1 0
      518 LOADB                            R11 0
      519 GETUPVAL                         R27 10
      520 CALL                             R27 0 1
      521 JUMPIFNOT                        R27 ; [+3]
      522 GETUPVAL                         R27 11
      523 CALL                             R27 0 1
      524 JUMPIF                           R27 ; [+22]
      525 JUMPIF                           R9 ; [+21]
      526 GETUPVAL                         R27 31
      527 MOVE                             R28 R8
      528 MOVE                             R29 R12
      529 MOVE                             R30 R13
      530 MOVE                             R31 R23
      531 MOVE                             R32 R0
      532 CALL                             R27 5 2
      533 MOVE                             R6 R27
      534 MOVE                             R26 R28
      535 JUMPIF                           R6 ; [+11]
      536 MOVE                             R28 R7
      537 GETIMPORT                        R29 K54 [table.concat]
      539 MOVE                             R30 R26
      540 LOADK                            R31 K55 ["\n"]
      541 CALL                             R29 2 -1
      542 FASTCALL                         TABLE_INSERT ; [+2]
      543 GETIMPORT                        R27 K39 [table.insert]
      545 CALL                             R27 -1 0
      546 LOADB                            R11 0
      547 LOADK                            R29 K60 ["WrapLayer"]
      548 NAMECALL                         R27 R12 K61 ["FindFirstChildOfClass"]
      550 CALL                             R27 2 1
      551 JUMPIFNOTEQKNIL                  R27 ; [+25]
      553 GETUPVAL                         R28 1
      554 GETTABLEKS                       R28 R28 K5 ["reportFailure"]
      556 GETUPVAL                         R29 1
      557 GETTABLEKS                       R29 R29 K6 ["ErrorType"]
      559 GETTABLEKS                       R29 R29 K62 ["validateLayeredClothingAccessory_NoWrapLayer"]
      561 LOADNIL                          R30
      562 MOVE                             R31 R0
      563 CALL                             R28 3 0
      564 MOVE                             R29 R7
      565 GETIMPORT                        R30 K10 [string.format]
      567 LOADK                            R31 K63 ["Missing WrapLayer on layered clothing accessory %s. You need to create a child WrapLayer and try again."]
      568 GETTABLEKS                       R32 R8 K12 ["Name"]
      570 CALL                             R30 2 -1
      571 FASTCALL                         TABLE_INSERT ; [+2]
      572 GETIMPORT                        R28 K39 [table.insert]
      574 CALL                             R28 -1 0
      575 LOADB                            R11 0
      576 JUMP                             ; [+53]
      577 GETUPVAL                         R28 10
      578 CALL                             R28 0 1
      579 JUMPIFNOT                        R28 ; [+3]
      580 GETUPVAL                         R28 11
      581 CALL                             R28 0 1
      582 JUMPIF                           R28 ; [+18]
      583 GETUPVAL                         R28 32
      584 MOVE                             R29 R27
      585 MOVE                             R30 R0
      586 CALL                             R28 2 2
      587 MOVE                             R6 R28
      588 MOVE                             R26 R29
      589 JUMPIF                           R6 ; [+11]
      590 MOVE                             R29 R7
      591 GETIMPORT                        R30 K54 [table.concat]
      593 MOVE                             R31 R26
      594 LOADK                            R32 K55 ["\n"]
      595 CALL                             R30 2 -1
      596 FASTCALL                         TABLE_INSERT ; [+2]
      597 GETIMPORT                        R28 K39 [table.insert]
      599 CALL                             R28 -1 0
      600 LOADB                            R11 0
      601 GETUPVAL                         R28 10
      602 CALL                             R28 0 1
      603 JUMPIFNOT                        R28 ; [+3]
      604 GETUPVAL                         R28 11
      605 CALL                             R28 0 1
      606 JUMPIF                           R28 ; [+23]
      607 GETTABLEKS                       R28 R0 K64 ["allowEditableInstances"]
      609 JUMPIF                           R28 ; [+20]
      610 GETUPVAL                         R29 33
      611 GETTABLEKS                       R29 R29 K21 ["validate"]
      613 MOVE                             R30 R27
      614 MOVE                             R31 R0
      615 CALL                             R29 2 2
      616 MOVE                             R6 R29
      617 MOVE                             R26 R30
      618 JUMPIF                           R6 ; [+11]
      619 MOVE                             R30 R7
      620 GETIMPORT                        R31 K54 [table.concat]
      622 MOVE                             R32 R26
      623 LOADK                            R33 K55 ["\n"]
      624 CALL                             R31 2 -1
      625 FASTCALL                         TABLE_INSERT ; [+2]
      626 GETIMPORT                        R29 K39 [table.insert]
      628 CALL                             R29 -1 0
      629 LOADB                            R11 0
      630 GETUPVAL                         R27 10
      631 CALL                             R27 0 1
      632 JUMPIFNOT                        R27 ; [+3]
      633 GETUPVAL                         R27 11
      634 CALL                             R27 0 1
      635 JUMPIF                           R27 ; [+24]
      636 NOT                              R27 R3
      637 JUMPIFNOT                        R4 ; [+1]
      638 LOADB                            R27 0
      639 JUMPIFNOT                        R27 ; [+20]
      640 GETUPVAL                         R28 34
      641 MOVE                             R29 R8
      642 NEWTABLE                         R30 0 0
      644 MOVE                             R31 R0
      645 CALL                             R28 3 2
      646 MOVE                             R6 R28
      647 MOVE                             R26 R29
      648 JUMPIF                           R6 ; [+11]
      649 MOVE                             R29 R7
      650 GETIMPORT                        R30 K54 [table.concat]
      652 MOVE                             R31 R26
      653 LOADK                            R32 K55 ["\n"]
      654 CALL                             R30 2 -1
      655 FASTCALL                         TABLE_INSERT ; [+2]
      656 GETIMPORT                        R28 K39 [table.insert]
      658 CALL                             R28 -1 0
      659 LOADB                            R11 0
      660 JUMPIFNOT                        R14 ; [+120]
      661 GETUPVAL                         R27 35
      662 MOVE                             R28 R13
      663 MOVE                             R29 R23
      664 MOVE                             R30 R0
      665 CALL                             R27 3 2
      666 MOVE                             R6 R27
      667 MOVE                             R26 R28
      668 JUMPIF                           R6 ; [+11]
      669 MOVE                             R28 R7
      670 GETIMPORT                        R29 K54 [table.concat]
      672 MOVE                             R30 R26
      673 LOADK                            R31 K55 ["\n"]
      674 CALL                             R29 2 -1
      675 FASTCALL                         TABLE_INSERT ; [+2]
      676 GETIMPORT                        R27 K39 [table.insert]
      678 CALL                             R27 -1 0
      679 LOADB                            R11 0
      680 GETUPVAL                         R27 36
      681 GETTABLEKS                       R27 R27 K65 ["validateSingleMeshPart"]
      683 MOVE                             R28 R12
      684 MOVE                             R29 R0
      685 CALL                             R27 2 2
      686 MOVE                             R6 R27
      687 MOVE                             R26 R28
      688 JUMPIF                           R6 ; [+11]
      689 MOVE                             R28 R7
      690 GETIMPORT                        R29 K54 [table.concat]
      692 MOVE                             R30 R26
      693 LOADK                            R31 K55 ["\n"]
      694 CALL                             R29 2 -1
      695 FASTCALL                         TABLE_INSERT ; [+2]
      696 GETIMPORT                        R27 K39 [table.insert]
      698 CALL                             R27 -1 0
      699 LOADB                            R11 0
      700 GETUPVAL                         R27 37
      701 MOVE                             R28 R12
      702 MOVE                             R29 R24
      703 MOVE                             R30 R13
      704 MOVE                             R31 R23
      705 MOVE                             R32 R25
      706 GETTABLEKS                       R33 R2 K12 ["Name"]
      708 MOVE                             R34 R0
      709 CALL                             R27 7 2
      710 MOVE                             R6 R27
      711 MOVE                             R26 R28
      712 JUMPIF                           R6 ; [+11]
      713 MOVE                             R28 R7
      714 GETIMPORT                        R29 K54 [table.concat]
      716 MOVE                             R30 R26
      717 LOADK                            R31 K55 ["\n"]
      718 CALL                             R29 2 -1
      719 FASTCALL                         TABLE_INSERT ; [+2]
      720 GETIMPORT                        R27 K39 [table.insert]
      722 CALL                             R27 -1 0
      723 LOADB                            R11 0
      724 GETUPVAL                         R27 38
      725 MOVE                             R28 R13
      726 LOADNIL                          R29
      727 MOVE                             R30 R0
      728 CALL                             R27 3 2
      729 MOVE                             R6 R27
      730 MOVE                             R26 R28
      731 JUMPIF                           R6 ; [+11]
      732 MOVE                             R28 R7
      733 GETIMPORT                        R29 K54 [table.concat]
      735 MOVE                             R30 R26
      736 LOADK                            R31 K55 ["\n"]
      737 CALL                             R29 2 -1
      738 FASTCALL                         TABLE_INSERT ; [+2]
      739 GETIMPORT                        R27 K39 [table.insert]
      741 CALL                             R27 -1 0
      742 LOADB                            R11 0
      743 GETUPVAL                         R27 39
      744 MOVE                             R28 R13
      745 LOADB                            R29 0
      746 MOVE                             R30 R0
      747 CALL                             R27 3 2
      748 MOVE                             R6 R27
      749 MOVE                             R26 R28
      750 JUMPIF                           R6 ; [+11]
      751 MOVE                             R28 R7
      752 GETIMPORT                        R29 K54 [table.concat]
      754 MOVE                             R30 R26
      755 LOADK                            R31 K55 ["\n"]
      756 CALL                             R29 2 -1
      757 FASTCALL                         TABLE_INSERT ; [+2]
      758 GETIMPORT                        R27 K39 [table.insert]
      760 CALL                             R27 -1 0
      761 LOADB                            R11 0
      762 GETUPVAL                         R27 40
      763 MOVE                             R28 R13
      764 MOVE                             R29 R23
      765 MOVE                             R30 R0
      766 CALL                             R27 3 2
      767 MOVE                             R6 R27
      768 MOVE                             R26 R28
      769 JUMPIF                           R6 ; [+11]
      770 MOVE                             R28 R7
      771 GETIMPORT                        R29 K54 [table.concat]
      773 MOVE                             R30 R26
      774 LOADK                            R31 K55 ["\n"]
      775 CALL                             R29 2 -1
      776 FASTCALL                         TABLE_INSERT ; [+2]
      777 GETIMPORT                        R27 K39 [table.insert]
      779 CALL                             R27 -1 0
      780 LOADB                            R11 0
      781 GETUPVAL                         R27 41
      782 MOVE                             R28 R13
      783 MOVE                             R29 R0
      784 MOVE                             R30 R23
      785 CALL                             R27 3 2
      786 MOVE                             R6 R27
      787 MOVE                             R26 R28
      788 JUMPIF                           R6 ; [+11]
      789 MOVE                             R28 R7
      790 GETIMPORT                        R29 K54 [table.concat]
      792 MOVE                             R30 R26
      793 LOADK                            R31 K55 ["\n"]
      794 CALL                             R29 2 -1
      795 FASTCALL                         TABLE_INSERT ; [+2]
      796 GETIMPORT                        R27 K39 [table.insert]
      798 CALL                             R27 -1 0
      799 LOADB                            R11 0
      800 GETUPVAL                         R27 42
      801 MOVE                             R28 R8
      802 MOVE                             R29 R13
      803 MOVE                             R30 R0
      804 CALL                             R27 3 2
      805 MOVE                             R6 R27
      806 MOVE                             R26 R28
      807 JUMPIF                           R6 ; [+14]
      808 MOVE                             R27 R26
      809 LOADNIL                          R28
      810 LOADNIL                          R29
      811 FORGPREP                         R27
      812 FASTCALL2                        TABLE_INSERT R7 R31 ; [+5]
      814 MOVE                             R33 R7
      815 MOVE                             R34 R31
      816 GETIMPORT                        R32 K39 [table.insert]
      818 CALL                             R32 2 0
      819 FORGLOOP                         R27 2 ; [-8]
      821 LOADB                            R11 0
      822 GETUPVAL                         R27 43
      823 CALL                             R27 0 1
      824 JUMPIF                           R27 ; [+18]
      825 GETUPVAL                         R27 44
      826 MOVE                             R28 R8
      827 MOVE                             R29 R0
      828 CALL                             R27 2 2
      829 MOVE                             R6 R27
      830 MOVE                             R26 R28
      831 JUMPIF                           R6 ; [+11]
      832 MOVE                             R28 R7
      833 GETIMPORT                        R29 K54 [table.concat]
      835 MOVE                             R30 R26
      836 LOADK                            R31 K55 ["\n"]
      837 CALL                             R29 2 -1
      838 FASTCALL                         TABLE_INSERT ; [+2]
      839 GETIMPORT                        R27 K39 [table.insert]
      841 CALL                             R27 -1 0
      842 LOADB                            R11 0
      843 GETUPVAL                         R27 45
      844 CALL                             R27 0 1
      845 JUMPIFNOT                        R27 ; [+21]
      846 GETUPVAL                         R27 46
      847 GETTABLEKS                       R27 R27 K21 ["validate"]
      849 MOVE                             R28 R8
      850 LOADB                            R29 0
      851 MOVE                             R30 R0
      852 CALL                             R27 3 2
      853 MOVE                             R6 R27
      854 MOVE                             R26 R28
      855 JUMPIF                           R6 ; [+11]
      856 MOVE                             R28 R7
      857 GETIMPORT                        R29 K54 [table.concat]
      859 MOVE                             R30 R26
      860 LOADK                            R31 K55 ["\n"]
      861 CALL                             R29 2 -1
      862 FASTCALL                         TABLE_INSERT ; [+2]
      863 GETIMPORT                        R27 K39 [table.insert]
      865 CALL                             R27 -1 0
      866 LOADB                            R11 0
      867 GETUPVAL                         R27 47
      868 CALL                             R27 0 1
      869 JUMPIF                           R27 ; [+43]
      870 GETUPVAL                         R27 48
      871 MOVE                             R28 R12
      872 MOVE                             R29 R0
      873 CALL                             R27 2 2
      874 MOVE                             R6 R27
      875 MOVE                             R26 R28
      876 JUMPIF                           R6 ; [+11]
      877 MOVE                             R28 R7
      878 GETIMPORT                        R29 K54 [table.concat]
      880 MOVE                             R30 R26
      881 LOADK                            R31 K55 ["\n"]
      882 CALL                             R29 2 -1
      883 FASTCALL                         TABLE_INSERT ; [+2]
      884 GETIMPORT                        R27 K39 [table.insert]
      886 CALL                             R27 -1 0
      887 LOADB                            R11 0
      888 GETUPVAL                         R28 2
      889 GETTABLEKS                       R28 R28 K66 ["SkinningTransferRequiredTypes"]
      891 GETTABLE                         R27 R28 R2
      892 JUMPIF                           R27 ; [+20]
      893 GETUPVAL                         R27 49
      894 GETTABLEKS                       R27 R27 K67 ["validateMeshPart"]
      896 MOVE                             R28 R12
      897 MOVE                             R29 R0
      898 CALL                             R27 2 2
      899 MOVE                             R6 R27
      900 MOVE                             R26 R28
      901 JUMPIF                           R6 ; [+11]
      902 MOVE                             R28 R7
      903 GETIMPORT                        R29 K54 [table.concat]
      905 MOVE                             R30 R26
      906 LOADK                            R31 K55 ["\n"]
      907 CALL                             R29 2 -1
      908 FASTCALL                         TABLE_INSERT ; [+2]
      909 GETIMPORT                        R27 K39 [table.insert]
      911 CALL                             R27 -1 0
      912 LOADB                            R11 0
      913 MOVE                             R27 R11
      914 MOVE                             R28 R7
      915 RETURN                           R27 2

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
       33 GETTABLEKS                       R6 R6 K11 ["validateLCCageQuality"]
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
      117 GETTABLEKS                       R18 R18 K23 ["validateHSR"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K4 [require]
      122 GETTABLEKS                       R19 R0 K10 ["validation"]
      124 GETTABLEKS                       R19 R19 K24 ["validateThumbnailConfiguration"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K4 [require]
      129 GETTABLEKS                       R20 R0 K10 ["validation"]
      131 GETTABLEKS                       R20 R20 K25 ["validateScaleType"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K4 [require]
      136 GETTABLEKS                       R21 R0 K10 ["validation"]
      138 GETTABLEKS                       R21 R21 K26 ["validateLayeredClothingInRenderBounds"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K4 [require]
      143 GETTABLEKS                       R22 R0 K10 ["validation"]
      145 GETTABLEKS                       R22 R22 K27 ["ValidateMeshSizeProperty"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K4 [require]
      150 GETTABLEKS                       R23 R0 K10 ["validation"]
      152 GETTABLEKS                       R23 R23 K28 ["ValidatePropertiesSensible"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K4 [require]
      157 GETTABLEKS                       R24 R0 K10 ["validation"]
      159 GETTABLEKS                       R24 R24 K29 ["validateDependencies"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K4 [require]
      164 GETTABLEKS                       R25 R0 K10 ["validation"]
      166 GETTABLEKS                       R25 R25 K30 ["validateSkinningTransfer"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K4 [require]
      171 GETTABLEKS                       R26 R0 K10 ["validation"]
      173 GETTABLEKS                       R26 R26 K31 ["validateTotalSurfaceArea"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K4 [require]
      178 GETTABLEKS                       R27 R0 K10 ["validation"]
      180 GETTABLEKS                       R27 R27 K32 ["validateCoplanarIntersection"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K4 [require]
      185 GETTABLEKS                       R28 R0 K10 ["validation"]
      187 GETTABLEKS                       R28 R28 K33 ["validateMaxCubeDensity"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K4 [require]
      192 GETTABLEKS                       R29 R0 K10 ["validation"]
      194 GETTABLEKS                       R29 R29 K34 ["ValidateHSRData"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K4 [require]
      199 GETTABLEKS                       R30 R0 K10 ["validation"]
      201 GETTABLEKS                       R30 R30 K35 ["validateSurfaceAppearanceTextureSize"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K4 [require]
      206 GETTABLEKS                       R31 R0 K10 ["validation"]
      208 GETTABLEKS                       R31 R31 K36 ["ValidateTexturePack"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K4 [require]
      213 GETTABLEKS                       R32 R0 K5 ["util"]
      215 GETTABLEKS                       R32 R32 K37 ["RigidOrLayeredAllowed"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K4 [require]
      220 GETTABLEKS                       R33 R0 K5 ["util"]
      222 GETTABLEKS                       R33 R33 K38 ["createLayeredClothingSchema"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K4 [require]
      227 GETTABLEKS                       R34 R0 K5 ["util"]
      229 GETTABLEKS                       R34 R34 K39 ["createEyebrowEyelashSchema"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K4 [require]
      234 GETTABLEKS                       R35 R0 K5 ["util"]
      236 GETTABLEKS                       R35 R35 K40 ["getAttachment"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K4 [require]
      241 GETTABLEKS                       R36 R0 K5 ["util"]
      243 GETTABLEKS                       R36 R36 K41 ["getMeshSize"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K4 [require]
      248 GETTABLEKS                       R37 R0 K5 ["util"]
      250 GETTABLEKS                       R37 R37 K42 ["getEditableMeshFromContext"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K4 [require]
      255 GETTABLEKS                       R38 R0 K5 ["util"]
      257 GETTABLEKS                       R38 R38 K43 ["getEditableImageFromContext"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K4 [require]
      262 GETTABLEKS                       R39 R0 K5 ["util"]
      264 GETTABLEKS                       R39 R39 K44 ["getExpectedPartSize"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K4 [require]
      269 GETTABLEKS                       R40 R0 K5 ["util"]
      271 GETTABLEKS                       R40 R40 K45 ["pcallDeferred"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K4 [require]
      276 GETTABLEKS                       R41 R0 K46 ["flags"]
      278 GETTABLEKS                       R41 R41 K47 ["getFIntUGCValidationLCHandleScaleOffsetMaximum"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K4 [require]
      283 GETTABLEKS                       R42 R0 K46 ["flags"]
      285 GETTABLEKS                       R42 R42 K48 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K4 [require]
      290 GETTABLEKS                       R43 R0 K46 ["flags"]
      292 GETTABLEKS                       R43 R43 K49 ["getFFlagUGCValidateAccessoryAssetTextureLimit"]
      294 CALL                             R42 1 1
      295 GETIMPORT                        R43 K4 [require]
      297 GETTABLEKS                       R44 R0 K46 ["flags"]
      299 GETTABLEKS                       R44 R44 K50 ["getFFlagUGCValidateLayeredClothingAssetSurfaceAppearanceTextureLimits"]
      301 CALL                             R43 1 1
      302 GETIMPORT                        R44 K4 [require]
      304 GETTABLEKS                       R45 R0 K46 ["flags"]
      306 GETTABLEKS                       R45 R45 K51 ["getFFlagUGCValidateTexturePack"]
      308 CALL                             R44 1 1
      309 GETIMPORT                        R45 K4 [require]
      311 GETTABLEKS                       R46 R0 K46 ["flags"]
      313 GETTABLEKS                       R46 R46 K52 ["getFFlagUGCValidateEyebrowEyelashThumbnailSchema"]
      315 CALL                             R45 1 1
      316 GETIMPORT                        R46 K4 [require]
      318 GETTABLEKS                       R47 R0 K10 ["validation"]
      320 GETTABLEKS                       R47 R47 K53 ["ValidateMeshPartOnlySkinnedToR15"]
      322 CALL                             R46 1 1
      323 GETIMPORT                        R47 K4 [require]
      325 GETTABLEKS                       R48 R0 K46 ["flags"]
      327 GETTABLEKS                       R48 R48 K54 ["getEngineFeatureEngineUGCValidationConsolidateAccessorySkinning"]
      329 CALL                             R47 1 1
      330 GETIMPORT                        R48 K4 [require]
      332 GETTABLEKS                       R49 R0 K46 ["flags"]
      334 GETTABLEKS                       R49 R49 K55 ["getFFlagUGCValidateMigrateSchemaProperties"]
      336 CALL                             R48 1 1
      337 GETIMPORT                        R49 K4 [require]
      339 GETTABLEKS                       R50 R0 K46 ["flags"]
      341 GETTABLEKS                       R50 R50 K56 ["getFFlagUGCValidationCombineEntrypointResults"]
      343 CALL                             R49 1 1
      344 GETIMPORT                        R50 K4 [require]
      346 GETTABLEKS                       R51 R0 K46 ["flags"]
      348 GETTABLEKS                       R51 R51 K57 ["getFFlagUGCValidateMigrateTextureTransparency"]
      350 CALL                             R50 1 1
      351 GETIMPORT                        R51 K4 [require]
      353 GETTABLEKS                       R52 R0 K46 ["flags"]
      355 GETTABLEKS                       R52 R52 K58 ["getFFlagUGCValidateMigrateCageGeometry"]
      357 CALL                             R51 1 1
      358 DUPCLOSURE                       R52 K59 [PROTO_1]
      359 CAPTURE                          VAL R31
      360 CAPTURE                          VAL R2
      361 CAPTURE                          VAL R3
      362 CAPTURE                          VAL R16
      363 CAPTURE                          VAL R45
      364 CAPTURE                          VAL R33
      365 CAPTURE                          VAL R32
      366 CAPTURE                          VAL R6
      367 CAPTURE                          VAL R41
      368 CAPTURE                          VAL R22
      369 CAPTURE                          VAL R48
      370 CAPTURE                          VAL R49
      371 CAPTURE                          VAL R23
      372 CAPTURE                          VAL R36
      373 CAPTURE                          VAL R37
      374 CAPTURE                          VAL R39
      375 CAPTURE                          VAL R35
      376 CAPTURE                          VAL R38
      377 CAPTURE                          VAL R40
      378 CAPTURE                          VAL R34
      379 CAPTURE                          VAL R9
      380 CAPTURE                          VAL R13
      381 CAPTURE                          VAL R10
      382 CAPTURE                          VAL R14
      383 CAPTURE                          VAL R50
      384 CAPTURE                          VAL R42
      385 CAPTURE                          VAL R4
      386 CAPTURE                          VAL R12
      387 CAPTURE                          VAL R43
      388 CAPTURE                          VAL R29
      389 CAPTURE                          VAL R19
      390 CAPTURE                          VAL R18
      391 CAPTURE                          VAL R17
      392 CAPTURE                          VAL R28
      393 CAPTURE                          VAL R8
      394 CAPTURE                          VAL R25
      395 CAPTURE                          VAL R21
      396 CAPTURE                          VAL R11
      397 CAPTURE                          VAL R7
      398 CAPTURE                          VAL R15
      399 CAPTURE                          VAL R26
      400 CAPTURE                          VAL R27
      401 CAPTURE                          VAL R5
      402 CAPTURE                          VAL R51
      403 CAPTURE                          VAL R20
      404 CAPTURE                          VAL R44
      405 CAPTURE                          VAL R30
      406 CAPTURE                          VAL R47
      407 CAPTURE                          VAL R24
      408 CAPTURE                          VAL R46
      409 RETURN                           R52 1
