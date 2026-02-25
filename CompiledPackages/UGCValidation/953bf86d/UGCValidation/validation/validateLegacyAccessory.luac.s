PROTO_0:
        0 GETTABLEKS                       R1 R0 K0 ["instances"]
        2 GETTABLEKS                       R2 R0 K1 ["assetTypeEnum"]
        4 GETTABLEKS                       R3 R0 K2 ["isServer"]
        6 GETTABLEKS                       R4 R0 K3 ["allowUnreviewedAssets"]
        8 GETUPVAL                         R6 0
        9 GETTABLEKS                       R5 R6 K4 ["isRigidAccessoryAllowed"]
       11 MOVE                             R6 R2
       12 CALL                             R5 1 1
       13 JUMPIF                           R5 ; [+23]
       14 GETUPVAL                         R6 1
       15 GETTABLEKS                       R5 R6 K5 ["reportFailure"]
       17 GETUPVAL                         R8 1
       18 GETTABLEKS                       R7 R8 K6 ["ErrorType"]
       20 GETTABLEKS                       R6 R7 K7 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
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
       97 LOADK                            R12 K16 ["Handle"]
       98 NAMECALL                         R10 R8 K17 ["FindFirstChild"]
      100 CALL                             R10 2 1
      101 LOADK                            R13 K18 ["SpecialMesh"]
      102 NAMECALL                         R11 R10 K19 ["FindFirstChildOfClass"]
      104 CALL                             R11 2 1
      105 DUPTABLE                         R12 K24 [{"fullName", "fieldName", "contentId", "context"}]
      106 NAMECALL                         R13 R11 K25 ["GetFullName"]
      108 CALL                             R13 1 1
      109 SETTABLEKS                       R13 R12 K20 ["fullName"]
      111 LOADK                            R13 K26 ["MeshId"]
      112 SETTABLEKS                       R13 R12 K21 ["fieldName"]
      114 GETTABLEKS                       R13 R11 K26 ["MeshId"]
      116 SETTABLEKS                       R13 R12 K22 ["contentId"]
      118 GETTABLEKS                       R13 R8 K12 ["Name"]
      120 SETTABLEKS                       R13 R12 K23 ["context"]
      122 GETTABLEKS                       R13 R11 K27 ["Scale"]
      124 GETUPVAL                         R14 10
      125 MOVE                             R15 R10
      126 GETTABLEKS                       R16 R5 K14 ["attachmentNames"]
      128 CALL                             R14 2 1
      129 GETTABLEKS                       R17 R5 K28 ["bounds"]
      131 GETTABLEKS                       R18 R14 K12 ["Name"]
      133 GETTABLE                         R16 R17 R18
      134 LOADK                            R18 K29 ["Could not find bounds for "]
      135 GETTABLEKS                       R19 R14 K12 ["Name"]
      137 CONCAT                           R17 R18 R19
      138 FASTCALL2                        ASSERT R16 R17 ; [+3]
      140 GETIMPORT                        R15 K31 [assert]
      142 CALL                             R15 2 1
      143 LOADB                            R16 1
      144 NEWTABLE                         R7 0 0
      146 LOADB                            R17 0
      147 GETTABLEKS                       R18 R12 K22 ["contentId"]
      149 JUMPIFEQKNIL                     R18 ; [+7]
      151 GETTABLEKS                       R18 R12 K22 ["contentId"]
      153 JUMPIFNOTEQKS                    R18 K32 [""] ; [+2]
      155 LOADB                            R17 0 +1
      156 LOADB                            R17 1
      157 GETUPVAL                         R18 11
      158 MOVE                             R19 R11
      159 LOADK                            R20 K26 ["MeshId"]
      160 MOVE                             R21 R0
      161 CALL                             R18 3 2
      162 JUMPIF                           R18 ; [+34]
      163 GETTABLEKS                       R20 R12 K22 ["contentId"]
      165 JUMPIF                           R20 ; [+19]
      166 LOADB                            R17 0
      167 LOADB                            R16 0
      168 NEWTABLE                         R22 0 1
      170 GETIMPORT                        R23 K10 [string.format]
      172 LOADK                            R24 K33 ["Missing meshId on legacy accessory '%s'. Make sure you are using a valid meshId and try again.\n"]
      173 GETTABLEKS                       R25 R8 K12 ["Name"]
      175 CALL                             R23 2 -1
      176 SETLIST                          R22 R23 -1 [1]
      178 FASTCALL2                        TABLE_INSERT R7 R22 ; [+4]
      180 MOVE                             R21 R7
      181 GETIMPORT                        R20 K36 [table.insert]
      183 CALL                             R20 2 0
      184 JUMP                             ; [+12]
      185 LOADB                            R20 0
      186 NEWTABLE                         R21 0 1
      188 GETIMPORT                        R22 K10 [string.format]
      190 LOADK                            R23 K37 ["Failed to load mesh for legacy accessory '%s'. Make sure mesh exists and try again."]
      191 GETTABLEKS                       R24 R8 K12 ["Name"]
      193 CALL                             R22 2 -1
      194 SETLIST                          R21 R22 -1 [1]
      196 RETURN                           R20 2
      197 SETTABLEKS                       R19 R12 K38 ["editableMesh"]
      199 LOADB                            R17 1
      200 DUPTABLE                         R20 K39 [{"fullName", "fieldName", "contentId"}]
      201 NAMECALL                         R21 R11 K25 ["GetFullName"]
      203 CALL                             R21 1 1
      204 SETTABLEKS                       R21 R20 K20 ["fullName"]
      206 LOADK                            R21 K40 ["TextureId"]
      207 SETTABLEKS                       R21 R20 K21 ["fieldName"]
      209 GETTABLEKS                       R21 R11 K40 ["TextureId"]
      211 SETTABLEKS                       R21 R20 K22 ["contentId"]
      213 GETUPVAL                         R21 12
      214 MOVE                             R22 R11
      215 LOADK                            R23 K40 ["TextureId"]
      216 MOVE                             R24 R0
      217 CALL                             R21 3 2
      218 JUMPIF                           R21 ; [+12]
      219 LOADB                            R23 0
      220 NEWTABLE                         R24 0 1
      222 GETIMPORT                        R25 K10 [string.format]
      224 LOADK                            R26 K41 ["Failed to load texture for legacy accessory '%s'. Make sure texture exists and try again."]
      225 GETTABLEKS                       R27 R8 K12 ["Name"]
      227 CALL                             R25 2 -1
      228 SETLIST                          R24 R25 -1 [1]
      230 RETURN                           R23 2
      231 SETTABLEKS                       R22 R20 K42 ["editableImage"]
      233 NEWTABLE                         R23 0 0
      235 GETUPVAL                         R24 13
      236 MOVE                             R25 R8
      237 MOVE                             R26 R0
      238 CALL                             R24 2 2
      239 MOVE                             R6 R24
      240 MOVE                             R23 R25
      241 JUMPIF                           R6 ; [+11]
      242 MOVE                             R25 R7
      243 GETIMPORT                        R26 K44 [table.concat]
      245 MOVE                             R27 R23
      246 LOADK                            R28 K45 ["\n"]
      247 CALL                             R26 2 -1
      248 FASTCALL                         TABLE_INSERT ; [+2]
      249 GETIMPORT                        R24 K36 [table.insert]
      251 CALL                             R24 -1 0
      252 LOADB                            R16 0
      253 GETUPVAL                         R24 14
      254 MOVE                             R25 R8
      255 LOADNIL                          R26
      256 MOVE                             R27 R0
      257 CALL                             R24 3 2
      258 MOVE                             R6 R24
      259 MOVE                             R23 R25
      260 JUMPIF                           R6 ; [+11]
      261 MOVE                             R25 R7
      262 GETIMPORT                        R26 K44 [table.concat]
      264 MOVE                             R27 R23
      265 LOADK                            R28 K45 ["\n"]
      266 CALL                             R26 2 -1
      267 FASTCALL                         TABLE_INSERT ; [+2]
      268 GETIMPORT                        R24 K36 [table.insert]
      270 CALL                             R24 -1 0
      271 LOADB                            R16 0
      272 GETUPVAL                         R24 15
      273 MOVE                             R25 R8
      274 MOVE                             R26 R0
      275 CALL                             R24 2 2
      276 MOVE                             R6 R24
      277 MOVE                             R23 R25
      278 JUMPIF                           R6 ; [+11]
      279 MOVE                             R25 R7
      280 GETIMPORT                        R26 K44 [table.concat]
      282 MOVE                             R27 R23
      283 LOADK                            R28 K45 ["\n"]
      284 CALL                             R26 2 -1
      285 FASTCALL                         TABLE_INSERT ; [+2]
      286 GETIMPORT                        R24 K36 [table.insert]
      288 CALL                             R24 -1 0
      289 LOADB                            R16 0
      290 GETUPVAL                         R24 16
      291 MOVE                             R25 R8
      292 MOVE                             R26 R0
      293 CALL                             R24 2 2
      294 MOVE                             R6 R24
      295 MOVE                             R23 R25
      296 JUMPIF                           R6 ; [+11]
      297 MOVE                             R25 R7
      298 GETIMPORT                        R26 K44 [table.concat]
      300 MOVE                             R27 R23
      301 LOADK                            R28 K45 ["\n"]
      302 CALL                             R26 2 -1
      303 FASTCALL                         TABLE_INSERT ; [+2]
      304 GETIMPORT                        R24 K36 [table.insert]
      306 CALL                             R24 -1 0
      307 LOADB                            R16 0
      308 LOADNIL                          R24
      309 GETUPVAL                         R25 17
      310 CALL                             R25 0 1
      311 JUMPIFNOT                        R25 ; [+9]
      312 GETUPVAL                         R26 18
      313 GETTABLEKS                       R25 R26 K46 ["getTextureLimit"]
      315 MOVE                             R26 R2
      316 MOVE                             R27 R11
      317 GETTABLEKS                       R28 R20 K21 ["fieldName"]
      319 CALL                             R25 3 1
      320 MOVE                             R24 R25
      321 GETUPVAL                         R25 19
      322 MOVE                             R26 R20
      323 LOADNIL                          R27
      324 MOVE                             R28 R0
      325 MOVE                             R29 R24
      326 CALL                             R25 4 2
      327 MOVE                             R6 R25
      328 MOVE                             R23 R26
      329 JUMPIF                           R6 ; [+11]
      330 MOVE                             R26 R7
      331 GETIMPORT                        R27 K44 [table.concat]
      333 MOVE                             R28 R23
      334 LOADK                            R29 K45 ["\n"]
      335 CALL                             R27 2 -1
      336 FASTCALL                         TABLE_INSERT ; [+2]
      337 GETIMPORT                        R25 K36 [table.insert]
      339 CALL                             R25 -1 0
      340 LOADB                            R16 0
      341 LOADK                            R27 K47 ["AvatarPartScaleType"]
      342 NAMECALL                         R25 R10 K17 ["FindFirstChild"]
      344 CALL                             R25 2 1
      345 JUMPIFNOT                        R25 ; [+23]
      346 LOADK                            R28 K48 ["StringValue"]
      347 NAMECALL                         R26 R25 K49 ["IsA"]
      349 CALL                             R26 2 1
      350 JUMPIFNOT                        R26 ; [+18]
      351 GETUPVAL                         R26 20
      352 MOVE                             R27 R25
      353 MOVE                             R28 R0
      354 CALL                             R26 2 2
      355 MOVE                             R6 R26
      356 MOVE                             R23 R27
      357 JUMPIF                           R6 ; [+11]
      358 MOVE                             R27 R7
      359 GETIMPORT                        R28 K44 [table.concat]
      361 MOVE                             R29 R23
      362 LOADK                            R30 K45 ["\n"]
      363 CALL                             R28 2 -1
      364 FASTCALL                         TABLE_INSERT ; [+2]
      365 GETIMPORT                        R26 K36 [table.insert]
      367 CALL                             R26 -1 0
      368 LOADB                            R16 0
      369 GETUPVAL                         R26 21
      370 MOVE                             R27 R8
      371 MOVE                             R28 R10
      372 MOVE                             R29 R12
      373 MOVE                             R30 R13
      374 MOVE                             R31 R0
      375 CALL                             R26 5 2
      376 MOVE                             R6 R26
      377 MOVE                             R23 R27
      378 JUMPIF                           R6 ; [+11]
      379 MOVE                             R27 R7
      380 GETIMPORT                        R28 K44 [table.concat]
      382 MOVE                             R29 R23
      383 LOADK                            R30 K45 ["\n"]
      384 CALL                             R28 2 -1
      385 FASTCALL                         TABLE_INSERT ; [+2]
      386 GETIMPORT                        R26 K36 [table.insert]
      388 CALL                             R26 -1 0
      389 LOADB                            R16 0
      390 NOT                              R26 R3
      391 JUMPIFNOT                        R4 ; [+1]
      392 LOADB                            R26 0
      393 JUMPIFNOT                        R26 ; [+20]
      394 GETUPVAL                         R27 22
      395 MOVE                             R28 R8
      396 NEWTABLE                         R29 0 0
      398 MOVE                             R30 R0
      399 CALL                             R27 3 2
      400 MOVE                             R6 R27
      401 MOVE                             R23 R28
      402 JUMPIF                           R6 ; [+11]
      403 MOVE                             R28 R7
      404 GETIMPORT                        R29 K44 [table.concat]
      406 MOVE                             R30 R23
      407 LOADK                            R31 K45 ["\n"]
      408 CALL                             R29 2 -1
      409 FASTCALL                         TABLE_INSERT ; [+2]
      410 GETIMPORT                        R27 K36 [table.insert]
      412 CALL                             R27 -1 0
      413 LOADB                            R16 0
      414 JUMPIFNOT                        R17 ; [+153]
      415 GETUPVAL                         R27 23
      416 MOVE                             R28 R12
      417 MOVE                             R29 R13
      418 MOVE                             R30 R0
      419 CALL                             R27 3 2
      420 MOVE                             R6 R27
      421 MOVE                             R23 R28
      422 JUMPIF                           R6 ; [+11]
      423 MOVE                             R28 R7
      424 GETIMPORT                        R29 K44 [table.concat]
      426 MOVE                             R30 R23
      427 LOADK                            R31 K45 ["\n"]
      428 CALL                             R29 2 -1
      429 FASTCALL                         TABLE_INSERT ; [+2]
      430 GETIMPORT                        R27 K36 [table.insert]
      432 CALL                             R27 -1 0
      433 LOADB                            R16 0
      434 GETUPVAL                         R27 24
      435 JUMPIFNOT                        R27 ; [+26]
      436 LOADK                            R29 K47 ["AvatarPartScaleType"]
      437 NAMECALL                         R27 R10 K17 ["FindFirstChild"]
      439 CALL                             R27 2 1
      440 JUMPIFNOT                        R27 ; [+21]
      441 GETUPVAL                         R27 25
      442 MOVE                             R28 R10
      443 MOVE                             R29 R14
      444 CALL                             R27 2 1
      445 DUPTABLE                         R28 K52 [{"size", "offset"}]
      446 GETTABLEKS                       R30 R15 K50 ["size"]
      448 DIV                              R29 R30 R27
      449 SETTABLEKS                       R29 R28 K50 ["size"]
      451 GETTABLEKS                       R30 R15 K51 ["offset"]
      453 JUMPIFNOT                        R30 ; [+4]
      454 GETTABLEKS                       R30 R15 K51 ["offset"]
      456 DIV                              R29 R30 R27
      457 JUMP                             ; [+1]
      458 LOADNIL                          R29
      459 SETTABLEKS                       R29 R28 K51 ["offset"]
      461 MOVE                             R15 R28
      462 GETUPVAL                         R27 26
      463 MOVE                             R28 R10
      464 MOVE                             R29 R14
      465 MOVE                             R30 R12
      466 MOVE                             R31 R13
      467 MOVE                             R32 R15
      468 GETTABLEKS                       R33 R2 K12 ["Name"]
      470 MOVE                             R34 R0
      471 CALL                             R27 7 2
      472 MOVE                             R6 R27
      473 MOVE                             R23 R28
      474 JUMPIF                           R6 ; [+11]
      475 MOVE                             R28 R7
      476 GETIMPORT                        R29 K44 [table.concat]
      478 MOVE                             R30 R23
      479 LOADK                            R31 K45 ["\n"]
      480 CALL                             R29 2 -1
      481 FASTCALL                         TABLE_INSERT ; [+2]
      482 GETIMPORT                        R27 K36 [table.insert]
      484 CALL                             R27 -1 0
      485 LOADB                            R16 0
      486 GETUPVAL                         R27 27
      487 MOVE                             R28 R12
      488 LOADNIL                          R29
      489 MOVE                             R30 R0
      490 CALL                             R27 3 2
      491 MOVE                             R6 R27
      492 MOVE                             R23 R28
      493 JUMPIF                           R6 ; [+11]
      494 MOVE                             R28 R7
      495 GETIMPORT                        R29 K44 [table.concat]
      497 MOVE                             R30 R23
      498 LOADK                            R31 K45 ["\n"]
      499 CALL                             R29 2 -1
      500 FASTCALL                         TABLE_INSERT ; [+2]
      501 GETIMPORT                        R27 K36 [table.insert]
      503 CALL                             R27 -1 0
      504 LOADB                            R16 0
      505 GETUPVAL                         R27 28
      506 CALL                             R27 0 1
      507 JUMPIFNOT                        R27 ; [+19]
      508 GETUPVAL                         R27 29
      509 MOVE                             R28 R12
      510 LOADB                            R29 0
      511 MOVE                             R30 R0
      512 CALL                             R27 3 2
      513 MOVE                             R6 R27
      514 MOVE                             R23 R28
      515 JUMPIF                           R6 ; [+11]
      516 MOVE                             R28 R7
      517 GETIMPORT                        R29 K44 [table.concat]
      519 MOVE                             R30 R23
      520 LOADK                            R31 K45 ["\n"]
      521 CALL                             R29 2 -1
      522 FASTCALL                         TABLE_INSERT ; [+2]
      523 GETIMPORT                        R27 K36 [table.insert]
      525 CALL                             R27 -1 0
      526 LOADB                            R16 0
      527 GETUPVAL                         R27 30
      528 MOVE                             R28 R12
      529 MOVE                             R29 R13
      530 MOVE                             R30 R0
      531 CALL                             R27 3 2
      532 MOVE                             R6 R27
      533 MOVE                             R23 R28
      534 JUMPIF                           R6 ; [+11]
      535 MOVE                             R28 R7
      536 GETIMPORT                        R29 K44 [table.concat]
      538 MOVE                             R30 R23
      539 LOADK                            R31 K45 ["\n"]
      540 CALL                             R29 2 -1
      541 FASTCALL                         TABLE_INSERT ; [+2]
      542 GETIMPORT                        R27 K36 [table.insert]
      544 CALL                             R27 -1 0
      545 LOADB                            R16 0
      546 GETUPVAL                         R27 31
      547 CALL                             R27 0 1
      548 JUMPIFNOT                        R27 ; [+19]
      549 GETUPVAL                         R27 32
      550 GETTABLEKS                       R28 R12 K22 ["contentId"]
      552 MOVE                             R29 R0
      553 CALL                             R27 2 2
      554 MOVE                             R6 R27
      555 MOVE                             R23 R28
      556 JUMPIF                           R6 ; [+11]
      557 MOVE                             R28 R7
      558 GETIMPORT                        R29 K44 [table.concat]
      560 MOVE                             R30 R23
      561 LOADK                            R31 K45 ["\n"]
      562 CALL                             R29 2 -1
      563 FASTCALL                         TABLE_INSERT ; [+2]
      564 GETIMPORT                        R27 K36 [table.insert]
      566 CALL                             R27 -1 0
      567 LOADB                            R16 0
      568 MOVE                             R27 R16
      569 MOVE                             R28 R7
      570 RETURN                           R27 2

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
       33 GETTABLEKS                       R6 R7 K11 ["validateCoplanarIntersection"]
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
      117 GETTABLEKS                       R18 R19 K23 ["validateThumbnailConfiguration"]
      119 CALL                             R17 1 1
      120 GETIMPORT                        R18 K4 [require]
      122 GETTABLEKS                       R20 R0 K10 ["validation"]
      124 GETTABLEKS                       R19 R20 K24 ["validateScaleType"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K4 [require]
      129 GETTABLEKS                       R21 R0 K10 ["validation"]
      131 GETTABLEKS                       R20 R21 K25 ["validateTotalSurfaceArea"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K4 [require]
      136 GETTABLEKS                       R22 R0 K10 ["validation"]
      138 GETTABLEKS                       R21 R22 K26 ["validateRigidMeshNotSkinned"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K4 [require]
      143 GETTABLEKS                       R23 R0 K10 ["validation"]
      145 GETTABLEKS                       R22 R23 K27 ["validateDependencies"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K4 [require]
      150 GETTABLEKS                       R24 R0 K10 ["validation"]
      152 GETTABLEKS                       R23 R24 K28 ["ValidatePropertiesSensible"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K4 [require]
      157 GETTABLEKS                       R25 R0 K5 ["util"]
      159 GETTABLEKS                       R24 R25 K29 ["RigidOrLayeredAllowed"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K4 [require]
      164 GETTABLEKS                       R26 R0 K5 ["util"]
      166 GETTABLEKS                       R25 R26 K30 ["createAccessorySchema"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K4 [require]
      171 GETTABLEKS                       R27 R0 K5 ["util"]
      173 GETTABLEKS                       R26 R27 K31 ["getAttachment"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K4 [require]
      178 GETTABLEKS                       R28 R0 K5 ["util"]
      180 GETTABLEKS                       R27 R28 K32 ["getAccessoryScale"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K4 [require]
      185 GETTABLEKS                       R29 R0 K5 ["util"]
      187 GETTABLEKS                       R28 R29 K33 ["getEditableMeshFromContext"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K4 [require]
      192 GETTABLEKS                       R30 R0 K5 ["util"]
      194 GETTABLEKS                       R29 R30 K34 ["getEditableImageFromContext"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K4 [require]
      199 GETTABLEKS                       R31 R0 K35 ["flags"]
      201 GETTABLEKS                       R30 R31 K36 ["getFFlagUGCValidateMeshVertColors"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K4 [require]
      206 GETTABLEKS                       R32 R0 K35 ["flags"]
      208 GETTABLEKS                       R31 R32 K37 ["getEngineFeatureEngineUGCValidateRigidNonSkinned"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K4 [require]
      213 GETTABLEKS                       R33 R0 K35 ["flags"]
      215 GETTABLEKS                       R32 R33 K38 ["getFFlagUGCValidateAccessoriesRCCOwnership"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K4 [require]
      220 GETTABLEKS                       R34 R0 K35 ["flags"]
      222 GETTABLEKS                       R33 R34 K39 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K4 [require]
      227 GETTABLEKS                       R35 R0 K35 ["flags"]
      229 GETTABLEKS                       R34 R35 K40 ["getFFlagUGCValidateAccessoryAssetTextureLimit"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K42 [game]
      234 LOADK                            R36 K43 ["LegacyAccessoryCheckAvatarPartScaleType"]
      235 LOADB                            R37 0
      236 NAMECALL                         R34 R34 K44 ["DefineFastFlag"]
      238 CALL                             R34 3 1
      239 DUPCLOSURE                       R35 K45 [PROTO_0]
      240 CAPTURE                          VAL R23
      241 CAPTURE                          VAL R2
      242 CAPTURE                          VAL R3
      243 CAPTURE                          VAL R16
      244 CAPTURE                          VAL R24
      245 CAPTURE                          VAL R6
      246 CAPTURE                          VAL R32
      247 CAPTURE                          VAL R22
      248 CAPTURE                          VAL R31
      249 CAPTURE                          VAL R21
      250 CAPTURE                          VAL R25
      251 CAPTURE                          VAL R27
      252 CAPTURE                          VAL R28
      253 CAPTURE                          VAL R9
      254 CAPTURE                          VAL R13
      255 CAPTURE                          VAL R10
      256 CAPTURE                          VAL R14
      257 CAPTURE                          VAL R33
      258 CAPTURE                          VAL R4
      259 CAPTURE                          VAL R12
      260 CAPTURE                          VAL R18
      261 CAPTURE                          VAL R17
      262 CAPTURE                          VAL R8
      263 CAPTURE                          VAL R19
      264 CAPTURE                          VAL R34
      265 CAPTURE                          VAL R26
      266 CAPTURE                          VAL R11
      267 CAPTURE                          VAL R7
      268 CAPTURE                          VAL R29
      269 CAPTURE                          VAL R15
      270 CAPTURE                          VAL R5
      271 CAPTURE                          VAL R30
      272 CAPTURE                          VAL R20
      273 RETURN                           R35 1
