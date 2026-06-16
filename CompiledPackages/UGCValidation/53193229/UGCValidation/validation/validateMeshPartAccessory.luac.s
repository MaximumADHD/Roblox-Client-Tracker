PROTO_0:
        0 GETUPVAL                         R0 0
        1 GETUPVAL                         R1 1
        2 CALL                             R0 1 -1
        3 RETURN                           R0 -1

PROTO_1:
        0 GETTABLEKS                       R3 R0 K0 ["assetTypeEnum"]
        2 JUMPIFNOTEQKNIL                  R3 ; [+2]
        4 LOADB                            R2 0 +1
        5 LOADB                            R2 1
        6 FASTCALL2K                       ASSERT R2 K1 ; [+4]
        8 LOADK                            R3 K1 ["assetTypeEnum required in validationContext for validateMeshPartAccessory"]
        9 GETIMPORT                        R1 K3 [assert]
       11 CALL                             R1 2 0
       12 GETTABLEKS                       R1 R0 K4 ["instances"]
       14 GETTABLEKS                       R2 R0 K0 ["assetTypeEnum"]
       16 GETTABLEKS                       R3 R0 K5 ["isServer"]
       18 GETTABLEKS                       R4 R0 K6 ["allowUnreviewedAssets"]
       20 GETUPVAL                         R5 0
       21 GETTABLEKS                       R5 R5 K7 ["isRigidAccessoryAllowed"]
       23 MOVE                             R6 R2
       24 CALL                             R5 1 1
       25 JUMPIF                           R5 ; [+23]
       26 GETUPVAL                         R5 1
       27 GETTABLEKS                       R5 R5 K8 ["reportFailure"]
       29 GETUPVAL                         R6 1
       30 GETTABLEKS                       R6 R6 K9 ["ErrorType"]
       32 GETTABLEKS                       R6 R6 K10 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
       34 LOADNIL                          R7
       35 MOVE                             R8 R0
       36 CALL                             R5 3 0
       37 LOADB                            R5 0
       38 NEWTABLE                         R6 0 1
       40 GETIMPORT                        R7 K13 [string.format]
       42 LOADK                            R8 K14 ["Asset type '%s' is not a rigid accessory category. It can only be used with layered clothing."]
       43 GETTABLEKS                       R9 R2 K15 ["Name"]
       45 CALL                             R7 2 -1
       46 SETLIST                          R6 R7 -1 [1]
       48 RETURN                           R5 2
       49 GETUPVAL                         R6 2
       50 GETTABLEKS                       R6 R6 K16 ["ASSET_TYPE_INFO"]
       52 GETTABLE                         R5 R6 R2
       53 LOADNIL                          R6
       54 LOADNIL                          R7
       55 GETUPVAL                         R8 3
       56 MOVE                             R9 R1
       57 MOVE                             R10 R0
       58 CALL                             R8 2 2
       59 MOVE                             R6 R8
       60 MOVE                             R7 R9
       61 JUMPIF                           R6 ; [+3]
       62 LOADB                            R8 0
       63 MOVE                             R9 R7
       64 RETURN                           R8 2
       65 GETTABLEN                        R8 R1 1
       66 GETUPVAL                         R9 4
       67 GETTABLEKS                       R10 R5 K17 ["attachmentNames"]
       69 CALL                             R9 1 1
       70 GETUPVAL                         R10 5
       71 MOVE                             R11 R9
       72 MOVE                             R12 R8
       73 MOVE                             R13 R0
       74 CALL                             R10 3 2
       75 MOVE                             R6 R10
       76 MOVE                             R7 R11
       77 JUMPIF                           R6 ; [+3]
       78 LOADB                            R10 0
       79 MOVE                             R11 R7
       80 RETURN                           R10 2
       81 GETUPVAL                         R10 6
       82 CALL                             R10 0 1
       83 JUMPIFNOT                        R10 ; [+12]
       84 GETUPVAL                         R10 7
       85 GETTABLEKS                       R10 R10 K18 ["validate"]
       87 MOVE                             R11 R8
       88 MOVE                             R12 R0
       89 CALL                             R10 2 2
       90 MOVE                             R6 R10
       91 MOVE                             R7 R11
       92 JUMPIF                           R6 ; [+3]
       93 LOADB                            R10 0
       94 MOVE                             R11 R7
       95 RETURN                           R10 2
       96 DUPTABLE                         R10 K21 [{"skipExistenceCheck", "skipOwnershipCheck"}]
       97 GETUPVAL                         R11 8
       98 CALL                             R11 0 1
       99 JUMPIFNOT                        R11 ; [+2]
      100 GETUPVAL                         R11 9
      101 CALL                             R11 0 1
      102 SETTABLEKS                       R11 R10 K19 ["skipExistenceCheck"]
      104 GETUPVAL                         R11 8
      105 CALL                             R11 0 1
      106 JUMPIFNOT                        R11 ; [+2]
      107 GETUPVAL                         R11 9
      108 CALL                             R11 0 1
      109 SETTABLEKS                       R11 R10 K20 ["skipOwnershipCheck"]
      111 GETUPVAL                         R11 10
      112 MOVE                             R12 R8
      113 MOVE                             R13 R0
      114 MOVE                             R14 R10
      115 CALL                             R11 3 2
      116 MOVE                             R6 R11
      117 MOVE                             R7 R12
      118 JUMPIF                           R6 ; [+3]
      119 LOADB                            R11 0
      120 MOVE                             R12 R7
      121 RETURN                           R11 2
      122 LOADK                            R12 K22 ["Handle"]
      123 NAMECALL                         R10 R8 K23 ["FindFirstChild"]
      125 CALL                             R10 2 1
      126 DUPTABLE                         R11 K28 [{"fullName", "fieldName", "contentId", "context"}]
      127 NAMECALL                         R12 R10 K29 ["GetFullName"]
      129 CALL                             R12 1 1
      130 SETTABLEKS                       R12 R11 K24 ["fullName"]
      132 LOADK                            R12 K30 ["MeshId"]
      133 SETTABLEKS                       R12 R11 K25 ["fieldName"]
      135 GETTABLEKS                       R12 R10 K30 ["MeshId"]
      137 SETTABLEKS                       R12 R11 K26 ["contentId"]
      139 GETTABLEKS                       R12 R8 K15 ["Name"]
      141 SETTABLEKS                       R12 R11 K27 ["context"]
      143 GETUPVAL                         R12 11
      144 GETTABLEKS                       R12 R12 K31 ["new"]
      146 CALL                             R12 0 1
      147 GETTABLEKS                       R13 R10 K32 ["DoubleSided"]
      149 JUMPIFNOT                        R13 ; [+26]
      150 LOADB                            R15 0
      151 NEWTABLE                         R16 0 1
      153 GETIMPORT                        R17 K13 [string.format]
      155 LOADK                            R18 K33 ["MeshPart '%s' is double-sided. Double-sided meshes are not allowed in rigid accessories."]
      156 NAMECALL                         R19 R10 K29 ["GetFullName"]
      158 CALL                             R19 1 -1
      159 CALL                             R17 -1 -1
      160 SETLIST                          R16 R17 -1 [1]
      162 NAMECALL                         R13 R12 K34 ["updateReasons"]
      164 CALL                             R13 3 0
      165 GETUPVAL                         R13 1
      166 GETTABLEKS                       R13 R13 K8 ["reportFailure"]
      168 GETUPVAL                         R14 1
      169 GETTABLEKS                       R14 R14 K9 ["ErrorType"]
      171 GETTABLEKS                       R14 R14 K35 ["validateMeshPartAccessory_DoubleSided"]
      173 LOADNIL                          R15
      174 MOVE                             R16 R0
      175 CALL                             R13 3 0
      176 LOADB                            R13 0
      177 GETTABLEKS                       R14 R11 K26 ["contentId"]
      179 JUMPIFEQKNIL                     R14 ; [+7]
      181 GETTABLEKS                       R14 R11 K26 ["contentId"]
      183 JUMPIFNOTEQKS                    R14 K36 [""] ; [+2]
      185 LOADB                            R13 0 +1
      186 LOADB                            R13 1
      187 GETUPVAL                         R14 12
      188 MOVE                             R15 R10
      189 LOADK                            R16 K30 ["MeshId"]
      190 MOVE                             R17 R0
      191 CALL                             R14 3 2
      192 JUMPIF                           R14 ; [+54]
      193 GETTABLEKS                       R16 R11 K26 ["contentId"]
      195 JUMPIF                           R16 ; [+28]
      196 LOADB                            R13 0
      197 GETUPVAL                         R16 1
      198 GETTABLEKS                       R16 R16 K8 ["reportFailure"]
      200 GETUPVAL                         R17 1
      201 GETTABLEKS                       R17 R17 K9 ["ErrorType"]
      203 GETTABLEKS                       R17 R17 K37 ["validateMeshPartAccessory_NoMeshId"]
      205 LOADNIL                          R18
      206 MOVE                             R19 R0
      207 CALL                             R16 3 0
      208 LOADB                            R18 0
      209 NEWTABLE                         R19 0 1
      211 GETIMPORT                        R20 K13 [string.format]
      213 LOADK                            R21 K38 ["Accessory MeshPart '%s' must contain a valid meshId. Make sure the mesh referred to by the meshId exists and try again."]
      214 NAMECALL                         R22 R10 K29 ["GetFullName"]
      216 CALL                             R22 1 -1
      217 CALL                             R20 -1 -1
      218 SETLIST                          R19 R20 -1 [1]
      220 NAMECALL                         R16 R12 K34 ["updateReasons"]
      222 CALL                             R16 3 0
      223 JUMP                             ; [+23]
      224 GETUPVAL                         R16 1
      225 GETTABLEKS                       R16 R16 K8 ["reportFailure"]
      227 GETUPVAL                         R17 1
      228 GETTABLEKS                       R17 R17 K9 ["ErrorType"]
      230 GETTABLEKS                       R17 R17 K39 ["validateMeshPartAccessory_FailedToLoadMesh"]
      232 LOADNIL                          R18
      233 MOVE                             R19 R0
      234 CALL                             R16 3 0
      235 LOADB                            R16 0
      236 NEWTABLE                         R17 0 1
      238 GETIMPORT                        R18 K13 [string.format]
      240 LOADK                            R19 K40 ["Failed to load mesh for accessory '%s'. Make sure mesh exists and try again."]
      241 GETTABLEKS                       R20 R8 K15 ["Name"]
      243 CALL                             R18 2 -1
      244 SETLIST                          R17 R18 -1 [1]
      246 RETURN                           R16 2
      247 SETTABLEKS                       R15 R11 K41 ["editableMesh"]
      249 LOADB                            R13 1
      250 GETTABLEKS                       R16 R10 K42 ["TextureID"]
      252 DUPTABLE                         R17 K43 [{"fullName", "fieldName", "contentId"}]
      253 NAMECALL                         R18 R10 K29 ["GetFullName"]
      255 CALL                             R18 1 1
      256 SETTABLEKS                       R18 R17 K24 ["fullName"]
      258 LOADK                            R18 K42 ["TextureID"]
      259 SETTABLEKS                       R18 R17 K25 ["fieldName"]
      261 SETTABLEKS                       R16 R17 K26 ["contentId"]
      263 GETUPVAL                         R18 13
      264 MOVE                             R19 R10
      265 LOADK                            R20 K42 ["TextureID"]
      266 MOVE                             R21 R0
      267 CALL                             R18 3 2
      268 SETTABLEKS                       R19 R17 K44 ["editableImage"]
      270 GETUPVAL                         R20 14
      271 NEWCLOSURE                       R21 P0
      272 CAPTURE                          UPVAL U15
      273 CAPTURE                          VAL R11
      274 MOVE                             R22 R0
      275 CALL                             R20 2 2
      276 JUMPIF                           R20 ; [+23]
      277 GETUPVAL                         R22 1
      278 GETTABLEKS                       R22 R22 K8 ["reportFailure"]
      280 GETUPVAL                         R23 1
      281 GETTABLEKS                       R23 R23 K9 ["ErrorType"]
      283 GETTABLEKS                       R23 R23 K39 ["validateMeshPartAccessory_FailedToLoadMesh"]
      285 LOADNIL                          R24
      286 MOVE                             R25 R0
      287 CALL                             R22 3 0
      288 LOADB                            R22 0
      289 NEWTABLE                         R23 0 1
      291 GETIMPORT                        R24 K13 [string.format]
      293 LOADK                            R25 K40 ["Failed to load mesh for accessory '%s'. Make sure mesh exists and try again."]
      294 GETTABLEKS                       R26 R8 K15 ["Name"]
      296 CALL                             R24 2 -1
      297 SETLIST                          R23 R24 -1 [1]
      299 RETURN                           R22 2
      300 GETUPVAL                         R23 16
      301 MOVE                             R24 R10
      302 MOVE                             R25 R0
      303 CALL                             R23 2 1
      304 DIV                              R22 R23 R21
      305 GETUPVAL                         R23 17
      306 MOVE                             R24 R10
      307 GETTABLEKS                       R25 R5 K17 ["attachmentNames"]
      309 CALL                             R23 2 1
      310 FASTCALL1                        ASSERT R23 ; [+3]
      311 MOVE                             R25 R23
      312 GETIMPORT                        R24 K3 [assert]
      314 CALL                             R24 1 0
      315 GETTABLEKS                       R26 R5 K45 ["bounds"]
      317 GETTABLEKS                       R27 R23 K15 ["Name"]
      319 GETTABLE                         R25 R26 R27
      320 LOADK                            R27 K46 ["Could not find bounds for "]
      321 GETTABLEKS                       R28 R23 K15 ["Name"]
      323 CONCAT                           R26 R27 R28
      324 FASTCALL2                        ASSERT R25 R26 ; [+3]
      326 GETIMPORT                        R24 K3 [assert]
      328 CALL                             R24 2 1
      329 GETUPVAL                         R25 8
      330 CALL                             R25 0 1
      331 JUMPIFNOT                        R25 ; [+3]
      332 GETUPVAL                         R25 9
      333 CALL                             R25 0 1
      334 JUMPIF                           R25 ; [+15]
      335 GETUPVAL                         R27 18
      336 MOVE                             R28 R8
      337 MOVE                             R29 R0
      338 CALL                             R27 2 -1
      339 NAMECALL                         R25 R12 K34 ["updateReasons"]
      341 CALL                             R25 -1 0
      342 GETUPVAL                         R27 19
      343 MOVE                             R28 R8
      344 LOADNIL                          R29
      345 MOVE                             R30 R0
      346 CALL                             R27 3 -1
      347 NAMECALL                         R25 R12 K34 ["updateReasons"]
      349 CALL                             R25 -1 0
      350 GETUPVAL                         R27 20
      351 MOVE                             R28 R8
      352 MOVE                             R29 R0
      353 CALL                             R27 2 -1
      354 NAMECALL                         R25 R12 K34 ["updateReasons"]
      356 CALL                             R25 -1 0
      357 GETUPVAL                         R25 8
      358 CALL                             R25 0 1
      359 JUMPIFNOT                        R25 ; [+3]
      360 GETUPVAL                         R25 9
      361 CALL                             R25 0 1
      362 JUMPIF                           R25 ; [+7]
      363 GETUPVAL                         R27 21
      364 MOVE                             R28 R8
      365 MOVE                             R29 R0
      366 CALL                             R27 2 -1
      367 NAMECALL                         R25 R12 K34 ["updateReasons"]
      369 CALL                             R25 -1 0
      370 GETUPVAL                         R25 22
      371 CALL                             R25 0 1
      372 JUMPIF                           R25 ; [+22]
      373 LOADNIL                          R25
      374 GETUPVAL                         R26 23
      375 CALL                             R26 0 1
      376 JUMPIFNOT                        R26 ; [+9]
      377 GETUPVAL                         R26 24
      378 GETTABLEKS                       R26 R26 K47 ["getTextureLimit"]
      380 MOVE                             R27 R2
      381 MOVE                             R28 R10
      382 GETTABLEKS                       R29 R17 K25 ["fieldName"]
      384 CALL                             R26 3 1
      385 MOVE                             R25 R26
      386 GETUPVAL                         R28 25
      387 MOVE                             R29 R17
      388 LOADB                            R30 1
      389 MOVE                             R31 R0
      390 MOVE                             R32 R25
      391 CALL                             R28 4 -1
      392 NAMECALL                         R26 R12 K34 ["updateReasons"]
      394 CALL                             R26 -1 0
      395 GETUPVAL                         R25 8
      396 CALL                             R25 0 1
      397 JUMPIFNOT                        R25 ; [+3]
      398 GETUPVAL                         R25 9
      399 CALL                             R25 0 1
      400 JUMPIF                           R25 ; [+10]
      401 GETUPVAL                         R27 26
      402 MOVE                             R28 R8
      403 MOVE                             R29 R10
      404 MOVE                             R30 R11
      405 MOVE                             R31 R22
      406 MOVE                             R32 R0
      407 CALL                             R27 5 -1
      408 NAMECALL                         R25 R12 K34 ["updateReasons"]
      410 CALL                             R25 -1 0
      411 GETUPVAL                         R25 8
      412 CALL                             R25 0 1
      413 JUMPIFNOT                        R25 ; [+3]
      414 GETUPVAL                         R25 9
      415 CALL                             R25 0 1
      416 JUMPIF                           R25 ; [+13]
      417 NOT                              R25 R3
      418 JUMPIFNOT                        R4 ; [+1]
      419 LOADB                            R25 0
      420 JUMPIFNOT                        R25 ; [+9]
      421 GETUPVAL                         R28 27
      422 MOVE                             R29 R8
      423 NEWTABLE                         R30 0 0
      425 MOVE                             R31 R0
      426 CALL                             R28 3 -1
      427 NAMECALL                         R26 R12 K34 ["updateReasons"]
      429 CALL                             R26 -1 0
      430 GETUPVAL                         R25 28
      431 JUMPIFNOT                        R25 ; [+26]
      432 LOADK                            R27 K48 ["AvatarPartScaleType"]
      433 NAMECALL                         R25 R10 K23 ["FindFirstChild"]
      435 CALL                             R25 2 1
      436 JUMPIFNOT                        R25 ; [+21]
      437 GETUPVAL                         R25 29
      438 MOVE                             R26 R10
      439 MOVE                             R27 R23
      440 CALL                             R25 2 1
      441 DUPTABLE                         R26 K51 [{"size", "offset"}]
      442 GETTABLEKS                       R28 R24 K49 ["size"]
      444 DIV                              R27 R28 R25
      445 SETTABLEKS                       R27 R26 K49 ["size"]
      447 GETTABLEKS                       R28 R24 K50 ["offset"]
      449 JUMPIFNOT                        R28 ; [+4]
      450 GETTABLEKS                       R28 R24 K50 ["offset"]
      452 DIV                              R27 R28 R25
      453 JUMP                             ; [+1]
      454 LOADNIL                          R27
      455 SETTABLEKS                       R27 R26 K50 ["offset"]
      457 MOVE                             R24 R26
      458 JUMPIFNOT                        R13 ; [+69]
      459 GETUPVAL                         R25 30
      460 CALL                             R25 0 1
      461 JUMPIF                           R25 ; [+8]
      462 GETUPVAL                         R27 31
      463 MOVE                             R28 R11
      464 MOVE                             R29 R22
      465 MOVE                             R30 R0
      466 CALL                             R27 3 -1
      467 NAMECALL                         R25 R12 K34 ["updateReasons"]
      469 CALL                             R25 -1 0
      470 GETUPVAL                         R27 32
      471 GETTABLEKS                       R27 R27 K52 ["validateSingleMeshPart"]
      473 MOVE                             R28 R10
      474 MOVE                             R29 R0
      475 CALL                             R27 2 -1
      476 NAMECALL                         R25 R12 K34 ["updateReasons"]
      478 CALL                             R25 -1 0
      479 GETUPVAL                         R25 30
      480 CALL                             R25 0 1
      481 JUMPIF                           R25 ; [+13]
      482 GETUPVAL                         R27 33
      483 MOVE                             R28 R10
      484 MOVE                             R29 R23
      485 MOVE                             R30 R11
      486 MOVE                             R31 R22
      487 MOVE                             R32 R24
      488 GETTABLEKS                       R33 R2 K15 ["Name"]
      490 MOVE                             R34 R0
      491 CALL                             R27 7 -1
      492 NAMECALL                         R25 R12 K34 ["updateReasons"]
      494 CALL                             R25 -1 0
      495 GETUPVAL                         R25 30
      496 CALL                             R25 0 1
      497 JUMPIF                           R25 ; [+8]
      498 GETUPVAL                         R27 34
      499 MOVE                             R28 R11
      500 LOADNIL                          R29
      501 MOVE                             R30 R0
      502 CALL                             R27 3 -1
      503 NAMECALL                         R25 R12 K34 ["updateReasons"]
      505 CALL                             R25 -1 0
      506 GETUPVAL                         R25 35
      507 CALL                             R25 0 1
      508 JUMPIF                           R25 ; [+8]
      509 GETUPVAL                         R27 36
      510 MOVE                             R28 R11
      511 LOADB                            R29 0
      512 MOVE                             R30 R0
      513 CALL                             R27 3 -1
      514 NAMECALL                         R25 R12 K34 ["updateReasons"]
      516 CALL                             R25 -1 0
      517 GETUPVAL                         R25 35
      518 CALL                             R25 0 1
      519 JUMPIF                           R25 ; [+8]
      520 GETUPVAL                         R27 37
      521 MOVE                             R28 R11
      522 MOVE                             R29 R22
      523 MOVE                             R30 R0
      524 CALL                             R27 3 -1
      525 NAMECALL                         R25 R12 K34 ["updateReasons"]
      527 CALL                             R25 -1 0
      528 GETUPVAL                         R25 35
      529 CALL                             R25 0 1
      530 JUMPIF                           R25 ; [+7]
      531 GETUPVAL                         R27 38
      532 MOVE                             R28 R8
      533 MOVE                             R29 R0
      534 CALL                             R27 2 -1
      535 NAMECALL                         R25 R12 K34 ["updateReasons"]
      537 CALL                             R25 -1 0
      538 GETUPVAL                         R25 22
      539 CALL                             R25 0 1
      540 JUMPIF                           R25 ; [+14]
      541 GETUPVAL                         R27 39
      542 MOVE                             R28 R8
      543 MOVE                             R29 R0
      544 CALL                             R27 2 -1
      545 NAMECALL                         R25 R12 K34 ["updateReasons"]
      547 CALL                             R25 -1 0
      548 GETUPVAL                         R27 40
      549 MOVE                             R28 R8
      550 MOVE                             R29 R0
      551 CALL                             R27 2 -1
      552 NAMECALL                         R25 R12 K34 ["updateReasons"]
      554 CALL                             R25 -1 0
      555 GETUPVAL                         R25 35
      556 CALL                             R25 0 1
      557 JUMPIF                           R25 ; [+13]
      558 GETUPVAL                         R25 41
      559 CALL                             R25 0 1
      560 JUMPIFNOT                        R25 ; [+10]
      561 GETUPVAL                         R27 42
      562 GETTABLEKS                       R27 R27 K18 ["validate"]
      564 MOVE                             R28 R8
      565 LOADB                            R29 0
      566 MOVE                             R30 R0
      567 CALL                             R27 3 -1
      568 NAMECALL                         R25 R12 K34 ["updateReasons"]
      570 CALL                             R25 -1 0
      571 GETUPVAL                         R25 43
      572 CALL                             R25 0 1
      573 JUMPIFNOT                        R25 ; [+11]
      574 GETTABLEKS                       R25 R0 K53 ["allowEditableInstances"]
      576 JUMPIF                           R25 ; [+8]
      577 GETUPVAL                         R27 44
      578 GETTABLEKS                       R28 R11 K26 ["contentId"]
      580 MOVE                             R29 R0
      581 CALL                             R27 2 -1
      582 NAMECALL                         R25 R12 K34 ["updateReasons"]
      584 CALL                             R25 -1 0
      585 GETUPVAL                         R25 8
      586 CALL                             R25 0 1
      587 JUMPIFNOT                        R25 ; [+3]
      588 GETUPVAL                         R25 9
      589 CALL                             R25 0 1
      590 JUMPIF                           R25 ; [+17]
      591 LOADK                            R27 K48 ["AvatarPartScaleType"]
      592 NAMECALL                         R25 R10 K23 ["FindFirstChild"]
      594 CALL                             R25 2 1
      595 JUMPIFNOT                        R25 ; [+12]
      596 LOADK                            R28 K54 ["StringValue"]
      597 NAMECALL                         R26 R25 K55 ["IsA"]
      599 CALL                             R26 2 1
      600 JUMPIFNOT                        R26 ; [+7]
      601 GETUPVAL                         R28 45
      602 MOVE                             R29 R25
      603 MOVE                             R30 R0
      604 CALL                             R28 2 -1
      605 NAMECALL                         R26 R12 K34 ["updateReasons"]
      607 CALL                             R26 -1 0
      608 NAMECALL                         R25 R12 K56 ["getFinalResults"]
      610 CALL                             R25 1 -1
      611 RETURN                           R25 -1

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
      124 GETTABLEKS                       R19 R19 K24 ["validateSurfaceAppearances"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K4 [require]
      129 GETTABLEKS                       R20 R0 K10 ["validation"]
      131 GETTABLEKS                       R20 R20 K25 ["validateSurfaceAppearanceTextureSize"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K4 [require]
      136 GETTABLEKS                       R21 R0 K10 ["validation"]
      138 GETTABLEKS                       R21 R21 K26 ["ValidateTexturePack"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K4 [require]
      143 GETTABLEKS                       R22 R0 K10 ["validation"]
      145 GETTABLEKS                       R22 R22 K27 ["validateSurfaceAppearanceTransparency"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K4 [require]
      150 GETTABLEKS                       R23 R0 K10 ["validation"]
      152 GETTABLEKS                       R23 R23 K28 ["validateScaleType"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K4 [require]
      157 GETTABLEKS                       R24 R0 K10 ["validation"]
      159 GETTABLEKS                       R24 R24 K29 ["validateTotalSurfaceArea"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K4 [require]
      164 GETTABLEKS                       R25 R0 K10 ["validation"]
      166 GETTABLEKS                       R25 R25 K30 ["validateRigidMeshNotSkinned"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K4 [require]
      171 GETTABLEKS                       R26 R0 K10 ["validation"]
      173 GETTABLEKS                       R26 R26 K31 ["ValidateMeshSizeProperty"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K4 [require]
      178 GETTABLEKS                       R27 R0 K10 ["validation"]
      180 GETTABLEKS                       R27 R27 K32 ["ValidatePropertiesSensible"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K4 [require]
      185 GETTABLEKS                       R28 R0 K10 ["validation"]
      187 GETTABLEKS                       R28 R28 K33 ["validateDependencies"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K4 [require]
      192 GETTABLEKS                       R29 R0 K5 ["util"]
      194 GETTABLEKS                       R29 R29 K34 ["createMeshPartAccessorySchema"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K4 [require]
      199 GETTABLEKS                       R30 R0 K5 ["util"]
      201 GETTABLEKS                       R30 R30 K35 ["getAttachment"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K4 [require]
      206 GETTABLEKS                       R31 R0 K5 ["util"]
      208 GETTABLEKS                       R31 R31 K36 ["getMeshSize"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K4 [require]
      213 GETTABLEKS                       R32 R0 K5 ["util"]
      215 GETTABLEKS                       R32 R32 K37 ["FailureReasonsAccumulator"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K4 [require]
      220 GETTABLEKS                       R33 R0 K5 ["util"]
      222 GETTABLEKS                       R33 R33 K38 ["getEditableMeshFromContext"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K4 [require]
      227 GETTABLEKS                       R34 R0 K5 ["util"]
      229 GETTABLEKS                       R34 R34 K39 ["getEditableImageFromContext"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K4 [require]
      234 GETTABLEKS                       R35 R0 K5 ["util"]
      236 GETTABLEKS                       R35 R35 K40 ["getExpectedPartSize"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K4 [require]
      241 GETTABLEKS                       R36 R0 K5 ["util"]
      243 GETTABLEKS                       R36 R36 K41 ["pcallDeferred"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K4 [require]
      248 GETTABLEKS                       R37 R0 K5 ["util"]
      250 GETTABLEKS                       R37 R37 K42 ["getAccessoryScale"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K4 [require]
      255 GETTABLEKS                       R38 R0 K5 ["util"]
      257 GETTABLEKS                       R38 R38 K43 ["RigidOrLayeredAllowed"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K4 [require]
      262 GETTABLEKS                       R39 R0 K44 ["flags"]
      264 GETTABLEKS                       R39 R39 K45 ["getEngineFeatureEngineUGCValidateRigidNonSkinned"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K4 [require]
      269 GETTABLEKS                       R40 R0 K44 ["flags"]
      271 GETTABLEKS                       R40 R40 K46 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K4 [require]
      276 GETTABLEKS                       R41 R0 K44 ["flags"]
      278 GETTABLEKS                       R41 R41 K47 ["getFFlagUGCValidateAccessoryAssetTextureLimit"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K4 [require]
      283 GETTABLEKS                       R42 R0 K44 ["flags"]
      285 GETTABLEKS                       R42 R42 K48 ["getFFlagUGCValidateTexturePack"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K4 [require]
      290 GETTABLEKS                       R43 R0 K44 ["flags"]
      292 GETTABLEKS                       R43 R43 K49 ["getFFlagUGCValidateMigrateSchemaProperties"]
      294 CALL                             R42 1 1
      295 GETIMPORT                        R43 K4 [require]
      297 GETTABLEKS                       R44 R0 K44 ["flags"]
      299 GETTABLEKS                       R44 R44 K50 ["getFFlagUGCValidationCombineEntrypointResults"]
      301 CALL                             R43 1 1
      302 GETIMPORT                        R44 K4 [require]
      304 GETTABLEKS                       R45 R0 K44 ["flags"]
      306 GETTABLEKS                       R45 R45 K51 ["getFFlagUGCValidateMigrateTextureTransparency"]
      308 CALL                             R44 1 1
      309 GETIMPORT                        R45 K4 [require]
      311 GETTABLEKS                       R46 R0 K44 ["flags"]
      313 GETTABLEKS                       R46 R46 K52 ["getFFlagUGCValidateMigrateSurfaceAppearanceMeshQuality"]
      315 CALL                             R45 1 1
      316 GETIMPORT                        R46 K4 [require]
      318 GETTABLEKS                       R47 R0 K44 ["flags"]
      320 GETTABLEKS                       R47 R47 K53 ["getFFlagUGCValidateMigrateMeshGeometry"]
      322 CALL                             R46 1 1
      323 GETIMPORT                        R47 K55 [game]
      325 LOADK                            R49 K56 ["MeshpartAccessoryCheckAvatarPartScaleType"]
      326 LOADB                            R50 0
      327 NAMECALL                         R47 R47 K57 ["DefineFastFlag"]
      329 CALL                             R47 3 1
      330 DUPCLOSURE                       R48 K58 [PROTO_1]
      331 CAPTURE                          VAL R37
      332 CAPTURE                          VAL R2
      333 CAPTURE                          VAL R3
      334 CAPTURE                          VAL R16
      335 CAPTURE                          VAL R28
      336 CAPTURE                          VAL R6
      337 CAPTURE                          VAL R39
      338 CAPTURE                          VAL R26
      339 CAPTURE                          VAL R42
      340 CAPTURE                          VAL R43
      341 CAPTURE                          VAL R27
      342 CAPTURE                          VAL R31
      343 CAPTURE                          VAL R32
      344 CAPTURE                          VAL R33
      345 CAPTURE                          VAL R35
      346 CAPTURE                          VAL R30
      347 CAPTURE                          VAL R34
      348 CAPTURE                          VAL R29
      349 CAPTURE                          VAL R9
      350 CAPTURE                          VAL R13
      351 CAPTURE                          VAL R10
      352 CAPTURE                          VAL R14
      353 CAPTURE                          VAL R44
      354 CAPTURE                          VAL R40
      355 CAPTURE                          VAL R4
      356 CAPTURE                          VAL R12
      357 CAPTURE                          VAL R17
      358 CAPTURE                          VAL R8
      359 CAPTURE                          VAL R47
      360 CAPTURE                          VAL R36
      361 CAPTURE                          VAL R46
      362 CAPTURE                          VAL R23
      363 CAPTURE                          VAL R25
      364 CAPTURE                          VAL R11
      365 CAPTURE                          VAL R7
      366 CAPTURE                          VAL R45
      367 CAPTURE                          VAL R15
      368 CAPTURE                          VAL R5
      369 CAPTURE                          VAL R18
      370 CAPTURE                          VAL R19
      371 CAPTURE                          VAL R21
      372 CAPTURE                          VAL R41
      373 CAPTURE                          VAL R20
      374 CAPTURE                          VAL R38
      375 CAPTURE                          VAL R24
      376 CAPTURE                          VAL R22
      377 RETURN                           R48 1
