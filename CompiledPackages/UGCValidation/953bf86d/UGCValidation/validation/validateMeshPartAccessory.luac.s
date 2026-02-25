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
       20 GETUPVAL                         R6 0
       21 GETTABLEKS                       R5 R6 K7 ["isRigidAccessoryAllowed"]
       23 MOVE                             R6 R2
       24 CALL                             R5 1 1
       25 JUMPIF                           R5 ; [+23]
       26 GETUPVAL                         R6 1
       27 GETTABLEKS                       R5 R6 K8 ["reportFailure"]
       29 GETUPVAL                         R8 1
       30 GETTABLEKS                       R7 R8 K9 ["ErrorType"]
       32 GETTABLEKS                       R6 R7 K10 ["validateLegacyAccessory_AssetTypeNotAllowedAsRigidAccessory"]
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
       49 GETUPVAL                         R7 2
       50 GETTABLEKS                       R6 R7 K16 ["ASSET_TYPE_INFO"]
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
       84 GETUPVAL                         R11 7
       85 GETTABLEKS                       R10 R11 K18 ["validate"]
       87 MOVE                             R11 R8
       88 MOVE                             R12 R0
       89 CALL                             R10 2 2
       90 MOVE                             R6 R10
       91 MOVE                             R7 R11
       92 JUMPIF                           R6 ; [+3]
       93 LOADB                            R10 0
       94 MOVE                             R11 R7
       95 RETURN                           R10 2
       96 GETUPVAL                         R10 8
       97 CALL                             R10 0 1
       98 JUMPIFNOT                        R10 ; [+10]
       99 GETUPVAL                         R10 9
      100 MOVE                             R11 R8
      101 MOVE                             R12 R0
      102 CALL                             R10 2 2
      103 MOVE                             R6 R10
      104 MOVE                             R7 R11
      105 JUMPIF                           R6 ; [+3]
      106 LOADB                            R10 0
      107 MOVE                             R11 R7
      108 RETURN                           R10 2
      109 LOADK                            R12 K19 ["Handle"]
      110 NAMECALL                         R10 R8 K20 ["FindFirstChild"]
      112 CALL                             R10 2 1
      113 DUPTABLE                         R11 K25 [{"fullName", "fieldName", "contentId", "context"}]
      114 NAMECALL                         R12 R10 K26 ["GetFullName"]
      116 CALL                             R12 1 1
      117 SETTABLEKS                       R12 R11 K21 ["fullName"]
      119 LOADK                            R12 K27 ["MeshId"]
      120 SETTABLEKS                       R12 R11 K22 ["fieldName"]
      122 GETTABLEKS                       R12 R10 K27 ["MeshId"]
      124 SETTABLEKS                       R12 R11 K23 ["contentId"]
      126 GETTABLEKS                       R12 R8 K15 ["Name"]
      128 SETTABLEKS                       R12 R11 K24 ["context"]
      130 GETUPVAL                         R13 10
      131 GETTABLEKS                       R12 R13 K28 ["new"]
      133 CALL                             R12 0 1
      134 GETTABLEKS                       R13 R10 K29 ["DoubleSided"]
      136 JUMPIFNOT                        R13 ; [+26]
      137 LOADB                            R15 0
      138 NEWTABLE                         R16 0 1
      140 GETIMPORT                        R17 K13 [string.format]
      142 LOADK                            R18 K30 ["MeshPart '%s' is double-sided. Double-sided meshes are not allowed in rigid accessories."]
      143 NAMECALL                         R19 R10 K26 ["GetFullName"]
      145 CALL                             R19 1 -1
      146 CALL                             R17 -1 -1
      147 SETLIST                          R16 R17 -1 [1]
      149 NAMECALL                         R13 R12 K31 ["updateReasons"]
      151 CALL                             R13 3 0
      152 GETUPVAL                         R14 1
      153 GETTABLEKS                       R13 R14 K8 ["reportFailure"]
      155 GETUPVAL                         R16 1
      156 GETTABLEKS                       R15 R16 K9 ["ErrorType"]
      158 GETTABLEKS                       R14 R15 K32 ["validateMeshPartAccessory_DoubleSided"]
      160 LOADNIL                          R15
      161 MOVE                             R16 R0
      162 CALL                             R13 3 0
      163 LOADB                            R13 0
      164 GETTABLEKS                       R14 R11 K23 ["contentId"]
      166 JUMPIFEQKNIL                     R14 ; [+7]
      168 GETTABLEKS                       R14 R11 K23 ["contentId"]
      170 JUMPIFNOTEQKS                    R14 K33 [""] ; [+2]
      172 LOADB                            R13 0 +1
      173 LOADB                            R13 1
      174 GETUPVAL                         R14 11
      175 MOVE                             R15 R10
      176 LOADK                            R16 K27 ["MeshId"]
      177 MOVE                             R17 R0
      178 CALL                             R14 3 2
      179 JUMPIF                           R14 ; [+54]
      180 GETTABLEKS                       R16 R11 K23 ["contentId"]
      182 JUMPIF                           R16 ; [+28]
      183 LOADB                            R13 0
      184 GETUPVAL                         R17 1
      185 GETTABLEKS                       R16 R17 K8 ["reportFailure"]
      187 GETUPVAL                         R19 1
      188 GETTABLEKS                       R18 R19 K9 ["ErrorType"]
      190 GETTABLEKS                       R17 R18 K34 ["validateMeshPartAccessory_NoMeshId"]
      192 LOADNIL                          R18
      193 MOVE                             R19 R0
      194 CALL                             R16 3 0
      195 LOADB                            R18 0
      196 NEWTABLE                         R19 0 1
      198 GETIMPORT                        R20 K13 [string.format]
      200 LOADK                            R21 K35 ["Accessory MeshPart '%s' must contain a valid meshId. Make sure the mesh referred to by the meshId exists and try again."]
      201 NAMECALL                         R22 R10 K26 ["GetFullName"]
      203 CALL                             R22 1 -1
      204 CALL                             R20 -1 -1
      205 SETLIST                          R19 R20 -1 [1]
      207 NAMECALL                         R16 R12 K31 ["updateReasons"]
      209 CALL                             R16 3 0
      210 JUMP                             ; [+23]
      211 GETUPVAL                         R17 1
      212 GETTABLEKS                       R16 R17 K8 ["reportFailure"]
      214 GETUPVAL                         R19 1
      215 GETTABLEKS                       R18 R19 K9 ["ErrorType"]
      217 GETTABLEKS                       R17 R18 K36 ["validateMeshPartAccessory_FailedToLoadMesh"]
      219 LOADNIL                          R18
      220 MOVE                             R19 R0
      221 CALL                             R16 3 0
      222 LOADB                            R16 0
      223 NEWTABLE                         R17 0 1
      225 GETIMPORT                        R18 K13 [string.format]
      227 LOADK                            R19 K37 ["Failed to load mesh for accessory '%s'. Make sure mesh exists and try again."]
      228 GETTABLEKS                       R20 R8 K15 ["Name"]
      230 CALL                             R18 2 -1
      231 SETLIST                          R17 R18 -1 [1]
      233 RETURN                           R16 2
      234 SETTABLEKS                       R15 R11 K38 ["editableMesh"]
      236 LOADB                            R13 1
      237 GETTABLEKS                       R16 R10 K39 ["TextureID"]
      239 DUPTABLE                         R17 K40 [{"fullName", "fieldName", "contentId"}]
      240 NAMECALL                         R18 R10 K26 ["GetFullName"]
      242 CALL                             R18 1 1
      243 SETTABLEKS                       R18 R17 K21 ["fullName"]
      245 LOADK                            R18 K39 ["TextureID"]
      246 SETTABLEKS                       R18 R17 K22 ["fieldName"]
      248 SETTABLEKS                       R16 R17 K23 ["contentId"]
      250 GETUPVAL                         R18 12
      251 MOVE                             R19 R10
      252 LOADK                            R20 K39 ["TextureID"]
      253 MOVE                             R21 R0
      254 CALL                             R18 3 2
      255 SETTABLEKS                       R19 R17 K41 ["editableImage"]
      257 GETUPVAL                         R20 13
      258 NEWCLOSURE                       R21 P0
      259 CAPTURE                          UPVAL U14
      260 CAPTURE                          VAL R11
      261 MOVE                             R22 R0
      262 CALL                             R20 2 2
      263 JUMPIF                           R20 ; [+23]
      264 GETUPVAL                         R23 1
      265 GETTABLEKS                       R22 R23 K8 ["reportFailure"]
      267 GETUPVAL                         R25 1
      268 GETTABLEKS                       R24 R25 K9 ["ErrorType"]
      270 GETTABLEKS                       R23 R24 K36 ["validateMeshPartAccessory_FailedToLoadMesh"]
      272 LOADNIL                          R24
      273 MOVE                             R25 R0
      274 CALL                             R22 3 0
      275 LOADB                            R22 0
      276 NEWTABLE                         R23 0 1
      278 GETIMPORT                        R24 K13 [string.format]
      280 LOADK                            R25 K37 ["Failed to load mesh for accessory '%s'. Make sure mesh exists and try again."]
      281 GETTABLEKS                       R26 R8 K15 ["Name"]
      283 CALL                             R24 2 -1
      284 SETLIST                          R23 R24 -1 [1]
      286 RETURN                           R22 2
      287 GETUPVAL                         R23 15
      288 MOVE                             R24 R10
      289 MOVE                             R25 R0
      290 CALL                             R23 2 1
      291 DIV                              R22 R23 R21
      292 GETUPVAL                         R23 16
      293 MOVE                             R24 R10
      294 GETTABLEKS                       R25 R5 K17 ["attachmentNames"]
      296 CALL                             R23 2 1
      297 FASTCALL1                        ASSERT R23 ; [+3]
      298 MOVE                             R25 R23
      299 GETIMPORT                        R24 K3 [assert]
      301 CALL                             R24 1 0
      302 GETTABLEKS                       R26 R5 K42 ["bounds"]
      304 GETTABLEKS                       R27 R23 K15 ["Name"]
      306 GETTABLE                         R25 R26 R27
      307 LOADK                            R27 K43 ["Could not find bounds for "]
      308 GETTABLEKS                       R28 R23 K15 ["Name"]
      310 CONCAT                           R26 R27 R28
      311 FASTCALL2                        ASSERT R25 R26 ; [+3]
      313 GETIMPORT                        R24 K3 [assert]
      315 CALL                             R24 2 1
      316 GETUPVAL                         R27 17
      317 MOVE                             R28 R8
      318 MOVE                             R29 R0
      319 CALL                             R27 2 -1
      320 NAMECALL                         R25 R12 K31 ["updateReasons"]
      322 CALL                             R25 -1 0
      323 GETUPVAL                         R27 18
      324 MOVE                             R28 R8
      325 LOADNIL                          R29
      326 MOVE                             R30 R0
      327 CALL                             R27 3 -1
      328 NAMECALL                         R25 R12 K31 ["updateReasons"]
      330 CALL                             R25 -1 0
      331 GETUPVAL                         R27 19
      332 MOVE                             R28 R8
      333 MOVE                             R29 R0
      334 CALL                             R27 2 -1
      335 NAMECALL                         R25 R12 K31 ["updateReasons"]
      337 CALL                             R25 -1 0
      338 GETUPVAL                         R27 20
      339 MOVE                             R28 R8
      340 MOVE                             R29 R0
      341 CALL                             R27 2 -1
      342 NAMECALL                         R25 R12 K31 ["updateReasons"]
      344 CALL                             R25 -1 0
      345 LOADNIL                          R25
      346 GETUPVAL                         R26 21
      347 CALL                             R26 0 1
      348 JUMPIFNOT                        R26 ; [+9]
      349 GETUPVAL                         R27 22
      350 GETTABLEKS                       R26 R27 K44 ["getTextureLimit"]
      352 MOVE                             R27 R2
      353 MOVE                             R28 R10
      354 GETTABLEKS                       R29 R17 K22 ["fieldName"]
      356 CALL                             R26 3 1
      357 MOVE                             R25 R26
      358 GETUPVAL                         R28 23
      359 MOVE                             R29 R17
      360 LOADB                            R30 1
      361 MOVE                             R31 R0
      362 MOVE                             R32 R25
      363 CALL                             R28 4 -1
      364 NAMECALL                         R26 R12 K31 ["updateReasons"]
      366 CALL                             R26 -1 0
      367 GETUPVAL                         R28 24
      368 MOVE                             R29 R8
      369 MOVE                             R30 R10
      370 MOVE                             R31 R11
      371 MOVE                             R32 R22
      372 MOVE                             R33 R0
      373 CALL                             R28 5 -1
      374 NAMECALL                         R26 R12 K31 ["updateReasons"]
      376 CALL                             R26 -1 0
      377 NOT                              R26 R3
      378 JUMPIFNOT                        R4 ; [+1]
      379 LOADB                            R26 0
      380 JUMPIFNOT                        R26 ; [+9]
      381 GETUPVAL                         R29 25
      382 MOVE                             R30 R8
      383 NEWTABLE                         R31 0 0
      385 MOVE                             R32 R0
      386 CALL                             R29 3 -1
      387 NAMECALL                         R27 R12 K31 ["updateReasons"]
      389 CALL                             R27 -1 0
      390 GETUPVAL                         R27 26
      391 JUMPIFNOT                        R27 ; [+26]
      392 LOADK                            R29 K45 ["AvatarPartScaleType"]
      393 NAMECALL                         R27 R10 K20 ["FindFirstChild"]
      395 CALL                             R27 2 1
      396 JUMPIFNOT                        R27 ; [+21]
      397 GETUPVAL                         R27 27
      398 MOVE                             R28 R10
      399 MOVE                             R29 R23
      400 CALL                             R27 2 1
      401 DUPTABLE                         R28 K48 [{"size", "offset"}]
      402 GETTABLEKS                       R30 R24 K46 ["size"]
      404 DIV                              R29 R30 R27
      405 SETTABLEKS                       R29 R28 K46 ["size"]
      407 GETTABLEKS                       R30 R24 K47 ["offset"]
      409 JUMPIFNOT                        R30 ; [+4]
      410 GETTABLEKS                       R30 R24 K47 ["offset"]
      412 DIV                              R29 R30 R27
      413 JUMP                             ; [+1]
      414 LOADNIL                          R29
      415 SETTABLEKS                       R29 R28 K47 ["offset"]
      417 MOVE                             R24 R28
      418 JUMPIFNOT                        R13 ; [+57]
      419 GETUPVAL                         R29 28
      420 MOVE                             R30 R11
      421 MOVE                             R31 R22
      422 MOVE                             R32 R0
      423 CALL                             R29 3 -1
      424 NAMECALL                         R27 R12 K31 ["updateReasons"]
      426 CALL                             R27 -1 0
      427 GETUPVAL                         R30 29
      428 GETTABLEKS                       R29 R30 K49 ["validateSingleMeshPart"]
      430 MOVE                             R30 R10
      431 MOVE                             R31 R0
      432 CALL                             R29 2 -1
      433 NAMECALL                         R27 R12 K31 ["updateReasons"]
      435 CALL                             R27 -1 0
      436 GETUPVAL                         R29 30
      437 MOVE                             R30 R10
      438 MOVE                             R31 R23
      439 MOVE                             R32 R11
      440 MOVE                             R33 R22
      441 MOVE                             R34 R24
      442 GETTABLEKS                       R35 R2 K15 ["Name"]
      444 MOVE                             R36 R0
      445 CALL                             R29 7 -1
      446 NAMECALL                         R27 R12 K31 ["updateReasons"]
      448 CALL                             R27 -1 0
      449 GETUPVAL                         R29 31
      450 MOVE                             R30 R11
      451 LOADNIL                          R31
      452 MOVE                             R32 R0
      453 CALL                             R29 3 -1
      454 NAMECALL                         R27 R12 K31 ["updateReasons"]
      456 CALL                             R27 -1 0
      457 GETUPVAL                         R27 32
      458 CALL                             R27 0 1
      459 JUMPIFNOT                        R27 ; [+8]
      460 GETUPVAL                         R29 33
      461 MOVE                             R30 R11
      462 LOADB                            R31 0
      463 MOVE                             R32 R0
      464 CALL                             R29 3 -1
      465 NAMECALL                         R27 R12 K31 ["updateReasons"]
      467 CALL                             R27 -1 0
      468 GETUPVAL                         R29 34
      469 MOVE                             R30 R11
      470 MOVE                             R31 R22
      471 MOVE                             R32 R0
      472 CALL                             R29 3 -1
      473 NAMECALL                         R27 R12 K31 ["updateReasons"]
      475 CALL                             R27 -1 0
      476 GETUPVAL                         R29 35
      477 MOVE                             R30 R8
      478 MOVE                             R31 R0
      479 CALL                             R29 2 -1
      480 NAMECALL                         R27 R12 K31 ["updateReasons"]
      482 CALL                             R27 -1 0
      483 GETUPVAL                         R29 36
      484 MOVE                             R30 R8
      485 MOVE                             R31 R0
      486 CALL                             R29 2 -1
      487 NAMECALL                         R27 R12 K31 ["updateReasons"]
      489 CALL                             R27 -1 0
      490 GETUPVAL                         R29 37
      491 MOVE                             R30 R8
      492 MOVE                             R31 R0
      493 CALL                             R29 2 -1
      494 NAMECALL                         R27 R12 K31 ["updateReasons"]
      496 CALL                             R27 -1 0
      497 GETUPVAL                         R27 38
      498 CALL                             R27 0 1
      499 JUMPIFNOT                        R27 ; [+10]
      500 GETUPVAL                         R30 39
      501 GETTABLEKS                       R29 R30 K18 ["validate"]
      503 MOVE                             R30 R8
      504 LOADB                            R31 0
      505 MOVE                             R32 R0
      506 CALL                             R29 3 -1
      507 NAMECALL                         R27 R12 K31 ["updateReasons"]
      509 CALL                             R27 -1 0
      510 GETUPVAL                         R27 40
      511 CALL                             R27 0 1
      512 JUMPIFNOT                        R27 ; [+11]
      513 GETTABLEKS                       R27 R0 K50 ["allowEditableInstances"]
      515 JUMPIF                           R27 ; [+8]
      516 GETUPVAL                         R29 41
      517 GETTABLEKS                       R30 R11 K23 ["contentId"]
      519 MOVE                             R31 R0
      520 CALL                             R29 2 -1
      521 NAMECALL                         R27 R12 K31 ["updateReasons"]
      523 CALL                             R27 -1 0
      524 LOADK                            R29 K45 ["AvatarPartScaleType"]
      525 NAMECALL                         R27 R10 K20 ["FindFirstChild"]
      527 CALL                             R27 2 1
      528 JUMPIFNOT                        R27 ; [+12]
      529 LOADK                            R30 K51 ["StringValue"]
      530 NAMECALL                         R28 R27 K52 ["IsA"]
      532 CALL                             R28 2 1
      533 JUMPIFNOT                        R28 ; [+7]
      534 GETUPVAL                         R30 42
      535 MOVE                             R31 R27
      536 MOVE                             R32 R0
      537 CALL                             R30 2 -1
      538 NAMECALL                         R28 R12 K31 ["updateReasons"]
      540 CALL                             R28 -1 0
      541 NAMECALL                         R28 R12 K53 ["getFinalResults"]
      543 CALL                             R28 1 -1
      544 RETURN                           R28 -1

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
      124 GETTABLEKS                       R19 R20 K24 ["validateSurfaceAppearances"]
      126 CALL                             R18 1 1
      127 GETIMPORT                        R19 K4 [require]
      129 GETTABLEKS                       R21 R0 K10 ["validation"]
      131 GETTABLEKS                       R20 R21 K25 ["validateSurfaceAppearanceTextureSize"]
      133 CALL                             R19 1 1
      134 GETIMPORT                        R20 K4 [require]
      136 GETTABLEKS                       R22 R0 K10 ["validation"]
      138 GETTABLEKS                       R21 R22 K26 ["ValidateTexturePack"]
      140 CALL                             R20 1 1
      141 GETIMPORT                        R21 K4 [require]
      143 GETTABLEKS                       R23 R0 K10 ["validation"]
      145 GETTABLEKS                       R22 R23 K27 ["validateSurfaceAppearanceTransparency"]
      147 CALL                             R21 1 1
      148 GETIMPORT                        R22 K4 [require]
      150 GETTABLEKS                       R24 R0 K10 ["validation"]
      152 GETTABLEKS                       R23 R24 K28 ["validateScaleType"]
      154 CALL                             R22 1 1
      155 GETIMPORT                        R23 K4 [require]
      157 GETTABLEKS                       R25 R0 K10 ["validation"]
      159 GETTABLEKS                       R24 R25 K29 ["validateTotalSurfaceArea"]
      161 CALL                             R23 1 1
      162 GETIMPORT                        R24 K4 [require]
      164 GETTABLEKS                       R26 R0 K10 ["validation"]
      166 GETTABLEKS                       R25 R26 K30 ["validateRigidMeshNotSkinned"]
      168 CALL                             R24 1 1
      169 GETIMPORT                        R25 K4 [require]
      171 GETTABLEKS                       R27 R0 K10 ["validation"]
      173 GETTABLEKS                       R26 R27 K31 ["ValidateMeshSizeProperty"]
      175 CALL                             R25 1 1
      176 GETIMPORT                        R26 K4 [require]
      178 GETTABLEKS                       R28 R0 K10 ["validation"]
      180 GETTABLEKS                       R27 R28 K32 ["ValidatePropertiesSensible"]
      182 CALL                             R26 1 1
      183 GETIMPORT                        R27 K4 [require]
      185 GETTABLEKS                       R29 R0 K10 ["validation"]
      187 GETTABLEKS                       R28 R29 K33 ["validateDependencies"]
      189 CALL                             R27 1 1
      190 GETIMPORT                        R28 K4 [require]
      192 GETTABLEKS                       R30 R0 K5 ["util"]
      194 GETTABLEKS                       R29 R30 K34 ["createMeshPartAccessorySchema"]
      196 CALL                             R28 1 1
      197 GETIMPORT                        R29 K4 [require]
      199 GETTABLEKS                       R31 R0 K5 ["util"]
      201 GETTABLEKS                       R30 R31 K35 ["getAttachment"]
      203 CALL                             R29 1 1
      204 GETIMPORT                        R30 K4 [require]
      206 GETTABLEKS                       R32 R0 K5 ["util"]
      208 GETTABLEKS                       R31 R32 K36 ["getMeshSize"]
      210 CALL                             R30 1 1
      211 GETIMPORT                        R31 K4 [require]
      213 GETTABLEKS                       R33 R0 K5 ["util"]
      215 GETTABLEKS                       R32 R33 K37 ["FailureReasonsAccumulator"]
      217 CALL                             R31 1 1
      218 GETIMPORT                        R32 K4 [require]
      220 GETTABLEKS                       R34 R0 K5 ["util"]
      222 GETTABLEKS                       R33 R34 K38 ["getEditableMeshFromContext"]
      224 CALL                             R32 1 1
      225 GETIMPORT                        R33 K4 [require]
      227 GETTABLEKS                       R35 R0 K5 ["util"]
      229 GETTABLEKS                       R34 R35 K39 ["getEditableImageFromContext"]
      231 CALL                             R33 1 1
      232 GETIMPORT                        R34 K4 [require]
      234 GETTABLEKS                       R36 R0 K5 ["util"]
      236 GETTABLEKS                       R35 R36 K40 ["getExpectedPartSize"]
      238 CALL                             R34 1 1
      239 GETIMPORT                        R35 K4 [require]
      241 GETTABLEKS                       R37 R0 K5 ["util"]
      243 GETTABLEKS                       R36 R37 K41 ["pcallDeferred"]
      245 CALL                             R35 1 1
      246 GETIMPORT                        R36 K4 [require]
      248 GETTABLEKS                       R38 R0 K5 ["util"]
      250 GETTABLEKS                       R37 R38 K42 ["getAccessoryScale"]
      252 CALL                             R36 1 1
      253 GETIMPORT                        R37 K4 [require]
      255 GETTABLEKS                       R39 R0 K5 ["util"]
      257 GETTABLEKS                       R38 R39 K43 ["RigidOrLayeredAllowed"]
      259 CALL                             R37 1 1
      260 GETIMPORT                        R38 K4 [require]
      262 GETTABLEKS                       R40 R0 K44 ["flags"]
      264 GETTABLEKS                       R39 R40 K45 ["getFFlagUGCValidateMeshVertColors"]
      266 CALL                             R38 1 1
      267 GETIMPORT                        R39 K4 [require]
      269 GETTABLEKS                       R41 R0 K44 ["flags"]
      271 GETTABLEKS                       R40 R41 K46 ["getEngineFeatureEngineUGCValidateRigidNonSkinned"]
      273 CALL                             R39 1 1
      274 GETIMPORT                        R40 K4 [require]
      276 GETTABLEKS                       R42 R0 K44 ["flags"]
      278 GETTABLEKS                       R41 R42 K47 ["getFFlagUGCValidateAccessoriesRCCOwnership"]
      280 CALL                             R40 1 1
      281 GETIMPORT                        R41 K4 [require]
      283 GETTABLEKS                       R43 R0 K44 ["flags"]
      285 GETTABLEKS                       R42 R43 K48 ["getEngineFeatureEngineUGCValidatePropertiesSensible"]
      287 CALL                             R41 1 1
      288 GETIMPORT                        R42 K4 [require]
      290 GETTABLEKS                       R44 R0 K44 ["flags"]
      292 GETTABLEKS                       R43 R44 K49 ["getFFlagUGCValidateAccessoryAssetTextureLimit"]
      294 CALL                             R42 1 1
      295 GETIMPORT                        R43 K4 [require]
      297 GETTABLEKS                       R45 R0 K44 ["flags"]
      299 GETTABLEKS                       R44 R45 K50 ["getFFlagUGCValidateTexturePack"]
      301 CALL                             R43 1 1
      302 GETIMPORT                        R44 K52 [game]
      304 LOADK                            R46 K53 ["MeshpartAccessoryCheckAvatarPartScaleType"]
      305 LOADB                            R47 0
      306 NAMECALL                         R44 R44 K54 ["DefineFastFlag"]
      308 CALL                             R44 3 1
      309 DUPCLOSURE                       R45 K55 [PROTO_1]
      310 CAPTURE                          VAL R37
      311 CAPTURE                          VAL R2
      312 CAPTURE                          VAL R3
      313 CAPTURE                          VAL R16
      314 CAPTURE                          VAL R28
      315 CAPTURE                          VAL R6
      316 CAPTURE                          VAL R41
      317 CAPTURE                          VAL R26
      318 CAPTURE                          VAL R40
      319 CAPTURE                          VAL R27
      320 CAPTURE                          VAL R31
      321 CAPTURE                          VAL R32
      322 CAPTURE                          VAL R33
      323 CAPTURE                          VAL R35
      324 CAPTURE                          VAL R30
      325 CAPTURE                          VAL R34
      326 CAPTURE                          VAL R29
      327 CAPTURE                          VAL R9
      328 CAPTURE                          VAL R13
      329 CAPTURE                          VAL R10
      330 CAPTURE                          VAL R14
      331 CAPTURE                          VAL R42
      332 CAPTURE                          VAL R4
      333 CAPTURE                          VAL R12
      334 CAPTURE                          VAL R17
      335 CAPTURE                          VAL R8
      336 CAPTURE                          VAL R44
      337 CAPTURE                          VAL R36
      338 CAPTURE                          VAL R23
      339 CAPTURE                          VAL R25
      340 CAPTURE                          VAL R11
      341 CAPTURE                          VAL R7
      342 CAPTURE                          VAL R38
      343 CAPTURE                          VAL R15
      344 CAPTURE                          VAL R5
      345 CAPTURE                          VAL R18
      346 CAPTURE                          VAL R19
      347 CAPTURE                          VAL R21
      348 CAPTURE                          VAL R43
      349 CAPTURE                          VAL R20
      350 CAPTURE                          VAL R39
      351 CAPTURE                          VAL R24
      352 CAPTURE                          VAL R22
      353 RETURN                           R45 1
