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
      139 DUPTABLE                         R13 K31 [{"fullName", "fieldName", "contentId", "context"}]
      140 NAMECALL                         R14 R12 K32 ["GetFullName"]
      142 CALL                             R14 1 1
      143 SETTABLEKS                       R14 R13 K27 ["fullName"]
      145 LOADK                            R14 K33 ["MeshId"]
      146 SETTABLEKS                       R14 R13 K28 ["fieldName"]
      148 GETTABLEKS                       R14 R12 K33 ["MeshId"]
      150 SETTABLEKS                       R14 R13 K29 ["contentId"]
      152 GETTABLEKS                       R14 R8 K12 ["Name"]
      154 SETTABLEKS                       R14 R13 K30 ["context"]
      156 LOADB                            R14 0
      157 GETTABLEKS                       R15 R13 K29 ["contentId"]
      159 JUMPIFEQKNIL                     R15 ; [+7]
      161 GETTABLEKS                       R15 R13 K29 ["contentId"]
      163 JUMPIFNOTEQKS                    R15 K34 [""] ; [+2]
      165 LOADB                            R14 0 +1
      166 LOADB                            R14 1
      167 GETUPVAL                         R15 13
      168 MOVE                             R16 R12
      169 LOADK                            R17 K33 ["MeshId"]
      170 MOVE                             R18 R0
      171 CALL                             R15 3 2
      172 JUMPIF                           R15 ; [+56]
      173 GETTABLEKS                       R17 R13 K29 ["contentId"]
      175 JUMPIF                           R17 ; [+30]
      176 LOADB                            R14 0
      177 GETUPVAL                         R17 1
      178 GETTABLEKS                       R17 R17 K5 ["reportFailure"]
      180 GETUPVAL                         R18 1
      181 GETTABLEKS                       R18 R18 K6 ["ErrorType"]
      183 GETTABLEKS                       R18 R18 K35 ["validateLayeredClothingAccessory_NoMeshId"]
      185 LOADNIL                          R19
      186 MOVE                             R20 R0
      187 CALL                             R17 3 0
      188 LOADB                            R11 0
      189 NEWTABLE                         R19 0 1
      191 GETIMPORT                        R20 K10 [string.format]
      193 LOADK                            R21 K36 ["Missing meshId on layered clothing accessory '%s'. Make sure you are using a valid meshId and try again.\n"]
      194 GETTABLEKS                       R22 R8 K12 ["Name"]
      196 CALL                             R20 2 -1
      197 SETLIST                          R19 R20 -1 [1]
      199 FASTCALL2                        TABLE_INSERT R7 R19 ; [+4]
      201 MOVE                             R18 R7
      202 GETIMPORT                        R17 K39 [table.insert]
      204 CALL                             R17 2 0
      205 JUMP                             ; [+23]
      206 GETUPVAL                         R17 1
      207 GETTABLEKS                       R17 R17 K5 ["reportFailure"]
      209 GETUPVAL                         R18 1
      210 GETTABLEKS                       R18 R18 K6 ["ErrorType"]
      212 GETTABLEKS                       R18 R18 K40 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      214 LOADNIL                          R19
      215 MOVE                             R20 R0
      216 CALL                             R17 3 0
      217 LOADB                            R17 0
      218 NEWTABLE                         R18 0 1
      220 GETIMPORT                        R19 K10 [string.format]
      222 LOADK                            R20 K41 ["Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again."]
      223 GETTABLEKS                       R21 R8 K12 ["Name"]
      225 CALL                             R19 2 -1
      226 SETLIST                          R18 R19 -1 [1]
      228 RETURN                           R17 2
      229 SETTABLEKS                       R16 R13 K42 ["editableMesh"]
      231 LOADB                            R14 1
      232 GETTABLEKS                       R17 R12 K43 ["TextureID"]
      234 DUPTABLE                         R18 K44 [{"fullName", "fieldName", "contentId"}]
      235 NAMECALL                         R19 R12 K32 ["GetFullName"]
      237 CALL                             R19 1 1
      238 SETTABLEKS                       R19 R18 K27 ["fullName"]
      240 LOADK                            R19 K43 ["TextureID"]
      241 SETTABLEKS                       R19 R18 K28 ["fieldName"]
      243 SETTABLEKS                       R17 R18 K29 ["contentId"]
      245 LOADNIL                          R19
      246 LOADNIL                          R20
      247 JUMPIFEQKS                       R17 K34 [""] ; [+23]
      249 GETUPVAL                         R21 14
      250 MOVE                             R22 R12
      251 LOADK                            R23 K43 ["TextureID"]
      252 MOVE                             R24 R0
      253 CALL                             R21 3 2
      254 MOVE                             R19 R21
      255 MOVE                             R20 R22
      256 JUMPIF                           R19 ; [+12]
      257 LOADB                            R21 0
      258 NEWTABLE                         R22 0 1
      260 GETIMPORT                        R23 K10 [string.format]
      262 LOADK                            R24 K45 ["Failed to load texture for layered clothing accessory '%s'. Make sure texture exists and try again."]
      263 GETTABLEKS                       R25 R8 K12 ["Name"]
      265 CALL                             R23 2 -1
      266 SETLIST                          R22 R23 -1 [1]
      268 RETURN                           R21 2
      269 SETTABLEKS                       R20 R18 K46 ["editableImage"]
      271 GETUPVAL                         R21 15
      272 NEWCLOSURE                       R22 P0
      273 CAPTURE                          UPVAL U16
      274 CAPTURE                          VAL R13
      275 MOVE                             R23 R0
      276 CALL                             R21 2 2
      277 JUMPIF                           R21 ; [+23]
      278 GETUPVAL                         R23 1
      279 GETTABLEKS                       R23 R23 K5 ["reportFailure"]
      281 GETUPVAL                         R24 1
      282 GETTABLEKS                       R24 R24 K6 ["ErrorType"]
      284 GETTABLEKS                       R24 R24 K40 ["validateLayeredClothingAccessory_FailedToLoadMesh"]
      286 LOADNIL                          R25
      287 MOVE                             R26 R0
      288 CALL                             R23 3 0
      289 LOADB                            R23 0
      290 NEWTABLE                         R24 0 1
      292 GETIMPORT                        R25 K10 [string.format]
      294 LOADK                            R26 K41 ["Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again."]
      295 GETTABLEKS                       R27 R8 K12 ["Name"]
      297 CALL                             R25 2 -1
      298 SETLIST                          R24 R25 -1 [1]
      300 RETURN                           R23 2
      301 GETUPVAL                         R24 17
      302 MOVE                             R25 R12
      303 MOVE                             R26 R0
      304 CALL                             R24 2 1
      305 DIV                              R23 R24 R22
      306 LOADK                            R26 K47 [{1, 1, 1}]
      307 GETUPVAL                         R28 18
      308 CALL                             R28 0 1
      309 DIVK                             R27 R28 K48 [1000]
      310 NAMECALL                         R24 R23 K49 ["FuzzyEq"]
      312 CALL                             R24 3 1
      313 JUMPIF                           R24 ; [+23]
      314 GETUPVAL                         R24 1
      315 GETTABLEKS                       R24 R24 K5 ["reportFailure"]
      317 GETUPVAL                         R25 1
      318 GETTABLEKS                       R25 R25 K6 ["ErrorType"]
      320 GETTABLEKS                       R25 R25 K50 ["validateLayeredClothingAccessory_HandleIsScaled"]
      322 LOADNIL                          R26
      323 MOVE                             R27 R0
      324 CALL                             R24 3 0
      325 MOVE                             R25 R7
      326 GETIMPORT                        R26 K10 [string.format]
      328 LOADK                            R27 K51 ["%s has been scaled, but mesh parts with wrap layers do not support scaling. You need to change the Size property to match the MeshSize property."]
      329 GETTABLEKS                       R28 R12 K12 ["Name"]
      331 CALL                             R26 2 -1
      332 FASTCALL                         TABLE_INSERT ; [+2]
      333 GETIMPORT                        R24 K39 [table.insert]
      335 CALL                             R24 -1 0
      336 LOADB                            R11 0
      337 GETUPVAL                         R24 19
      338 MOVE                             R25 R12
      339 GETTABLEKS                       R26 R5 K20 ["attachmentNames"]
      341 CALL                             R24 2 1
      342 GETTABLEKS                       R26 R5 K52 ["bounds"]
      344 GETTABLEKS                       R27 R24 K12 ["Name"]
      346 GETTABLE                         R25 R26 R27
      347 NEWTABLE                         R26 0 0
      349 GETUPVAL                         R27 10
      350 CALL                             R27 0 1
      351 JUMPIFNOT                        R27 ; [+3]
      352 GETUPVAL                         R27 11
      353 CALL                             R27 0 1
      354 JUMPIF                           R27 ; [+37]
      355 GETUPVAL                         R27 20
      356 MOVE                             R28 R8
      357 MOVE                             R29 R0
      358 CALL                             R27 2 2
      359 MOVE                             R6 R27
      360 MOVE                             R26 R28
      361 JUMPIF                           R6 ; [+11]
      362 MOVE                             R28 R7
      363 GETIMPORT                        R29 K54 [table.concat]
      365 MOVE                             R30 R26
      366 LOADK                            R31 K55 ["\n"]
      367 CALL                             R29 2 -1
      368 FASTCALL                         TABLE_INSERT ; [+2]
      369 GETIMPORT                        R27 K39 [table.insert]
      371 CALL                             R27 -1 0
      372 LOADB                            R11 0
      373 GETUPVAL                         R27 21
      374 MOVE                             R28 R8
      375 LOADNIL                          R29
      376 MOVE                             R30 R0
      377 CALL                             R27 3 2
      378 MOVE                             R6 R27
      379 MOVE                             R26 R28
      380 JUMPIF                           R6 ; [+11]
      381 MOVE                             R28 R7
      382 GETIMPORT                        R29 K54 [table.concat]
      384 MOVE                             R30 R26
      385 LOADK                            R31 K55 ["\n"]
      386 CALL                             R29 2 -1
      387 FASTCALL                         TABLE_INSERT ; [+2]
      388 GETIMPORT                        R27 K39 [table.insert]
      390 CALL                             R27 -1 0
      391 LOADB                            R11 0
      392 GETUPVAL                         R27 22
      393 MOVE                             R28 R8
      394 MOVE                             R29 R0
      395 CALL                             R27 2 2
      396 MOVE                             R6 R27
      397 MOVE                             R26 R28
      398 JUMPIF                           R6 ; [+11]
      399 MOVE                             R28 R7
      400 GETIMPORT                        R29 K54 [table.concat]
      402 MOVE                             R30 R26
      403 LOADK                            R31 K55 ["\n"]
      404 CALL                             R29 2 -1
      405 FASTCALL                         TABLE_INSERT ; [+2]
      406 GETIMPORT                        R27 K39 [table.insert]
      408 CALL                             R27 -1 0
      409 LOADB                            R11 0
      410 GETUPVAL                         R27 10
      411 CALL                             R27 0 1
      412 JUMPIFNOT                        R27 ; [+3]
      413 GETUPVAL                         R27 11
      414 CALL                             R27 0 1
      415 JUMPIF                           R27 ; [+18]
      416 GETUPVAL                         R27 23
      417 MOVE                             R28 R8
      418 MOVE                             R29 R0
      419 CALL                             R27 2 2
      420 MOVE                             R6 R27
      421 MOVE                             R26 R28
      422 JUMPIF                           R6 ; [+11]
      423 MOVE                             R28 R7
      424 GETIMPORT                        R29 K54 [table.concat]
      426 MOVE                             R30 R26
      427 LOADK                            R31 K55 ["\n"]
      428 CALL                             R29 2 -1
      429 FASTCALL                         TABLE_INSERT ; [+2]
      430 GETIMPORT                        R27 K39 [table.insert]
      432 CALL                             R27 -1 0
      433 LOADB                            R11 0
      434 GETUPVAL                         R27 24
      435 CALL                             R27 0 1
      436 JUMPIF                           R27 ; [+54]
      437 LOADNIL                          R27
      438 GETUPVAL                         R28 25
      439 CALL                             R28 0 1
      440 JUMPIFNOT                        R28 ; [+9]
      441 GETUPVAL                         R28 26
      442 GETTABLEKS                       R28 R28 K56 ["getTextureLimit"]
      444 MOVE                             R29 R2
      445 MOVE                             R30 R12
      446 GETTABLEKS                       R31 R18 K28 ["fieldName"]
      448 CALL                             R28 3 1
      449 MOVE                             R27 R28
      450 GETUPVAL                         R28 27
      451 MOVE                             R29 R18
      452 LOADB                            R30 1
      453 MOVE                             R31 R0
      454 MOVE                             R32 R27
      455 CALL                             R28 4 2
      456 MOVE                             R6 R28
      457 MOVE                             R26 R29
      458 JUMPIF                           R6 ; [+11]
      459 MOVE                             R29 R7
      460 GETIMPORT                        R30 K54 [table.concat]
      462 MOVE                             R31 R26
      463 LOADK                            R32 K55 ["\n"]
      464 CALL                             R30 2 -1
      465 FASTCALL                         TABLE_INSERT ; [+2]
      466 GETIMPORT                        R28 K39 [table.insert]
      468 CALL                             R28 -1 0
      469 LOADB                            R11 0
      470 GETUPVAL                         R28 28
      471 CALL                             R28 0 1
      472 JUMPIFNOT                        R28 ; [+18]
      473 GETUPVAL                         R28 29
      474 MOVE                             R29 R8
      475 MOVE                             R30 R0
      476 CALL                             R28 2 2
      477 MOVE                             R6 R28
      478 MOVE                             R26 R29
      479 JUMPIF                           R6 ; [+11]
      480 MOVE                             R29 R7
      481 GETIMPORT                        R30 K54 [table.concat]
      483 MOVE                             R31 R26
      484 LOADK                            R32 K55 ["\n"]
      485 CALL                             R30 2 -1
      486 FASTCALL                         TABLE_INSERT ; [+2]
      487 GETIMPORT                        R28 K39 [table.insert]
      489 CALL                             R28 -1 0
      490 LOADB                            R11 0
      491 GETUPVAL                         R27 10
      492 CALL                             R27 0 1
      493 JUMPIFNOT                        R27 ; [+3]
      494 GETUPVAL                         R27 11
      495 CALL                             R27 0 1
      496 JUMPIF                           R27 ; [+28]
      497 LOADK                            R29 K57 ["AvatarPartScaleType"]
      498 NAMECALL                         R27 R12 K26 ["FindFirstChild"]
      500 CALL                             R27 2 1
      501 JUMPIFNOT                        R27 ; [+23]
      502 LOADK                            R30 K58 ["StringValue"]
      503 NAMECALL                         R28 R27 K59 ["IsA"]
      505 CALL                             R28 2 1
      506 JUMPIFNOT                        R28 ; [+18]
      507 GETUPVAL                         R28 30
      508 MOVE                             R29 R27
      509 MOVE                             R30 R0
      510 CALL                             R28 2 2
      511 MOVE                             R6 R28
      512 MOVE                             R26 R29
      513 JUMPIF                           R6 ; [+11]
      514 MOVE                             R29 R7
      515 GETIMPORT                        R30 K54 [table.concat]
      517 MOVE                             R31 R26
      518 LOADK                            R32 K55 ["\n"]
      519 CALL                             R30 2 -1
      520 FASTCALL                         TABLE_INSERT ; [+2]
      521 GETIMPORT                        R28 K39 [table.insert]
      523 CALL                             R28 -1 0
      524 LOADB                            R11 0
      525 GETUPVAL                         R27 10
      526 CALL                             R27 0 1
      527 JUMPIFNOT                        R27 ; [+3]
      528 GETUPVAL                         R27 11
      529 CALL                             R27 0 1
      530 JUMPIF                           R27 ; [+22]
      531 JUMPIF                           R9 ; [+21]
      532 GETUPVAL                         R27 31
      533 MOVE                             R28 R8
      534 MOVE                             R29 R12
      535 MOVE                             R30 R13
      536 MOVE                             R31 R23
      537 MOVE                             R32 R0
      538 CALL                             R27 5 2
      539 MOVE                             R6 R27
      540 MOVE                             R26 R28
      541 JUMPIF                           R6 ; [+11]
      542 MOVE                             R28 R7
      543 GETIMPORT                        R29 K54 [table.concat]
      545 MOVE                             R30 R26
      546 LOADK                            R31 K55 ["\n"]
      547 CALL                             R29 2 -1
      548 FASTCALL                         TABLE_INSERT ; [+2]
      549 GETIMPORT                        R27 K39 [table.insert]
      551 CALL                             R27 -1 0
      552 LOADB                            R11 0
      553 LOADK                            R29 K60 ["WrapLayer"]
      554 NAMECALL                         R27 R12 K61 ["FindFirstChildOfClass"]
      556 CALL                             R27 2 1
      557 JUMPIFNOTEQKNIL                  R27 ; [+25]
      559 GETUPVAL                         R28 1
      560 GETTABLEKS                       R28 R28 K5 ["reportFailure"]
      562 GETUPVAL                         R29 1
      563 GETTABLEKS                       R29 R29 K6 ["ErrorType"]
      565 GETTABLEKS                       R29 R29 K62 ["validateLayeredClothingAccessory_NoWrapLayer"]
      567 LOADNIL                          R30
      568 MOVE                             R31 R0
      569 CALL                             R28 3 0
      570 MOVE                             R29 R7
      571 GETIMPORT                        R30 K10 [string.format]
      573 LOADK                            R31 K63 ["Missing WrapLayer on layered clothing accessory %s. You need to create a child WrapLayer and try again."]
      574 GETTABLEKS                       R32 R8 K12 ["Name"]
      576 CALL                             R30 2 -1
      577 FASTCALL                         TABLE_INSERT ; [+2]
      578 GETIMPORT                        R28 K39 [table.insert]
      580 CALL                             R28 -1 0
      581 LOADB                            R11 0
      582 JUMP                             ; [+53]
      583 GETUPVAL                         R28 10
      584 CALL                             R28 0 1
      585 JUMPIFNOT                        R28 ; [+3]
      586 GETUPVAL                         R28 11
      587 CALL                             R28 0 1
      588 JUMPIF                           R28 ; [+18]
      589 GETUPVAL                         R28 32
      590 MOVE                             R29 R27
      591 MOVE                             R30 R0
      592 CALL                             R28 2 2
      593 MOVE                             R6 R28
      594 MOVE                             R26 R29
      595 JUMPIF                           R6 ; [+11]
      596 MOVE                             R29 R7
      597 GETIMPORT                        R30 K54 [table.concat]
      599 MOVE                             R31 R26
      600 LOADK                            R32 K55 ["\n"]
      601 CALL                             R30 2 -1
      602 FASTCALL                         TABLE_INSERT ; [+2]
      603 GETIMPORT                        R28 K39 [table.insert]
      605 CALL                             R28 -1 0
      606 LOADB                            R11 0
      607 GETUPVAL                         R28 10
      608 CALL                             R28 0 1
      609 JUMPIFNOT                        R28 ; [+3]
      610 GETUPVAL                         R28 11
      611 CALL                             R28 0 1
      612 JUMPIF                           R28 ; [+23]
      613 GETTABLEKS                       R28 R0 K64 ["allowEditableInstances"]
      615 JUMPIF                           R28 ; [+20]
      616 GETUPVAL                         R29 33
      617 GETTABLEKS                       R29 R29 K21 ["validate"]
      619 MOVE                             R30 R27
      620 MOVE                             R31 R0
      621 CALL                             R29 2 2
      622 MOVE                             R6 R29
      623 MOVE                             R26 R30
      624 JUMPIF                           R6 ; [+11]
      625 MOVE                             R30 R7
      626 GETIMPORT                        R31 K54 [table.concat]
      628 MOVE                             R32 R26
      629 LOADK                            R33 K55 ["\n"]
      630 CALL                             R31 2 -1
      631 FASTCALL                         TABLE_INSERT ; [+2]
      632 GETIMPORT                        R29 K39 [table.insert]
      634 CALL                             R29 -1 0
      635 LOADB                            R11 0
      636 GETUPVAL                         R27 10
      637 CALL                             R27 0 1
      638 JUMPIFNOT                        R27 ; [+3]
      639 GETUPVAL                         R27 11
      640 CALL                             R27 0 1
      641 JUMPIF                           R27 ; [+24]
      642 NOT                              R27 R3
      643 JUMPIFNOT                        R4 ; [+1]
      644 LOADB                            R27 0
      645 JUMPIFNOT                        R27 ; [+20]
      646 GETUPVAL                         R28 34
      647 MOVE                             R29 R8
      648 NEWTABLE                         R30 0 0
      650 MOVE                             R31 R0
      651 CALL                             R28 3 2
      652 MOVE                             R6 R28
      653 MOVE                             R26 R29
      654 JUMPIF                           R6 ; [+11]
      655 MOVE                             R29 R7
      656 GETIMPORT                        R30 K54 [table.concat]
      658 MOVE                             R31 R26
      659 LOADK                            R32 K55 ["\n"]
      660 CALL                             R30 2 -1
      661 FASTCALL                         TABLE_INSERT ; [+2]
      662 GETIMPORT                        R28 K39 [table.insert]
      664 CALL                             R28 -1 0
      665 LOADB                            R11 0
      666 JUMPIFNOT                        R14 ; [+120]
      667 GETUPVAL                         R27 35
      668 MOVE                             R28 R13
      669 MOVE                             R29 R23
      670 MOVE                             R30 R0
      671 CALL                             R27 3 2
      672 MOVE                             R6 R27
      673 MOVE                             R26 R28
      674 JUMPIF                           R6 ; [+11]
      675 MOVE                             R28 R7
      676 GETIMPORT                        R29 K54 [table.concat]
      678 MOVE                             R30 R26
      679 LOADK                            R31 K55 ["\n"]
      680 CALL                             R29 2 -1
      681 FASTCALL                         TABLE_INSERT ; [+2]
      682 GETIMPORT                        R27 K39 [table.insert]
      684 CALL                             R27 -1 0
      685 LOADB                            R11 0
      686 GETUPVAL                         R27 36
      687 GETTABLEKS                       R27 R27 K65 ["validateSingleMeshPart"]
      689 MOVE                             R28 R12
      690 MOVE                             R29 R0
      691 CALL                             R27 2 2
      692 MOVE                             R6 R27
      693 MOVE                             R26 R28
      694 JUMPIF                           R6 ; [+11]
      695 MOVE                             R28 R7
      696 GETIMPORT                        R29 K54 [table.concat]
      698 MOVE                             R30 R26
      699 LOADK                            R31 K55 ["\n"]
      700 CALL                             R29 2 -1
      701 FASTCALL                         TABLE_INSERT ; [+2]
      702 GETIMPORT                        R27 K39 [table.insert]
      704 CALL                             R27 -1 0
      705 LOADB                            R11 0
      706 GETUPVAL                         R27 37
      707 MOVE                             R28 R12
      708 MOVE                             R29 R24
      709 MOVE                             R30 R13
      710 MOVE                             R31 R23
      711 MOVE                             R32 R25
      712 GETTABLEKS                       R33 R2 K12 ["Name"]
      714 MOVE                             R34 R0
      715 CALL                             R27 7 2
      716 MOVE                             R6 R27
      717 MOVE                             R26 R28
      718 JUMPIF                           R6 ; [+11]
      719 MOVE                             R28 R7
      720 GETIMPORT                        R29 K54 [table.concat]
      722 MOVE                             R30 R26
      723 LOADK                            R31 K55 ["\n"]
      724 CALL                             R29 2 -1
      725 FASTCALL                         TABLE_INSERT ; [+2]
      726 GETIMPORT                        R27 K39 [table.insert]
      728 CALL                             R27 -1 0
      729 LOADB                            R11 0
      730 GETUPVAL                         R27 38
      731 MOVE                             R28 R13
      732 LOADNIL                          R29
      733 MOVE                             R30 R0
      734 CALL                             R27 3 2
      735 MOVE                             R6 R27
      736 MOVE                             R26 R28
      737 JUMPIF                           R6 ; [+11]
      738 MOVE                             R28 R7
      739 GETIMPORT                        R29 K54 [table.concat]
      741 MOVE                             R30 R26
      742 LOADK                            R31 K55 ["\n"]
      743 CALL                             R29 2 -1
      744 FASTCALL                         TABLE_INSERT ; [+2]
      745 GETIMPORT                        R27 K39 [table.insert]
      747 CALL                             R27 -1 0
      748 LOADB                            R11 0
      749 GETUPVAL                         R27 39
      750 MOVE                             R28 R13
      751 LOADB                            R29 0
      752 MOVE                             R30 R0
      753 CALL                             R27 3 2
      754 MOVE                             R6 R27
      755 MOVE                             R26 R28
      756 JUMPIF                           R6 ; [+11]
      757 MOVE                             R28 R7
      758 GETIMPORT                        R29 K54 [table.concat]
      760 MOVE                             R30 R26
      761 LOADK                            R31 K55 ["\n"]
      762 CALL                             R29 2 -1
      763 FASTCALL                         TABLE_INSERT ; [+2]
      764 GETIMPORT                        R27 K39 [table.insert]
      766 CALL                             R27 -1 0
      767 LOADB                            R11 0
      768 GETUPVAL                         R27 40
      769 MOVE                             R28 R13
      770 MOVE                             R29 R23
      771 MOVE                             R30 R0
      772 CALL                             R27 3 2
      773 MOVE                             R6 R27
      774 MOVE                             R26 R28
      775 JUMPIF                           R6 ; [+11]
      776 MOVE                             R28 R7
      777 GETIMPORT                        R29 K54 [table.concat]
      779 MOVE                             R30 R26
      780 LOADK                            R31 K55 ["\n"]
      781 CALL                             R29 2 -1
      782 FASTCALL                         TABLE_INSERT ; [+2]
      783 GETIMPORT                        R27 K39 [table.insert]
      785 CALL                             R27 -1 0
      786 LOADB                            R11 0
      787 GETUPVAL                         R27 41
      788 MOVE                             R28 R13
      789 MOVE                             R29 R0
      790 MOVE                             R30 R23
      791 CALL                             R27 3 2
      792 MOVE                             R6 R27
      793 MOVE                             R26 R28
      794 JUMPIF                           R6 ; [+11]
      795 MOVE                             R28 R7
      796 GETIMPORT                        R29 K54 [table.concat]
      798 MOVE                             R30 R26
      799 LOADK                            R31 K55 ["\n"]
      800 CALL                             R29 2 -1
      801 FASTCALL                         TABLE_INSERT ; [+2]
      802 GETIMPORT                        R27 K39 [table.insert]
      804 CALL                             R27 -1 0
      805 LOADB                            R11 0
      806 GETUPVAL                         R27 42
      807 MOVE                             R28 R8
      808 MOVE                             R29 R13
      809 MOVE                             R30 R0
      810 CALL                             R27 3 2
      811 MOVE                             R6 R27
      812 MOVE                             R26 R28
      813 JUMPIF                           R6 ; [+14]
      814 MOVE                             R27 R26
      815 LOADNIL                          R28
      816 LOADNIL                          R29
      817 FORGPREP                         R27
      818 FASTCALL2                        TABLE_INSERT R7 R31 ; [+5]
      820 MOVE                             R33 R7
      821 MOVE                             R34 R31
      822 GETIMPORT                        R32 K39 [table.insert]
      824 CALL                             R32 2 0
      825 FORGLOOP                         R27 2 ; [-8]
      827 LOADB                            R11 0
      828 GETUPVAL                         R27 43
      829 CALL                             R27 0 1
      830 JUMPIF                           R27 ; [+18]
      831 GETUPVAL                         R27 44
      832 MOVE                             R28 R8
      833 MOVE                             R29 R0
      834 CALL                             R27 2 2
      835 MOVE                             R6 R27
      836 MOVE                             R26 R28
      837 JUMPIF                           R6 ; [+11]
      838 MOVE                             R28 R7
      839 GETIMPORT                        R29 K54 [table.concat]
      841 MOVE                             R30 R26
      842 LOADK                            R31 K55 ["\n"]
      843 CALL                             R29 2 -1
      844 FASTCALL                         TABLE_INSERT ; [+2]
      845 GETIMPORT                        R27 K39 [table.insert]
      847 CALL                             R27 -1 0
      848 LOADB                            R11 0
      849 GETUPVAL                         R27 45
      850 CALL                             R27 0 1
      851 JUMPIFNOT                        R27 ; [+21]
      852 GETUPVAL                         R27 46
      853 GETTABLEKS                       R27 R27 K21 ["validate"]
      855 MOVE                             R28 R8
      856 LOADB                            R29 0
      857 MOVE                             R30 R0
      858 CALL                             R27 3 2
      859 MOVE                             R6 R27
      860 MOVE                             R26 R28
      861 JUMPIF                           R6 ; [+11]
      862 MOVE                             R28 R7
      863 GETIMPORT                        R29 K54 [table.concat]
      865 MOVE                             R30 R26
      866 LOADK                            R31 K55 ["\n"]
      867 CALL                             R29 2 -1
      868 FASTCALL                         TABLE_INSERT ; [+2]
      869 GETIMPORT                        R27 K39 [table.insert]
      871 CALL                             R27 -1 0
      872 LOADB                            R11 0
      873 GETUPVAL                         R27 47
      874 CALL                             R27 0 1
      875 JUMPIF                           R27 ; [+43]
      876 GETUPVAL                         R27 48
      877 MOVE                             R28 R12
      878 MOVE                             R29 R0
      879 CALL                             R27 2 2
      880 MOVE                             R6 R27
      881 MOVE                             R26 R28
      882 JUMPIF                           R6 ; [+11]
      883 MOVE                             R28 R7
      884 GETIMPORT                        R29 K54 [table.concat]
      886 MOVE                             R30 R26
      887 LOADK                            R31 K55 ["\n"]
      888 CALL                             R29 2 -1
      889 FASTCALL                         TABLE_INSERT ; [+2]
      890 GETIMPORT                        R27 K39 [table.insert]
      892 CALL                             R27 -1 0
      893 LOADB                            R11 0
      894 GETUPVAL                         R28 2
      895 GETTABLEKS                       R28 R28 K66 ["SkinningTransferRequiredTypes"]
      897 GETTABLE                         R27 R28 R2
      898 JUMPIF                           R27 ; [+20]
      899 GETUPVAL                         R27 49
      900 GETTABLEKS                       R27 R27 K67 ["validateMeshPart"]
      902 MOVE                             R28 R12
      903 MOVE                             R29 R0
      904 CALL                             R27 2 2
      905 MOVE                             R6 R27
      906 MOVE                             R26 R28
      907 JUMPIF                           R6 ; [+11]
      908 MOVE                             R28 R7
      909 GETIMPORT                        R29 K54 [table.concat]
      911 MOVE                             R30 R26
      912 LOADK                            R31 K55 ["\n"]
      913 CALL                             R29 2 -1
      914 FASTCALL                         TABLE_INSERT ; [+2]
      915 GETIMPORT                        R27 K39 [table.insert]
      917 CALL                             R27 -1 0
      918 LOADB                            R11 0
      919 MOVE                             R27 R11
      920 MOVE                             R28 R7
      921 RETURN                           R27 2

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
