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
      126 DUPTABLE                         R11 K29 [{["fullName"], ["fieldName"] = "MeshId", ["contentId"], ["context"]}]
      127 NAMECALL                         R12 R10 K30 ["GetFullName"]
      129 CALL                             R12 1 1
      130 SETTABLEKS                       R12 R11 K24 ["fullName"]
      132 GETTABLEKS                       R12 R10 K26 ["MeshId"]
      134 SETTABLEKS                       R12 R11 K27 ["contentId"]
      136 GETTABLEKS                       R12 R8 K15 ["Name"]
      138 SETTABLEKS                       R12 R11 K28 ["context"]
      140 GETUPVAL                         R12 11
      141 GETTABLEKS                       R12 R12 K31 ["new"]
      143 CALL                             R12 0 1
      144 GETTABLEKS                       R13 R10 K32 ["DoubleSided"]
      146 JUMPIFNOT                        R13 ; [+26]
      147 LOADB                            R15 0
      148 NEWTABLE                         R16 0 1
      150 GETIMPORT                        R17 K13 [string.format]
      152 LOADK                            R18 K33 ["MeshPart '%s' is double-sided. Double-sided meshes are not allowed in rigid accessories."]
      153 NAMECALL                         R19 R10 K30 ["GetFullName"]
      155 CALL                             R19 1 -1
      156 CALL                             R17 -1 -1
      157 SETLIST                          R16 R17 -1 [1]
      159 NAMECALL                         R13 R12 K34 ["updateReasons"]
      161 CALL                             R13 3 0
      162 GETUPVAL                         R13 1
      163 GETTABLEKS                       R13 R13 K8 ["reportFailure"]
      165 GETUPVAL                         R14 1
      166 GETTABLEKS                       R14 R14 K9 ["ErrorType"]
      168 GETTABLEKS                       R14 R14 K35 ["validateMeshPartAccessory_DoubleSided"]
      170 LOADNIL                          R15
      171 MOVE                             R16 R0
      172 CALL                             R13 3 0
      173 LOADB                            R13 0
      174 GETTABLEKS                       R14 R11 K27 ["contentId"]
      176 JUMPIFEQKNIL                     R14 ; [+7]
      178 GETTABLEKS                       R14 R11 K27 ["contentId"]
      180 JUMPIFNOTEQKS                    R14 K36 [""] ; [+2]
      182 LOADB                            R13 0 +1
      183 LOADB                            R13 1
      184 GETUPVAL                         R14 12
      185 MOVE                             R15 R10
      186 LOADK                            R16 K26 ["MeshId"]
      187 MOVE                             R17 R0
      188 CALL                             R14 3 2
      189 JUMPIF                           R14 ; [+54]
      190 GETTABLEKS                       R16 R11 K27 ["contentId"]
      192 JUMPIF                           R16 ; [+28]
      193 LOADB                            R13 0
      194 GETUPVAL                         R16 1
      195 GETTABLEKS                       R16 R16 K8 ["reportFailure"]
      197 GETUPVAL                         R17 1
      198 GETTABLEKS                       R17 R17 K9 ["ErrorType"]
      200 GETTABLEKS                       R17 R17 K37 ["validateMeshPartAccessory_NoMeshId"]
      202 LOADNIL                          R18
      203 MOVE                             R19 R0
      204 CALL                             R16 3 0
      205 LOADB                            R18 0
      206 NEWTABLE                         R19 0 1
      208 GETIMPORT                        R20 K13 [string.format]
      210 LOADK                            R21 K38 ["Accessory MeshPart '%s' must contain a valid meshId. Make sure the mesh referred to by the meshId exists and try again."]
      211 NAMECALL                         R22 R10 K30 ["GetFullName"]
      213 CALL                             R22 1 -1
      214 CALL                             R20 -1 -1
      215 SETLIST                          R19 R20 -1 [1]
      217 NAMECALL                         R16 R12 K34 ["updateReasons"]
      219 CALL                             R16 3 0
      220 JUMP                             ; [+23]
      221 GETUPVAL                         R16 1
      222 GETTABLEKS                       R16 R16 K8 ["reportFailure"]
      224 GETUPVAL                         R17 1
      225 GETTABLEKS                       R17 R17 K9 ["ErrorType"]
      227 GETTABLEKS                       R17 R17 K39 ["validateMeshPartAccessory_FailedToLoadMesh"]
      229 LOADNIL                          R18
      230 MOVE                             R19 R0
      231 CALL                             R16 3 0
      232 LOADB                            R16 0
      233 NEWTABLE                         R17 0 1
      235 GETIMPORT                        R18 K13 [string.format]
      237 LOADK                            R19 K40 ["Failed to load mesh for accessory '%s'. Make sure mesh exists and try again."]
      238 GETTABLEKS                       R20 R8 K15 ["Name"]
      240 CALL                             R18 2 -1
      241 SETLIST                          R17 R18 -1 [1]
      243 RETURN                           R16 2
      244 SETTABLEKS                       R15 R11 K41 ["editableMesh"]
      246 LOADB                            R13 1
      247 GETTABLEKS                       R16 R10 K42 ["TextureID"]
      249 DUPTABLE                         R17 K43 [{["fullName"], ["fieldName"] = "TextureID", ["contentId"]}]
      250 NAMECALL                         R18 R10 K30 ["GetFullName"]
      252 CALL                             R18 1 1
      253 SETTABLEKS                       R18 R17 K24 ["fullName"]
      255 SETTABLEKS                       R16 R17 K27 ["contentId"]
      257 GETUPVAL                         R18 13
      258 MOVE                             R19 R10
      259 LOADK                            R20 K42 ["TextureID"]
      260 MOVE                             R21 R0
      261 CALL                             R18 3 2
      262 SETTABLEKS                       R19 R17 K44 ["editableImage"]
      264 GETUPVAL                         R20 14
      265 NEWCLOSURE                       R21 P0
      266 CAPTURE                          UPVAL U15
      267 CAPTURE                          VAL R11
      268 MOVE                             R22 R0
      269 CALL                             R20 2 2
      270 JUMPIF                           R20 ; [+23]
      271 GETUPVAL                         R22 1
      272 GETTABLEKS                       R22 R22 K8 ["reportFailure"]
      274 GETUPVAL                         R23 1
      275 GETTABLEKS                       R23 R23 K9 ["ErrorType"]
      277 GETTABLEKS                       R23 R23 K39 ["validateMeshPartAccessory_FailedToLoadMesh"]
      279 LOADNIL                          R24
      280 MOVE                             R25 R0
      281 CALL                             R22 3 0
      282 LOADB                            R22 0
      283 NEWTABLE                         R23 0 1
      285 GETIMPORT                        R24 K13 [string.format]
      287 LOADK                            R25 K40 ["Failed to load mesh for accessory '%s'. Make sure mesh exists and try again."]
      288 GETTABLEKS                       R26 R8 K15 ["Name"]
      290 CALL                             R24 2 -1
      291 SETLIST                          R23 R24 -1 [1]
      293 RETURN                           R22 2
      294 GETUPVAL                         R23 16
      295 MOVE                             R24 R10
      296 MOVE                             R25 R0
      297 CALL                             R23 2 1
      298 DIV                              R22 R23 R21
      299 GETUPVAL                         R23 17
      300 MOVE                             R24 R10
      301 GETTABLEKS                       R25 R5 K17 ["attachmentNames"]
      303 CALL                             R23 2 1
      304 FASTCALL1                        ASSERT R23 ; [+3]
      305 MOVE                             R25 R23
      306 GETIMPORT                        R24 K3 [assert]
      308 CALL                             R24 1 0
      309 GETTABLEKS                       R26 R5 K45 ["bounds"]
      311 GETTABLEKS                       R27 R23 K15 ["Name"]
      313 GETTABLE                         R25 R26 R27
      314 LOADK                            R27 K46 ["Could not find bounds for "]
      315 GETTABLEKS                       R28 R23 K15 ["Name"]
      317 CONCAT                           R26 R27 R28
      318 FASTCALL2                        ASSERT R25 R26 ; [+3]
      320 GETIMPORT                        R24 K3 [assert]
      322 CALL                             R24 2 1
      323 GETUPVAL                         R25 8
      324 CALL                             R25 0 1
      325 JUMPIFNOT                        R25 ; [+3]
      326 GETUPVAL                         R25 9
      327 CALL                             R25 0 1
      328 JUMPIF                           R25 ; [+15]
      329 GETUPVAL                         R27 18
      330 MOVE                             R28 R8
      331 MOVE                             R29 R0
      332 CALL                             R27 2 -1
      333 NAMECALL                         R25 R12 K34 ["updateReasons"]
      335 CALL                             R25 -1 0
      336 GETUPVAL                         R27 19
      337 MOVE                             R28 R8
      338 LOADNIL                          R29
      339 MOVE                             R30 R0
      340 CALL                             R27 3 -1
      341 NAMECALL                         R25 R12 K34 ["updateReasons"]
      343 CALL                             R25 -1 0
      344 GETUPVAL                         R27 20
      345 MOVE                             R28 R8
      346 MOVE                             R29 R0
      347 CALL                             R27 2 -1
      348 NAMECALL                         R25 R12 K34 ["updateReasons"]
      350 CALL                             R25 -1 0
      351 GETUPVAL                         R25 8
      352 CALL                             R25 0 1
      353 JUMPIFNOT                        R25 ; [+3]
      354 GETUPVAL                         R25 9
      355 CALL                             R25 0 1
      356 JUMPIF                           R25 ; [+7]
      357 GETUPVAL                         R27 21
      358 MOVE                             R28 R8
      359 MOVE                             R29 R0
      360 CALL                             R27 2 -1
      361 NAMECALL                         R25 R12 K34 ["updateReasons"]
      363 CALL                             R25 -1 0
      364 GETUPVAL                         R25 22
      365 CALL                             R25 0 1
      366 JUMPIF                           R25 ; [+22]
      367 LOADNIL                          R25
      368 GETUPVAL                         R26 23
      369 CALL                             R26 0 1
      370 JUMPIFNOT                        R26 ; [+9]
      371 GETUPVAL                         R26 24
      372 GETTABLEKS                       R26 R26 K47 ["getTextureLimit"]
      374 MOVE                             R27 R2
      375 MOVE                             R28 R10
      376 GETTABLEKS                       R29 R17 K25 ["fieldName"]
      378 CALL                             R26 3 1
      379 MOVE                             R25 R26
      380 GETUPVAL                         R28 25
      381 MOVE                             R29 R17
      382 LOADB                            R30 1
      383 MOVE                             R31 R0
      384 MOVE                             R32 R25
      385 CALL                             R28 4 -1
      386 NAMECALL                         R26 R12 K34 ["updateReasons"]
      388 CALL                             R26 -1 0
      389 GETUPVAL                         R25 8
      390 CALL                             R25 0 1
      391 JUMPIFNOT                        R25 ; [+3]
      392 GETUPVAL                         R25 9
      393 CALL                             R25 0 1
      394 JUMPIF                           R25 ; [+10]
      395 GETUPVAL                         R27 26
      396 MOVE                             R28 R8
      397 MOVE                             R29 R10
      398 MOVE                             R30 R11
      399 MOVE                             R31 R22
      400 MOVE                             R32 R0
      401 CALL                             R27 5 -1
      402 NAMECALL                         R25 R12 K34 ["updateReasons"]
      404 CALL                             R25 -1 0
      405 GETUPVAL                         R25 8
      406 CALL                             R25 0 1
      407 JUMPIFNOT                        R25 ; [+3]
      408 GETUPVAL                         R25 9
      409 CALL                             R25 0 1
      410 JUMPIF                           R25 ; [+13]
      411 NOT                              R25 R3
      412 JUMPIFNOT                        R4 ; [+1]
      413 LOADB                            R25 0
      414 JUMPIFNOT                        R25 ; [+9]
      415 GETUPVAL                         R28 27
      416 MOVE                             R29 R8
      417 NEWTABLE                         R30 0 0
      419 MOVE                             R31 R0
      420 CALL                             R28 3 -1
      421 NAMECALL                         R26 R12 K34 ["updateReasons"]
      423 CALL                             R26 -1 0
      424 GETUPVAL                         R25 28
      425 JUMPIFNOT                        R25 ; [+26]
      426 LOADK                            R27 K48 ["AvatarPartScaleType"]
      427 NAMECALL                         R25 R10 K23 ["FindFirstChild"]
      429 CALL                             R25 2 1
      430 JUMPIFNOT                        R25 ; [+21]
      431 GETUPVAL                         R25 29
      432 MOVE                             R26 R10
      433 MOVE                             R27 R23
      434 CALL                             R25 2 1
      435 DUPTABLE                         R26 K51 [{"size", "offset"}]
      436 GETTABLEKS                       R28 R24 K49 ["size"]
      438 DIV                              R27 R28 R25
      439 SETTABLEKS                       R27 R26 K49 ["size"]
      441 GETTABLEKS                       R28 R24 K50 ["offset"]
      443 JUMPIFNOT                        R28 ; [+4]
      444 GETTABLEKS                       R28 R24 K50 ["offset"]
      446 DIV                              R27 R28 R25
      447 JUMP                             ; [+1]
      448 LOADNIL                          R27
      449 SETTABLEKS                       R27 R26 K50 ["offset"]
      451 MOVE                             R24 R26
      452 JUMPIFNOT                        R13 ; [+69]
      453 GETUPVAL                         R25 30
      454 CALL                             R25 0 1
      455 JUMPIF                           R25 ; [+8]
      456 GETUPVAL                         R27 31
      457 MOVE                             R28 R11
      458 MOVE                             R29 R22
      459 MOVE                             R30 R0
      460 CALL                             R27 3 -1
      461 NAMECALL                         R25 R12 K34 ["updateReasons"]
      463 CALL                             R25 -1 0
      464 GETUPVAL                         R27 32
      465 GETTABLEKS                       R27 R27 K52 ["validateSingleMeshPart"]
      467 MOVE                             R28 R10
      468 MOVE                             R29 R0
      469 CALL                             R27 2 -1
      470 NAMECALL                         R25 R12 K34 ["updateReasons"]
      472 CALL                             R25 -1 0
      473 GETUPVAL                         R25 30
      474 CALL                             R25 0 1
      475 JUMPIF                           R25 ; [+13]
      476 GETUPVAL                         R27 33
      477 MOVE                             R28 R10
      478 MOVE                             R29 R23
      479 MOVE                             R30 R11
      480 MOVE                             R31 R22
      481 MOVE                             R32 R24
      482 GETTABLEKS                       R33 R2 K15 ["Name"]
      484 MOVE                             R34 R0
      485 CALL                             R27 7 -1
      486 NAMECALL                         R25 R12 K34 ["updateReasons"]
      488 CALL                             R25 -1 0
      489 GETUPVAL                         R25 30
      490 CALL                             R25 0 1
      491 JUMPIF                           R25 ; [+8]
      492 GETUPVAL                         R27 34
      493 MOVE                             R28 R11
      494 LOADNIL                          R29
      495 MOVE                             R30 R0
      496 CALL                             R27 3 -1
      497 NAMECALL                         R25 R12 K34 ["updateReasons"]
      499 CALL                             R25 -1 0
      500 GETUPVAL                         R25 35
      501 CALL                             R25 0 1
      502 JUMPIF                           R25 ; [+8]
      503 GETUPVAL                         R27 36
      504 MOVE                             R28 R11
      505 LOADB                            R29 0
      506 MOVE                             R30 R0
      507 CALL                             R27 3 -1
      508 NAMECALL                         R25 R12 K34 ["updateReasons"]
      510 CALL                             R25 -1 0
      511 GETUPVAL                         R25 35
      512 CALL                             R25 0 1
      513 JUMPIF                           R25 ; [+8]
      514 GETUPVAL                         R27 37
      515 MOVE                             R28 R11
      516 MOVE                             R29 R22
      517 MOVE                             R30 R0
      518 CALL                             R27 3 -1
      519 NAMECALL                         R25 R12 K34 ["updateReasons"]
      521 CALL                             R25 -1 0
      522 GETUPVAL                         R25 35
      523 CALL                             R25 0 1
      524 JUMPIF                           R25 ; [+7]
      525 GETUPVAL                         R27 38
      526 MOVE                             R28 R8
      527 MOVE                             R29 R0
      528 CALL                             R27 2 -1
      529 NAMECALL                         R25 R12 K34 ["updateReasons"]
      531 CALL                             R25 -1 0
      532 GETUPVAL                         R25 22
      533 CALL                             R25 0 1
      534 JUMPIF                           R25 ; [+14]
      535 GETUPVAL                         R27 39
      536 MOVE                             R28 R8
      537 MOVE                             R29 R0
      538 CALL                             R27 2 -1
      539 NAMECALL                         R25 R12 K34 ["updateReasons"]
      541 CALL                             R25 -1 0
      542 GETUPVAL                         R27 40
      543 MOVE                             R28 R8
      544 MOVE                             R29 R0
      545 CALL                             R27 2 -1
      546 NAMECALL                         R25 R12 K34 ["updateReasons"]
      548 CALL                             R25 -1 0
      549 GETUPVAL                         R25 35
      550 CALL                             R25 0 1
      551 JUMPIF                           R25 ; [+13]
      552 GETUPVAL                         R25 41
      553 CALL                             R25 0 1
      554 JUMPIFNOT                        R25 ; [+10]
      555 GETUPVAL                         R27 42
      556 GETTABLEKS                       R27 R27 K18 ["validate"]
      558 MOVE                             R28 R8
      559 LOADB                            R29 0
      560 MOVE                             R30 R0
      561 CALL                             R27 3 -1
      562 NAMECALL                         R25 R12 K34 ["updateReasons"]
      564 CALL                             R25 -1 0
      565 GETUPVAL                         R25 43
      566 CALL                             R25 0 1
      567 JUMPIFNOT                        R25 ; [+11]
      568 GETTABLEKS                       R25 R0 K53 ["allowEditableInstances"]
      570 JUMPIF                           R25 ; [+8]
      571 GETUPVAL                         R27 44
      572 GETTABLEKS                       R28 R11 K27 ["contentId"]
      574 MOVE                             R29 R0
      575 CALL                             R27 2 -1
      576 NAMECALL                         R25 R12 K34 ["updateReasons"]
      578 CALL                             R25 -1 0
      579 GETUPVAL                         R25 8
      580 CALL                             R25 0 1
      581 JUMPIFNOT                        R25 ; [+3]
      582 GETUPVAL                         R25 9
      583 CALL                             R25 0 1
      584 JUMPIF                           R25 ; [+17]
      585 LOADK                            R27 K48 ["AvatarPartScaleType"]
      586 NAMECALL                         R25 R10 K23 ["FindFirstChild"]
      588 CALL                             R25 2 1
      589 JUMPIFNOT                        R25 ; [+12]
      590 LOADK                            R28 K54 ["StringValue"]
      591 NAMECALL                         R26 R25 K55 ["IsA"]
      593 CALL                             R26 2 1
      594 JUMPIFNOT                        R26 ; [+7]
      595 GETUPVAL                         R28 45
      596 MOVE                             R29 R25
      597 MOVE                             R30 R0
      598 CALL                             R28 2 -1
      599 NAMECALL                         R26 R12 K34 ["updateReasons"]
      601 CALL                             R26 -1 0
      602 NAMECALL                         R25 R12 K56 ["getFinalResults"]
      604 CALL                             R25 1 -1
      605 RETURN                           R25 -1

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
